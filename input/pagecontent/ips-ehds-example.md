

### Purpose and Overview

This exemplar demonstrates how the IHE De-Identification Handbook’s process framework is applied to the EHDS2 IPS + VRDR secondary-use scenario. It serves as a concise de-identification profile: defining purpose, recipients, multi-stage process, risk thresholds, and element-by-element treatment to preserve research utility while protecting privacy. See the methodology overview in [Process](process.html).


### Context Analysis

#### Purpose of collecting data

The permitted purpose is Public Interest research in Public/Occupational Health to study co-morbidities, mortality, occupational risks, and treatment effects. The dataset must be minimized and de-identified to preserve utility (longitudinal trends, outcomes, medication impacts) while controlling re-identification risk per permit conditions.

The region is under threat of outbreak for a novel virus causing influenza-like-symptoms. An approved public health monitoring program wishes to review primary health information from across multiple jurisdictions for impacts of co-morbidities, mortality rates, and occupational health risks. The study also intends to review the population health impact for medication treatments, including vaccination. The purpose of the research request reflects a permitted purpose of use, Public Interest in the area of Public, Occupational Health. Data for this study represents categories from Healthcare, Medicinal products, Areas of Public Health, Areas of Occupational Health, and possibly Serious cross-border threats.

##### Permitted Uses

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

##### Uses NOT Permitted

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


#### Data recipients

- Researchers granted a Data Permit under HDAB oversight
- HDAB staff and Intermediation entity performing de-identification and release
- Authorized analytics environments (controlled access; data use agreements)

#### Data flow

This data flow implements the methodology’s end-to-end analysis described in [Process → Analyze the context → Data flow](process.html). It maps: source clinical systems → HDAB Intermediation (Stage 2) → controlled recipients, and highlights multi-stage requirements, environments, and constraints.

##### end-to-end data flow

