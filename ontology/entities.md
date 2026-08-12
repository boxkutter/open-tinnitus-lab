# OTL-O Entities

This document defines the entities used by the Open Tinnitus Lab Ontology (OTL-O).

An entity represents a distinct type of thing, observation, concept, process, or research object that the laboratory needs to describe.

The ontology intentionally separates observations, measurements, evidence, interpretations, and hypotheses.

---

## Person

An individual participating in, reported by, or otherwise associated with a study.

A Person may be a research participant, patient, control participant, or other individual relevant to a research dataset.

### Required attributes

- `id`
- `source`

### Optional attributes

- demographics
- medical history
- hearing history
- exposure history
- tinnitus history

### Privacy

Public repositories must not contain directly identifying personal information.

Individual-level research data should normally be represented using pseudonymous identifiers or aggregate data.

---

## Context

Circumstances relevant to a Person, Study, Measurement, or Observation.

Examples include:

- age
- sex
- occupational environment
- hearing history
- medication exposure
- medical history
- sleep
- relevant environmental conditions
- study setting

Context is descriptive.

A Context entity must not automatically be interpreted as a causal factor.

---

## Exposure

An event, condition, agent, or circumstance to which an individual or population was exposed.

Examples include:

- acoustic trauma
- occupational noise
- recreational noise
- medication
- ototoxic exposure
- head injury
- infection
- surgery
- environmental exposure

An Exposure may subsequently be investigated as:

- risk factor
- trigger
- initiating factor
- maintaining factor
- modifier
- protective factor
- unknown

These interpretations require evidence.

---

## Tinnitus

The tinnitus condition or percept being studied.

OTL-O represents tinnitus as a phenomenon and does not assume that all tinnitus has the same biological mechanism.

Tinnitus may have multiple phenotypes, trajectories, causes, maintaining factors, and biological mechanisms.

---

## Phenotype

Observable characteristics of tinnitus.

Initial phenotype attributes include:

- onset
- duration
- laterality
- percept
- temporal pattern
- pulsatility
- pitch
- loudness
- modulation
- associated features

Phenotype describes what is observed.

It does not, by itself, establish a biological mechanism.

---

## Impact

The effect tinnitus has on an individual.

Initial domains include:

- intrusiveness
- distress
- ability to ignore
- concentration
- sleep
- sense of control
- acceptance
- mood
- quality of life
- functional impact

Impact is distinct from the tinnitus percept itself.

For example, two people may report similar tinnitus percepts but experience substantially different levels of impact.

---

## Trajectory

The time-dependent course of tinnitus.

Possible trajectory states include:

- onset
- acute
- resolving
- persistent
- remission
- recurrence
- exacerbation
- fluctuation

Trajectory should be represented using timestamped observations rather than overwriting previous states.

A trajectory may therefore represent patterns such as:

