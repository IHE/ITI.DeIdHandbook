### Secondary use of IPS FHIR or CDA with Mortality Data (EHDS2)

This section demonstrates the application of the Handbook’s de-identification process to HL7 FHIR International Patient Summary (IPS) data for secondary use under the European Health Data Space (EHDS) framework. It provides both a methodological walkthrough and an implementable profile for IPS/FHIR content, analogous to the Family Planning example but tailored to EHDS roles and FHIR-native capabilities.

### Purpose and Overview

This document serves two purposes:
1. Demonstrate the step-by-step de-identification methodology from the Process chapter as applied to a concrete IPS/FHIR use case under EHDS.
2. Specify an IPS/FHIR de-identification profile that implementers can realize using FHIR-native mechanisms (Data Absent Reason, Security Labels, and Provenance), with quantitative risk targets aligned to controlled-public sharing.

Outputs include: a context analysis, a data assessment, measurable goals and risk thresholds, a two-stage architecture across EHDS actors (Data Holder → HDAB/SPE), element-by-element technique selection, validation guidance, and an implementation example.

This example applies to both IPS FHIR and CDA representations. Where examples use FHIR-native constructs (e.g., Data Absent Reason, Security Labels, Provenance), CDA employs equivalent mechanisms (e.g., `nullFlavor="MSK"` for masked elements) and CDA provenance/metadata to convey de-identification status and rationale.

### Analyze the Context

#### Purpose of data collection
Permitted secondary uses under EHDS (Article 53) drive the required data fidelity: public health monitoring, surveillance, program evaluation, and scientific research that benefits end users. The study objective is regional monitoring of a novel respiratory illness, including co-morbidities, medication/vaccination impact, mortality analysis, and occupational risk insights.

#### Data recipients
- Health Data Access Body (HDAB) operating the Secure Processing Environment (SPE)
- Authorized researchers and public health professionals per approved Data Permit
- Indirect recipients include program managers and policy stakeholders consuming derived analyses

All recipients operate under contractual controls (Data Permit, Data Use Agreement) and SPE access constraints defined by EHDS.

#### Data flow
End-to-end flow follows an EHDS-compliant, two-stage pipeline:
1) Data Holder exports pseudonymized IPS/FHIR data (Stage 1) using FHIR Bulk Data ($export) to a secure transfer endpoint.
2) HDAB imports into the SPE and applies advanced anonymization with quantitative risk assessment (Stage 2), then releases de-identified outputs to the research environment.

Figures: user journey and architecture guidance are illustrated in the EHDS M7.2 draft (see images below in Data Flows).

#### Regulatory and policy context
- EHDS Regulation (EU) 2025/327 governs secondary use; Articles 53–54 define permitted and prohibited purposes.
- HDAB obligations and permits are defined in Articles 67–69; technical guidance in M7.2 (minimisation, de-identification) and M7.5 (linkage).
- GDPR principles and local law apply; privacy by design is enforced through the SPE.

#### Scenario
The region is under threat of outbreak for a novel virus causing influenza-like-symptoms. An approved public health monitoring program wishes to review primary health information from across multiple jurisdictions for impacts of co-morbidities, mortality rates, and occupational health risks. The study also intends to review the population health impact for medication treatments, including vaccination. The purpose of the research request reflects a permitted purpose of use, Public Interest in the area of Public, Occupational Health. Data for this study represents categories from Healthcare, Medicinal products, Areas of Public Health, Areas of Occupational Health, and possibly Serious cross-border threats.

