# OTL-O Measurements

This document defines how measurements and assessments are represented in the Open Tinnitus Lab Ontology (OTL-O).

OTL-O deliberately separates three concepts:

1. Construct
2. Instrument
3. Measurement

This distinction is central to the ontology.

---

## Construct

A Construct is the property or concept that a researcher intends to measure.

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

---

## Instrument

An Instrument is the specific tool, questionnaire, test, device, assay, or protocol used to obtain a measurement.

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

---

## Measurement

A Measurement is the actual result obtained from applying an Instrument or method to a Construct.

A Measurement should preserve:

- what was measured
- how it was measured
- the observed value
- the unit
- when it was measured
- who or what was measured
- the study context
- the source

---

## Measurement object

Conceptually, a Measurement may contain:

- `id`
- `construct`
- `method`
- `instrument`
- `value`
- `unit`
- `time`
- `population_context`
- `source`

Not every measurement will contain every field.

Missing information should be represented using the OTL-O missingness vocabulary.

---

## Example

A hearing threshold measurement could conceptually be represented as:

```text
Measurement ID:
M-001

Construct:
hearing_threshold

Method:
pure_tone_audiometry

Instrument:
audiometer

Value:
35

Unit:
dB_HL

Frequency:
8000 Hz

Laterality:
right

Time:
2026-08-12
```

The example illustrates the distinction between the measured Construct, the method used, and the resulting value.

---

## Measurement rules

### Rule 1

The Construct must be distinct from the Instrument.

### Rule 2

The Instrument version should be retained when available.

### Rule 3

Units must be retained where applicable.

### Rule 4

Timing must be retained for longitudinal data.

### Rule 5

Measurement uncertainty should be retained where reported.

### Rule 6

Missing values must not be silently estimated.

### Rule 7

A questionnaire score must not automatically be interpreted as a biological measurement.

### Rule 8

A biological measurement must not automatically be interpreted as a causal mechanism.


---

## Initial construct domains

OTL-O initially groups measurements into several broad construct domains.

These domains are not intended to imply that all constructs within a domain share the same biological mechanism.

### Tinnitus percept

Initial constructs include:

- loudness
- pitch
- temporal characteristics
- modulation

### Tinnitus impact

Initial constructs include:

- intrusiveness
- distress
- concentration
- sleep
- quality of life
- sense of control
- ability to ignore
- acceptance

### Auditory function

Initial constructs include:

- hearing threshold
- loudness discomfort
- speech perception
- cochlear function

### Neurophysiology

Initial constructs include:

- neural activity
- neural synchrony
- evoked response
- connectivity

---

## Measurement comparability

Measurements from different studies should not automatically be treated as equivalent.

Comparability may depend on:

- construct definition
- instrument
- instrument version
- measurement protocol
- population
- timing
- units
- analysis method
- study context

Two studies may appear to measure the same construct while using materially different methods.

OTL-O therefore preserves the original measurement details wherever they are available.

---

## Longitudinal measurements

Where repeated measurements exist, each measurement should retain its own timestamp.

Historical measurements should not be overwritten by later measurements.

This allows OTL-O to represent changes in:

- tinnitus phenotype
- tinnitus impact
- biological state
- treatment response
- disease trajectory

over time.

---

## Version

Current measurements specification version:

**OTL-O Measurements 0.1.0**
