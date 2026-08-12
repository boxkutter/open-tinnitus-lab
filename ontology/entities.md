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

## Population

A defined group of individuals sharing characteristics relevant to a study, analysis, or scientific claim.

A Population may represent the full population of interest, a study population, a subgroup, or a comparison group.

Examples include:

- people with chronic tinnitus
- people with acute tinnitus following acoustic trauma
- people with somatosensory tinnitus
- people with tinnitus and hearing loss
- healthy controls
- treatment responders
- treatment non-responders

### Required attributes

- `id`

### Optional attributes

- size
- inclusion criteria
- exclusion criteria
- age range
- age distribution
- sex distribution
- tinnitus characteristics
- hearing characteristics
- recruitment source
- geographic context
- study context

Population characteristics may modify the interpretation and generalisability of scientific evidence.

A Population must not be treated as interchangeable with a Person or a Study.

---

## Tinnitus

A reported or observed auditory percept characterised by the perception of sound in the absence of a corresponding external acoustic stimulus.

OTL-O uses Tinnitus as the condition or phenomenon being investigated.

The presence of tinnitus does not by itself establish a particular biological mechanism.

### Optional attributes

- onset
- duration
- laterality
- temporal pattern
- percept characteristics
- severity
- phenotype
- impact

---

## Phenotype

The observable characteristics of a person's tinnitus.

A Phenotype describes what tinnitus looks, sounds, or feels like from the perspective of the individual or measurement system.

Examples include:

- laterality
- percept type
- pitch
- loudness
- temporal pattern
- modulation
- onset characteristics
- associated symptoms

Phenotype describes observable characteristics.

It must not automatically be interpreted as an underlying biological mechanism.

---

## Impact

The effects of tinnitus on an individual's functioning, wellbeing, or quality of life.

Examples include:

- distress
- sleep disruption
- concentration difficulty
- anxiety
- reduced quality of life
- occupational impairment
- social impairment

Impact should be distinguished from the tinnitus percept itself.

A high-impact tinnitus phenotype does not necessarily indicate a more severe underlying biological abnormality.

---

## Trajectory

The pattern of change in tinnitus or related observations over time.

Examples include:

- onset
- acute
- persistent
- fluctuating
- resolving
- remission
- recurrence
- exacerbation

Trajectory may describe changes in:

- tinnitus phenotype
- tinnitus impact
- biological measurements
- treatment response

Temporal change should be represented using observations and measurements where appropriate.

---

## Endotype

A proposed grouping of tinnitus based on an underlying biological mechanism or biological state.

An Endotype is a scientific hypothesis about biological heterogeneity rather than an assumption that biologically distinct tinnitus types have been established.

### Status

An Endotype may have a status such as:

- proposed
- candidate
- supported
- validated
- contested
- rejected
- unknown

An Endotype must have supporting evidence and provenance.

The existence of an Endotype must not be inferred solely from differences in phenotype.


---

## Observation

A reported or recorded finding about a Person, Population, Tinnitus, Phenotype, Exposure, BiologicalState, Intervention, or other research subject.

An Observation may be qualitative or quantitative.

Examples include:

- a participant reports continuous tinnitus;
- a study observes increased neural activity;
- tinnitus severity decreases following an intervention;
- a population has a higher prevalence of hearing loss.

An Observation describes what was observed.

It must be distinguished from an interpretation or hypothesis about why the observation occurred.

### Optional attributes

- subject
- population
- observation type
- value
- time
- source
- method
- uncertainty

An Observation may be supported by one or more Measurements.

---

## Measurement

A quantitative or structured result obtained by applying an Instrument or method to a Construct.

Examples include:

- hearing threshold
- tinnitus questionnaire score
- EEG measurement
- fMRI measurement
- otoacoustic emission measurement
- blood biomarker concentration

A Measurement records what was measured and the resulting value.

Measurement must be distinguished from the Construct being measured and the Instrument used to measure it.

See `measurements.md` for the measurement model.

---

## Construct

A property, characteristic, or theoretical concept that a researcher intends to measure.

Examples include:

- tinnitus loudness
- tinnitus distress
- hearing threshold
- neural activity
- neural synchrony
- sleep quality
- quality of life

A Construct answers:

> What is being measured?

A Construct must not be confused with the Instrument used to measure it.

---

