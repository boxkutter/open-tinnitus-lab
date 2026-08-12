# Open Tinnitus Lab — Data Model

## Purpose

This document defines the conceptual data model used by Open Tinnitus Lab.

The purpose of the model is to represent scientific knowledge as a network of:

* sources
* observations
* findings
* claims
* hypotheses
* predictions
* evidence
* experiments
* results
* people
* datasets
* analyses

The model is designed to preserve provenance and distinguish evidence from interpretation.

---

# 1. Core principle

The fundamental unit of scientific knowledge in Open Tinnitus Lab is the **claim**.

A paper is not itself evidence for a hypothesis.

A paper is a source containing one or more observations, findings, interpretations and claims.

For example:

```text
Paper
  │
  ├── Observation
  │
  ├── Observation
  │
  ├── Interpretation
  │
  └── Causal claim
```

The project should therefore avoid relationships such as:

```text
Paper → supports → Hypothesis
```

where possible.

Instead:

```text
Paper
  ↓
Claim
  ↓
Evidence relationship
  ↓
Hypothesis
```

This allows individual claims to be evaluated independently.

---

# 2. Scientific object hierarchy

The initial conceptual hierarchy is:

```text
SOURCE
  │
  ▼
OBSERVATION
  │
  ▼
FINDING
  │
  ▼
CLAIM
  │
  ├──────────────► HYPOTHESIS
  │                    │
  │                    ▼
  │                PREDICTION
  │                    │
  │                    ▼
  │                EXPERIMENT
  │                    │
  │                    ▼
  │                  RESULT
  │                    │
  └────────────────────┘
```

Not every scientific publication follows this exact sequence.

The model therefore permits direct relationships where necessary while preserving the distinction between the different object types.

---

# 3. Source

A **Source** is an external or internal artifact from which information is obtained.

Examples:

* peer-reviewed paper
* preprint
* systematic review
* meta-analysis
* clinical guideline
* dataset
* clinical trial registry
* thesis
* conference paper
* protocol
* government report

A source should have persistent identifying information whenever available.

Examples:

* DOI
* PMID
* PMCID
* clinical-trial identifier
* repository identifier

---

# 4. Paper

A Paper is a specialized Source representing a scholarly publication.

Minimum information should include:

* title
* authors
* publication year
* journal
* DOI where available
* PubMed ID where available
* publication type
* peer-review status
* access status
* retraction/correction status

The project should preserve the distinction between:

* paper metadata
* paper full text
* claims extracted from the paper

---

# 5. Observation

An **Observation** represents something directly measured, detected or reported.

Examples:

> "Participants with tinnitus demonstrated increased activity in region X."

> "Tinnitus intensity changed after condition Y."

> "Participants with normal audiograms demonstrated reduced measure Z."

An observation should describe what was observed without automatically assigning a cause.

An observation should preferably include:

* population
* measurement
* variable
* direction
* magnitude where available
* uncertainty
* experimental conditions
* source

---

# 6. Finding

A **Finding** is the result of an analysis or experiment.

A finding may contain:

* statistical result
* effect size
* confidence interval
* p-value
* model result
* qualitative experimental result

A finding should remain linked to the observations and analysis that produced it.

---

# 7. Claim

A **Claim** is a proposition that can be evaluated as true, false, partially supported or unresolved.

Examples:

> "Chronic tinnitus is associated with increased neural activity in auditory cortex."

> "Cochlear synaptopathy contributes to tinnitus following acoustic trauma."

> "Somatosensory input can modulate tinnitus perception."

Claims must be distinguishable from observations.

---

# 8. Claim types

The initial claim types are:

### Descriptive

States what was observed.

### Associative

States that two variables are associated.

### Predictive

States that one variable predicts another.

### Mechanistic

Proposes a biological mechanism.

### Causal

Claims that changing one variable causes another.

### Therapeutic

Claims that an intervention changes a relevant outcome.

### Methodological

Makes a claim about how something should be measured or analyzed.

---

# 9. Hypothesis

A **Hypothesis** is a proposed explanation for one or more observations or findings.

A hypothesis must be:

* explicit
* testable
* falsifiable
* versioned
* associated with predictions

Example:

> H-0001: Increased central auditory gain contributes causally to persistent tinnitus in a defined subgroup following acoustic trauma.

A hypothesis is not considered established merely because it is plausible or widely cited.

---

# 10. Prediction

A **Prediction** describes an observation that should occur if a hypothesis is correct.

Example:

```text
Hypothesis:
Central auditory gain contributes causally to tinnitus.

Prediction:
Reducing the relevant gain mechanism should produce
a measurable reduction in tinnitus-related neural activity
and tinnitus perception in the affected subgroup.
```

Predictions are particularly important because they allow competing hypotheses to be distinguished.

---

# 11. Evidence

**Evidence** is a relationship between a source-derived claim/finding/observation and another scientific proposition.

Evidence should not be represented simply as:

```text
supports = true
```

Instead, the relationship should preserve:

* what is being supported or contradicted
* by which source
* how
* under what conditions
* strength assessment
* provenance
* reviewer
* date
* uncertainty

Possible relationship types include:

* supports
* contradicts
* partially_supports
* partially_contradicts
* refines
* replicates
* fails_to_replicate
* provides_alternative_explanation
* depends_on
* derived_from

---

# 12. Evidence strength

Evidence strength is an assessment, not a property automatically determined by the existence of a paper.

The initial model may use:

```text
unknown
very_low
low
moderate
high
very_high
```

However, the project should eventually separate several dimensions rather than collapsing everything into one score.

For example:

```text
methodological_quality
replication
sample_size
consistency
causal_strength
measurement_quality
publication_bias
```

