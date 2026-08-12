# OTL-O Controlled Vocabulary

This document defines the controlled vocabulary used by the Open Tinnitus Lab Ontology (OTL-O).

Controlled vocabulary is used where unrestricted terminology would make scientific data difficult to compare, search, or analyse.

The vocabulary is intentionally conservative and may be expanded as the ontology is tested against real tinnitus research.

---

## Vocabulary principles

1. Terms should have a clearly defined meaning.
2. Synonyms should map to a preferred term where possible.
3. New terms should not be added simply because they appear in a single publication.
4. Established scientific terminology should be preferred.
5. Where terminology is disputed, competing terms should be retained rather than artificially resolved.
6. Unknown or unreported information must not be inferred.
7. External terminology systems should be referenced where appropriate.

---

## Laterality

Preferred values:

- `left`
- `right`
- `bilateral`
- `midline`
- `head`
- `variable`
- `unknown`

### Definition

Laterality describes the perceived or measured spatial location of tinnitus.

It should not be used to infer a biological source.

---

## Temporal pattern

Preferred values:

- `continuous`
- `intermittent`
- `fluctuating`
- `rhythmic`
- `non_rhythmic`
- `unknown`

Temporal pattern describes the observed temporal characteristics of the tinnitus percept.

It does not by itself establish a mechanism.

---

## Percept

Preferred values:

- `tonal`
- `noise_like`
- `mixed`
- `complex`
- `unknown`

Percept describes the reported qualitative character of tinnitus.

It should not be interpreted as a direct measurement of the underlying biological signal.

---

## Evidence type

Preferred values:

- `anecdotal`
- `expert_opinion`
- `descriptive`
- `observational`
- `correlational`
- `predictive`
- `mechanistic`
- `experimental`
- `interventional`
- `causal`

Evidence type describes the nature of the evidence rather than its quality.

For example, observational evidence may be high quality or low quality depending on study design and execution.

---

## Replication

Preferred values:

- `not_tested`
- `single_study`
- `partial_replication`
- `independent_replication`
- `multiple_independent_replications`

Replication status describes whether a finding has been reproduced.

Replication does not automatically establish causality.

---

## Consistency

Preferred values:

- `consistent`
- `mostly_consistent`
- `mixed`
- `mostly_inconsistent`
- `inconsistent`
- `unknown`

Consistency describes the degree to which independent evidence agrees.

Conflicting findings should not be hidden by selecting only studies that agree.

---

## Claim status

Preferred values:

- `unobserved`
- `proposed`
- `hypothesized`
- `reported`
- `associated`
- `replicated`
- `mechanistically_supported`
- `experimentally_supported`
- `causally_supported`
- `established`
- `contested`
- `contradicted`
- `unresolved`

Claim status describes the current scientific status of a claim.

A claim should only be assigned `established` after appropriate scientific review.

AI-generated claims should normally begin as `proposed` or `hypothesized`.

---

## Mechanism status

Preferred values:

- `proposed`
- `supported`
- `strongly_supported`
- `contested`
- `contradicted`
- `established`
- `unknown`

Mechanism status describes the degree of scientific support for a proposed mechanism.

A mechanism may be supported without being established as causal.

---

## Source type

Preferred values:

- `peer_reviewed_publication`
- `preprint`
- `clinical_trial_registry`
- `consensus_statement`
- `systematic_review`
- `meta_analysis`
- `dataset`
- `patient_report`
- `expert_statement`
- `other`

Source type identifies the nature of the source from which information was obtained.

Source type must not be treated as a direct measure of scientific validity.

---

## Missingness

Preferred values:

- `unknown`
- `not_reported`
- `not_applicable`

### `unknown`

The information is relevant but its value is currently unknown.

### `not_reported`

The information may have been measured or considered, but the source does not report it.

### `not_applicable`

The field does not apply to the particular entity or observation.

Missing information must not be converted into an inferred value.

---

## Review status

Preferred values:

- `unreviewed`
- `ai_reviewed`
- `human_reviewed`
- `independently_verified`
- `disputed`

Review status describes the state of the review process.

It does not represent scientific confidence.

---

## Intervention type

Preferred values:

- `pharmacological`
- `sound_based`
- `electrical`
- `magnetic`
- `behavioral`
- `psychological`
- `surgical`
- `somatosensory`
- `combined`
- `other`

An intervention may have more than one type.

The intervention type describes what was done, not why it worked.

---

## Study type

Preferred values:

- `cross_sectional`
- `longitudinal`
- `case_control`
- `cohort`
- `randomized_controlled_trial`
- `clinical_trial`
- `observational`
- `experimental`
- `animal`
- `in_vitro`
- `computational`
- `systematic_review`
- `meta_analysis`
- `consensus`
- `other`

A study may have more than one applicable classification.

For example, a longitudinal observational cohort study may be represented as:

- `longitudinal`
- `observational`
- `cohort`

---

## Causal phase

Preferred values:

- `onset`
- `persistence`
- `exacerbation`
- `remission`
- `recurrence`

Causal phase identifies the stage of the tinnitus trajectory to which a causal claim applies.

This prevents a factor associated with onset from automatically being classified as a factor maintaining persistent tinnitus.

---

## Vocabulary governance

New controlled vocabulary terms should be introduced through a documented change.

A proposed term should include:

- preferred name
- definition
- reason for inclusion
- source or evidence
- relationship to existing terms

Terms should not be removed solely because they become unfashionable.

Where a scientific concept becomes disputed, the term should normally remain available with an appropriate status rather than being silently deleted.

---

## External terminology

OTL-O should eventually provide mappings to established terminology systems where useful.

Potential mappings include:

- SNOMED CT
- ICD
- MeSH
- UMLS

These mappings are not yet implemented in version 0.1.0.

---

## Version

Current vocabulary version:

**OTL-O Vocabulary 0.1.0**

The vocabulary is expected to evolve as the ontology is tested against real scientific literature.

