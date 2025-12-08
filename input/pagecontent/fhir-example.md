### HL7 FHIR IPS data for secondary use

#### Regulatory Context: EHDS 2 Secondary Use Framework

The European Health Data Space (EHDS) Regulation (EU) 2025/327 establishes a comprehensive framework for the secondary use of electronic health data across the European Union. Articles 53 and 54 define the permitted and prohibited purposes for secondary use of health data, including IPS FHIR and mortality data:

**Permitted Purposes (Article 53):**
- Improving the delivery of healthcare and treatment optimization
- Public health and occupational health surveillance, disease control, and policy-making
- Scientific research contributing to public health or health technology assessment with the aim of benefitting end users
- Education and professional training in healthcare

**Prohibited Purposes (Article 54):**
- Taking decisions detrimental to natural persons based on their electronic health data
- Developing products or services that may harm individuals, public health, or society (e.g., illicit drugs, weapons, addictive products)
- Carrying out activities in conflict with ethical provisions laid down in national law

The de-identification and data minimization techniques demonstrated in this use case ensure that FHIR IPS and mortality data can be safely used for **permitted secondary uses** (specifically, scientific research for public health purposes) while protecting individual privacy through pseudonymization and anonymization in compliance with EHDS regulations and GDPR requirements.

#### HL7 FHIR and IPS Overview

HL7 FHIR (Fast Healthcare Interoperability Resources) is a modern standard for exchanging healthcare information electronically. FHIR uses RESTful APIs and represents healthcare data as modular "resources" such as Patient, Observation, Condition, and MedicationStatement. The International Patient Summary (IPS) is a FHIR-based standard for sharing essential health information across care settings. In secondary use, FHIR IPS data is repurposed beyond direct patient care for research, public health surveillance, quality improvement, and analytics. This involves extracting and de-identifying data while preserving its utility for analysis. Secondary use of FHIR IPS data enables large-scale studies, population health management, and the development of clinical decision support tools, while ensuring compliance with privacy regulations like HIPAA and GDPR.

FHIR provides several mechanisms to support de-identification:

**Table: FHIR De-identification Mechanisms**

| Mechanism | Description |
|-----------|-------------|
| Data Absent Reason | Extension to indicate why data is missing (e.g., "masked" for privacy) |
| Security Labels | Meta.security tags to mark de-identification status and handling requirements |
| Redaction | Removal of resource elements containing identifiers |
| Generalization | Replacing precise values with ranges or categories |
| Pseudonymization | Replacing identifiers with consistent pseudonyms to maintain referential integrity |
{:.grid}

### Use Case: Public Health Monitoring with IPS FHIR

The region is under threat of outbreak for a novel virus causing influenza-like-symptoms. An approved public health monitoring program wishes to review primary health information from across multiple jurisdictions for impacts of co-morbidities, mortality rates, and occupational health risks. The study also intends to review the population health impact for medication treatments, including vaccination. The purpose of the research request reflects a permitted purpose of use, Public Interest in the area of Public, Occupational Health. Data for this study represents categories from Healthcare, Medicinal products, Areas of Public Health, Areas of Occupational Health, and possibly Serious cross-border threats.