A single "confidence score" should not hide these dimensions.

---

# 13. Contradiction

A **Contradiction** is an explicitly represented relationship in which two claims, findings or hypotheses cannot both be accepted without additional explanation.

Example:

```text
Claim A:
Tinnitus requires measurable hearing loss.

Claim B:
Persistent tinnitus occurs in individuals
with normal conventional audiometry.
```

The system should not immediately declare one claim false.

It should ask whether the apparent contradiction results from:

* different populations
* different definitions
* different measurements
* different disease stages
* statistical uncertainty
* methodological differences
* genuine scientific disagreement

Contradictions are research objects in their own right.

---

# 14. Experiment

An **Experiment** is a proposed or performed test of a hypothesis or prediction.

An experiment may be:

* computational
* observational
* laboratory
* animal
* human
* clinical
* simulation-based
* retrospective
* prospective

The system must distinguish proposed experiments from completed experiments.

---

# 15. Result

A **Result** records what an experiment actually produced.

A result may:

* support a prediction
* contradict a prediction
* partially support it
* produce an unexpected result
* be inconclusive

A result should never be automatically translated into a scientific conclusion.

---

# 16. Analysis

An **Analysis** is a reproducible computational or statistical procedure applied to data.

It should identify:

* input dataset
* software
* code version
* parameters
* methodology
* output
* date
* researcher/agent

Where practical, an analysis should be executable from the repository.

---

# 17. Dataset

A **Dataset** represents a collection of data used for research.

Datasets should have:

* identifier
* provenance
* creator
* source
* population
* variables
* licensing
* access conditions
* processing history

Sensitive datasets may be represented by metadata without exposing the underlying data.

This follows the FAIR principle that metadata can remain discoverable even where the underlying sensitive data cannot be openly accessed.

---

# 18. Entity

An **Entity** represents a real-world object relevant to the research.

Examples:

* brain region
* molecule
* gene
* protein
* drug
* auditory structure
* disease
* symptom
* measurement
* biological process

Entities should eventually use controlled vocabularies or established ontologies where appropriate.

This is important for interoperability. FAIR guidance specifically recommends formal, shared vocabularies and qualified relationships between research objects.

---

# 19. Person

A Person represents an individual involved in research.

Examples:

* author
* researcher
* reviewer
* contributor
* participant

Participant identity must never be exposed in the public scientific database.

---

# 20. Agent

An **Agent** is an actor that performs an operation.

An agent may be:

* human researcher
* AI model
* software process
* automated pipeline
* laboratory instrument

AI-generated material must record which model or agent produced it.

---

# 21. Provenance

Every important research object should be traceable to its origin.

For example:

```text
Research result
      │
      ▼
Analysis
      │
      ▼
Dataset
      │
      ▼
Source study
```

Or:

```text
Hypothesis
      │
      ▼
Prediction
      │
      ▼
Experiment
      │
      ▼
Result
      │
      ▼
Analysis
```

The project should preserve this chain.

Detailed provenance is a core component of FAIR research data and supports reproducibility and reuse.

---

# 22. Versioning

Scientific objects should be immutable where practical.

Instead of silently changing:

```text
H-0001
```

the project should create:

```text
H-0001 v1
H-0001 v2
H-0001 v3
```

Changes should have:

* author
* date
* reason
* previous version
* supporting evidence

This allows the project to reconstruct how scientific understanding changed.

---

# 23. Status

Scientific objects may have statuses such as:

```text
proposed
under_review
active
supported
partially_supported
contradicted
unresolved
superseded
retracted
deprecated
```

Status is always contextual.

For example:

A hypothesis may be:

```text
supported by evidence
```

without being:

```text
scientifically established
```

---

# 24. The core relationship model

The fundamental graph should look approximately like:

```text
                 ┌───────────────┐
                 │     SOURCE    │
                 └───────┬───────┘
                         │
                  contains / reports
                         │
                         ▼
                 ┌───────────────┐
                 │  OBSERVATION  │
                 └───────┬───────┘
                         │
                         ▼
                 ┌───────────────┐
                 │    FINDING    │
                 └───────┬───────┘
                         │
                         ▼
                 ┌───────────────┐
                 │     CLAIM     │
                 └───────┬───────┘
                         │
                  supports /
                 contradicts /
                    refines
                         │
                         ▼
                 ┌───────────────┐
                 │   HYPOTHESIS  │
                 └───────┬───────┘
                         │
                         ▼
                 ┌───────────────┐
                 │  PREDICTION   │
                 └───────┬───────┘
                         │
                         ▼
                 ┌───────────────┐
                 │  EXPERIMENT   │
                 └───────┬───────┘
                         │
                         ▼
                 ┌───────────────┐
                 │    RESULT     │
                 └───────┬───────┘
                         │
                         ▼
                 ┌───────────────┐
                 │    ANALYSIS   │
                 └───────────────┘
```

The important property is that **the graph is many-to-many**.

One claim can support multiple hypotheses.

One hypothesis can be supported by many independent claims.

One experiment can test multiple predictions.

One result can affect multiple hypotheses.

---

# 25. Design principle

The database should never force the scientific world into a simpler structure than the evidence warrants.

If the evidence is uncertain, the model must be able to represent uncertainty.

If two papers disagree, the model must represent disagreement.

If a hypothesis changes, the previous version must remain recoverable.

If an AI produces a claim, the system must distinguish that claim from an independently verified scientific result.

---

# 26. Implementation principle

The conceptual model is deliberately independent of a particular database technology.

The first implementation will probably use a relational database with explicit relationship tables.

A graph database may eventually be useful for exploration, but it should not be introduced merely because the project is described as a "knowledge graph."

The scientific model comes first.

The storage technology comes second.