- The Data Discovery leveraging the HealthDCAT Application Profile (HealthDCAT-AP) determines that the information is available within the HDAB Information Resources, indicating data is available in a standard International Patient Summary (IPS), and mortality data in the Vital Records Death Reporting (IHE VRDR) standard formats as indicated in the conformsTo attribute (see https://healthdataeu.pages.code.europa.eu/healthdcat-ap/releases/release-5/).

- The user submits a Data Access Permit application (drawn from example at: https://data-access.dsa.ec.europa.eu/public/hta/data-access) requests data access authorization providing in the Research project-specific information section:
  - Information on the type and format of the data requested, indicates International Patient Summary format for the data, indicating the specific attributes from that standard content needed for the study and applicable de-identification methods should be used to preserve sufficient information to fulfill the study.
  - The researcher also provides a date range of access needed for a 3-year period.
  - Access justifications are provided indicating the value of the proposed research
  - The purpose of use is indicated as Scientific Research
  - Data elements requested that are sensitive include de-identification methods to be used that will retain sufficient information for the research study.

- Policy for secondary use includes data minimisation for the use of secondary health data. This includes limiting the amount, type, and granularity of data during data preparation. The application for data access includes a request for the following data and de-identification methods:
  - Pseudonymized demographics with synthetic data for date of birth (age-group), and address
    - Pseudonymized name
    - Patient location is important to the study. Address locations generalized to the initial 3-digits of the postal code for data-minimization
    - Administrative gender is an important metric in the study and will be included
    - Date of birth will be used to determine and convey a generalized age-group. The Date of birth, if included, will be Synthetic Data applied by date shifting within age-group breakdown
    - Preferred language will be omitted for data-minimization
    - Patient identifier sent as a pseudonymized identifier that is applied to the same patient over time
    - Insurance information will be omitted for data-minimization
    - Given the potential for identifying health risks to subjects of care, the data is to be reversibly pseudonymized to support tracking of patient care related to the event across health care facilities and settings.
  - Problems will be key to determining primary conditions, symptoms, co-morbidities, and clinical outcomes. Conditions will be reviewed for potential identifiable outliers for suppression.
  - Procedures will be reviewed for potential identifiable outliers for suppression.
  - Medications are needed to identify treatment and contraindication impact. Dates associated with medications are relative to incident and treatment dates. Data is collected but protected by data-shifting the study records.
  - Allergies and intolerances will support clinical outcome measures. Onset date is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records.
  - Results: Observation results are needed to inform the detection of infectious agents and clinical metrics. Observation values are needed for metrics. Observation dates are needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records.
  - Immunizations: Vaccine for type of disease is needed to assess treatments and measure mitigation results. Date of immunization is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records.
  - Medical Devices are not needed for the study. This section may be empty with a data absent reason of 'masked'.
  - Social History lifestyle factor information is needed to measure potential environmental impact including Occupation and Industry. Occupation and Industry will be reviewed for outliers and suppressed.
  - Pregnancy History: Pregnancy status is needed for the study to review potential impact of the incident on pregnancy. Estimated Delivery date is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records.
  - Mortality data is available through vital records offices. The mortality data will include pseudonymized name, pseudonymized identifier, date of death (protected by data-shifting), and cause of death (reviewed for outliers).

- The application is reviewed and a Data Access permit is granted.

Data flows:
Before the de-identification processing, EHDS 2 regulations specify that the Health Data User conducts data discovery to identify data that is available for the study, and that an application for a data permit be submitted and approved. The EHDS2 M7.2 Draft guideline on data minimisation, pseudonymisation, anonymisation and synthetic data depicts the EHDS user journey and a high-level architecture for safe disclosure of anonymized data, processing results, and synthetic data.

### Data Assessment

#### Data subject characteristics
Population includes residents across multiple jurisdictions with typical IPS scope. Vulnerable groups may exist due to stigmatized conditions or small-cell geographies; longitudinal visits increase linkability risk.

#### Data type and content
IPS is predominantly structured FHIR content (Patient, Condition, Observation, MedicationStatement, Immunization, etc.) with limited narrative. Mortality data may be linked using VRDR content. IPS resources provide well-defined elements suitable for deterministic transformation and metadata-based provenance.

#### Data attribute classification
- Direct Identifiers (DI): names, contact details, direct IDs, resource IDs when externally meaningful
- Quasi-Identifiers (QI): birthDate/age, gender, postal code, visit dates, occupations, rare codes
- Sensitive Attributes (SA): diagnoses, procedures, results, pregnancy status, cause of death
- Non-identifiers (NI): many coded clinical values once QIs are mitigated

#### Dataset properties
- Scale: multi-jurisdictional cohort with longitudinal records
- Quality: standard terminologies (SNOMED CT, LOINC, RxNorm, CVX)
- Temporal density: multiple time-stamped events per subject (high utility, higher risk)

### Attack Modeling

#### Sharing model
Controlled-public sharing within the SPE under contractual constraints (non-public release, broad authorized audience). Attack attempt likelihood is reduced but non-negligible given audience size.

#### Attack types
- Identity attacks (journalist or marketer risk)
- Attribute inference on small groups
- Membership inference for presence in cohort

#### Privacy model
Primary model: k-anonymity-based quantitative risk for released datasets; DP may be considered for query systems but is out of scope here.

### De-identification Goals

#### General goals
- Prevent identification: remove or transform DIs and reduce QIs’ distinguishability
- Control risk: meet a documented threshold appropriate to controlled-public sharing
- Preserve utility: retain fidelity for epidemiological surveillance, medication/vaccine impact, and mortality analysis

#### Specific IPS/EHDS goals
- Identifiability target: Irreversibly Pseudonymized or Anonymous, depending on study need
- Acceptable risk: Average re-identification risk ≤ 0.05 (k ≥ 20) for controlled-public sharing, with safeguards for high-risk outliers
- Temporal consistency: maintain relative intervals post date-shift to preserve clinical timelines
- Geographic granularity: generalize to 3-digit postal codes (or coarser) to maintain analytic utility while controlling risk

### Assess Re-identification Risk

#### Qualitative evaluation
1) Verify direct identifiers are removed or pseudonymized
2) Determine whether reversible links remain (readily-identifiable) or are irreversibly pseudonymized
3) If any QIs remain, a quantitative evaluation is required

