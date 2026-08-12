# Open Tinnitus Lab — Record Formats

## Purpose

This document defines the initial human-readable representation of the scientific records used by Open Tinnitus Lab.

The formats are intentionally simple.

They are designed to be:

* readable by humans
* parseable by software
* version controllable in Git
* usable by AI systems
* convertible into PostgreSQL records
* suitable for future knowledge-graph representation

---

# 1. Source

Example:

```yaml
id: SRC-000001

type: paper

title: "Example scientific paper"

authors:
  - "Author One"
  - "Author Two"

year: 2024

journal: "Example Journal"

doi: "10.xxxx/example"

pmid: "12345678"

peer_review_status: peer_reviewed

access_status: open_access

retraction_status: not_retracted
```

---

# 2. Observation

```yaml
id: OBS-000001

source: SRC-000001

statement: >
  Participants with chronic tinnitus demonstrated
  increased measurement X compared with controls.

population:
  type: human
  condition: chronic_subjective_tinnitus
  sample_size: 142

measurement:
  name: measurement_x
  modality: eeg

result:
  direction: increased

uncertainty:
  reported: true

created_by:
  type: ai_assisted
  verified_by_human: true
```

---

# 3. Claim

```yaml
id: CLM-000001

type: associative

statement: >
  Measurement X is associated with chronic tinnitus.

source: SRC-000001

based_on:
  - OBS-000001

status: unresolved
```

---

# 4. Causal claim

Causal claims must be explicitly identified.

```yaml
id: CLM-000002

type: causal

statement: >
  Biological mechanism X contributes causally
  to persistent tinnitus.

source: SRC-000001

status: unresolved

causal_evidence:
  type: observational

causal_strength:
  level: low

limitations:
  - "Observational design"
  - "Potential confounding"
```

The system must never infer `type: causal` merely because the paper uses causal language.

---

# 5. Hypothesis

```yaml
id: H-0001

version: 1

title: Central auditory gain hypothesis

statement: >
  Increased central auditory gain contributes causally
  to persistent tinnitus in a defined subgroup
  following acoustic trauma.

status: proposed

rationale:
  - CLM-000001
  - CLM-000002

predictions:
  - P-0001
  - P-0002

created_by:
  type: human
```

---

# 6. Prediction

```yaml
id: P-0001

hypothesis: H-0001

statement: >
  If the proposed mechanism is causal, reducing
  the relevant gain mechanism should reduce
  tinnitus-related neural activity.

falsification_condition: >
  Repeated adequately controlled experiments fail
  to demonstrate the predicted relationship.

status: untested
```

---

# 7. Evidence relationship

```yaml
id: EV-000001

source_claim: CLM-000001

target_hypothesis: H-0001

relationship:
  type: supports

strength:
  overall: moderate

assessment:
  methodological_quality: moderate
  replication: low
  consistency: moderate
  causal_strength: low

rationale: >
  The observation is consistent with the hypothesis
  but does not establish causality.

review:
  status: human_verified
  reviewer: AGENT-0001
```

---

# 8. Contradictory evidence

```yaml
id: EV-000002

source_claim: CLM-000099

target_hypothesis: H-0001

relationship:
  type: contradicts

strength:
  overall: moderate

rationale: >
  The reported finding is inconsistent with a prediction
  of the hypothesis in a population with similar
  characteristics.

alternative_explanations:
  - "Different tinnitus subtype"
  - "Measurement difference"
  - "Insufficient statistical power"

review:
  status: pending
```

---

# 9. Experiment

```yaml
id: EXP-000001

title: Test of central gain prediction

type: computational

status: proposed

tests:
  - P-0001

description: >
  Analyze an independent dataset to determine whether
  the proposed neural measurement predicts tinnitus
  intensity within the relevant subgroup.

preregistration:
  status: not_registered
```

---

# 10. Result

```yaml
id: RES-000001

experiment: EXP-000001

outcome:
  type: unexpected

statement: >
  The predicted association was not observed
  in the independent dataset.

prediction_result:
  status: falsified

analysis:
  id: ANL-000001
```

---

# 11. Analysis

```yaml
id: ANL-000001

name: Central gain replication analysis

input:
  dataset: DS-000001

repository:
  url: "..."

commit:
  hash: "..."

software:
  python: "3.x"

parameters:
  model: "..."

output:
  location: "..."
```

---

# 12. AI-generated content

AI involvement must be explicit.

Example:

```yaml
created_by:
  agent_type: ai_model

model:
  provider: example
  name: example-model
  version: example-version

task:
  type: literature_extraction

human_verification:
  status: verified
  reviewer: AGENT-0001
```

The model's output should never be silently represented as human scientific judgement.

---

# 13. Status vocabulary

Initial controlled vocabulary:

```text
proposed
under_review
active
supported
partially_supported
contradicted
unresolved
inconclusive
superseded
retracted
deprecated
```

---

# 14. Relationship vocabulary

Initial relationship types:

```text
supports
contradicts
partially_supports
partially_contradicts
replicates
fails_to_replicate
refines
qualifies
depends_on
derived_from
provides_alternative_explanation
tests
predicts
produces
```

This vocabulary will evolve.

Changes should be documented rather than silently replacing old terminology.

---

# 15. IDs

IDs should be:

* unique
* stable
* human-readable where practical
* independent of database implementation

Suggested prefixes:

```text
SRC = Source
OBS = Observation
FND = Finding
CLM = Claim
H = Hypothesis
P = Prediction
EV = Evidence relationship
EXP = Experiment
RES = Result
ANL = Analysis
DS = Dataset
AGENT = Human/AI/software agent
```

---

# 16. Why YAML?

YAML is useful during the early research phase because it is:

* human-readable
* Git-friendly
* easy for AI systems to consume
* easy to convert to JSON
* easy to validate using schemas

The canonical storage format may change later.

The scientific semantics should not depend on the file format.

---

# 17. Future interoperability

The model should eventually be mapped to established research-data and provenance standards rather than becoming a proprietary island.

In particular, the project should investigate compatibility with:

* W3C PROV
* RDF
* OWL
* schema.org
* domain-specific biomedical ontologies
* established persistent identifiers

This should happen after the project's own scientific vocabulary is stable.

The goal is not to reinvent existing standards.

The goal is to create a tinnitus-specific research model that can interoperate with them.
