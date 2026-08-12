# Open Tinnitus Lab — Data Policy

## Purpose

This policy defines how Open Tinnitus Lab will handle scientific data, research materials and potentially sensitive participant information.

The guiding principles are:

> **Open where possible. Private where necessary. Responsible always.**

---

# 1. Public scientific data

Where legally and ethically possible, the project will prefer open access to:

* derived datasets
* aggregate statistics
* analysis code
* metadata
* research materials
* computational models

Data should include sufficient documentation to allow others to understand how it was produced and analyzed.

---

# 2. Copyrighted research papers

The project will not redistribute copyrighted journal articles unless the relevant license permits redistribution.

The project may store bibliographic metadata and links to legitimate sources.

Where possible, preference should be given to:

* open-access publications
* author manuscripts
* public repositories
* legally accessible full text

---

# 3. Patient data

No identifiable patient or participant data should be committed to this public GitHub repository.

This includes:

* names
* addresses
* email addresses
* telephone numbers
* medical record numbers
* precise identifying dates
* photographs
* identifiable recordings
* other information that could reasonably identify an individual

---

# 4. Health data

Tinnitus-related information may constitute sensitive health information.

Any future collection of participant data must have an appropriate governance framework before collection begins.

This may require:

* informed consent
* ethical review
* data protection assessment
* secure infrastructure
* access controls
* retention policies
* participant rights procedures

---

# 5. Data minimisation

The project should collect only the information necessary for a defined research purpose.

The fact that data might be interesting is not sufficient justification for collecting it.

---

# 6. Anonymisation and pseudonymisation

Removing a name does not necessarily make health data anonymous.

The project must consider whether individuals could be re-identified by combining multiple pieces of information.

Sensitive datasets should therefore be assessed for re-identification risk before public release.

---

# 7. Public repository rule

The following should never be committed to the repository:

* passwords
* API keys
* authentication tokens
* private credentials
* identifiable participant information
* confidential clinical records
* unpublished confidential research data

---

# 8. Research datasets

Future research datasets should include metadata describing:

* origin
* collection method
* population
* variables
* processing
* exclusions
* transformations
* licensing
* consent conditions
* known limitations

---

# 9. External datasets

When using data from another organization, the project must respect the dataset's:

* license
* terms of use
* consent restrictions
* attribution requirements
* access controls

The project will not assume that publicly accessible data is automatically free to redistribute.

---

# 10. Data provenance

Important datasets should have a traceable provenance.

Where practical, record:

```text
Source
  ↓
Raw data
  ↓
Cleaning
  ↓
Transformation
  ↓
Analysis
  ↓
Derived result
```

Derived results should be traceable back to the source data and processing steps.

---

# 11. Versioning

Important datasets and analyses should be version controlled or otherwise archived.

Changes should be documented.

Where a dataset is updated, the project should preserve sufficient information to determine which version produced a particular result.

---

# 12. External research repositories

For large datasets or research artifacts, the project may use dedicated research repositories rather than GitHub.

Potential infrastructure may include repositories designed for:

* research datasets
* persistent identifiers
* versioned research materials
* preregistration
* archival

The Open Science Framework is one example of infrastructure designed to support transparent research workflows, including projects, registrations and research materials.

---

# 13. Data licensing

Code in this repository is licensed separately under Apache License 2.0.

Scientific datasets may require different licenses depending on:

* source
* consent
* copyright
* privacy
* contributor agreements

A dataset must not automatically inherit the software license.

---

# 14. Participant ownership and control

If participants contribute personal or health-related information, the project should clearly explain:

* what is collected
* why it is collected
* how it will be used
* who can access it
* how long it will be retained
* whether it will be shared
* whether participants can withdraw

These requirements must be established before participant data collection begins.

---

# 15. Security

Any infrastructure holding non-public research data should use appropriate:

* authentication
* authorization
* encryption
* backups
* logging
* access controls

Security requirements will increase as the sensitivity and scale of the data increase.

---

# 16. Data breaches

If sensitive data is accidentally exposed, the project should:

1. Restrict access immediately.
2. Preserve relevant logs.
3. Determine what information was exposed.
4. Assess potential harm.
5. Follow applicable legal and ethical requirements.
6. Notify affected parties where required.
7. Document the incident and corrective action.

---

# 17. Guiding principle

Open science does not mean making everything public.

The objective is:

> **Maximum scientific openness consistent with participant privacy, ethical obligations, law and responsible research practice.**