#### Quantitative evaluation (k-anonymity)
Following ISO/IEC 27559, overall risk combines data risk and context risk:

\[P(\text{identification}) = P(\text{identification} \\mid \text{threat}) \times P(\text{threat})\]

- Data risk selects max or average re-identification probability across equivalence classes (e.g., \(R_{d,c}\) as average risk)
- Context risk (\(R_c\)) reflects SPE/contractual controls; for controlled-public sharing \(R_c<1\)
- Overall risk: \(R = R_d \times R_c\), compared to the project’s threshold (e.g., average ≤ 0.05)

Document the quasi-identifier set, equivalence class distribution, and final risk relative to the threshold; mitigate and re-evaluate until passed.

### Risk Mitigation and Controls

#### Multi-stage de-identification design (EHDS actors)

Stage 1 – Pseudonymization (Data Holder outside SPE)
- Configure policy to process all direct identifiers: `Patient.name`, `Patient.identifier`, `Patient.telecom`, `Patient.address` lines, and externally meaningful resource IDs
- Apply reversible pseudonyms only when tracking is required by the protocol; otherwise prefer irreversible pseudonyms for Stage 2
- Export via FHIR Bulk Data ($export) to a secure endpoint

Stage 2 – Advanced Anonymization (HDAB inside SPE)
- Import and validate; select a case-specific anonymization policy approved per Data Permit
- HDAB may use an Intermediation entity for pseudonymization and data preparation to apply approved anonymization, pseudonymization, generalization, suppression, and randomization methods according to the permit.
- Transform QIs: date shifting with preserved intervals; geographic generalization; age grouping or synthetic birth dates; suppress or generalize rare codes and occupations
- Perform quantitative risk analysis (k-anonymity) and iterate until threshold is met; perform outlier suppression for residual small cells
- Mark status with FHIR Security Labels and use Data Absent Reason where values are masked; record a Provenance trail of the process

#### FHIR-native mechanisms

| Mechanism | Description |
|-----------|-------------|
| Data Absent Reason | Extension indicating masked/unknown values |
| Security Labels | `meta.security` tags (e.g., PSEUDED, ANONYED) |
| Redaction | Remove elements containing identifiers or free text |
| Generalization | Replace precise values with ranges/categories |
| Pseudonymization | Replace identifiers with consistent pseudonyms |
{: .grid}

### Implementation and Validation

#### Design validation (pre-implementation)
1) Review input IPS data and confirm element-level technique selection
2) Produce a prototype/pilot transformed sample for stakeholder review
3) Verify the design meets project utility and privacy goals

#### Implementation validation (operational)
- Run transformations in the SPE with real data subsets
- Execute k-anonymity analysis; document results against thresholds
- Perform a second pass to remove identifying outliers (rare diagnoses, procedures, occupations, cause of death)
- Tag resources with Security Labels; apply Data Absent Reason where masking occurs; add Provenance documenting the de-identification process

### Governance, Monitoring, and Policy

- Permitted uses align to EHDS Article 53; prohibited uses to Article 54
- HDAB permits and obligations per Articles 67–69; technical guidance M7.2/M7.5
- Ongoing monitoring and periodic audit; re-evaluate risk when context, threats, or data scope change

### IPS Data Elements and De-identification Methods

Data Types: IPS content is primarily structured; text elements are minimized or scrubbed. Unrequested elements are removed for data minimisation.

