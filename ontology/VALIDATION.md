# OTL-O Validation

This document defines the validation strategy for the Open Tinnitus Lab Ontology (OTL-O).

The purpose of validation is to determine whether OTL-O can represent real tinnitus research accurately, consistently, and without introducing unsupported assumptions.

Validation is separate from ontology design.

An ontology may be internally coherent while still failing to represent important scientific literature.

---

## Validation objectives

OTL-O validation should determine whether the ontology can:

1. represent established tinnitus terminology;
2. represent patient-level observations;
3. represent measurements;
4. represent biological observations;
5. represent competing mechanisms;
6. represent hypotheses and predictions;
7. represent conflicting evidence;
8. represent longitudinal studies;
9. represent intervention studies;
10. preserve scientific provenance;
11. distinguish evidence from interpretation;
12. identify information that cannot currently be represented.

---

## Validation principles

Validation should use real scientific sources.

The validation set should include different types of tinnitus research rather than relying on a small number of highly similar publications.

Where possible, validation should include:

- consensus publications
- clinical studies
- observational studies
- longitudinal studies
- intervention studies
- neuroimaging studies
- auditory research
- somatosensory tinnitus research
- systematic reviews
- meta-analyses

---

## Validation dimensions

Each validation source should be evaluated across several dimensions.

### Coverage

Can the ontology represent the important concepts contained in the source?

### Precision

Can the ontology represent those concepts without changing their meaning?

### Traceability

Can every extracted scientific assertion be traced back to the source?

### Distinction

Can the ontology distinguish observations from interpretations and hypotheses?

### Consistency

Can the same concept be represented consistently across different sources?

### Contradiction handling

Can conflicting findings be represented without deleting or overriding either finding?

### Temporal representation

Can changes over time be represented accurately?

### Causal representation

Can associations be represented without incorrectly converting them into causal claims?

---

## Validation test case

Each validation source should produce a structured test case.

A test case should contain:

- source identifier
- source type
- concepts extracted
- relationships extracted
- measurements extracted
- claims extracted
- hypotheses extracted
- evidence extracted
- contradictions identified
- provenance recorded
- unresolved representation problems

---

## Competency questions

A central validation method for OTL-O is the use of competency questions.

A competency question is a question that the ontology should be able to answer if it contains the necessary information.

Initial competency questions include:

1. What tinnitus phenotype was reported?
2. What measurements were used to characterize the phenotype?
3. Which instruments produced those measurements?
4. What biological states were observed?
5. Which mechanisms have been proposed?
6. What evidence supports each mechanism?
7. What evidence contradicts each mechanism?
8. Which hypotheses remain unresolved?
9. Which studies have tested a particular hypothesis?
10. What predictions follow from a hypothesis?
11. Which interventions target a proposed mechanism?
12. What outcomes were measured following an intervention?
13. Which findings have been independently replicated?
14. Where does evidence remain contradictory?
15. What research gaps are supported by the current evidence?

These questions should become executable validation tests when a machine-readable ontology is implemented.

---

## Representation failure

A validation test should be considered a representation failure when OTL-O cannot accurately represent an important concept or relationship from the source.

Failures should be classified rather than hidden.

Initial failure categories include:

- missing entity
- missing relationship
- missing vocabulary term
- insufficient temporal representation
- insufficient measurement representation
- insufficient causal representation
- insufficient provenance
- ambiguity
- conflicting definitions
- external terminology mismatch

A representation failure should normally result in an ontology issue or proposed change.

---

## Overrepresentation

Validation must also detect cases where OTL-O represents more certainty than the source supports.

Examples include:

- converting association into causation;
- converting correlation into mechanism;
- treating an observation as an established biological process;
- treating expert consensus as causal evidence;
- treating an AI-generated hypothesis as scientific evidence.

Overrepresentation is considered a serious validation failure.

---

## Underrepresentation

Validation should identify concepts that are scientifically important but cannot currently be represented adequately.

Underrepresentation is not necessarily a reason to immediately expand the ontology.

The laboratory should first determine whether the limitation reflects:

- an ontology gap;
- insufficient scientific understanding;
- insufficient source information;
- an intentional abstraction boundary.

---

## Inter-rater validation

Where multiple researchers independently annotate the same source, their annotations should be compared.

The initial objectives are to determine:

- whether the ontology definitions are sufficiently clear;
- whether different researchers identify the same entities;
- whether relationships are interpreted consistently;
- where disagreements occur;
- which definitions require clarification.

Future validation may use formal inter-rater reliability statistics.

Potential measures include:

- Cohen's kappa
- Fleiss' kappa
- Krippendorff's alpha

The appropriate statistic will depend on the annotation task and number of annotators.

---

## AI versus human annotation

OTL-O may eventually be used to compare AI-assisted annotation with human annotation.

Such comparisons should evaluate:

- entity identification
- relationship identification
- evidence classification
- provenance extraction
- causal interpretation
- error rates
- false-positive rates
- false-negative rates

AI performance should not be evaluated solely by agreement with another AI system.

Human-reviewed reference annotations should form the basis of evaluation.

---

## Validation dataset

The laboratory should maintain a versioned validation dataset containing representative tinnitus publications.

Each validation item should include:

- source identifier
- source type
- annotation version
- ontology version
- annotated entities
- annotated relationships
- known ambiguities
- validation results

---

## Validation process

A proposed OTL-O version should pass the following stages before being considered stable:

1. conceptual review;
2. terminology review;
3. literature coverage testing;
4. competency-question testing;
5. representation-failure analysis;
6. independent annotation;
7. inter-rater analysis;
8. revision;
9. repeat validation.

Validation should be iterative.

A failed validation should normally result in an ontology change, a documented limitation, or both.

---

## Validation status

### OTL-O 0.1.0

Current status:

**Conceptual validation**

The ontology has been reviewed against representative tinnitus standardisation and consensus concepts.

This demonstrates that the conceptual model can represent major categories of tinnitus research.

It does not constitute:

- formal OWL validation;
- automated reasoner validation;
- comprehensive literature validation;
- inter-rater reliability validation;
- clinical validation.

---

## Future validation

Future versions should establish a formal benchmark containing representative tinnitus literature and independently produced reference annotations.

The benchmark should be version controlled and publicly available where copyright and licensing permit.

Validation results should themselves have provenance.

---

## Version

Current validation specification version:

**OTL-O Validation 0.1.0**


