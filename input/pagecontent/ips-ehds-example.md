

### Scenario:

The region is under threat of outbreak for a novel virus causing influenza-like-symptoms. An approved public health monitoring program wishes to review primary health information from across multiple jurisdictions for impacts of co-morbidities, mortality rates, and occupational health risks. The study also intends to review the population health impact for medication treatments, including vaccination. The purpose of the research request reflects a permitted purpose of use, Public Interest in the area of Public, Occupational Health. Data for this study represents categories from Healthcare, Medicinal products, Areas of Public Health, Areas of Occupational Health, and possibly Serious cross-border threats.

- The Data Discovery leveraging the HealthDCAT Application Profile (HealthDCAT-AP) determines that the information is available within the HDAB Information Resources, indicating data is available in a standard International Patient Summary (IPS), and mortality data in the Vital Records Death Reporting (IHE VRDR) standard formats as indicated in the conformsTo attribute (see https://healthdataeu.pages.code.europa.eu/healthdcat-ap/releases/release-5/).
- The user submits a Data Access Permit application (drawn from example at: https://data-access.dsa.ec.europa.eu/public/hta/data-access) requests data access authorization providing [in the Research project-specific information](https://healthdataeu.pages.code.europa.eu/healthdcat-ap/releases/release-5/) section:
  - Information on the type and format of the data requested, indicates International Patient Summary format for the data, indicating the specific [attributes from that standard content needed for the study and applicable](https://data-access.dsa.ec.europa.eu/public/hta/data-access)  de-identification methods should be used to preserve suUicient information to fulfill the study.
  - The researcher also provides a date range of access needed for a 3-year period.

- access justifications are provided indicating the value of the proposed research
- The purpose of use is indicated as Scientific Research
- Data elements requested that are sensitive include de-identification methods to be used that will retain suUicient information for the research study.
- Policy for secondary use includes data minimisation for the use of secondary health data. This includes limiting the amount, type, and granularity of data during data preparation. The application for data access includes a request for the following data and de-identification methods:
  - Pseudonymized demographics with synthetic data for data of birth (agegroup), and address
    - Pseudonymized name
    - Patient location is important to the study. Address locations generalized to the initial 3-digits of the postal code for dataminimization
    - Administrative gender is an important metric in the study and will be included
    - Date of birth will be used to determine and convey a generalized agegroup. The Date of birth, if included, will be Synthetic Data applied by date shifting within age-group breakdown
    - Preferred language will be omitted for data-minimization
    - Patient identifier sent as a pseudonymized identifier that is applied to the same patient over time
    - Insurance information will be omitted for data-minimization
    - Given the potential for identifying health risks to come subjects of care, the data is to be reversibly pseudonymized to support tracking of patient care related to the event across health care facilities and settings.

##### Problems

- Problems will be key to determining primary conditions, symptoms, co-morbidities, and clinical outcomes.
- Conditions will be reviewed for potential identifiable outliers for suppression.
- Procedures
- Medications
  - Medications are needed to identify treatment and contraindication impact

- Dates associated with medications are relative to incident and treatment dates. Data is collected but protected by data-shifting the study records
- Other attributes associated with Allergies and intolerances are removed for data-minimization
- Allergies and intolerances will support clinical outcome measures
  - Allergy Agent
  - Onset date is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records
  - Reaction
  - Other attributes associated with Allergies and intolerances are removed for data-minimization

###### Results

- Observation resulted is needed to inform the detection of infectious agents and clinical metrics
- Observation value is needed for metrics
- Observation date is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records
- Other attributes associated with Results are removed for data minimization

###### Immunizations

- Vaccine for type of disease is needed to assess treatments and measure mitigation results
- Date of immunization is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records
- Other attributes associated with Immunizations are removed for data minimization
- Medical Devices are not needed for the study
  - This section may be empty with a data absent reason of 'masked'
- Social History lifestyle factor information is needed to measure potential environmental impact including
  - Occupation either usual occupation or current occupation is needed to identify incidents and to help identify risk factors associated with identified occupations
  - Industry either usual industry or current industry is needed to identify incidents and to help identify risk factors associated with identified occupations

- Occupation and Industry will be reviewed for outliers and suppressed
- All other attributes associated with Social History are removed for data minimization
- Pregnancy History
  - Pregnancy status pregnancy information is needed for the study to review potential impact of the incident on pregnancy
  - Estimated Delivery date is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records
  - Other attributes associated with Pregnancy History are removed for data minimization
- Mortality data is available through vital records oUices. The mortality data will include:
  - Pseudonymized name
  - Pseudonymized identifier
  - Date of death is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records
  - Cause of death
  - All other mortality data is omitted for data-minimization
- The application is reviewed and a Data Access permit is granted
- The Health Data Access Body (HDAB) uses an Intermediation entity for pseudonymizaton, and data preparation to prepare the data using approved anonymization, pseudonymization, generalization, suppression, and randomization methods according to the permit.
- A second pass removes potentially identifying outlier data from the dataset for privacy protection. While the identification of outliers is not required by the EHDS regulations, the HDAB performs this analysis to optimize privacy protection before releasing the data set.

### Data flows section

Before the de-identification processing, EHDS 2 regulations specify that the Health Data User conducts data discovery to identify data that is available for the study, and that an application for a data permit be submitted and approved.

The following diagram from the EHDS2 M7.2 Draft guideline on data minimisation, pseudonymisation, anonymisation and synthetic data depicts he EHDS user journey for the full process, highlighting the areas within the process that address data minimization, pseudonymization and anonymization:

<figure>
  <img src="images/ehds-user-journey.jpeg" />
  <figcaption><strong>Figure: EHDS User Journey</strong></figcaption>
  </figure>

Once a Data Permit is granted, the third phase, Data Preparation, begins. The HDAB prepares the data set according to the permit content and de-identification to be applied. The EHDS2 M7.2 Draft guideline on data minimisation, pseudonymisation, anonymisation and synthetic data depicts a High-level architecture for safe disclosure of anonymized data, processing results, and synthetic data:

<figure>
  <img src="images/hdab-high-level-architecture.jpeg" />
  <figcaption><strong>Figure: HDAB High-level Architecture for Safe Disclosure</strong></figcaption>
</figure>

#### Requirements

##### Policy

- The HDAB data access application management process is primarily set out in Articles 67–69 of the EHDS regulation, which define the procedural context that any organisational or technical solution for secondary use data applications must align with. Articles 67 and 69 includes the requirements for the common application forms for data access applications and data requests, respectively, to be used by applicants, and which provides the essential information for the processing of applications. Article 68 governs the issuance of data permits and the associated obligations of HDABs, whereas Article 69 provides similar provisions for data requests.
- The secondary use of electronic health data is based on pseudonymised or anonymised data, in order to preclude the identification of the data subjects (Recital 53 in the EHDS regulation)
- Data anonymisation, pseudonymisation, and linkage techniques are addressed in M7.2 Technical specification for Health Data Access Bodies on data minimisation and de-identification, and M7.5 Guideline for Health Data Access Bodies on linkage of health datasets.

###### Permitted Uses

The Health Information Exchange system has defined the following standard permitted uses (Art 53 a-c). The standard healthcare purposes of use specified by ISO TC215 14265: Health Informatics - Classification of purposes for processing personal health information concepts associated with these EHDS2 defined purposes are provided in italicized subbullets:

- Improving the delivery of care, Treatment, Optimization and providing healthcare
  - *Treatment* 
    - *Clinical Care Provision to an Individual Subject of Care*
    - *Emergency Care Provision to an Individual Subject of Care*
    - *Support of Care Activities within the Provider Organization for an Individual Subject of Care*
    - *Subject of Care Uses*
  - *Operations*
  - *Health Service Management and Quality Assurance*

- Public Interest in the area of Public, Occupational Health and Policy Making and Regulatory Activities, Statistics, national, multinational, and Union level oUicial statistics
  - *Public Health*
    - *Public Health Surveillance, Disease Control*
    - *Population Health Management*
    - *Public Safety Emergency*
- Scientific Research contributing to public health or health technology assessment with the aim of benefitting the end users
  - *Research*
- Vocational and Higher Education Teaching Activities
  - *Education*

###### Uses NOT Permitted

The Health Information Exchange system has define the following standard are not permitted uses:

- carrying out advertising or marketing activities;
  - *Market Studies*

No corresponding purpose of use is defined by EHDS2 as either permitted or not permitted, so the assumption is the following ISO-defined standard classifications of use purposes are not permitted uses:

- *Legal Procedure*
- *Enabling the payment of care provision to an individual subject of care*

Additional regulation purposes from Article 54 not permitted:

- Taking decisions detrimental to a natural person or a group of natural persons based on their electronic health data; in order to qualify as 'decisions' for the purposes of this point, they have to produce legal, social or economic eUects or similarly significantly aUect those natural persons;
- developing products or services that may harm individuals, public health or society at large, such as illicit drugs, alcoholic beverages, tobacco and nicotine products, weaponry or products or services which are designed or modified in such a way that they create addiction, contravene public order or cause a risk for human health;
- carrying out activities in conflict with ethical provisions laid down in national law.

**Commented [LR1]:** Not referenced

##### Risk Assessment

Risk and associated mitigation is determined for each data element associated with a given Data access request. For this test case, see the data elements described in the next section.

### Data Elements

Data Types: The IPS format requested contains primarily structured data with some attributes containing textual data content. There are no Medical imaging data, Bio-signal data, Genetic data, Textual data, or Multi-modal data. Available to this research study through the IPS structured format.

| Section              | Element                           | Data Type  | Identifier Type   | Handling/Notes                                                                                 |
| -------------------- | --------------------------------- | ---------- | ----------------- | ---------------------------------------------------------------------------------------------- |
| Patient              | Patient Name                      | Structured | Direct Identifier | Reversibly pseudonymized (name)                                                                |
| Patient              | ID                                | Structured | Direct Identifier | Reversibly pseudonymized (identifier)                                                          |
| Patient              | Date of Birth                     | Structured | Quasi-identifier  | Synthetic data via date shifting within age-group breakdown                                    |
| Patient              | Gender                            | Structured | Quasi-identifier  | Included; important study metric                                                               |
| Patient              | Telecom                           | Structured | Direct Identifier | Omitted for data minimization                                                                  |
| Patient              | Deceased indicator                | Structured | Quasi-identifier  | Included                                                                                       |
| Patient              | Deceased date                     | Structured | Quasi-identifier  | Synthetic data via date shifting relative to shifted date of birth                             |
| Patient              | Patient address                   | Structured | Quasi-identifier  | Generalize to first 3 digits of postal code                                                    |
| Patient              | Preferred language                | Structured | Quasi-identifier  | Not requested; omitted for data minimization                                                   |
| Patient              | General Practitioner              | Structured | Quasi-identifier  | Omitted for data minimization                                                                  |
| Patient              | Insurance                         | Structured | Quasi-identifier  | Omitted for data minimization                                                                  |
| Problems             | Problem Type                      | Structured | Non-identifying   | Unchanged                                                                                      |
| Problems             | Diagnosis                         | Structured | Quasi-identifier  | Reviewed for potential identifiable outliers for suppression                                   |
| Problems             | Severity                          | Structured | Non-identifying   | Unchanged                                                                                      |
| Problems             | Onset Date                        | Structured | Quasi-identifier  | Subject to date shifting relative to shifted birth date                                        |
| Problems             | Problem Status                    | Structured | Non-identifying   | Omitted for data minimization                                                                  |
| Problems             | Specialist Contact                | Structured | Quasi-identifier  | Omitted for data minimization                                                                  |
| Procedures           | Procedure code                    | Structured | Non-identifying   | Unchanged                                                                                      |
| Procedures           | Procedure description             | Textual    | Quasi-identifier  | Omitted due to potential free-text privacy issues                                              |
| Procedures           | Body site                         | Structured | Non-identifying   | Unchanged                                                                                      |
| Procedures           | Procedure date                    | Structured | Quasi-identifier  | Subject to date shifting relative to shifted birth date                                        |
| Medication Summary   | Product code                      | Structured | Non-identifying   | Unchanged                                                                                      |
| Medication Summary   | Product common name and strength  | Textual    | Non-identifying   | Unchanged if known; coded product code not required                                            |
| Medication Summary   | Active ingredient substance code  | Structured | Non-identifying   | Unchanged                                                                                      |
| Medication Summary   | Active ingredient strength        | Structured | Non-identifying   | Unchanged                                                                                      |
| Medication Summary   | Period of medication use          | Structured | Quasi-identifier  | Subject to date shifting relative to shifted birth date                                        |
| Medication Summary   | Route of administration           | Structured | Non-identifying   | Not requested; omitted for data minimization                                                   |
| Medication Summary   | Dose quantity                     | Structured | Non-identifying   | Unchanged                                                                                      |
| Medication Summary   | Dose frequency                    | Structured | Non-identifying   | Unchanged                                                                                      |
| Allergies/Intolerances | Clinical status                 | Structured | Non-identifying   | Unchanged                                                                                      |
| Allergies/Intolerances | Onset date                      | Structured | Quasi-identifier  | Subject to date shifting relative to shifted birth date                                        |
| Allergies/Intolerances | End date                        | Structured | Quasi-identifier  | Subject to date shifting relative to shifted birth date                                        |
| Allergies/Intolerances | Criticality                     | Structured | Non-identifying   | Unchanged                                                                                      |
| Allergies/Intolerances | Certainty                       | Structured | Non-identifying   | Unchanged                                                                                      |
| Allergies/Intolerances | Type of propensity              | Structured | Non-identifying   | Unchanged                                                                                      |
| Allergies/Intolerances | Diagnosis                       | Structured | Quasi-identifier  | Omitted for data minimization (outlier risk)                                                   |
| Allergies/Intolerances | Reaction manifestation          | Structured | Non-identifying   | Unchanged                                                                                      |
| Allergies/Intolerances | Reaction severity               | Structured | Non-identifying   | Unchanged                                                                                      |
| Allergies/Intolerances | Agent code                      | Structured | Non-identifying   | Unchanged                                                                                      |
| Allergies/Intolerances | Agent category                  | Structured | Non-identifying   | Unchanged                                                                                      |
| Results              | Date of observation               | Structured | Quasi-identifier  | Subject to date shifting relative to shifted birth date                                        |
| Results              | Observation type                  | Structured | Non-identifying   | Unchanged                                                                                      |
| Results              | Result description                | Textual    | Non-identifying   | Not requested; omitted for data minimization                                                   |
| Results              | Result value                      | Structured | Non-identifying   | Unchanged                                                                                      |
| Results              | Observation result                | Structured | Non-identifying   | Unchanged                                                                                      |
| Results              | Performer                         | Structured | Non-identifying   | Omitted for data minimization                                                                  |
| Results              | Observer                          | Structured | Non-identifying   | Omitted for data minimization                                                                  |
| Immunizations        | Vaccine (type of disease)         | Structured | Non-identifying   | Unchanged                                                                                      |
| Immunizations        | Date of immunization              | Structured | Quasi-identifier  | Subject to date shifting relative to shifted birth date                                        |
| Immunizations        | Number in series of doses         | Structured | Non-identifying   | Unchanged                                                                                      |
| Immunizations        | Target disease                    | Structured | Non-identifying   | Omitted for data minimization                                                                  |
| Immunizations        | Product name                      | Textual    | Non-identifying   | Omitted for data minimization                                                                  |
| Immunizations        | Product administration            | Structured | Non-identifying   | Omitted for data minimization                                                                  |
| Immunizations        | Performer                         | Structured | Non-identifying   | Omitted for data minimization                                                                  |
| Immunizations        | Route of administration           | Structured | Non-identifying   | Omitted for data minimization                                                                  |
| Social History       | Occupation                        | Structured | Quasi-identifier  | Subject to date shifting relative to shifted birth date; review for identifiable outliers      |
| Social History       | Industry                          | Structured | Quasi-identifier  | Subject to date shifting relative to shifted birth date; review for identifiable outliers      |
| Pregnancy History    | Pregnancy status                  | Structured | Non-identifying   | Unchanged                                                                                      |
| Pregnancy History    | Estimated delivery date           | Structured | Quasi-identifier  | Subject to date shifting relative to shifted birth date                                        |
| Medical Devices      | Device data required              | Structured | Non-identifying   | Not needed for the study; data absent reason marked as 'masked'                                |
| Mortality            | Name                              | Structured | Direct Identifier | Reversibly pseudonymized (name)                                                                |
| Mortality            | Identifier                        | Structured | Direct Identifier | Reversibly pseudonymized (identifier)                                                          |
| Mortality            | Date of death                     | Structured | Quasi-identifier  | Synthetic data via date shifting within age-group breakdown                                    |
| Mortality            | Cause of death                    | Structured | Quasi-identifier  | Reviewed for potential identifiable outliers for suppression                                   |
{:.grid}

All unspecified IPS data elements are removed for data minimization.


Add Case example pre and post de-identification **Commented [LR2]:** Add example detail after use case

review