| **IPS Section** | **Data Element** | **Data Type** | **Identifier Type** | **De-identification Method** |
|-----------------|------------------|---------------|---------------------|------------------------------|
| **IPS Patient** | Patient Name | Structured Data | Direct Identifier | Reversibly pseudonymized name |
| | ID | Structured Data | Direct Identifier | Reversibly pseudonymized Identifier |
| | Date of Birth | Structured Data | Quasi-identifier | Synthetic date via date shifting within age-group breakdown |
| | Gender | Structured Data | Quasi-identifier | Retained (important metric) |
| | Telecom | Structured Data | Direct Identifier | Omitted (minimisation) |
| | deceased indicator | Structured Data | Quasi-identifier | Included |
| | deceased date | Structured Data | Quasi-identifier | Date-shifted relative to shifted birth date |
| | Patient address | Structured Data | Quasi-identifier | Generalize to 3-digit postal code |
| | Preferred language | Structured Data | Minimisation | Omitted |
| | General Practitioner | Structured Data | Quasi-identifier | Omitted |
| | Insurance | Structured Data | Quasi-identifier | Omitted |
| **Problems** | Problem Type | Structured Data | — | — |
| | Description | Textual Data | Quasi-identifier | Omitted (free-text risk) |
| | Diagnosis | Structured Data | Quasi-identifier | Review for outliers; suppress if needed |
| | Severity | Structured Data | Non-identifying | Unchanged |
| | Onset Date | Structured Data | Quasi-identifier | Date-shifted relative to shifted birth date |
| | Problem Status | Structured Data | Non-identifying | Unchanged |
| **History of Procedures** | Procedure code | Structured Data | Quasi-identifier | Review for outliers; suppress |
| | Procedure description | Textual Data | — | Omitted |
| | Body site | Structured Data | Non-identifying | Unchanged |
| | Procedure date | Structured Data | Quasi-identifier | Date-shifted relative to shifted birth date |
| **Medication Summary** | Product Code | Structured Data | Non-identifying | Review for rare-code outliers |
| | Product Name/strength | Textual Data | Non-identifying | Unchanged (coded value preferred) |
| | Effective period | Structured Data | Quasi-identifier | Date-shifted relative to shifted birth date |
| | Route/dose/frequency | Structured Data | Non-identifying | Minimise if not requested |
| **Allergies** | Onset/End date | Structured Data | Quasi-identifier | Date-shifted relative to shifted birth date |
| | Other attributes | Structured Data | Non-identifying | Unchanged/minimised per permit |
| **Results** | Effective date | Structured Data | Quasi-identifier | Date-shifted relative to shifted birth date |
| | Type/value | Structured Data | Non-identifying | Unchanged |
| | Narrative/performer | Structured Data/Text | Quasi/NI | Omitted if not requested |
| **Immunizations** | Occurrence date | Structured Data | Quasi-identifier | Date-shifted relative to shifted birth date |
| | Vaccine code | Structured Data | Non-identifying | Unchanged |
| **Social History** | Occupation/Industry | Structured Data | Quasi-identifier | Review for outliers; suppress |
| **Pregnancy History** | Est. delivery date | Structured Data | Quasi-identifier | Date-shifted relative to shifted birth date |
| **Medical Devices** | — | — | Non-identifying | Omitted (masked) if not in scope |
| **VRDR content** | — | — | — | — |
| **Mortality data** | Name/Identifier | Structured Data | Direct Identifier | Reversibly pseudonymized |
| | Date of death | Structured Data | Quasi-identifier | Date-shifted within age-group |
| | Cause of death | Structured Data | Quasi-identifier | Review for outliers; suppress |

### FHIR Mechanisms and Examples

#### Data Absent Reason (example)

When Patient.name is removed during de-identification:

```json
{
  "resourceType": "Patient",
  "id": "pseudo-12345",
  "meta": {
    "security": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
        "code": "PSEUDED",
        "display": "Pseudonymized"
      }
    ]
  },
  "_name": [
    {
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
          "valueCode": "masked"
        }
      ]
    }
  ],
  "gender": "female",
  "birthDate": "1985"
}
```

#### Security Labels

FHIR resources should be labeled with appropriate security tags to indicate their de-identification status.

| Code | System | Display | Use |
|------|--------|---------|-----|
| PSEUDED | http://terminology.hl7.org/CodeSystem/v3-ObservationValue | Pseudonymized | Direct identifiers replaced by pseudonyms |
| ANONYED | http://terminology.hl7.org/CodeSystem/v3-ObservationValue | Anonymized | Meets acceptable residual risk level |
{: .grid}

### Example: IPS FHIR Bundle De-identification

This example demonstrates the de-identification of an IPS FHIR Bundle containing key resources (Patient, Condition, MedicationStatement, AllergyIntolerance, Observation, Immunization). Transformations reflect the table above and the two-stage design.

**Before De-identification (Identified Data at Data Holder):**

