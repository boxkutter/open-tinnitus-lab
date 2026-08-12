# Open Tinnitus Lab Ontology (OTL-O)

**Version:** 0.1.0  
**Status:** Draft / experimental  
**Specification ID:** OTL-ONTOLOGY

## Purpose

OTL-O is a research ontology for representing tinnitus observations, measurements, evidence, hypotheses, mechanisms, causal claims, interventions, outcomes, and provenance.

It is designed to support:

- systematic literature review;
- structured evidence extraction;
- AI-assisted research;
- reproducible analysis;
- scientific hypothesis generation;
- causal-model development;
- human/AI collaboration.

OTL-O does **not** replace clinical diagnostic classifications or existing tinnitus consensus standards. Where established terminology exists, the project should reuse or reference it.

## Core principle

The ontology separates:

1. real-world observations;
2. measurements;
3. scientific evidence;
4. interpretations and mechanisms;
5. hypotheses and predictions;
6. causal claims.

An association must never silently become a causal claim.

## Top-level entities

- Person
- Context
- Exposure
- Tinnitus
- Phenotype
- Impact
- Trajectory
- Measurement
- Construct
- Instrument
- BiologicalState
- Mechanism
- Hypothesis
- Prediction
- Study
- Evidence
- ResearchQuestion
- ResearchGap
- Intervention
- Outcome
- CausalRelationship
- Contradiction
- Provenance
- Review

## Design rules

### 1. Evidence before interpretation

Observations should be represented separately from interpretations.

### 2. Observation and interpretation are separate

A reported observation is not automatically a biological explanation.

### 3. Association is not causation

The ontology distinguishes association, prediction, mechanistic evidence, intervention evidence, and causal evidence.

### 4. Contradictory evidence is first-class data

Evidence that contradicts a hypothesis must be retained rather than discarded.

### 5. Provenance is mandatory

Source-backed scientific claims must be traceable to their underlying evidence and publication.

### 6. Missing information must not be inferred

Missing information should be recorded as:

- `unknown`
- `not_reported`
- `not_applicable`

rather than silently inferred.

### 7. Phenotype does not imply mechanism

A tinnitus phenotype must not automatically be interpreted as evidence for a particular biological mechanism.

### 8. Candidate endotypes are not validated endotypes

The ontology may represent proposed or candidate endotypes, but they must not be treated as established biological entities without sufficient evidence.

### 9. AI-generated claims are not scientific evidence

An AI-generated hypothesis or interpretation may be recorded, but it does not become scientific evidence merely because an AI produced it.

## Conceptual architecture

## Conceptual architecture

```text
                    PERSON
                      │
          ┌───────────┼────────────┐
          │           │            │
          ▼           ▼            ▼
       CONTEXT     EXPOSURE     MEDICAL HISTORY
          │           │
          └─────┬─────┘
                ▼
             TINNITUS
                │
        ┌───────┼────────┐
        ▼       ▼        ▼
    PHENOTYPE  IMPACT  TRAJECTORY
        │
        ▼
    MEASUREMENTS
        │
        ▼
 BIOLOGICAL STATE
        │
        ▼
   MECHANISM
        │
        ▼
   HYPOTHESIS
        │
        ▼
   PREDICTION
        │
        ▼
      STUDY
        │
        ▼
     EVIDENCE
        │
        ├──────────────┐
        ▼              ▼
    SUPPORTS       CONTRADICTS
        │              │
        └──────┬───────┘
               ▼
         CAUSAL MODEL
               │
               ▼
         INTERVENTION
               │
               ▼
            OUTCOME

This represents the conceptual architecture of OTL-O. It is not itself a database schema.

               ▼
            OUTCOME
