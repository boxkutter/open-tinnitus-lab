# Open Tinnitus Lab — Scientific Ontology

## Purpose

This document defines the conceptual vocabulary used by Open Tinnitus Lab to represent tinnitus research.

The purpose is to create a common language that can be understood by:

- researchers
- clinicians
- patients
- statistical systems
- AI systems
- databases
- future knowledge graphs

The ontology is deliberately conservative.

Where established scientific terminology exists, Open Tinnitus Lab should reuse it rather than inventing a competing definition.

---

# 1. Fundamental distinction

The project distinguishes six major categories:

1. Context
2. Phenotype
3. Observation
4. Mechanism
5. Cause
6. Outcome

These categories must not be conflated.

---

# 2. Context

Context describes circumstances surrounding an individual or observation.

Examples:

- age
- sex
- occupational exposure
- noise exposure
- medication exposure
- medical history
- hearing history
- duration of tinnitus
- time since an initiating event

Context is not necessarily causal.

Example:

> A person developed tinnitus after attending a loud concert.

This establishes temporal context.

It does not by itself prove that the acoustic exposure caused the tinnitus.

---

# 3. Exposure

An exposure is an identifiable event, condition or intervention to which an individual is subjected.

Examples:

- acoustic trauma
- chronic occupational noise
- ototoxic drug
- head injury
- infection
- stress
- sleep deprivation

An exposure may be:

- suspected
- associated
- temporally related
- causally established

These must be distinguished.

---

# 4. Phenotype

A phenotype describes characteristics of an individual's tinnitus or associated condition.

Examples include:

- unilateral / bilateral
- tonal / noise-like / mixed
- continuous / intermittent
- stable / fluctuating
- pulsatile / non-pulsatile
- somatically modulated
- sound-sensitive
- associated with hearing loss
- associated with hyperacusis

A phenotype describes **what the condition looks like**.

It does not necessarily explain why it occurs.

---

# 5. Subtype

A subtype is a defined subgroup based on one or more phenotype characteristics.

For example:

> Chronic, unilateral, non-pulsatile, tonal tinnitus with measurable high-frequency hearing loss.

Subtypes should only be created when there is a scientifically defensible reason to believe the distinction is useful.

The project should avoid creating arbitrary categories merely because they are convenient for database queries.

---

# 6. Endotype

An endotype is a subgroup defined by an underlying biological mechanism or measurable biological characteristics.

Conceptually:

```text
Phenotype
"What does it look like?"

Endotype
"What biological process appears to produce it?"