```json
{
  "resourceType": "Bundle",
  "type": "document",
  "entry": [
    {
      "fullUrl": "urn:uuid:patient-12345",
      "resource": {
        "resourceType": "Patient",
        "id": "patient-12345",
        "identifier": [
          {
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code": "MR"
                }
              ]
            },
            "system": "http://hospital.example.org/mrn",
            "value": "MRN123456"
          }
        ],
        "name": [
          {
            "family": "Smith",
            "given": ["John", "Robert"]
          }
        ],
        "telecom": [
          {
            "system": "phone",
            "value": "+1-555-123-4567",
            "use": "home"
          }
        ],
        "gender": "male",
        "birthDate": "1985-03-15",
        "address": [
          {
            "line": ["123 Main Street", "Apt 4B"],
            "city": "Springfield",
            "state": "IL",
            "postalCode": "62701",
            "country": "US"
          }
        ],
        "communication": [
          {
            "language": {
              "coding": [
                {
                  "system": "urn:ietf:bcp:47",
                  "code": "en"
                }
              ]
            }
          }
        ],
        "generalPractitioner": [
          {
            "reference": "Practitioner/gp-001"
          }
        ],
        "deceasedBoolean": false
      }
    },
    {
      "fullUrl": "urn:uuid:condition-001",
      "resource": {
        "resourceType": "Condition",
        "id": "condition-001",
        "subject": {
          "reference": "urn:uuid:patient-12345"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "44054006",
              "display": "Diabetes mellitus type 2"
            }
          ]
        },
        "text": {
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient has Type 2 Diabetes diagnosed in 2020</div>"
        },
        "severity": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "6736007",
              "display": "Moderate"
            }
          ]
        },
        "onsetDateTime": "2020-05-10",
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "active"
            }
          ]
        }
      }
    },
    {
      "fullUrl": "urn:uuid:medication-001",
      "resource": {
        "resourceType": "MedicationStatement",
        "id": "medication-001",
        "subject": {
          "reference": "urn:uuid:patient-12345"
        },
        "medicationCodeableConcept": {
          "coding": [
            {
              "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
              "code": "860975",
              "display": "Metformin hydrochloride 500 MG Oral Tablet"
            }
          ],
          "text": "Metformin 500mg"
        },
        "effectivePeriod": {
          "start": "2020-06-01",
          "end": "2021-12-31"
        },
        "dosage": [
          {
            "route": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "26643006",
                  "display": "Oral route"
                }
              ]
            },
            "doseAndRate": [
              {
                "doseQuantity": {
                  "value": 500,
                  "unit": "mg",
                  "system": "http://unitsofmeasure.org",
                  "code": "mg"
                }
              }
            ],
            "timing": {
              "repeat": {
                "frequency": 2,
                "period": 1,
                "periodUnit": "d"
              }
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:allergy-001",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "allergy-001",
        "patient": {
          "reference": "urn:uuid:patient-12345"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "762952008",
              "display": "Penicillin"
            }
          ]
        },
        "onsetDateTime": "2015-08-15",
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
              "code": "active"
            }
          ]
        },
        "criticality": "high",
        "reaction": [
          {
            "manifestation": [
              {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "271807003",
                    "display": "Rash"
                  }
                ]
              }
            ],
            "severity": "moderate"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:observation-001",
      "resource": {
        "resourceType": "Observation",
        "id": "observation-001",
        "status": "final",
        "subject": {
          "reference": "urn:uuid:patient-12345"
        },
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "26449-9",
              "display": "Glucose [Mass/volume] in Blood"
            }
          ]
        },
        "effectiveDateTime": "2021-03-15T10:30:00Z",
        "valueQuantity": {
          "value": 95,
          "unit": "mg/dL",
          "system": "http://unitsofmeasure.org",
          "code": "mg/dL"
        },
        "performer": [
          {
            "reference": "Practitioner/perf-001"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:immunization-001",
      "resource": {
        "resourceType": "Immunization",
        "id": "immunization-001",
        "status": "completed",
        "patient": {
          "reference": "urn:uuid:patient-12345"
        },
        "vaccineCode": {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sid/cvx",
              "code": "207",
              "display": "Moderna COVID-19 Vaccine"
            }
          ]
        },
        "occurrenceDateTime": "2021-02-10",
        "doseNumberPositiveInt": 1
      }
    }
  ]
}
```

**After Stage 1 (Pseudonymized Data - Performed by Data Holder):**

