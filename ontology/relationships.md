# OTL-O Relationships

This document defines the relationships between entities in the Open Tinnitus Lab Ontology (OTL-O).

Relationships describe how entities are connected.

OTL-O uses typed relationships rather than a generic "related to" relationship wherever possible.

The same two entities may have more than one relationship in different contexts.

---

## Relationship principles

Relationships should describe the scientific meaning of a connection.

For example:

- `associated_with`
- `temporally_precedes`
- `causes`
- `maintains`

are scientifically different relationships.

They must not be treated as interchangeable.

---

## Person relationships

A Person may:

- `belongs_to` → Population
- `has_context` → Context
- `has_exposure` → Exposure
- `has_tinnitus` → Tinnitus
- `participates_in` → Study
- `has_measurement` → Measurement
- `has_observation` → Observation
- `has_outcome` → Outcome

A Person represents an individual research subject.

Individual identity must not be inferred from an OTL-O identifier.

Public repositories should not contain directly identifying personal information.

---
## Outcome relationships

An Outcome may:

- `measures` → Tinnitus
- `measures` → Phenotype
- `measures` → Impact
- `measures` → BiologicalState
- `measures` → Construct
- `measured_by` → Measurement
- `associated_with` → Intervention
- `associated_with` → Exposure
- `reported_by` → Study
- `supported_by` → Evidence
- `contradicted_by` → Evidence
- `has_provenance` → Provenance
- `reviewed_by` → Review

An Outcome is a measured or observed result associated with a Study, Intervention, exposure, or biological change.

An Outcome must not automatically be interpreted as evidence of causation.

Where an Outcome is used to evaluate an Intervention, the Study design and comparator should be retained where available.

---

## Context relationships

A Context may:

- `describes` → Person
- `modifies` → Observation
- `modifies` → Measurement
- `is_part_of` → Study

A Context does not imply causality.

---

## Exposure relationships

An Exposure may:

- `experienced_by` → Person
- `associated_with` → Tinnitus
- `temporally_precedes` → Tinnitus
- `triggers` → Tinnitus
- `modifies` → Tinnitus

---

## Population relationships

A Population may:

- `includes` → Person
- `participates_in` → Study
- `has_context` → Context
- `has_exposure` → Exposure
- `has_tinnitus` → Tinnitus
- `has_phenotype` → Phenotype
- `has_endotype` → Endotype
- `has_observation` → Observation
- `has_measurement` → Measurement
- `has_outcome` → Outcome

A Population represents a defined group of individuals sharing characteristics relevant to a study or scientific analysis.

Population membership does not imply that every individual has identical characteristics.

A Population should retain its inclusion and exclusion criteria where available.

---

## Endotype relationships

An Endotype may:

- `proposed_from` → BiologicalState
- `associated_with` → Phenotype
- `associated_with` → Tinnitus
- `supported_by` → Evidence
- `contradicted_by` → Evidence
- `tested_by` → Study
- `forms_basis_of` → Hypothesis

An Endotype represents a proposed biological classification.

Association between an Endotype and a Phenotype does not establish that the Endotype causes the Phenotype.

The existence of an Endotype requires appropriate supporting evidence and provenance.

---

## Tinnitus relationships

Tinnitus may:

- `has_phenotype` → Phenotype
- `has_impact` → Impact
- `has_trajectory` → Trajectory
- `has_endotype` → Endotype
- `has_observation` → Observation
- `has_measurement` → Measurement
- `associated_with` → Exposure
- `associated_with` → BiologicalState
- `affected_by` → Intervention
- `has_provenance` → Provenance

Tinnitus represents the condition or percept being investigated.

Associations between Tinnitus and an Exposure or BiologicalState do not establish causation.

A causal interpretation must be represented explicitly through a CausalRelationship and supported by evidence.

---

## Intervention relationships

An Intervention may:

- `targets` → BiologicalState
- `targets` → Mechanism
- `intended_to_modify` → Tinnitus
- `intended_to_modify` → Phenotype
- `intended_to_modify` → Impact
- `evaluated_by` → Study
- `produces` → Outcome
- `supported_by` → Evidence
- `contradicted_by` → Evidence
- `has_provenance` → Provenance
- `reviewed_by` → Review

An Intervention may be used as a treatment, experimental manipulation, or causal test.

An Intervention must not be assumed to be effective because it targets a plausible Mechanism.

Evidence of an Intervention effect should be represented through Measurements, Observations, Outcomes, and Evidence.

