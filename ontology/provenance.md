# OTL-O Provenance

This document defines how OTL-O records the origin, history, and traceability of scientific information.

Provenance is a core requirement of the Open Tinnitus Lab.

Every important scientific assertion should be traceable to the source from which it was obtained.

---

## Provenance principles

OTL-O follows these principles:

1. Scientific claims should be traceable to their sources.
2. Sources should be identified using persistent identifiers where possible.
3. Extracted information should remain distinguishable from interpretation.
4. AI-generated interpretations must be identified as such.
5. Human review should be recorded.
6. Changes to important scientific records should be traceable.
7. Conflicting sources should remain independently represented.

---

## Provenance record

A Provenance record may contain:

- `id`
- `source_type`
- `title`
- `authors`
- `publication`
- `year`
- `identifier`
- `url`
- `access_date`
- `location`
- `extracted_by`
- `reviewed_by`
- `review_status`

---

## Source types

Initial source types include:

- peer reviewed publication
- preprint
- clinical trial registry
- consensus statement
- systematic review
- meta analysis
- dataset
- patient report
- expert statement
- other

The source type describes the origin of the information.

It does not determine whether the information is scientifically correct.

---

## Persistent identifiers

OTL-O should use persistent identifiers whenever available.

Examples include:

- DOI
- PubMed ID
- clinical trial registration number
- dataset identifier
- other recognised persistent identifier

A persistent identifier is preferred over a simple URL because URLs may change over time.

---

## Source location

Where possible, provenance should identify the specific location within a source from which information was extracted.

Examples include:

- page number
- section
- table
- figure
- supplementary material
- paragraph
- dataset field

This allows another researcher to independently verify the extracted information.

---

## Extraction provenance

OTL-O distinguishes the original source from the process used to extract information from that source.

An extraction record should identify:

- source
- extracted information
- extraction date
- extractor
- extraction method
- review status

The extractor may be:

- human
- AI
- automated system
- human and AI

---

## AI extraction

AI may be used to extract structured information from scientific literature.

AI extraction must not be treated as equivalent to human verification.

An AI-generated extraction should therefore record:

- AI system
- extraction date
- source
- extracted claim
- confidence if available
- review status

AI systems may assist with evidence extraction but cannot independently establish scientific validity.

---

## Human verification

Where an AI-generated extraction is reviewed by a human, the review should be recorded separately.

The record should identify:

- reviewer
- review date
- reviewed object
- review outcome
- corrections

---

## Review outcomes

A review may result in:

- `accepted`
- `accepted_with_correction`
- `rejected`
- `disputed`
- `requires_further_review`

The review outcome applies to the specific extracted or interpreted object being reviewed.

It does not necessarily apply to the underlying scientific publication.

---

## Version provenance

Scientific records may change as new evidence becomes available.

Important changes should preserve:

- previous version
- new version
- change date
- person or system making the change
- reason for change

Historical versions should not be silently overwritten when doing so would remove meaningful scientific history.

---

## Change provenance

Changes to ontology definitions should record:

- previous definition
- new definition
- reason for change
- supporting evidence
- change author
- date
- version

This allows the ontology itself to be scientifically audited.

---

## Provenance of hypotheses

A Hypothesis should record where it originated.

Possible origins include:

- published literature
- observed contradiction
- research gap
- experimental result
- computational analysis
- expert proposal
- AI-generated proposal
- Open Tinnitus Lab researcher proposal

---

## Provenance of AI-generated hypotheses

AI may propose hypotheses based on existing evidence.

An AI-generated hypothesis must remain explicitly identified as AI-generated until independently reviewed.

The provenance record should include:

- AI system
- model version where available
- generation date
- source evidence used
- human reviewer
- review status
- subsequent validation

An AI-generated hypothesis is not evidence merely because it is scientifically plausible.

---

## Provenance requirements

For OTL-O 0.1, the following minimum provenance should be retained for important scientific claims:

- source
- persistent identifier where available
- source location where available
- extraction method
- extraction date
- review status

Future versions should expand provenance to support complete machine-readable research lineage.

---

## Provenance and reproducibility

The goal of provenance is reproducibility.

A researcher should be able to determine:

1. where a claim came from;
2. what information was extracted;
3. how it was interpreted;
4. who or what performed the extraction;
5. whether the interpretation was reviewed;
6. what subsequent evidence changed its status.

This creates an auditable chain from source literature to the current state of the OTL-O knowledge base.

---

## Version

Current provenance specification version:

**OTL-O Provenance 0.1.0**


