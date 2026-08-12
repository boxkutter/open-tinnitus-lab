# OTL-O Evidence Model

This document defines how scientific evidence is represented in the Open Tinnitus Lab Ontology (OTL-O).

Evidence is the bridge between scientific observations and scientific claims.

OTL-O treats evidence as structured information rather than as a simple true/false indicator.

---

## Evidence principles

Evidence should preserve:

- its source
- the observation or result
- the claim it relates to
- the direction of the evidence
- the type of evidence
- replication status
- consistency
- limitations
- provenance

Evidence may support a claim.

Evidence may contradict a claim.

Evidence may also be ambiguous or insufficient to determine whether a claim is supported.

---

## Evidence record

Conceptually, an Evidence record may contain:

- `id`
- `study`
- `claim`
- `supports`
- `contradicts`
- `evidence_type`
- `result`
- `effect_size`
- `replication`
- `consistency`
- `limitations`
- `provenance`

---

## Evidence type

Evidence type describes the nature of the evidence.

Initial values include:

- anecdotal
- expert opinion
- descriptive
- observational
- correlational
- predictive
- mechanistic
- experimental
- interventional
- causal

Evidence type should not be confused with evidence quality.

For example, two observational studies may differ substantially in methodological quality.

---

## Direction of evidence

Evidence may have different relationships to a claim.

Initial values include:

- supports
- contradicts
- partially supports
- ambiguous
- no clear evidence

The direction of evidence must always be evaluated in relation to a specific claim.

A study does not simply produce "positive" or "negative" evidence in isolation.

---

## Replication

Replication describes whether a finding has been reproduced.

Initial values include:

- not tested
- single study
- partial replication
- independent replication
- multiple independent replications

Replication should distinguish independent reproduction from repeated analyses of the same underlying dataset.

---

## Consistency

Consistency describes the degree to which evidence from different sources agrees.

Initial values include:

- consistent
- mostly consistent
- mixed
- mostly inconsistent
- inconsistent
- unknown

Mixed or inconsistent evidence should remain visible in the knowledge base.

The purpose of OTL-O is not to select the most convenient interpretation.

---

## Limitations

Evidence should retain important limitations reported by the original study.

Examples include:

- small sample size
- selection bias
- measurement limitations
- missing control group
- confounding
- short follow-up
- inadequate blinding
- statistical uncertainty
- multiple comparisons
- lack of replication
- limited generalisability

Limitations should be recorded separately from the evidence result.

A limitation does not automatically invalidate a finding.

---

## Effect size

Where reported, quantitative effect sizes should be retained.

Examples include:

- mean difference
- standardized mean difference
- odds ratio
- risk ratio
- hazard ratio
- correlation coefficient
- regression coefficient

The original measure and units should be preserved where possible.

Effect size should not be converted into a universal evidence score.

---

## Evidence status

OTL-O distinguishes several stages of scientific support.

Initial values include:

- reported
- associated
- replicated
- mechanistically supported
- experimentally supported
- causally supported
- established
- contested
- contradicted
- unresolved

These statuses describe the current state of evidence for a particular claim.

They do not represent an absolute measure of scientific truth.

---

## Claim status versus evidence status

A Claim has a scientific status.

Evidence provides information that may change that status.

For example:

Claim:

A particular biological process maintains persistent tinnitus.

Initial status:

hypothesized

New study:

supports the hypothesis.

The claim may then become:

supported

Additional independent studies may later result in:

replicated

Further mechanistic and intervention evidence may eventually result in:

mechanistically supported

or:

causally supported

---

## Contradictory evidence

Contradictory evidence is a first-class research object in OTL-O.

If one study supports a hypothesis and another study contradicts it, both results must be retained.

The ontology should record:

- supporting evidence
- contradictory evidence
- study populations
- measurement methods
- methodological differences
- possible explanations
- current status

Possible explanations for conflicting findings include:

- different tinnitus phenotypes
- different populations
- different disease stages
- different measurement instruments
- different experimental protocols
- insufficient statistical power
- confounding
- genuine biological heterogeneity
- analytical differences
- unknown factors

Contradiction should therefore trigger investigation rather than automatic selection of one result.

---

## Evidence aggregation

OTL-O does not require all evidence to be reduced to a single numerical score.

Scientific support may depend on multiple dimensions, including:

- study quality
- replication
- consistency
- effect size
- biological plausibility
- experimental evidence
- intervention evidence
- causal identification
- limitations

---

## Systematic reviews and meta-analyses

A systematic review or meta-analysis is a type of Study and Source.

It should not automatically replace the underlying primary studies in the evidence model.

Where practical, OTL-O should retain:

- the review
- the included studies
- the review's conclusions
- important methodological limitations
- disagreements between the review and individual studies

A meta-analysis may provide an aggregated effect estimate while individual studies may still contain important heterogeneity.

---

## Consensus evidence

Consensus statements should be represented as a distinct source type.

Consensus indicates agreement among the participating experts or organisations.

Consensus does not necessarily establish biological causality.

OTL-O therefore records:

- the consensus statement
- the statements on which consensus was reached
- statements where consensus was not reached
- supporting evidence
- provenance

---

## AI-generated evidence and interpretation

AI-generated text is not automatically scientific evidence.

AI may:

- identify candidate literature
- extract information
- propose hypotheses
- identify possible contradictions
- suggest relationships
- generate research questions

However, AI-generated assertions must retain their provenance and review status.

AI interpretation should remain distinguishable from findings reported by scientific studies.

---

## Version

Current evidence specification version:

**OTL-O Evidence 0.1.0**