A lack of observed effect is itself a scientifically relevant result and should not be discarded.

---

## Observation relationships

An Observation may:

- `about` → Person
- `about` → Population
- `about` → Tinnitus
- `about` → Phenotype
- `about` → Exposure
- `about` → BiologicalState
- `reported_by` → Study
- `supported_by` → Measurement
- `described_by` → Claim

An Observation describes a finding.

An Observation must not automatically be interpreted as a mechanism, hypothesis, or causal relationship.

An Observation may be qualitative or quantitative.

---


## Claim relationships

A Claim may:

- `describes` → Observation
- `concerns` → Phenotype
- `concerns` → BiologicalState
- `concerns` → Mechanism
- `concerns` → Intervention
- `concerns` → Outcome
- `supported_by` → Evidence
- `contradicted_by` → Evidence
- `tested_by` → Study
- `generates` → Hypothesis
- `has_provenance` → Provenance
- `reviewed_by` → Review

A Claim is a proposition asserted by a source or generated during scientific analysis.

A Claim must not be treated as established merely because it has been published.

Claims may remain unresolved, contested, or contradicted.

---


## Hypothesis relationships

A Hypothesis may:

- `concerns` → Tinnitus
- `concerns` → Phenotype
- `concerns` → BiologicalState
- `proposes` → Mechanism
- `generates` → Prediction
- `supported_by` → Evidence
- `contradicted_by` → Evidence
- `tested_by` → Study
- `derived_from` → Claim
- `has_provenance` → Provenance
- `reviewed_by` → Review

A Hypothesis is a testable proposition.

A Hypothesis may be supported, contradicted, partially supported, or unresolved.

A Hypothesis must not be treated as established solely because it is biologically plausible or widely cited.

---

## Phenotype relationships

A Phenotype may:

- `describes` → Tinnitus
- `measured_by` → Measurement
- `associated_with` → BiologicalState
- `associated_with` → Mechanism

A Phenotype-to-Mechanism relationship is not automatically causal.

---

## Impact relationships

An Impact may:

- `describes` → Tinnitus
- `measured_by` → Measurement
- `changes_over_time` → Trajectory
- `affected_by` → Intervention
- `associated_with` → Outcome

---

## Trajectory relationships

A Trajectory may:

- `describes` → Tinnitus
- `contains_state` → Phenotype
- `contains_measurement` → Measurement
- `precedes` → Trajectory
- `follows` → Trajectory

Trajectory relationships should preserve temporal order where dates or time intervals are available.

---

## Measurement relationships

A Measurement:

- `measures` → Construct
- `generated_by` → Instrument
- `performed_on` → Person
- `performed_in` → Study
- `has_provenance` → Provenance

---

## Construct relationships

A Construct may:

- `measured_by` → Instrument
- `represented_by` → Measurement
- `used_as_outcome` → Outcome
- `related_to` → Construct

The `related_to` relationship should only be used when a more specific relationship is not appropriate.

---

## Instrument relationships

An Instrument may:

- `measures` → Construct
- `generates` → Measurement
- `used_in` → Study
- `has_version` → Instrument

Different versions of an instrument should be treated as distinct where version differences could affect comparability.

---

## BiologicalState relationships

A BiologicalState may:

- `observed_in` → Person
- `associated_with` → Tinnitus
- `associated_with` → Phenotype
- `associated_with` → Impact
- `measured_by` → Measurement
- `proposed_as` → Mechanism

The relationship:

`BiologicalState → proposed_as → Mechanism`

does not establish that the biological state is the mechanism.

---

## Mechanism relationships

A Mechanism may:

- `proposed_by` → Claim
- `proposed_by` → Hypothesis
- `concerns` → BiologicalState
- `concerns` → Tinnitus
- `explains` → Observation
- `predicts` → Observation
- `generates` → Prediction
- `supported_by` → Evidence
- `contradicted_by` → Evidence
- `tested_by` → Study
- `has_provenance` → Provenance
- `reviewed_by` → Review

A Mechanism is an explanatory model describing how one or more processes may contribute to tinnitus or another research outcome.

Mechanistic plausibility does not establish causation.

A proposed Mechanism may remain unresolved even when individual components of the mechanism have supporting evidence.

---

## Hypothesis relationships

A Hypothesis may:

- `has_prediction` → Prediction
- `supported_by` → Evidence
- `contradicted_by` → Evidence
- `tested_by` → Study
- `based_on` → Mechanism
- `addresses` → ResearchQuestion
- `addresses` → ResearchGap