```json
{
  "resourceType": "Bundle",
  "type": "document",
  "entry": [
    {
      "fullUrl": "urn:uuid:pseudo-a1b2c3d4",
      "resource": {
        "resourceType": "Patient",
        "id": "pseudo-a1b2c3d4",
        "meta": {
          "security": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
              "code": "PSEUDED",
              "display": "Pseudonymized"
            }
          ]
        },
        "identifier": [
          {
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code": "MR"
                }
              ]
            },
            "system": "http://research.example.org/study-id",
            "value": "STUDY-PSEUDO-12345"
          }
        ],
        "_name": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode": "masked"
              }
            ]
          }
        ],
        "_telecom": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode": "masked"
              }
            ]
          }
        ],
        "gender": "male",
        "birthDate": "1985-03-15",
        "address": [
          {
            "state": "IL",
            "postalCode": "62701",
            "country": "US"
          }
        ],
        "_communication": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode": "masked"
              }
            ]
          }
        ],
        "_generalPractitioner": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode": "masked"
              }
            ]
          }
        ],
        "deceasedBoolean": false
      }
    },
    {
      "fullUrl": "urn:uuid:condition-001",
      "resource": {
        "resourceType": "Condition",
        "id": "condition-001",
        "subject": {
          "reference": "urn:uuid:pseudo-a1b2c3d4"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "44054006",
              "display": "Diabetes mellitus type 2"
            }
          ]
        },
        "_text": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "masked"
            }
          ]
        },
        "severity": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "6736007",
              "display": "Moderate"
            }
          ]
        },
        "onsetDateTime": "2020-05-10",
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "active"
            }
          ]
        }
      }
    },
    {
      "fullUrl": "urn:uuid:medication-001",
      "resource": {
        "resourceType": "MedicationStatement",
        "id": "medication-001",
        "subject": {
          "reference": "urn:uuid:pseudo-a1b2c3d4"
        },
        "medicationCodeableConcept": {
          "coding": [
            {
              "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
              "code": "860975",
              "display": "Metformin hydrochloride 500 MG Oral Tablet"
            }
          ],
          "text": "Metformin 500mg"
        },
        "effectivePeriod": {
          "start": "2020-06-01",
          "end": "2021-12-31"
        },
        "dosage": [
          {
            "_route": {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                  "valueCode": "masked"
                }
              ]
            },
            "doseAndRate": [
              {
                "doseQuantity": {
                  "value": 500,
                  "unit": "mg",
                  "system": "http://unitsofmeasure.org",
                  "code": "mg"
                }
              }
            ],
            "timing": {
              "repeat": {
                "frequency": 2,
                "period": 1,
                "periodUnit": "d"
              }
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:allergy-001",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "allergy-001",
        "patient": {
          "reference": "urn:uuid:pseudo-a1b2c3d4"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "762952008",
              "display": "Penicillin"
            }
          ]
        },
        "onsetDateTime": "2015-08-15",
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
              "code": "active"
            }
          ]
        },
        "criticality": "high",
        "reaction": [
          {
            "manifestation": [
              {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "271807003",
                    "display": "Rash"
                  }
                ]
              }
            ],
            "severity": "moderate"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:observation-001",
      "resource": {
        "resourceType": "Observation",
        "id": "observation-001",
        "status": "final",
        "subject": {
          "reference": "urn:uuid:pseudo-a1b2c3d4"
        },
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "26449-9",
              "display": "Glucose [Mass/volume] in Blood"
            }
          ]
        },
        "effectiveDateTime": "2021-03-15T10:30:00Z",
        "valueQuantity": {
          "value": 95,
          "unit": "mg/dL",
          "system": "http://unitsofmeasure.org",
          "code": "mg/dL"
        },
        "_performer": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode": "masked"
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:immunization-001",
      "resource": {
        "resourceType": "Immunization",
        "id": "immunization-001",
        "status": "completed",
        "patient": {
          "reference": "urn:uuid:pseudo-a1b2c3d4"
        },
        "vaccineCode": {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sid/cvx",
              "code": "207",
              "display": "Moderna COVID-19 Vaccine"
            }
          ]
        },
        "occurrenceDateTime": "2021-02-10",
        "doseNumberPositiveInt": 1
      }
    }
  ]
}
```

**After Stage 2 (Anonymized Data - Performed by HDAB inside SPE):**

