-- Open Tinnitus Lab
-- Initial relational schema
----------------------------

-- This is a conceptual V0 schema.
-- It is intentionally conservative and may change
-- as the scientific data model develops.

CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- ============================================================
-- SOURCES
-- ============================================================

CREATE TABLE sources (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
source_type TEXT NOT NULL,

title TEXT NOT NULL,

publication_year INTEGER,

doi TEXT,
pmid TEXT,
pmcid TEXT,

journal TEXT,

peer_review_status TEXT,

access_status TEXT,

retraction_status TEXT DEFAULT 'not_retracted',

source_url TEXT,

created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);

-- ============================================================
-- PEOPLE / AGENTS
-- ============================================================

CREATE TABLE agents (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
agent_type TEXT NOT NULL,
-- human, ai_model, software, instrument

name TEXT NOT NULL,

version TEXT,

organization TEXT,

metadata JSONB DEFAULT '{}'::jsonb,

created_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);

CREATE TABLE source_authors (
source_id UUID NOT NULL REFERENCES sources(id),
agent_id UUID NOT NULL REFERENCES agents(id),

```
author_order INTEGER,

PRIMARY KEY (source_id, agent_id)
```

);

-- ============================================================
-- OBSERVATIONS
-- ============================================================

CREATE TABLE observations (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
source_id UUID REFERENCES sources(id),

statement TEXT NOT NULL,

population TEXT,

measurement TEXT,

variable TEXT,

direction TEXT,

magnitude TEXT,

uncertainty TEXT,

conditions TEXT,

created_by UUID REFERENCES agents(id),

created_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);

-- ============================================================
-- FINDINGS
-- ============================================================

CREATE TABLE findings (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
source_id UUID REFERENCES sources(id),

observation_id UUID REFERENCES observations(id),

statement TEXT NOT NULL,

statistical_result JSONB DEFAULT '{}'::jsonb,

limitations TEXT,

created_by UUID REFERENCES agents(id),

created_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);

-- ============================================================
-- CLAIMS
-- ============================================================

CREATE TABLE claims (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
claim_type TEXT NOT NULL,

statement TEXT NOT NULL,

status TEXT NOT NULL DEFAULT 'unresolved',

source_id UUID REFERENCES sources(id),

observation_id UUID REFERENCES observations(id),

finding_id UUID REFERENCES findings(id),

created_by UUID REFERENCES agents(id),

created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);

-- ============================================================
-- HYPOTHESES
-- ============================================================

CREATE TABLE hypotheses (
id TEXT PRIMARY KEY,

```
title TEXT NOT NULL,

statement TEXT NOT NULL,

status TEXT NOT NULL DEFAULT 'proposed',

rationale TEXT,

version INTEGER NOT NULL DEFAULT 1,

supersedes_id TEXT REFERENCES hypotheses(id),

created_by UUID REFERENCES agents(id),

created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);

-- ============================================================
-- PREDICTIONS
-- ============================================================

CREATE TABLE predictions (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
hypothesis_id TEXT NOT NULL REFERENCES hypotheses(id),

statement TEXT NOT NULL,

falsification_condition TEXT,

status TEXT NOT NULL DEFAULT 'untested',

created_by UUID REFERENCES agents(id),

created_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);

-- ============================================================
-- EVIDENCE RELATIONSHIPS
-- ============================================================

CREATE TABLE evidence_relationships (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
source_claim_id UUID NOT NULL REFERENCES claims(id),

target_hypothesis_id TEXT REFERENCES hypotheses(id),

target_claim_id UUID REFERENCES claims(id),

relationship_type TEXT NOT NULL,

strength TEXT,

rationale TEXT,

reviewer UUID REFERENCES agents(id),

reviewed_at TIMESTAMPTZ,

created_by UUID REFERENCES agents(id),

created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

CHECK (
    target_hypothesis_id IS NOT NULL
    OR target_claim_id IS NOT NULL
)
```

);

-- ============================================================
-- EXPERIMENTS
-- ============================================================

CREATE TABLE experiments (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
title TEXT NOT NULL,

experiment_type TEXT NOT NULL,

description TEXT,

status TEXT NOT NULL DEFAULT 'proposed',

protocol TEXT,

created_by UUID REFERENCES agents(id),

created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);

CREATE TABLE experiment_predictions (
experiment_id UUID NOT NULL REFERENCES experiments(id),
prediction_id UUID NOT NULL REFERENCES predictions(id),

```
PRIMARY KEY (experiment_id, prediction_id)
```

);

-- ============================================================
-- RESULTS
-- ============================================================

CREATE TABLE results (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
experiment_id UUID NOT NULL REFERENCES experiments(id),

statement TEXT NOT NULL,

outcome TEXT,

data_reference TEXT,

analysis_reference TEXT,

created_by UUID REFERENCES agents(id),

created_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);

-- ============================================================
-- ANALYSES
-- ============================================================

CREATE TABLE analyses (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
name TEXT NOT NULL,

description TEXT,

repository_url TEXT,

commit_hash TEXT,

software_environment TEXT,

parameters JSONB DEFAULT '{}'::jsonb,

input_reference TEXT,

output_reference TEXT,

created_by UUID REFERENCES agents(id),

created_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);

-- ============================================================
-- DATASETS
-- ============================================================

CREATE TABLE datasets (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
name TEXT NOT NULL,

description TEXT,

source TEXT,

license TEXT,

access_level TEXT,

provenance TEXT,

metadata JSONB DEFAULT '{}'::jsonb,

created_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);

-- ============================================================
-- PROVENANCE EVENTS
-- ============================================================

CREATE TABLE provenance_events (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
entity_type TEXT NOT NULL,

entity_id UUID,

action TEXT NOT NULL,

agent_id UUID REFERENCES agents(id),

source_reference TEXT,

metadata JSONB DEFAULT '{}'::jsonb,

created_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);

-- ============================================================
-- GENERAL RELATIONSHIPS
-- ============================================================

CREATE TABLE relationships (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

```
subject_type TEXT NOT NULL,
subject_id TEXT NOT NULL,

relationship_type TEXT NOT NULL,

object_type TEXT NOT NULL,
object_id TEXT NOT NULL,

created_by UUID REFERENCES agents(id),

created_at TIMESTAMPTZ NOT NULL DEFAULT now()
```

);