- Before the de-identification processing, EHDS 2 regulations specify that the Health Data User conducts data discovery to identify data that is available for the study, and that an application for a data permit be submitted and approved. The Data Discovery leveraging the HealthDCAT Application Profile (HealthDCAT-AP) determines that the information is available within the HDAB Information Resources, indicating data is available in a standard International Patient Summary (IPS), and mortality data in the Vital Records Death Reporting (IHE VRDR) standard formats as indicated in the conformsTo attribute (see https://healthdataeu.pages.code.europa.eu/healthdcat-ap/releases/release-5/).
- The user submits a Data Access Permit application (drawn from example at: https://data-access.dsa.ec.europa.eu/public/hta/data-access) requests data access authorization providing [in the Research project-specific information](https://healthdataeu.pages.code.europa.eu/healthdcat-ap/releases/release-5/) section:
  - Information on the type and format of the data requested, indicates International Patient Summary format for the data, indicating the specific [attributes from that standard content needed for the study and applicable](https://data-access.dsa.ec.europa.eu/public/hta/data-access)  de-identification methods should be used to preserve suUicient information to fulfill the study.
  - The researcher also provides a date range of access needed for a 3-year period.

- access justifications are provided indicating the value of the proposed research
- The purpose of use is indicated as Scientific Research
- Data elements requested that are sensitive include de-identification methods to be used that will retain suUicient information for the research study.

The following diagram from the EHDS2 M7.2 Draft guideline on data minimisation, pseudonymisation, anonymisation and synthetic data depicts he EHDS user journey for the full process, highlighting the areas within the process that address data minimization, pseudonymization and anonymization:

<figure>
  <img src="ehds-user-journey.jpeg" />
  <figcaption><strong>Figure: EHDS User Journey</strong></figcaption>
  </figure>

Once a Data Permit is granted, the third phase, Data Preparation, begins. The HDAB prepares the data set according to the permit content and de-identification to be applied. The EHDS2 M7.2 Draft guideline on data minimisation, pseudonymisation, anonymisation and synthetic data depicts a High-level architecture for safe disclosure of anonymized data, processing results, and synthetic data:

<figure>
  <img src="hdab-high-level-architecture.jpeg" />
  <figcaption><strong>Figure: HDAB High-level Architecture for Safe Disclosure</strong></figcaption>
</figure>

##### Data Source

- Clinical sources: IPS-conformant EHR exports (FHIR R4) from provider organizations across jurisdictions; scoped to Patient demographics, Problems, Procedures, Medications, Allergies, Results, Immunizations, and relevant social/pregnancy history needed for the public/occupational health purpose.
- Vital records: VRDR mortality data from civil registries, limited to attributes necessary for surveillance (e.g., death date, cause categories, age bands, residence generalization).
- Agreements: Source data use agreements and HDAB permit terms define allowable elements, pre-release minimization, and any source-side pseudonymization.

##### Data Environments

- Landing zone: Secure HDAB intake environment receiving permitted data from sources; access is restricted and audited.
- Processing zone: HDAB Intermediation environment applying approved minimization, generalization, pseudonymization/anonymization, and outlier suppression according to the permit and risk model.
- Analysis zone: Authorized recipient environments (controlled access or enclave) where researchers analyze de-identified data under data use agreements; outbound sharing is prohibited.
- Transfer controls: Encrypted transport, authenticated endpoints, and governance monitoring across zones to manage context risk.

##### Multi-stage Requirements

- Stage 1 (at sources): Basic minimization and, where applicable, reversible pseudonymization to safely transfer data to HDAB; direct identifiers removed or replaced per local capability.
- Stage 2 (HDAB Intermediation): Advanced de-identification (irreversible pseudonymization, date shifting, generalization, suppression) with quantitative/qualitative risk assessment to meet the defined threshold.
- Stage 3 (recipients): Verification that received datasets meet permit-specified privacy level; usage confined to approved analyses in controlled environments with no re-identification attempts.

##### Regulatory Constraints

- The HDAB data access application management process is primarily set out in Articles 67–69 of the EHDS regulation, which define the procedural context that any organisational or technical solution for secondary use data applications must align with. Articles 67 and 69 includes the requirements for the common application forms for data access applications and data requests, respectively, to be used by applicants, and which provides the essential information for the processing of applications. Article 68 governs the issuance of data permits and the associated obligations of HDABs, whereas Article 69 provides similar provisions for data requests.
- The secondary use of electronic health data is based on pseudonymised or anonymised data, in order to preclude the identification of the data subjects (Recital 53 in the EHDS regulation)
- Data anonymisation, pseudonymisation, and linkage techniques are addressed in M7.2 Technical specification for Health Data Access Bodies on data minimisation and de-identification, and M7.5 Guideline for Health Data Access Bodies on linkage of health datasets.

### Data assessment

#### Data content

Dataset is primarily structured clinical data from IPS (FHIR R4) and mortality attributes from VRDR. It is longitudinal (multiple records per subject across time), minimizes free text (procedure descriptions removed), excludes imaging, and contains no binary device logs. Semi-structured risks (filenames, metadata) are minimized by standardized export and HDAB processing.

Policy for secondary use includes data minimisation for the use of secondary health data. This includes limiting the amount, type, and granularity of data during data preparation. The application for data access includes a request for the following data and de-identification methods:

##### Patient

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

##### Data subject

Population comprises patients across multiple jurisdictions potentially affected by an influenza-like outbreak, including general clinical populations, occupational cohorts, and pregnant individuals. Key characteristics: broad age range with age-group generalization; diverse geographies with postal code generalization; mixed gender distribution; inclusion of sensitive clinical conditions (Problems, Immunizations, Mortality) requiring controlled handling.

##### Data type

Distinct types include structured records (IPS sections: Patient, Problems, Procedures, Medications, Allergies, Results, Immunizations, Social/Pregnancy History) and structured mortality data (VRDR). Auxiliary information that can hide identifiers (file names, directory paths, embedded metadata) is excluded or standardized in HDAB pipelines; provenance is retained separately for audit.

##### Data attribute type

- Direct Identifiers (DI): Patient Name, Telecom, Patient ID, Mortality Name/Identifier; removed or pseudonymized per table.
- Quasi-Identifiers (QI): Date of Birth, Deceased date, postal code, onset/observation dates, occupation/industry, pregnancy status, cause of death; generalized, date-shifted, or outlier-suppressed.
- Sensitive Attributes (SA): diagnoses, results values, medications; preserved with linkage protections to prevent singling out; free text minimized.
- Non-Identifiers (NI): many codes and categorical values (e.g., product code, agent categories) that do not identify individuals on their own; preserved when safe.

##### Dataset properties

- Age of data: within permit window (requested 3-year period); more recent data handled with conservative thresholds.
- Number of subjects: potentially large multi-jurisdictional cohort; supports k-anonymity.
- Volume: moderate to large; processed centrally by HDAB with offline terminology.
- Data quality: standardized IPS/VRDR coding; free text minimized to reduce identifier leakage; longitudinal consistency maintained via pseudonymization.

### Determine de-identification goals

#### General goals
- Prevent Identification: remove or transform DIs and reduce QI combinability.
- Control Risk: meet non-public average thresholds with outlier protections.
- Preserve Utility: maintain longitudinal and outcomes analyses for permitted research.

#### Determine specific goals
- Entities: patients (primary), providers/facilities (as needed to avoid indirect identification).
- All unspecified IPS data elements are removed for data minimization.
- Identifiability target: Irreversibly Pseudonymized Data (see [Concepts](concepts.html#Identifiability)).
- Risk threshold: Non-public average risk ≤ 0.075, with outlier protections (see [Process → Determine goals](process.html)).
- Rationale: controlled sharing via permits; medium attack possibility and impact; sensitive health data.
- Element-level specification (Data Elements)

Data Types: The IPS format requested contains primarily structured data with some attributes containing textual data content. There are no Medical imaging data, Bio-signal data, Genetic data, Textual data, or Multi-modal data. Available to this research study through the IPS structured format.

This implements the element-by-element de-identification design as defined in [Process](process.html). The `Identifier Type` (DI/QI/NI) classification and `Handling/Notes` capture the selected transformations for each data element.

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

### Assess re-identification risk

#### qualitative evaluation
Direct identifiers (DI) in IPS/VRDR are removed or pseudonymized prior to release:
- Patient: `Patient.name`, `Patient.telecom`, and local `Patient.identifier` are pseudonymized (reversible at source if operationally required; irreversible within HDAB Intermediation for release). `Patient.address` is generalized to 3-digit postal code.
- Mortality: `VRDR.name` and `VRDR.identifier` are pseudonymized; `VRDR.dateOfDeath` is date-shifted within age-band policy.
- Performer/Provider references and free-text fields (e.g., `Procedure.description`, `Observation.note`) are omitted to avoid latent identifiers.

Quasi-identifiers (QI) intentionally retained for utility include: age group (derived from `Patient.birthDate`), 3-digit postal code (from `Patient.address`), `Patient.gender`, occupation and industry (Social History), clinically relevant event dates (onset, procedure, immunization, observation) after controlled date shifting, pregnancy status, and cause-of-death categories. Sensitive attributes (SA) such as diagnoses, result values, medications are preserved but protected by linkage controls and outlier suppression.

Given remaining QIs, qualitative classification alone is insufficient. After transformations, the target qualitative state is Irreversibly Pseudonymized Data suitable for non-public controlled sharing, pending quantitative risk confirmation.

#### quantitative evaluation
Apply k-anonymity to the structured IPS/VRDR release using project-specific QIs:
- AgeBand (derived from `Patient.birthDate` → age groups)
- Postal3 (first 3 digits from `Patient.address.postalCode`)
- Gender (`Patient.gender`)
- OccupationCategory, IndustryCategory (from Social History)
- EventDateBuckets (month-level buckets for shifted dates: `Condition.onsetDateTime`, `Procedure.performed[x]`, `Immunization.occurrence[x]`, `Observation.effective[x]`)

Compute equivalence classes on the tuple (AgeBand, Postal3, Gender, OccupationCategory, IndustryCategory, EventDateBuckets). For VRDR, use (AgeBand, Postal3, Gender, DeathMonthBucket, CauseCategory) with cause-of-death aggregated to broad categories to avoid singling out.

Compare overall risk to threshold: enforce average risk ≤ 0.075 while controlling outliers by generalizing buckets (e.g., widen age bands, aggregate occupations/industries, coarsen date buckets) or suppressing small classes. As an additional safeguard, cap maximum risk by ensuring minimum class size (e.g., f ≥ 20) for released groups to keep θ ≤ 0.05 where required for sensitive subsets.

For aggregate publication, apply Differential Privacy to counts/rates using a strict ε consistent with context risk; document privacy budgets and composition across queries.

##### Calculating data risk
Use per-record risk θᵢ = 1/fᵢ with class size fᵢ; compute maximum risk R\_{d,b} and average risk R\_{d,c} across classes; select R\_{d,c} for non-public sharing and control high-risk outliers.

##### Calculating context risk
Estimate R\_c = max(T1 deliberate, T2 inadvertent, T3 breach) per [Process](process.html). For permit-based controlled sharing, R\_c < 1 due to contractual and technical controls; document the rationale and safeguards.

##### Calculating overall risk
Compute R = R\_d × R\_c for k-anonymity-based releases and confirm R meets the threshold; for DP aggregates, select ε aligned to context risk and enforce privacy budgets consistently.

### Attack modeling

##### Select data sharing model
Controlled Public Sharing (Data Use Agreement) governed by HDAB permits; enclave access may be used for higher sensitivity analyses.

##### Determine attack type
Anticipate identity, membership, and attribute attacks with background knowledge; mitigate via generalization, date shifting, and outlier suppression.

##### Identify data privacy model
Primary: k-anonymity for structured IPS releases; Optional: Differential Privacy for published aggregate statistics.

### Multi-stage De-identification Design

- Stage 1 (Preliminary, source/early pipeline): remove obvious direct identifiers; apply reversible pseudonyms where operationally required; prepare generalization plans (e.g., 3-digit postal code).
- Stage 2 (Advanced, HDAB Intermediation): irreversible pseudonymization; date shifting relative to birth/incident; generalization/suppression of quasi-identifiers; outlier review; quantitative risk check (equivalence classes); ensure semantic validity.
- Stage 3 (Recipient Verification): recipient-side verification of risk level and constraints; use enclave or controlled environments when appropriate.

See [Process → Multi-stage design](process.html).

### Governance & Controls

- Access control: least privilege; roles for policy, execution, supervision.
- Secrets management: salts, random seeds, and mapping tables stored in secure vaults; limited access.
- Secure transfer + encryption: SFTP/HTTPS; AES-256 at rest; auditable provenance.
- Documentation: retain element-level specification, scripts/config, validation reports (see [Process → Governance](process.html)).

#### Process Identifiers
Batch IDs, transformation logs, and audit trails generated during de-identification are maintained and protected. Mapping tables and seeds are segregated with strict access controls.

### Outcome & Classification

Released dataset classification: Irreversibly Pseudonymized Data for non-public controlled sharing, meeting average risk ≤ 0.075 with safeguards. Residual risks are managed via suppression/generalization and contractual controls; utility confirmed for population metrics and longitudinal trends.

### FHIR Example

#### Original Identified IPS Document Bundle

```json
{
  "resourceType": "Bundle",
  "type": "document",
  "timestamp": "2024-07-01T00:00:00Z",
  "entry": [
    {
      "fullUrl": "Composition/ips-comp-1",
      "resource": {
        "resourceType": "Composition",
        "id": "ips-comp-1",
        "meta": {"profile": ["http://hl7.org/fhir/uv/ips/StructureDefinition/Composition"]},
        "status": "final",
        "type": {"coding": [{"system": "http://loinc.org", "code": "60591-5", "display": "Patient summary Document"}]},
        "subject": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"},
        "date": "2024-07-01T00:00:00Z",
        "author": [{"reference": "Practitioner/816cf057-b736-4e08-baed-cc21e081b784"}],
        "title": "International Patient Summary",
        "confidentiality": "N",
        "section": [
          {"title": "Problems", "entry": [{"reference": "Condition/cond-1"}]},
          {"title": "Procedures", "entry": [{"reference": "Procedure/proc-1"}]},
          {"title": "Medication Summary", "entry": [{"reference": "MedicationStatement/medstmt-1"}]},
          {"title": "Allergies and Intolerances", "entry": [{"reference": "AllergyIntolerance/allergy-1"}]},
          {"title": "Results", "entry": [{"reference": "Observation/obs-hb-1"}]},
          {"title": "Immunizations", "entry": [{"reference": "Immunization/imm-1"}]},
          {"title": "Social History", "entry": [{"reference": "Observation/obs-occ-1"}, {"reference": "Observation/obs-ind-1"}]},
          {"title": "Pregnancy History", "entry": [{"reference": "Observation/obs-prg-1"}, {"reference": "Observation/obs-edd-1"}]},
          {"title": "Medical Devices", "entry": [{"reference": "DeviceUseStatement/dus-1"}]},
          {"title": "Mortality", "entry": [{"reference": "Observation/obs-cod-1"}]}
        ]
      }
    },
    {
      "fullUrl": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f",
      "resource": {
        "resourceType": "Patient",
        "id": "d174bd1a-b368-41e6-83a2-af77f2b3c60f",
        "identifier": [{"system": "https://standards.digital.health.nz/ns/nhi-id", "value": "ABC1234"}],
        "name": [{"family": "JORDANA", "given": ["Patricia"]}],
        "telecom": [{"system": "phone", "use": "mobile", "value": "07 850 9900"}],
        "gender": "female",
        "birthDate": "1956-09-30",
        "deceasedBoolean": true,
        "deceasedDateTime": "2024-06-30",
        "address": [{"postalCode": "3210"}],
        "communication": [{"language": {"coding": [{"system": "urn:ietf:bcp:47", "code": "en-NZ"}]}}],
        "generalPractitioner": [{"reference": "Practitioner/816cf057-b736-4e08-baed-cc21e081b784"}],
        "extension": [{"url": "urn:example:insurance", "valueString": "NZ-ACC-PLAN"}]
      }
    },
    {
      "fullUrl": "Condition/cond-1",
      "resource": {
        "resourceType": "Condition",
        "id": "cond-1",
        "category": [{"coding": [{"system": "http://terminology.hl7.org/CodeSystem/condition-category", "code": "problem-list-item"}]}],
        "code": {"coding": [{"system": "http://snomed.info/sct", "code": "59621000", "display": "Essential hypertension"}]},
        "severity": {"coding": [{"system": "http://snomed.info/sct", "code": "255604002", "display": "Mild"}]},
        "subject": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"},
        "onsetDateTime": "2016-05-25",
        "clinicalStatus": {"coding": [{"system": "http://terminology.hl7.org/CodeSystem/condition-clinical", "code": "active"}]},
        "verificationStatus": {"coding": [{"system": "http://terminology.hl7.org/CodeSystem/condition-ver-status", "code": "confirmed"}]},
        "asserter": {"reference": "Practitioner/816cf057-b736-4e08-baed-cc21e081b784"}
      }
    },
    {
      "fullUrl": "Procedure/proc-1",
      "resource": {
        "resourceType": "Procedure",
        "id": "proc-1",
        "subject": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"},
        "code": {"coding": [{"system": "http://snomed.info/sct", "code": "80146002", "display": "Appendectomy"}], "text": "Laparoscopic appendectomy"},
        "note": [{"text": "Laparoscopic appendectomy performed"}],
        "bodySite": [{"coding": [{"system": "http://snomed.info/sct", "code": "66754008", "display": "Appendix structure"}]}],
        "performedDateTime": "2018-03-10"
      }
    },
    {
      "fullUrl": "MedicationStatement/medstmt-1",
      "resource": {
        "resourceType": "MedicationStatement",
        "id": "medstmt-1",
        "subject": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"},
        "contained": [{
          "resourceType": "Medication",
          "id": "med1",
          "code": {"coding": [{"system": "http://www.whocc.no/atc", "code": "J01CA", "display": "Penicillins"}], "text": "Amoxicillin 500 mg"},
          "ingredient": [{"itemCodeableConcept": {"coding": [{"system": "http://snomed.info/sct", "code": "372687004", "display": "Amoxicillin"}]}, "strength": {"numerator": {"value": 500, "unit": "mg"}, "denominator": {"value": 1, "unit": "tablet"}}}]
        }],
        "medicationReference": {"reference": "#med1"},
        "effectivePeriod": {"start": "2024-01-01", "end": "2024-02-01"},
        "dosage": [{
          "route": {"coding": [{"system": "http://snomed.info/sct", "code": "26643006", "display": "Oral route"}]},
          "doseAndRate": [{"doseQuantity": {"value": 500, "unit": "mg"}}],
          "timing": {"repeat": {"frequency": 3, "period": 1, "periodUnit": "d"}}
        }]
      }
    },
    {
      "fullUrl": "AllergyIntolerance/allergy-1",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "allergy-1",
        "patient": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"},
        "clinicalStatus": {"coding": [{"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical", "code": "active"}]},
        "verificationStatus": {"coding": [{"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification", "code": "confirmed"}]},
        "type": "allergy",
        "category": ["medication"],
        "code": {"coding": [{"system": "http://snomed.info/sct", "code": "764146007", "display": "Penicillin"}]},
        "extension": [{"url": "urn:example:allergy-diagnosis", "valueCodeableConcept": {"coding": [{"system": "http://snomed.info/sct", "code": "294954003", "display": "Allergy to penicillin"}]}}],
        "onsetDateTime": "2015-04-01",
        "lastOccurrence": "2015-05-01",
        "criticality": "high",
        "reaction": [{
          "manifestation": [{"coding": [{"system": "http://snomed.info/sct", "code": "271807003", "display": "Rash"}]}],
          "severity": "moderate"
        }]
      }
    },
    {
      "fullUrl": "Observation/obs-hb-1",
      "resource": {
        "resourceType": "Observation",
        "id": "obs-hb-1",
        "subject": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"},
        "code": {"coding": [{"system": "http://loinc.org", "code": "718-7", "display": "Hemoglobin"}]},
        "effectiveDateTime": "2023-11-01",
        "valueQuantity": {"value": 13.2, "unit": "g/dL"},
        "interpretation": {"coding": [{"system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation", "code": "N", "display": "Normal"}]},
        "note": [{"text": "Routine CBC"}],
        "performer": [{"reference": "Practitioner/816cf057-b736-4e08-baed-cc21e081b784"}],
        "extension": [{"url": "urn:example:observer", "valueReference": {"reference": "Practitioner/816cf057-b736-4e08-baed-cc21e081b784"}}]
      }
    },
    {
      "fullUrl": "Immunization/imm-1",
      "resource": {
        "resourceType": "Immunization",
        "id": "imm-1",
        "patient": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"},
        "vaccineCode": {"coding": [{"system": "http://snomed.info/sct", "code": "1119349007", "display": "COVID-19 vaccine"}], "text": "Comirnaty"},
        "occurrenceDateTime": "2024-05-01",
        "protocolApplied": [{"doseNumberPositiveInt": 2, "targetDisease": [{"coding": [{"system": "http://snomed.info/sct", "code": "840539006", "display": "COVID-19"}]}]}],
        "doseQuantity": {"value": 0.5, "unit": "mL"},
        "site": {"text": "Left deltoid region"},
        "route": {"coding": [{"system": "http://snomed.info/sct", "code": "34206005", "display": "Intramuscular route"}]},
        "performer": [{"actor": {"reference": "Practitioner/816cf057-b736-4e08-baed-cc21e081b784"}}]
      }
    },
    {
      "fullUrl": "Observation/obs-occ-1",
      "resource": {
        "resourceType": "Observation",
        "id": "obs-occ-1",
        "subject": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"},
        "code": {"coding": [{"system": "http://loinc.org", "code": "11341-5", "display": "History of Occupation"}]},
        "valueString": "Nurse",
        "effectiveDateTime": "2020-01-15"
      }
    },
    {
      "fullUrl": "Observation/obs-ind-1",
      "resource": {
        "resourceType": "Observation",
        "id": "obs-ind-1",
        "subject": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"},
        "code": {"coding": [{"system": "http://loinc.org", "code": "21843-6", "display": "Industry of employment"}]},
        "valueString": "Healthcare",
        "effectiveDateTime": "2020-01-15"
      }
    },
    {
      "fullUrl": "Observation/obs-prg-1",
      "resource": {
        "resourceType": "Observation",
        "id": "obs-prg-1",
        "subject": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"},
        "code": {"coding": [{"system": "http://loinc.org", "code": "82810-3", "display": "Pregnancy status"}]},
        "valueCodeableConcept": {"coding": [{"system": "http://snomed.info/sct", "code": "77386006", "display": "Pregnant"}]}
      }
    },
    {
      "fullUrl": "Observation/obs-edd-1",
      "resource": {
        "resourceType": "Observation",
        "id": "obs-edd-1",
        "subject": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"},
        "code": {"coding": [{"system": "http://loinc.org", "code": "11778-8", "display": "Estimated delivery date"}]},
        "valueDateTime": "2024-12-01"
      }
    },
    {
      "fullUrl": "DeviceUseStatement/dus-1",
      "resource": {
        "resourceType": "DeviceUseStatement",
        "id": "dus-1",
        "status": "completed",
        "device": {"reference": "Device/eumfh-70-275-2"},
        "note": [{"text": "Device data required"}],
        "subject": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"}
      }
    },
    {
      "fullUrl": "Observation/obs-cod-1",
      "resource": {
        "resourceType": "Observation",
        "id": "obs-cod-1",
        "identifier": [{"system": "urn:vrdr:id", "value": "VRDR-2024-0001"}],
        "subject": {"reference": "Patient/d174bd1a-b368-41e6-83a2-af77f2b3c60f"},
        "code": {"coding": [{"system": "http://loinc.org", "code": "81956-5", "display": "Cause of death"}]},
        "effectiveDateTime": "2024-06-30",
        "valueCodeableConcept": {"coding": [{"system": "http://snomed.info/sct", "code": "840539006", "display": "COVID-19"}]},
        "extension": [{"url": "urn:example:decedentName", "valueHumanName": {"family": "JORDANA", "given": ["Patricia"]}}]
      }
    }
  ]
}
```

#### Pseudonymized Data (release-ready)

Transformations applied per the Data Elements table: names/identifiers pseudonymized, telecom removed, postal generalized to 3 digits, dates shifted to preserve age-group and clinical threading, provider references omitted.

```json
{
  "resourceType": "Patient",
  "id": "psyn-7ac6997e",
  "identifier": [{"system": "urn:example:psyn", "value": "PID-7ac6997e"}],
  "name": [{"text": "Psyn-001"}],
  "gender": "female",
  "birthDate": "1956-10-15", 
  "address": [{"postalCode": "321"}]
}
```

```json
{
  "resourceType": "Condition",
  "code": {"coding": [{"system": "http://snomed.info/sct", "code": "59621000", "display": "Essential hypertension"}]},
  "subject": {"reference": "Patient/psyn-7ac6997e"},
  "onsetDateTime": "2016-06-10"
}
```

```json
{
  "resourceType": "Immunization",
  "vaccineCode": {"coding": [{"system": "http://snomed.info/sct", "code": "1119349007", "display": "COVID-19 vaccine"}]},
  "occurrenceDateTime": "2024-05-18",
  "protocolApplied": [{"doseNumberPositiveInt": 2}],
  "route": {"coding": [{"system": "http://snomed.info/sct", "code": "34206005"}]}
}
```

```json
{
  "resourceType": "MedicationStatement",
  "medicationCodeableConcept": {"coding": [{"system": "http://www.whocc.no/atc", "code": "J01CA"}]},
  "effectivePeriod": {"start": "2024-01-16", "end": "2024-02-16"},
  "dosage": [{
    "doseAndRate": [{"doseQuantity": {"value": 500, "unit": "mg"}}]
  }]
}
```

```json
{
  "resourceType": "Observation",
  "code": {"coding": [{"system": "http://loinc.org", "code": "718-7", "display": "Hemoglobin"}]},
  "effectiveDateTime": "2023-11-18",
  "valueQuantity": {"value": 13.2, "unit": "g/dL"},
  "note": [],
  "performer": []
}
```

```json
{
  "resourceType": "Observation",
  "code": {"coding": [{"system": "http://loinc.org", "code": "11341-5", "display": "History of Occupation"}]},
  "valueString": "Nurse",
  "effectiveDateTime": "2020-01-18"
}
```

```json
{
  "resourceType": "Observation",
  "code": {"coding": [{"system": "http://loinc.org", "code": "21843-6", "display": "Industry of employment"}]},
  "valueString": "Healthcare",
  "effectiveDateTime": "2020-01-18"
}
```

```json
{
  "resourceType": "Observation",
  "code": {"coding": [{"system": "http://loinc.org", "code": "11778-8", "display": "Estimated delivery date"}]},
  "valueDateTime": "2024-12-18"
}
```

```json
{
  "resourceType": "DeviceUseStatement",
  "status": "entered-in-error",
  "note": [{"text": "masked"}]
}
```

```json
{
  "resourceType": "Observation",
  "code": {"coding": [{"system": "http://loinc.org", "code": "81956-5", "display": "Cause of death"}]},
  "effectiveDateTime": "2024-07-17",
  "valueCodeableConcept": {"coding": [{"system": "http://snomed.info/sct", "code": "840539006", "display": "COVID-19"}]}
}
```

Notes:
- Date shifts shown are illustrative (+15–17 days) while preserving month-level buckets where required.
- Postal code generalized to first three digits.
- Telecom and provider references omitted to remove latent identifiers.

#### Patient De-identification Mapping (IPS)

| Patient Element | De-identification Method |
| --- | --- |
| Name | Pseudonymized (reversible at source if required; irreversible at release) |
| ID | Pseudonymized, consistent per subject over time |
| Date of Birth | Date shifting within age-group bands |
| Gender | Included (utility) |
| Telecom | Omitted (data minimization) |
| Deceased indicator | Included (utility) |
| Deceased date | Date shifting relative to shifted birth date |
| Address (postal code) | Generalize to first 3 digits |
| Preferred language | Omitted (data minimization) |
| General Practitioner | Omitted (data minimization) |
| Insurance | Omitted (data minimization) |
{:.grid}

### CDA Example

#### Original Identified Data (IPS-like CDA subset)

```xml
<ClinicalDocument xmlns="urn:hl7-org:v3">
  <recordTarget>
    <patientRole>
      <id root="https://standards.digital.health.nz/ns/nhi-id" extension="ABC1234"/>
      <addr><postalCode>3210</postalCode></addr>
      <patient>
        <name><given>Patricia</given><family>JORDANA</family></name>
        <administrativeGenderCode code="F"/>
        <birthTime value="19560930"/>
      </patient>
    </patientRole>
  </recordTarget>
  <component>
    <section>
      <code code="10154-3" codeSystem="2.16.840.1.113883.6.1" displayName="Problem List"/>
      <entry>
        <observation classCode="OBS" moodCode="EVN">
          <code code="59621000" codeSystem="2.16.840.1.113883.6.96" displayName="Essential hypertension"/>
          <effectiveTime value="20160525"/>
        </observation>
      </entry>
    </section>
  </component>
  <component>
    <section>
      <code code="11369-6" codeSystem="2.16.840.1.113883.6.1" displayName="Immunizations"/>
      <entry>
        <substanceAdministration classCode="SBADM" moodCode="EVN">
          <effectiveTime value="20240501"/>
          <consumable>
            <manufacturedProduct>
              <code code="1119349007" codeSystem="2.16.840.1.113883.6.96" displayName="COVID-19 vaccine"/>
            </manufacturedProduct>
          </consumable>
        </substanceAdministration>
      </entry>
    </section>
  </component>
</ClinicalDocument>
```

#### Pseudonymized Data (release-ready CDA)

```xml
<ClinicalDocument xmlns="urn:hl7-org:v3">
  <recordTarget>
    <patientRole>
      <id root="urn:example:psyn" extension="PID-7ac6997e"/>
      <addr><postalCode>321</postalCode></addr>
      <patient>
        <name><given>Psyn</given><family>001</family></name>
        <administrativeGenderCode code="F"/>
        <birthTime value="19561015"/>
      </patient>
    </patientRole>
  </recordTarget>
  <component>
    <section>
      <code code="10154-3" codeSystem="2.16.840.1.113883.6.1" displayName="Problem List"/>
      <entry>
        <observation classCode="OBS" moodCode="EVN">
          <code code="59621000" codeSystem="2.16.840.1.113883.6.96" displayName="Essential hypertension"/>
          <effectiveTime value="20160610"/>
        </observation>
      </entry>
    </section>
  </component>
  <component>
    <section>
      <code code="11369-6" codeSystem="2.16.840.1.113883.6.1" displayName="Immunizations"/>
      <entry>
        <substanceAdministration classCode="SBADM" moodCode="EVN">
          <effectiveTime value="20240518"/>
          <consumable>
            <manufacturedProduct>
              <code code="1119349007" codeSystem="2.16.840.1.113883.6.96" displayName="COVID-19 vaccine"/>
            </manufacturedProduct>
          </consumable>
        </substanceAdministration>
      </entry>
    </section>
  </component>
</ClinicalDocument>
```

Notes:
- Pseudonyms are illustrative; actual generation follows Stage 2 irreversible pseudonymization with secret, un-stored salt.
- Dates are shifted consistently to preserve clinical threading while meeting risk thresholds.
- Free-text and provider identifiers are omitted; codes remain for utility.