```json
{
  "resourceType": "Bundle",
  "type": "document",
  "entry": [
    {
      "fullUrl": "urn:uuid:pseudo-a1b2c3d4",
      "resource": {
        "resourceType": "Patient",
        "id": "pseudo-a1b2c3d4",
        "meta": {
          "security": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
              "code": "ANONYED",
              "display": "Anonymized"
            }
          ]
        },
        "identifier": [
          {
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code": "MR"
                }
              ]
            },
            "system": "http://research.example.org/study-id",
            "value": "STUDY-PSEUDO-12345"
          }
        ],
        "_name": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode": "masked"
              }
            ]
          }
        ],
        "_telecom": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode": "masked"
              }
            ]
          }
        ],
        "gender": "male",
        "_birthDate": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "masked"
            },
            {
              "url": "http://example.org/fhir/StructureDefinition/age-range",
              "valueString": "35-39"
            }
          ]
        },
        "address": [
          {
            "state": "IL",
            "postalCode": "627",
            "country": "US"
          }
        ],
        "_communication": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode": "masked"
              }
            ]
          }
        ],
        "_generalPractitioner": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode": "masked"
              }
            ]
          }
        ],
        "deceasedBoolean": false
      }
    },
    {
      "fullUrl": "urn:uuid:condition-001",
      "resource": {
        "resourceType": "Condition",
        "id": "condition-001",
        "subject": {
          "reference": "urn:uuid:pseudo-a1b2c3d4"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "44054006",
              "display": "Diabetes mellitus type 2"
            }
          ]
        },
        "_text": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "masked"
            }
          ]
        },
        "severity": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "6736007",
              "display": "Moderate"
            }
          ]
        },
        "_onsetDateTime": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "masked"
            }
          ]
        },
        "onsetPeriod": {
          "start": "2020-04",
          "end": "2020-06"
        },
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "active"
            }
          ]
        }
      }
    },
    {
      "fullUrl": "urn:uuid:medication-001",
      "resource": {
        "resourceType": "MedicationStatement",
        "id": "medication-001",
        "subject": {
          "reference": "urn:uuid:pseudo-a1b2c3d4"
        },
        "medicationCodeableConcept": {
          "coding": [
            {
              "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
              "code": "860975",
              "display": "Metformin hydrochloride 500 MG Oral Tablet"
            }
          ],
          "text": "Metformin 500mg"
        },
        "_effectivePeriod": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "masked"
            }
          ]
        },
        "effectivePeriod": {
          "start": "2020-05",
          "end": "2021-11"
        },
        "dosage": [
          {
            "_route": {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                  "valueCode": "masked"
                }
              ]
            },
            "doseAndRate": [
              {
                "doseQuantity": {
                  "value": 500,
                  "unit": "mg",
                  "system": "http://unitsofmeasure.org",
                  "code": "mg"
                }
              }
            ],
            "timing": {
              "repeat": {
                "frequency": 2,
                "period": 1,
                "periodUnit": "d"
              }
            }
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:allergy-001",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "allergy-001",
        "patient": {
          "reference": "urn:uuid:pseudo-a1b2c3d4"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "762952008",
              "display": "Penicillin"
            }
          ]
        },
        "_onsetDateTime": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "masked"
            }
          ]
        },
        "onsetPeriod": {
          "start": "2015-07",
          "end": "2015-09"
        },
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
              "code": "active"
            }
          ]
        },
        "criticality": "high",
        "reaction": [
          {
            "manifestation": [
              {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "271807003",
                    "display": "Rash"
                  }
                ]
              }
            ],
            "severity": "moderate"
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:observation-001",
      "resource": {
        "resourceType": "Observation",
        "id": "observation-001",
        "status": "final",
        "subject": {
          "reference": "urn:uuid:pseudo-a1b2c3d4"
        },
        "code": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "26449-9",
              "display": "Glucose [Mass/volume] in Blood"
            }
          ]
        },
        "_effectiveDateTime": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "masked"
            }
          ]
        },
        "effectivePeriod": {
          "start": "2021-03-01",
          "end": "2021-03-31"
        },
        "valueQuantity": {
          "value": 95,
          "unit": "mg/dL",
          "system": "http://unitsofmeasure.org",
          "code": "mg/dL"
        },
        "_performer": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode": "masked"
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:immunization-001",
      "resource": {
        "resourceType": "Immunization",
        "id": "immunization-001",
        "status": "completed",
        "patient": {
          "reference": "urn:uuid:pseudo-a1b2c3d4"
        },
        "vaccineCode": {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sid/cvx",
              "code": "207",
              "display": "Moderna COVID-19 Vaccine"
            }
          ]
        },
        "_occurrenceDateTime": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "masked"
            }
          ]
        },
        "occurrencePeriod": {
          "start": "2021-02-01",
          "end": "2021-02-28"
        },
        "doseNumberPositiveInt": 1
      }
    }
  ]
}
```

**Key De-identification Changes:**