- The Data Discovery leveraging the HealthDCAT Application Profile (HealthDCAT-AP) determines that the information is available within the HDAB Information Resources, indicating data is available in a standard International Patient Summary (IPS), and mortality data in the Vital Records Death Reporting (IHE VRDR) standard formats as indicated in the conformsTo attribute (see <https://healthdataeu.pages.code.europa.eu/healthdcat-ap/releases/release-5/>).

- The user submits a Data Access Permit application (drawn from example at: <https://data-access.dsa.ec.europa.eu/public/hta/data-access>) requests data access authorization providing in the Research project-specific information section:

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

  - Results: Observation resulted is needed to inform the detection of infectious agents and clinical metrics. Observation value is needed for metrics. Observation date is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records.

  - Immunizations: Vaccine for type of disease is needed to assess treatments and measure mitigation results. Date of immunization is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records.

  - Medical Devices are not needed for the study. This section may be empty with a data absent reason of 'masked'.

  - Social History lifestyle factor information is needed to measure potential environmental impact including Occupation and Industry. Occupation and Industry will be reviewed for outliers and suppressed.

  - Pregnancy History: Pregnancy status is needed for the study to review potential impact of the incident on pregnancy. Estimated Delivery date is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records.

  - Mortality data is available through vital records offices. The mortality data will include pseudonymized name, pseudonymized identifier, date of death (protected by data-shifting), and cause of death (reviewed for outliers).

- The application is reviewed and a Data Access permit is granted.

### Two stages of de-identification for secondary use of IPS FHIR

In this example, we assume a two-stage de-identification process where Stage 1 (pseudonymization) is performed by the Data Holder (DH) outside the Secure Processing Environment (SPE), and Stage 2 (anonymization) is performed by the Health Data Access Body (HDAB) within the SPE. The de-identification at the Data Holder typically follows basic pseudonymization practices (processing direct identifiers like patient names, contact information, and medical record numbers). The anonymization of quasi-identifiers, like patient age and geographic location, is processed by the HDAB within the SPE. The diagram below shows a workflow of the two stages of de-identification.

<figure>
  <img src="example-multi-stage-deid-fhir.png" alt="two stages of de-identification for FHIR">
  <figcaption><strong>Two stages of de-identification for FHIR IPS data</strong></figcaption>
</figure>

**Process Steps: Stage 1 - Pseudonymization (Performed by Data Holder outside SPE)**

1. Enable pseudonymization policy on the Data Holder's system.

   The Data Holder (DH) supports customization of the de-identification behavior to enable a pseudonymization policy. The pseudonymization policy covers all the attributes which are direct identifiers, like Patient.name, Patient.identifier (MRN, SSN), Patient.telecom, Patient.address, and resource IDs. For this use case, reversible pseudonymization is applied to support tracking of patient care related to the event across health care facilities and settings.

2. Export pseudonymized FHIR data.

   After properly setting the pseudonymization policy, an authorized user at the Data Holder initiates a bulk data export. The Data Holder's system performs de-identification by following the pseudonymization policy, and then exports the pseudonymized FHIR resources. The Data Holder exports the pseudonymized FHIR data using the FHIR Bulk Data Access specification (FHIR $export operation) to a secure storage location or FHIR server.

3. Transfer the pseudonymized data to the HDAB/SPE.

   The pseudonymized FHIR data is transferred via a secure network connection (e.g., HTTPS, SFTP) or through encrypted portable media to the HDAB. Access is controlled through authentication and authorization mechanisms. The data is prepared for import into the Secure Processing Environment.

**Process Steps: Stage 2 - Anonymization (Performed by HDAB inside SPE)**

1. Import the pseudonymized FHIR data into the SPE.

   The HDAB imports the pseudonymized FHIR data into the Secure Processing Environment. The system validates the FHIR resources and prepares them for advanced anonymization processing.

2. Select anonymization policy.

   An anonymization policy needs to be selected and applied to the pseudonymized FHIR data based on the Data Access Permit requirements. For some cases, a default anonymization policy could be deployed together with the anonymization service. The anonymization policy describes the behavior of processing quasi-identifiers, such as Patient.birthDate, Patient.address.postalCode, and Patient.gender. The processing behavior cannot be unified to fit the requirements of all data collection cases. For example, patient age usually needs to be transformed into a ranged value from the original birthDate, but the range scope may be different for different cases. Some require 5-year ranges (e.g., 20-24, 25-29), others may require 10-year ranges or age categories (e.g., adult, pediatric). Geographic data may need to be generalized to 3-digit ZIP codes for some studies or to state level for others. Therefore, ideally, the anonymization policy is customized and approved in a case-by-case manner based on the research protocol and IRB requirements.

   For this use case, the anonymization policy includes:
   - Address locations generalized to the initial 3-digits of the postal code
   - Date of birth transformed to synthetic data with date shifting within age-group breakdown
   - All dates (medications, allergies, results, immunizations, procedures) subject to date shifting relative to shifted birth date
   - Administrative gender retained as it is an important metric in the study

3. Process pseudonymized FHIR data with anonymization policy.

   The HDAB anonymization service applies the selected policy to transform quasi-identifiers:
   - **Temporal data**: Apply date-shifting to all date/dateTime elements while maintaining relative time intervals between related events. Dates are shifted relative to the shifted birth date to preserve temporal relationships.
   - **Geographic data**: Generalize address.postalCode to 3-digit ZIP codes for data-minimization
   - **Demographic data**: Convert birthDate to age ranges or synthetic dates within age-group breakdown, retain gender if low risk
   - **Free-text content**: Apply redaction to narrative text, notes, and comments. Textual descriptions are omitted due to the possibility of free text privacy issues.
   - **Clinical codes**: Review for rare or facility-specific codes that could identify the source. Diagnoses, procedures, occupations, and cause of death are reviewed for potential identifiable outliers.
   - **References**: Ensure all resource references use pseudonymized identifiers consistently
   - **Data minimization**: Remove elements not requested by the study (e.g., preferred language, insurance information, general practitioner, specialist contacts)

4. Perform risk assessment.

   The HDAB anonymization service performs a quantitative re-identification risk assessment (e.g., k-anonymity analysis) on the processed dataset to ensure it meets the acceptable risk threshold defined in the project requirements.

5. Second pass: Remove identifying outlier data.

   The HDAB performs a second pass to remove potentially identifying outlier data from the dataset for privacy protection. While the identification of outliers is not required by the EHDS regulations, the HDAB performs this analysis to optimize privacy protection before releasing the data set. This includes:
   - Reviewing diagnoses for potential identifiable outliers for suppression
   - Reviewing procedures for potential identifiable outliers for suppression
   - Reviewing occupations and industry for potential identifiable outliers for suppression
   - Reviewing cause of death for potential identifiable outliers for suppression

6. Mark de-identification status.

   The HDAB anonymization service adds appropriate FHIR security labels and provenance information to indicate the de-identification status:
   - Add Meta.security labels (e.g., "PSEUDED" for pseudonymized, "ANONYED" for anonymized)
   - Use Data Absent Reason extension where data has been removed for privacy
   - Add Provenance resource documenting the de-identification process

7. Export anonymized FHIR data from the SPE.

   After successful anonymization and risk assessment, the HDAB exports the anonymized FHIR data from the Secure Processing Environment to the research environment. The data can be exported as FHIR Bundles, NDJSON files, or loaded into a research FHIR server for query access.

### Data Flows

Before the de-identification processing, EHDS 2 regulations specify that the Health Data User conducts data discovery to identify data that is available for the study, and that an application for a data permit be submitted and approved.

The following diagram from the EHDS2 M7.2 Draft guideline on data minimisation, pseudonymisation, anonymisation and synthetic data depicts the EHDS user journey for the full process, highlighting the areas within the process that address data minimization, pseudonymization and anonymization:

<figure>
  <img src="EHDS2 M7.2-Anonymization-Process.png" alt="Process of Anonymization">
  <figcaption><strong>Figure EHDS user journey for the full process of anonymization</strong></figcaption>
</figure>

Once a Data Permit is granted, the third phase, Data Preparation, begins. The HDAB prepares the data set according to the permit content and de-identification to be applied. The EHDS2 M7.2 Draft guideline on data minimisation, pseudonymisation, anonymisation and synthetic data depicts a High-level architecture for safe disclosure of anonymized data, processing results, and synthetic data:

<figure>
  <img src="EHDS2 M7.2-Anonymization-High-Level-Architecture.png" alt="High-level architecture for safe disclosure of anonymized data">
  <figcaption><strong>Figure EHDS2 M7.2 High-level architecture for safe disclosure of anonymized data</strong></figcaption>
</figure>

### Requirements

## Policy

- The HDAB data access application management process is primarily set out in Articles 67--69 of the EHDS regulation, which define the procedural context that any organisational or technical solution for secondary use data applications must align with. Articles 67 and 69 includes the requirements for the common application forms for data access applications and data requests, respectively, to be used by applicants, and which provides the essential information for the processing of applications. Article 68 governs the issuance of data permits and the associated obligations of HDABs, whereas Article 69 provides similar provisions for data requests.

- The secondary use of electronic health data is based on pseudonymised or anonymised data, in order to preclude the identification of the data subjects (Recital 53 in the EHDS regulation)

- Data anonymisation, pseudonymisation, and linkage techniques are addressed in M7.2 Technical specification for Health Data Access Bodies on data minimisation and de-identification, and M7.5 Guideline for Health Data Access Bodies on linkage of health datasets.

### Permitted Uses

The Health Information Exchange system has defined the following standard permitted uses (Art 53 a-c). The standard healthcare purposes of use specified by ISO TC215 14265: Health Informatics - Classification of purposes for processing personal health information concepts associated with these EHDS2 defined purposes are provided in italicized sub-bullets:

- Improving the delivery of care, Treatment, Optimization and providing healthcare

  - *Treatment*

    - *Clinical Care Provision to an Individual Subject of Care*

    - *Emergency Care Provision to an Individual Subject of Care*

    - *Support of Care Activities within the Provider Organization for an Individual Subject of Care*

    - *Subject of Care Uses*

  - *Operations*

  - *Health Service Management and Quality Assurance*

- Public Interest in the area of Public, Occupational Health and Policy Making and Regulatory Activities, Statistics, national, multinational, and Union level official statistics

  - *Public Health*

    - *Public Health Surveillance, Disease Control*

    - *Population Health Management*

    - *Public Safety Emergency*

- Scientific Research contributing to public health or health technology assessment with the aim of benefitting the end users

  - *Research*

- Vocational and Higher Education Teaching Activities

  - *Education*

### Uses NOT Permitted

The Health Information Exchange system has defined the following standard are not permitted uses:

- carrying out advertising or marketing activities;

  - *Market Studies*

No corresponding purpose of use is defined by EHDS2 as either permitted or not permitted, so the assumption is the following ISO-defined standard classifications of use purposes are not permitted uses:

- *Legal* *Procedure*

- *Enabling the payment of care provision to an individual subject of care*

Additional regulation purposes from Article 54 not permitted:

- Taking decisions detrimental to a natural person or a group of natural persons based on their electronic health data; in order to qualify as 'decisions' for the purposes of this point, they have to produce legal, social or economic effects or similarly significantly affect those natural persons;

- developing products or services that may harm individuals, public health or society at large, such as illicit drugs, alcoholic beverages, tobacco and nicotine products, weaponry or products or services which are designed or modified in such a way that they create addiction, contravene public order or cause a risk for human health;

- carrying out activities in conflict with ethical provisions laid down in national law.

## Risk Assessment

Risk and associated mitigation is determined for each data element associated with a given Data access request. For this test case, see the data elements described in the next section.

### FHIR Data Absent Reason Extension

When data elements are removed or masked during de-identification, FHIR provides the Data Absent Reason extension to indicate why the data is not present. This is analogous to DICOM's requirement to set the Patient Identity Removed attribute.

**Data Absent Reason Codes for De-identification:**

| Code | Display | Definition |
|------|---------|------------|
| masked | Masked | The information is not available due to security, privacy or related reasons |
| unknown | Unknown | The source was asked but does not know the value |
{:.grid}

**Example Usage:**

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

### FHIR Security Labels for De-identification Status

FHIR resources should be labeled with appropriate security tags to indicate their de-identification status. This helps downstream systems handle the data appropriately.

**Recommended Security Labels:**

| Code | System | Display | Use |
|------|--------|---------|-----|
| PSEUDED | http://terminology.hl7.org/CodeSystem/v3-ObservationValue | Pseudonymized | Data with direct identifiers replaced by pseudonyms |
| ANONYED | http://terminology.hl7.org/CodeSystem/v3-ObservationValue | Anonymized | Data processed to remove/transform identifiers to acceptable risk level |
{:.grid}

### IPS Data Elements and De-identification Methods

Data Types: The IPS format requested contains primarily structured data with some attributes containing textual data content. There are no Medical imaging data, Bio-signal data, Genetic data, Textual data, or Multi-modal data. Available to this research study through the IPS structured format.

| **IPS Section** | **Data Element** | **Data Type** | **Identifier Type** | **De-identification Method** |
|-----------------|------------------|---------------|---------------------|------------------------------|
| **IPS Patient** | Patient Name | Structured Data | Direct Identifier | Reversibly pseudonymized name |
| | ID | Structured Data | Direct Identifier | Reversibly pseudonymized Identifier |
| | Date of Birth | Structured Data | Quasi-identifier | Synthetic Data applied by date shifting within age-group breakdown |
| | Gender | Structured Data | Quasi-identifier | Administrative gender is an important metric in the study and will be included |
| | Telecom | Structured Data | Direct Identifier | Omitted for data minimization |
| | deceased indicator | Structured Data | Quasi-identifier | Included |
| | deceased date | Structured Data | Quasi-identifier | Synthetic Data applied by date shifting relative to shifted date of birth |
| | Patient address | Structured Data | Quasi-identifier | Address locations generalized to the initial 3-digits of the postal code for data-minimization |
| | Preferred language | Structured Data | Subject to data minimization. Not requested by the study | Preferred language will be omitted for data-minimization |
| | General Practitioner | Structured Data | Quasi-identifier | Omitted for data minimization |
| | Insurance | Structured Data | Quasi-identifier | Omitted for data minimization |
| **Problems** | Problem Type | Structured Data | | |
| | Description | Textual Data | Quasi-identifier | Omitted due to the possibility of free text privacy issues |
| | Diagnosis | Structured Data | Quasi-identifier | Diagnoses will be reviewed for potential identifiable outliers for suppression. |
| | Severity | Structured Data | non-identifying | unchanged |
| | Onset Date | Structured Data | Quasi-identifier subject to date shifting relative to shifted birth date | |
| | Problem Status | Structured Data | non-identifying | |
| | Specialist Contact | Structured Data | Quasi-identifier | Omitted for data minimization |
| **History of Procedures** | Procedure code | Structured Data | Quasi-identifier | Procedures will be reviewed for potential identifiable outliers for suppression. |
| | Procedure description | Textual Data | | Omitted due to the possibility of free text privacy issues |
| | Body site | Structured Data | non-identifying | Diagnoses will be reviewed for potential identifiable outliers for suppression. |
| | Procedure date | Structured Data | Quasi-identifier subject to date shifting relative to shifted birth date | |
| **Medication Summary** | Product Code | Structured Data | non-identifying | Product code will be reviewed for potential identifiable outliers for suppression. |
| | Product Common Name and strength | Textual Data | non-identifying | Unchanged as required if known, and the coded product code is not required |
| | Active ingredient substance code | Structured Data | non-identifying | unchanged |
| | Active ingredient substance strength | Structured Data | non-identifying | unchanged |
| | Period of medication use | Structured Data | Quasi-identifier subject to date shifting relative to shifted birth date | |
| | Route of administration | Structured Data | non-identifying | Removed for data minimization (not requested) |
| | Dose quantity | Structured Data | non-identifying | unchanged |
| | Dose frequency | Structured Data | non-identifying | unchanged |
| **Allergies** | Allergy and intolerance description | Textual Data | non-identifying | Removed for data minimization (not requested) |
| | Clinical status | Structured Data | non-identifying | unchanged |
| | Onset date | Structured Data | Quasi-identifier subject to date shifting relative to shifted birth date | |
| | End date | Structured Data | Quasi-identifier subject to date shifting relative to shifted birth date | |
| | Criticality | Structured Data | non-identifying | unchanged |
| | Certainty | Structured Data | non-identifying | unchanged |
| | Type of propensity | Structured Data | non-identifying | unchanged |
| | Diagnosis | Structured Data | Quasi-identifier for outliers | Omitted for data minimization |
| | Reaction Manifestation | Structured Data | non-identifying | unchanged |
| | Reaction Severity | Structured Data | non-identifying | unchanged |
| | Agent Code | Structured Data | non-identifying | unchanged |
| | Agent Category | Structured Data | non-identifying | unchanged |
| **Results** | Date of observation | Structured Data | Quasi-identifier | subject to date shifting relative to shifted birth date |
| | Observation type | Structured Data | non-identifying | unchanged |
| | Result description | Textual Data | non-identifying | Removed for data minimization (not requested) |
| | Result value | Structured Data | non-identifying | unchanged |
| | Observation result | Structured Data | non-identifying | unchanged |
| | Performer | Structured Data | non-identifying | Omitted for data minimization |
| | Observer | Structured Data | non-identifying | Omitted for data minimization |
| **Immunizations** | Vaccine for type of disease | Structured Data | non-identifying | unchanged |
| | Date of immunization | Structured Data | Quasi-identifier | subject to date shifting relative to shifted birth date |
| | Number in series of doses | Structured Data | non-identifying | unchanged |
| | Target disease | Structured Data | non-identifying | Omitted for data minimization |
| | Product name | Textual Data | non-identifying | Omitted for data minimization |
| | Vaccine/Prophylaxis | Textual Data | non-identifying | Omitted for data minimization |
| | Product administration performer | Structured Data | non-identifying | Omitted for data minimization |
| | Route of administration | Structured Data | non-identifying | Omitted for data minimization |
| **Social History** | Lifestyle factor information (occupation) | Structured Data | Quasi-identifier subject to date shifting relative to shifted birth date | Occupations will be reviewed for potential identifiable outliers for suppression. |
| | Lifestyle factor information (industry) | Structured Data | Quasi-identifier subject to date shifting relative to shifted birth date | |
| **Pregnancy History** | Pregnancy Status | Structured Data | non-identifying | unchanged |
| | Estimated Delivery Date | Structured Data | Quasi-identifier subject to date shifting relative to shifted birth date | |
| **Medical Devices** | No medical device data is needed for the study | Structured Data | non-identifying | Omitted for data minimization. Data absent reason marked as 'masked' |
| **VRDR content** | | | | |
| **Mortality data** | Name | Structured Data | Direct Identifier | Reversibly pseudonymized name |
| | Identifier | Structured Data | Direct Identifier | Reversibly pseudonymized Identifier |
| | Date of death | Structured Data | Quasi-identifier | Synthetic Data applied by date shifting within age-group breakdown |
| | Cause of death | Structured Data | Quasi-identifier | Cause of Death will be reviewed for potential identifiable outliers for suppression. |

All unspecified data that may be available in the IPS are removed for data-minimization.

### Example: IPS FHIR Bundle De-identification

This example demonstrates the de-identification of an IPS FHIR Bundle containing key resources: Patient, Condition (Problems), MedicationStatement (Medication Summary), AllergyIntolerance (Allergies), Observation (Results), and Immunization. The transformations align with the de-identification methods specified in the Data Elements table above.

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