## Instrument

A tool, questionnaire, device, assay, protocol, or other method used to obtain a Measurement.

Examples include:

- pure-tone audiometry
- Tinnitus Handicap Inventory
- Tinnitus Functional Index
- EEG
- fMRI
- otoacoustic emissions
- auditory brainstem response

An Instrument answers:

> How was the construct measured?

Instrument identity and version should be retained where available.

---

## BiologicalState

A biological condition, state, process, or activity observed or proposed to be relevant to tinnitus.

Examples include:

- cochlear injury
- reduced auditory input
- altered neural activity
- altered neural synchrony
- inflammation
- altered sensory processing
- changes in inhibitory or excitatory signalling

A BiologicalState may be:

- observed
- measured
- inferred
- proposed
- hypothesized

The status of a BiologicalState must be distinguished from the evidence supporting its existence or relevance to tinnitus.

A BiologicalState must not automatically be classified as a Mechanism.

---

## Claim

A proposition asserted by a scientific source or generated during scientific analysis.

A Claim may describe:

- an observation
- an association
- a biological relationship
- a mechanism
- a causal relationship
- an intervention effect
- a research finding

Examples include:

- tinnitus is associated with hearing loss;
- a particular neural pattern occurs in people with tinnitus;
- an intervention reduces tinnitus distress.

A Claim must retain provenance.

A Claim is not automatically true because it appears in a peer-reviewed publication.

### Optional attributes

- statement
- status
- source
- evidence
- confidence
- review status

---

## Mechanism

A proposed process or interaction through which one or more factors may contribute to the onset, persistence, modification, or resolution of tinnitus.

Examples include:

- altered central auditory processing
- maladaptive neural plasticity
- somatosensory-auditory interaction
- changes in inhibitory signalling

A Mechanism is an explanatory model.

A mechanism should be supported by evidence and must not be treated as established merely because it is biologically plausible.

---

## Hypothesis

A scientifically testable proposition that proposes a possible explanation, relationship, mechanism, or prediction.

A Hypothesis should specify, where possible:

- the proposed relationship
- the relevant population
- the relevant biological or phenotypic state
- expected observations
- predictions that could test the hypothesis
- supporting evidence
- contradictory evidence

AI-generated hypotheses must be explicitly identified as AI-generated through provenance.

---

## Prediction

A testable expected observation derived from a Claim, Hypothesis, Mechanism, or causal model.

A Prediction should specify what would be expected to occur if the underlying proposition is correct.

Examples include:

- an intervention targeting mechanism X should reduce tinnitus severity;
- individuals with biological state X should exhibit measurement Y;
- changing exposure X should alter outcome Y.

Predictions are distinct from observations.

A Prediction may subsequently be:

- supported
- partially supported
- contradicted
- not tested
- unresolved

---

## Study

A structured scientific investigation designed to answer one or more research questions.

Examples include:

- cross-sectional study
- longitudinal study
- cohort study
- case-control study
- randomized controlled trial
- experimental study
- animal study
- computational study
- systematic review
- meta-analysis
- consensus study

A Study may contain:

- Population
- ResearchQuestion
- Measurements
- Intervention
- Comparator
- Outcome
- Observation
- Claim
- Evidence

A Study must have provenance.

---

## Intervention

An action, treatment, exposure modification, procedure, or experimental manipulation intended to change a biological state, tinnitus characteristic, or outcome.

Examples include:

- pharmacological treatment
- sound-based intervention
- electrical stimulation
- magnetic stimulation
- behavioral intervention
- psychological intervention
- surgical intervention
- somatosensory intervention

An Intervention may be investigated as a treatment, experimental manipulation, or causal test.

The existence of an Intervention effect must be supported by evidence.

---

## Outcome

A measured or observed result associated with a Study, Intervention, exposure, or biological change.

Examples include:

- tinnitus severity
- tinnitus distress
- tinnitus loudness
- hearing threshold
- quality of life
- treatment response
- adverse event

An Outcome should identify the Construct and Measurement used where applicable.

---

## Evidence

Structured information that supports, contradicts, or otherwise informs a scientific Claim, Hypothesis, Mechanism, Prediction, or CausalRelationship.

Evidence may originate from:

- observations
- measurements
- studies
- systematic reviews
- meta-analyses
- consensus statements
- experimental results