| Element | Original | Stage 1 (DH) | Stage 2 (HDAB/SPE) | Transformation |
|---------|----------|--------------|-------------------|-----------------|
| **Patient** | | | | |
| Patient.id | patient-12345 | pseudo-a1b2c3d4 | pseudo-a1b2c3d4 | Pseudonymized (reversible) |
| Patient.identifier | MRN123456 | STUDY-PSEUDO-12345 | STUDY-PSEUDO-12345 | Pseudonymized (reversible) |
| Patient.name | Smith, John Robert | masked | masked | Removed with Data Absent Reason |
| Patient.telecom | +1-555-123-4567 | masked | masked | Removed with Data Absent Reason |
| Patient.birthDate | 1985-03-15 | 1985-03-15 | masked (age range: 35-39) | Date-shifted, then generalized to age range |
| Patient.address.postalCode | 62701 | 62701 | 627 | Generalized to 3-digit ZIP |
| Patient.communication | en | masked | masked | Omitted for data minimization |
| Patient.generalPractitioner | Practitioner/gp-001 | masked | masked | Omitted for data minimization |
| Patient.deceasedBoolean | false | false | false | Included (unchanged) |
| Patient.gender | male | male | male | Included (important metric) |
| **Condition (Problems)** | | | | |
| Condition.code | 44054006 (Diabetes type 2) | 44054006 | 44054006 | Unchanged (may be reviewed for outliers) |
| Condition.text | "Patient has Type 2 Diabetes..." | masked | masked | Omitted due to free text privacy issues |
| Condition.severity | Moderate | Moderate | Moderate | Unchanged (non-identifying) |
| Condition.onsetDateTime | 2020-05-10 | 2020-05-10 | masked (period: 2020-04 to 2020-06) | Date-shifted relative to shifted birth date |
| Condition.clinicalStatus | active | active | active | Unchanged (non-identifying) |
| **MedicationStatement** | | | | |
| MedicationStatement.medicationCodeableConcept | 860975 (Metformin) | 860975 | 860975 | Unchanged (may be reviewed for outliers) |
| MedicationStatement.effectivePeriod | 2020-06-01 to 2021-12-31 | 2020-06-01 to 2021-12-31 | masked (2020-05 to 2021-11) | Date-shifted relative to shifted birth date |
| MedicationStatement.dosage.route | Oral route | masked | masked | Removed for data minimization |
| MedicationStatement.dosage.doseQuantity | 500 mg | 500 mg | 500 mg | Unchanged (non-identifying) |
| MedicationStatement.dosage.timing | 2x daily | 2x daily | 2x daily | Unchanged (non-identifying) |
| **AllergyIntolerance** | | | | |
| AllergyIntolerance.code | 762952008 (Penicillin) | 762952008 | 762952008 | Unchanged (non-identifying) |
| AllergyIntolerance.onsetDateTime | 2015-08-15 | 2015-08-15 | masked (period: 2015-07 to 2015-09) | Date-shifted relative to shifted birth date |
| AllergyIntolerance.clinicalStatus | active | active | active | Unchanged (non-identifying) |
| AllergyIntolerance.criticality | high | high | high | Unchanged (non-identifying) |
| AllergyIntolerance.reaction.manifestation | Rash | Rash | Rash | Unchanged (non-identifying) |
| AllergyIntolerance.reaction.severity | moderate | moderate | moderate | Unchanged (non-identifying) |
| **Observation (Results)** | | | | |
| Observation.code | 26449-9 (Glucose) | 26449-9 | 26449-9 | Unchanged (non-identifying) |
| Observation.effectiveDateTime | 2021-03-15T10:30:00Z | 2021-03-15T10:30:00Z | masked (period: 2021-03-01 to 2021-03-31) | Date-shifted relative to shifted birth date |
| Observation.valueQuantity | 95 mg/dL | 95 mg/dL | 95 mg/dL | Unchanged (non-identifying) |
| Observation.performer | Practitioner/perf-001 | masked | masked | Omitted for data minimization |
| **Immunization** | | | | |
| Immunization.vaccineCode | 207 (Moderna COVID-19) | 207 | 207 | Unchanged (non-identifying) |
| Immunization.occurrenceDateTime | 2021-02-10 | 2021-02-10 | masked (period: 2021-02-01 to 2021-02-28) | Date-shifted relative to shifted birth date |
| Immunization.doseNumberPositiveInt | 1 | 1 | 1 | Unchanged (non-identifying) |
| **Meta** | | | | |
| Meta.security | (none) | PSEUDED | ANONYED | Security labels added |
{:.grid}