```text
onset
  ↓
acute
  ↓
resolving
  ↓
remission

or:

onset
  ↓
persistent
  ↓
exacerbation
  ↓
partial remission
  ↓
recurrence

---

## Measurement

An actual measurement or assessment performed on a Person, population, biological system, or other research subject.

A Measurement records an observed value or result.

Conceptually, a Measurement contains:

- construct
- method
- instrument
- value
- unit
- time
- context
- source

A Measurement must remain distinct from the Construct being measured and the Instrument used to measure it.

---

## Construct

The concept or property that a Measurement is intended to measure.

Examples include:

- tinnitus loudness
- tinnitus intrusiveness
- tinnitus distress
- hearing threshold
- sleep quality
- neural activity
- neural synchrony
- cochlear function
- quality of life

The Construct answers:

> What are we measuring?

It does not specify how the measurement was obtained.

---

## Instrument

The specific tool, questionnaire, test, device, assay, or protocol used to obtain a Measurement.

Examples include:

- pure-tone audiometry
- Tinnitus Handicap Inventory
- Tinnitus Functional Index
- EEG
- fMRI
- otoacoustic emissions
- auditory brainstem response
- blood assay
- genetic sequencing

The Instrument answers:

> How was it measured?

The distinction between what is measured and how it is measured is important in tinnitus research standardisation.

---

## BiologicalState

An observed biological characteristic or state.

Initial biological domains include:

- peripheral auditory
- cochlear
- auditory nerve
- brainstem
- central auditory
- somatosensory
- neural network
- autonomic
- inflammatory
- metabolic
- vascular
- genetic
- other
- unknown

A BiologicalState is descriptive.

It must not automatically be classified as a Mechanism.

For example:

Observation:

increased neural synchrony

does not automatically mean:

Mechanism:

increased neural synchrony causes tinnitus

The second statement requires additional evidence.

---

## Mechanism

A proposed biological process that could explain an observation, phenotype, trajectory, or outcome.

Examples include:

- central gain
- homeostatic plasticity
- cochlear synaptopathy
- neural synchrony
- maladaptive plasticity
- auditory-somatosensory interaction
- predictive processing
- salience processing

A Mechanism must have an explicit evidence/status state.

Possible statuses include:

- proposed
- supported
- strongly supported
- contested
- contradicted
- established
- unknown

The ontology does not assume that any particular proposed tinnitus mechanism is correct.

---

## Hypothesis

A formally stated proposition that can generate testable predictions.

A Hypothesis should contain:

- identifier
- statement
- status
- predictions
- supporting evidence
- contradictory evidence
- related mechanisms
- provenance

---

## Prediction

A specific observation expected if a Hypothesis is correct.

For example, if a hypothesis proposes that a biological process maintains persistent tinnitus, it may predict that the process should differ between people whose tinnitus resolves and people whose tinnitus persists.

Predictions are important because they transform explanatory claims into testable scientific propositions.

---

## Study

A scientific investigation producing observations, measurements, results, or evidence.

Suggested attributes include:

- id
- title
- authors
- publication
- year
- study type
- population
- sample size
- intervention
- comparator
- measurements
- outcomes
- limitations
- provenance

Initial study types include:

- cross-sectional
- longitudinal
- case-control
- cohort
- randomized controlled trial
- clinical trial
- observational
- experimental
- animal
- in vitro
- computational
- systematic review
- meta-analysis
- consensus
- other

A Study may test one or more hypotheses.

---

## Evidence

A result from a Study that is relevant to a scientific Claim, Hypothesis, Mechanism, or Research Question.

Evidence should retain:

- source Study
- result
- direction
- evidence type
- replication status
- consistency
- limitations
- provenance

Evidence may:

- support a hypothesis
- contradict a hypothesis
- partially support a hypothesis
- provide no clear evidence
- remain ambiguous

Evidence must not be reduced to a simple true/false value.

---

## ResearchQuestion

A question that the laboratory intends to investigate.

A ResearchQuestion may be associated with:

- ResearchGaps
- Hypotheses
- Studies
- Evidence
- Predictions

Research Questions may evolve as evidence accumulates.

---

## ResearchGap

A scientifically meaningful unresolved question, missing evidence, contradiction, or limitation in current knowledge.

Examples include:

- lack of a validated objective biomarker
- conflicting evidence for a proposed mechanism
- absence of longitudinal evidence
- inability to distinguish tinnitus subtypes biologically
- insufficient evidence concerning a proposed intervention
- inconsistent measurement methods

A ResearchGap should ideally reference the evidence demonstrating that the gap exists.

---

## Intervention

An action intended to alter tinnitus, a biological mechanism, a phenotype, or an outcome.

Initial intervention types include:

- pharmacological
- sound-based
- electrical
- magnetic
- behavioral
- psychological
- surgical
- somatosensory
- combined
- other

An Intervention may have:

- a proposed target
- a proposed mechanism
- a measured biological effect
- a measured clinical effect
- adverse effects
- uncertainty

The proposed mechanism of an intervention must remain separate from the mechanism actually demonstrated by evidence.

---

## Outcome

A measured result representing a change following an Intervention or natural progression.

Possible outcome domains include:

- tinnitus percept
- tinnitus loudness
- tinnitus intrusiveness
- tinnitus distress
- ability to ignore
- concentration
- sleep
- sense of control
- acceptance
- mood
- quality of life
- hearing
- functional status
- adverse effects

The appropriate outcome domains may depend on the intervention being studied.

OTL-O therefore does not assume that one identical outcome set applies to every tinnitus intervention.

---

## CausalRelationship

A typed relationship between two entities that expresses a proposed or supported causal connection.

Initial relationship types include:

- risk factor for
- associated with
- temporally precedes
- triggers
- contributes to
- mediates
- modifies
- maintains
- causes
- prevents
- reverses

A CausalRelationship must include:

- evidence status
- provenance

The existence of a CausalRelationship in the knowledge base does not mean that causality has been established.

---

## Contradiction

A conflict between scientific claims, observations, studies, or interpretations.

A Contradiction should record:

- the claim in question
- supporting evidence
- contradictory evidence
- possible explanations
- current status

Possible explanations include:

- phenotype difference
- population difference
- measurement difference
- methodological difference
- statistical power
- confounding
- genuine biological heterogeneity
- unknown

Contradictions are important research objects and must not be discarded.

---

## Provenance

Information describing where a scientific assertion, measurement, observation, or interpretation came from.

Provenance should identify:

- source type
- publication or dataset
- persistent identifier
- extraction date
- extractor
- relevant location within the source where possible

Every source-backed scientific claim should have traceable provenance.

---

## Review

A record describing the review state of a scientific object.

Review may involve:

- AI review
- human review
- independent verification
- disagreement
- dispute resolution

Possible review states include:

- unreviewed
- AI reviewed
- human reviewed
- independently verified
- disputed

Review status describes the state of the review process.

It does not itself establish scientific truth.

---

## Entity design principle

The most important architectural distinction in OTL-O is:

OBSERVATION
    ↓
MEASUREMENT
    ↓
EVIDENCE
    ↓
INTERPRETATION
    ↓
HYPOTHESIS
    ↓
PREDICTION
    ↓
TEST

These stages must not be collapsed into a single "fact" object.

The purpose of this separation is to allow the Open Tinnitus Lab to represent not only what is currently believed about tinnitus, but also:

- why it is believed
- what evidence supports it
- what evidence contradicts it
- what remains uncertain
- what predictions follow from it
- what experiment could distinguish competing explanations