Evidence should retain:

- source
- result
- evidence type
- direction
- replication
- consistency
- limitations
- provenance

Evidence is not itself a claim about truth.

See `evidence.md` for the OTL-O evidence model.

---

## ResearchQuestion

A question that a scientific investigation is intended to answer.

Examples include:

- What biological processes contribute to tinnitus persistence?
- Does hearing loss increase the risk of tinnitus?
- Does intervention X reduce tinnitus distress?
- Are there biologically distinct tinnitus endotypes?

A ResearchQuestion may generate one or more Hypotheses.

A ResearchQuestion may remain unresolved when available evidence is insufficient.

---

## ResearchGap

An identified area where available scientific evidence is insufficient, contradictory, incomplete, or absent.

Examples include:

- an untested mechanism;
- conflicting findings between studies;
- an unvalidated biomarker;
- an understudied tinnitus phenotype;
- absence of longitudinal evidence.

A ResearchGap should have provenance explaining why it has been identified.

A ResearchGap is not evidence that a particular hypothesis is correct.

---

## Contradiction

A documented incompatibility, disagreement, or conflicting result between two or more Claims, Observations, or bodies of Evidence.

A Contradiction should preserve all relevant sources rather than selecting one result as correct by default.

Possible explanations for a contradiction include:

- different populations;
- different tinnitus phenotypes;
- different measurement methods;
- different study designs;
- methodological limitations;
- statistical uncertainty;
- biological heterogeneity;
- genuine scientific disagreement;
- unknown factors.

---

## CausalRelationship

A structured assertion that one entity, event, state, exposure, intervention, or process causes or contributes to a change in another.

Examples include:

- an exposure causes tinnitus onset;
- a biological state maintains tinnitus;
- an intervention reduces tinnitus distress;
- a biological process mediates an observed relationship.

A CausalRelationship must be distinguished from:

- association;
- temporal precedence;
- correlation;
- prediction;
- mechanistic plausibility.

A CausalRelationship requires appropriate supporting evidence.

The strength or status of a causal relationship must not be inferred solely from its existence in the knowledge base.

---

## Provenance

Information describing the origin, history, extraction, interpretation, review, and modification of an OTL-O record.

Provenance may identify:

- source
- persistent identifier
- source location
- extractor
- extraction method
- extraction date
- reviewer
- review status
- version history

See `provenance.md` for the OTL-O provenance model.

---

## Review

A documented evaluation of an OTL-O record, extraction, interpretation, Claim, Hypothesis, or other research object.

A Review may be performed by:

- human researcher
- independent reviewer
- AI-assisted process
- automated validation system

AI review must remain distinguishable from human scientific review.

A Review should record:

- reviewer
- date
- object reviewed
- outcome
- corrections
- comments where applicable


---

## Entity relationships

The following high-level relationships describe how the principal OTL-O entities interact.

A Person may belong to a Population.

A Person may have a Tinnitus condition.

A Person may have one or more Contexts and Exposures.

A Tinnitus condition may have a Phenotype, Impact, and Trajectory.

A Population may be the subject of a Study.

A Study may produce Observations, Measurements, Outcomes, Claims, and Evidence.

An Observation may be described by one or more Measurements.

A Measurement measures a Construct using an Instrument.

A BiologicalState may be observed, measured, proposed, or hypothesized.

A Claim may be supported or contradicted by Evidence.

A Hypothesis may propose a Mechanism.

A Hypothesis may generate Predictions.

A Prediction may be tested by a Study.

A Study may evaluate an Intervention.

An Intervention may produce an Outcome.

A ResearchQuestion may generate one or more Hypotheses.

A ResearchGap may motivate a ResearchQuestion.

A Contradiction may exist between Claims or bodies of Evidence.

A CausalRelationship represents an explicitly asserted causal connection between relevant entities.

All important scientific assertions should have Provenance.

Scientific objects may undergo Review.

---

## Entity design principle

OTL-O separates:

**what exists or is observed**

from:

**what is measured**

from:

**what is claimed**

from:

**what is hypothesized**

from:

**what evidence supports or contradicts those assertions**

from:

**what causal relationships are ultimately established.**

This separation is fundamental to the scientific integrity of the ontology.

---

## Version

Current entity specification version:

**OTL-O Entities 0.1.1**
