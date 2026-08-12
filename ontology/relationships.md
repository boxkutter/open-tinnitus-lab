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

- `has_context` → Context
- `has_exposure` → Exposure
- `has_tinnitus` → Tinnitus
- `participates_in` → Study

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

Population membership does not imply that every individual in the Population has identical characteristics.

A Population should retain the criteria used to define it where available.

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

A Tinnitus entity may:

- `has_phenotype` → Phenotype
- `has_impact` → Impact
- `has_trajectory` → Trajectory
- `has_measurement` → Measurement
- `associated_with` → BiologicalState
- `associated_with` → Exposure
- `evaluated_by` → Instrument
- `targeted_by` → Intervention

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

## Measurement relationships

A Measurement may:

- `measures` → Construct
- `uses` → Instrument
- `describes` → Observation
- `obtained_from` → Person
- `obtained_from` → Population
- `reported_by` → Study

A Measurement represents a recorded result.

The existence of a Measurement does not establish the biological interpretation of that result.
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

- `associated_with` → Tinnitus
- `associated_with` → Phenotype
- `associated_with` → BiologicalState
- `explains` → Observation
- `predicts` → Observation
- `forms_basis_of` → Hypothesis
- `targeted_by` → Intervention

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
- `tested_by` → Study
- `supported_by` → Evidence
- `contradicted_by` → Evidence

A Prediction should be sufficiently specific that a future observation could determine whether it was supported, contradicted, or unresolved.

---

## Study relationships

A Study may:

- `investigates` → ResearchQuestion
- `tests` → Hypothesis
- `tests` → Prediction
- `uses` → Instrument
- `produces` → Measurement
- `produces` → Evidence
- `evaluates` → Intervention
- `reports` → Outcome
- `has_provenance` → Provenance

---

## Evidence relationships

Evidence may:

- `derived_from` → Study
- `supports` → Hypothesis
- `contradicts` → Hypothesis
- `supports` → Mechanism
- `contradicts` → Mechanism
- `supports` → CausalRelationship
- `contradicts` → CausalRelationship
- `addresses` → ResearchQuestion
- `identifies` → ResearchGap
- `has_provenance` → Provenance

Evidence may support one claim while contradicting another.

The interpretation of Evidence must therefore always retain its relationship to the specific Claim or Hypothesis being evaluated.

---

## ResearchQuestion relationships

A ResearchQuestion may:

- `motivates` → Study
- `generates` → Hypothesis
- `has_gap` → ResearchGap
- `addressed_by` → Evidence
- `addressed_by` → Study

A ResearchQuestion may remain unresolved after multiple studies.

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

## CausalRelationship

A CausalRelationship represents a proposed or supported causal connection between two entities.

Examples include:

- Exposure `causes` Tinnitus
- Mechanism `maintains` Tinnitus
- Intervention `reverses` BiologicalState
- BiologicalState `contributes_to` Outcome

A CausalRelationship should contain:

- source entity
- target entity
- relationship type
- causal phase
- evidence status
- confidence
- provenance

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

A Provenance record may:

- `documents` → Study
- `documents` → Evidence
- `documents` → Measurement
- `documents` → Claim
- `documents` → Hypothesis
- `documents` → CausalRelationship

---

## Review relationships

A Review may:

- `reviews` → Evidence
- `reviews` → Hypothesis
- `reviews` → Mechanism
- `reviews` → Study
- `reviews` → Measurement
- `reviews` → CausalRelationship

A Review records the review process and does not itself constitute scientific evidence.

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