A Hypothesis may have both supporting and contradictory evidence.

This is intentional.

A hypothesis should not be represented as either simply "true" or "false" while evidence remains incomplete.


---

## Prediction relationships

A Prediction may:

- `derived_from` → Hypothesis
- `derived_from` → Mechanism
- `derived_from` → Claim
- `tested_by` → Study
- `supported_by` → Evidence
- `contradicted_by` → Evidence
- `has_provenance` → Provenance
- `reviewed_by` → Review

A Prediction describes an expected observation or outcome that follows from a scientific proposition.

A Prediction is distinct from an Observation.

A Prediction may subsequently be supported, partially supported, contradicted, or remain untested.


---

## Study relationships

A Study may:

- `investigates` → ResearchQuestion
- `tests` → Hypothesis
- `tests` → Prediction
- `includes` → Population
- `includes` → Person
- `includes` → Intervention
- `uses` → Instrument
- `measures` → Construct
- `produces` → Observation
- `produces` → Measurement
- `produces` → Outcome
- `reports` → Claim
- `generates` → Evidence
- `has_provenance` → Provenance
- `reviewed_by` → Review

A Study is a scientific investigation.

A Study may test a Hypothesis without confirming it.

The results of a Study must be represented through Observations, Measurements, Outcomes, Claims, and Evidence rather than being treated as automatically true conclusions.

A Study's Population should be represented as a Population entity where sufficient information is available.

A Study may contain multiple populations, comparison groups, interventions, measurements, observations, and outcomes.

---

## Evidence relationships

Evidence may:

- `supports` → Claim
- `supports` → Hypothesis
- `supports` → Mechanism
- `supports` → Prediction
- `supports` → CausalRelationship
- `contradicts` → Claim
- `contradicts` → Hypothesis
- `contradicts` → Mechanism
- `contradicts` → Prediction
- `contradicts` → CausalRelationship
- `derived_from` → Observation
- `derived_from` → Measurement
- `derived_from` → Study
- `has_provenance` → Provenance
- `reviewed_by` → Review

Evidence describes information relevant to evaluating a scientific assertion.

Evidence does not automatically establish truth.

The same body of evidence may support one Claim while contradicting another, depending on the propositions being evaluated.

Contradictory evidence must be retained rather than silently discarded.

Evidence should preserve the source, result, limitations, and provenance where available.

---

## ResearchQuestion relationships

A ResearchQuestion may:

- `concerns` → Tinnitus
- `concerns` → Phenotype
- `concerns` → Impact
- `concerns` → BiologicalState
- `concerns` → Mechanism
- `concerns` → Intervention
- `concerns` → Outcome
- `arises_from` → ResearchGap
- `generates` → Hypothesis
- `addressed_by` → Study
- `has_provenance` → Provenance
- `reviewed_by` → Review

A ResearchQuestion defines a scientific question to be investigated.

A ResearchQuestion does not imply that a particular answer is correct.

---

## ResearchGap relationships

A ResearchGap may:

- `concerns` → Tinnitus
- `concerns` → Phenotype
- `concerns` → BiologicalState
- `concerns` → Mechanism
- `concerns` → Intervention
- `concerns` → Outcome
- `identified_by` → Study
- `identified_by` → Review
- `generates` → ResearchQuestion
- `has_provenance` → Provenance

A ResearchGap represents an area where available scientific evidence is insufficient, contradictory, incomplete, or absent.

A ResearchGap must not be interpreted as evidence supporting a particular hypothesis.

A ResearchGap may result from:

- absence of evidence;
- contradictory evidence;
- inadequate measurement;
- insufficient sample size;
- insufficient longitudinal evidence;
- an understudied population;
- an unresolved biological mechanism.

---

## ResearchGap relationships

A ResearchGap may:

- `identified_by` → Evidence
- `identified_by` → Study
- `motivates` → ResearchQuestion
- `motivates` → Hypothesis
- `motivates` → Study

A ResearchGap represents a limitation in current knowledge, not necessarily a failure of existing research.

---

## Intervention relationships

An Intervention may:

- `targets` → Mechanism
- `targets` → Tinnitus
- `tested_by` → Study
- `produces` → Outcome
- `changes` → Measurement
- `provides_evidence_for` → Hypothesis

---

## Outcome relationships

An Outcome may:

- `result_of` → Intervention
- `measures` → Construct
- `measured_by` → Instrument
- `reported_by` → Study
- `supports` → Hypothesis
- `contradicts` → Hypothesis

An Outcome should not automatically be interpreted as evidence of a particular biological mechanism.

For example, improvement in tinnitus distress does not by itself establish that a proposed neural mechanism has been altered.

---

## CausalRelationship relationships

A CausalRelationship may connect:

- `cause` → Exposure
- `cause` → BiologicalState
- `cause` → Intervention
- `cause` → Tinnitus
- `cause` → Phenotype
- `cause` → Impact
- `cause` → Outcome
- `effect` → Tinnitus
- `effect` → Phenotype
- `effect` → Impact
- `effect` → BiologicalState
- `effect` → Outcome
- `supported_by` → Evidence
- `contradicted_by` → Evidence
- `tested_by` → Study
- `derived_from` → Claim
- `has_provenance` → Provenance
- `reviewed_by` → Review

A CausalRelationship represents an explicitly asserted causal connection.

The following must not be represented as CausalRelationships:

- association alone;
- correlation alone;
- temporal precedence alone;
- prediction alone;
- biological plausibility alone.

These relationships require separate relationship types.

A causal assertion must retain its supporting and contradictory evidence.

The presence of a CausalRelationship in OTL-O does not by itself establish that the relationship is scientifically established.

---

## Causal relationship vocabulary

Initial causal relationship types are:

- `risk_factor_for`
- `associated_with`
- `temporally_precedes`
- `triggers`
- `contributes_to`
- `mediates`
- `modifies`
- `maintains`
- `causes`
- `prevents`
- `reverses`

---

## Causal phase

A causal relationship may apply to a particular phase of tinnitus.

Initial phases include:

- `onset`
- `persistence`
- `exacerbation`
- `remission`
- `recurrence`

This distinction is important.

A factor associated with tinnitus onset must not automatically be assumed to maintain chronic tinnitus.

For example:

Exposure → `triggers` → Tinnitus

during:

`onset`

does not establish:

Exposure → `maintains` → Tinnitus

during:

`persistence`

---

## Contradiction relationships

A Contradiction may:

- `contradicts` → Hypothesis
- `contradicts` → Evidence
- `contradicts` → Claim
- `explains` → Contradiction
- `has_provenance` → Provenance

Contradictions should remain linked to the evidence that produced them.

---

## Provenance relationships

Provenance may:

- `describes` → Person
- `describes` → Population
- `describes` → Study
- `describes` → Observation
- `describes` → Measurement
- `describes` → Claim
- `describes` → Hypothesis
- `describes` → Prediction
- `describes` → Mechanism
- `describes` → Evidence
- `describes` → Intervention
- `describes` → Outcome
- `describes` → ResearchQuestion
- `describes` → ResearchGap
- `describes` → Contradiction
- `describes` → CausalRelationship
- `describes` → Review

Provenance records the origin and history of a research object.

---

## Review relationships

A Review may:

- `reviews` → Observation
- `reviews` → Measurement
- `reviews` → Claim
- `reviews` → Hypothesis
- `reviews` → Prediction
- `reviews` → Mechanism
- `reviews` → Evidence
- `reviews` → Study
- `reviews` → Intervention
- `reviews` → Outcome
- `reviews` → ResearchQuestion
- `reviews` → ResearchGap
- `reviews` → CausalRelationship

A Review may be performed by a human researcher, independent reviewer, AI-assisted process, or automated validation system.

Human and AI review must remain distinguishable.

---

## Contradiction relationships

A Contradiction may:

- `between` → Claim
- `between` → Observation
- `between` → Evidence
- `between` → Hypothesis
- `between` → Mechanism
- `between` → Prediction
- `between` → CausalRelationship
- `identified_by` → Study
- `identified_by` → Review
- `has_provenance` → Provenance

A Contradiction records an incompatibility, disagreement, or conflicting result.

Contradictory findings must be retained rather than silently resolved by selecting one interpretation.

A Contradiction does not necessarily mean that one of the conflicting findings is incorrect.

Differences in population, measurement method, study design, statistical power, or other factors may explain an apparent contradiction.

---



## Relationship design principle

OTL-O uses explicit relationships to prevent scientific claims from being stronger than the evidence supporting them.

In particular:

`associated_with`

must not be silently converted into:

`causes`

and:

`temporally_precedes`

must not be silently converted into:

`causes`

Causal relationships require explicit evidence and provenance.

