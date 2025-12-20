
This section, the IHE IT Infrastructure (ITI) Analysis of Optimal De-Identification for Family Planning Data Elements, demonstrates the application of the IHE De-Identification Handbook's systematic process framework. It describes the comprehensive de-identification analysis performed by the ITI Technical Committee for the Family Planning Annual Report (FPAR) use case published in the IHE Quality, Research, and Public Health (QRPH) Family Planning version 2 (FPv2) Trial Implementation Supplement, Rev. 1.4 (December 29, 2021).

### Purpose and Overview

This document serves as both a practical demonstration of the de-identification process framework and a complete **de-identification profile** for Family Planning data in the Title X FPAR use case. As described in the [IHE Profile Development Guidance](ihe-use.html), a de-identification profile specifies the source data type and defines how each data element will be removed, modified, or preserved during de-identification.

This de-identification profile demonstrates:

1.  **Context Analysis**: Clearly defining the data collection purpose, recipients, and data flow within the Title X family planning service network
2.  **Data Assessment**: Comprehensive evaluation of data content, including attribute classification using the updated [Data Types](data-types.html) framework (Direct Identifiers, Quasi-Identifiers, Sensitive Attributes)
3.  **Goal Determination**: Establishing specific de-identification objectives that balance clinical and privacy perspectives
4.  **Risk Assessment**: Both qualitative and quantitative evaluation of re-identification risks
5.  **Risk Mitigation Design**: Multi-stage de-identification architecture with element-by-element technique selection using techniques from the [Algorithms](algorithms.html) chapter
6.  **Implementation and Validation**: Process validation and governance framework
7.  **Identifiability Transitions**: Demonstrating the transformation from Identified Data through Reversible-Pseudonymized Data to achieve the target identifiability level as defined in [Concepts](concepts.html#Identifiability)

As a de-identification profile, this document fulfills the requirements outlined in [IHE Profile Development Guidance](ihe-use.html) by:
- Identifying data requirements for the Title X FPAR reporting class of use cases
- Identifying risks that can be removed through de-identification techniques
- Specifying residual risks requiring additional protections (controlled access, data use agreements)
- Defining element-by-element treatment for all data elements in Family Planning CDA documents

The detailed design questions that guide technique selection are organized by attribute type in the **Project and Data Details** subsection under **De-identification Goals**.

### Intended Audience

This implementation guide serves three primary audiences:

1.  **Software Developers and Implementers**: Those who will implement the de-identification techniques into their software systems. This de-identification profile serves as the specification for what transformations to apply to each data element. Developers should use the IHE QRPH Family Planning version 2 (FPv2) supplement for source document structure, this profile for de-identification specifications, and the [Algorithms](algorithms.html) chapter for implementation techniques.

2.  **Privacy and Security Professionals**: Those responsible for designing, validating, and governing de-identification processes. This document demonstrates the application of the systematic [Process](process.html) framework, including context analysis, risk assessment, and mitigation design. It serves as a template for other de-identification projects.

3.  **Clinicians, Researchers, and Data Analysts**: Those who seek to understand how and why specific de-identification techniques were selected for each data element, and how the resulting dataset maintains utility for public health reporting while protecting patient privacy. This audience will benefit from understanding the [Data Types](data-types.html) classification and the [Concepts](concepts.html#Identifiability) of identifiability levels.

### Context Analysis

This section analyzes the environment in which Family Planning data is collected, processed, and shared, following the framework established in the [Process](process.html) chapter.

#### Purpose of Data Collection

The intended use of the de-identified data determines the extent of de-identification and acceptable risk levels. The primary purpose for collecting Family Planning data is:

**Primary Purpose**: To support the U.S. Office of Population Affairs (OPA) Title X Family Planning Annual Reports (FPAR) for:
-   Program planning and budgeting at federal and grantee levels
-   Basic monitoring of program performance and adherence to funded project scope
-   Clinical quality improvement initiatives
-   Ensuring clients receive access to a broad range of family planning services and methods
-   Verifying services are delivered to intended populations
-   Budget justification to Congress for family planning service funding
-   Allocation of funding to address unmet needs in specific geographic areas

**Scope Constraints**: The de-identified dataset is specifically designed for public health reporting and program evaluation. It is *not* intended to support:
-   General-purpose research requiring high-fidelity individual-level data
-   Clinical treatment or patient care (data has already been used for that purpose)
-   Re-identification for adverse event notification (not applicable to this non-interventional use case)

#### Data Recipients

The de-identified FPAR data will be accessed by the following categories of recipients:

**Organizational Recipients**:
-   OPA headquarters staff (federal employees)
-   Title X grantees (approximately 89 organizations)
-   Sub-recipient agencies under Title X grantees
-   Service sites within the Title X network (approximately 4,100 sites)

**Recipient Profiles**:
-   Public health professionals and program managers responsible for Title X program oversight
-   Data analysts conducting performance measurement and quality improvement
-   Grant administrators monitoring compliance and resource allocation

**Relationship to Data Custodian**: The data flows from service sites to sub-recipients to grantees to OPA, creating a hierarchical reporting structure. All recipients operate under Title X grant agreements with confidentiality obligations.

**Background Knowledge Assessment**: Recipients have varying levels of background knowledge:
-   High knowledge: Service site staff may know individual patients in their local community
-   Medium knowledge: Grantee-level staff may have regional demographic knowledge
-   Lower knowledge: OPA headquarters staff have limited local community knowledge
-   External risk: With potential access numbering in the thousands, the risk posture requires treating this as a controlled-public sharing model rather than fully internal use

#### Data Flow

The de-identification architecture for Family Planning data follows a centralized model to ensure consistency and apply specialized expertise:

**Original Data Source**: Family Planning CDA documents generated at approximately 4,100 service sites that provide family planning and related preventive health services

**De-identification Architecture**: Based on public comment feedback, a single, centralized de-identification intermediary was selected over multiple distributed de-identification points. This decision was driven by:
-   Need for consistent pseudonymization across all sources
-   Requirement for specialized expertise in privacy-preserving transformations
-   Maintaining accuracy and longitudinal consistency
-   Centralized application of risk assessment methodologies

**Data Transformation Process**: The de-identification process follows format-specific best practices by maintaining de-identified data in native clinical document formats (CDA or FHIR) throughout the de-identification stages, with CSV serving as a derivative format for FPAR reporting:

1.  **Input**: Family Planning CDA documents from 4,100 service sites (Identified Data per [Concepts](concepts.html#Identifiability))
2.  **Stage 1 - Preliminary De-identification**: 
    -   Performed at source or early in pipeline
    -   Applies basic transformations to remove direct identifiers
    -   Uses reversible pseudonymization
    -   Output: De-identified CDA/FHIR documents with format-specific indicators (e.g., CDA `nullFlavor="MSK"` for masked elements, FHIR `DataAbsentReason` extension for removed data)
3.  **Stage 2 - Advanced De-identification**: 
    -   Performed by centralized intermediary
    -   Input: Stage 1 de-identified CDA/FHIR documents
    -   Applies:
        *   Irreversible pseudonymization for patient identifiers
        *   Generalization for quasi-identifiers (dates, geographic data)
        *   Suppression for unnecessary direct identifiers
        *   Risk assessment and validation
    -   Output: Fully de-identified CDA/FHIR documents with all transformations documented using format-specific metadata
4.  **CSV Derivative Generation**: 
    -   Extract relevant data elements from Stage 2 de-identified CDA/FHIR documents
    -   Transform to CSV format where each row represents a de-identified Family Planning visit
    -   CSV does not preserve format-specific de-identification metadata; provenance is maintained in source documents and audit records
5.  **Distribution**: De-identified CSV files to OPA and authorized Title X network recipients; de-identified CDA/FHIR documents retained for audit and compliance

<figure>
<img src="fp-image2.png"
style="width:6.50694in;height:2.85347in" />
<figcaption><strong>Figure: De-Identification for Family Planning Process Diagram</strong></figcaption>
</figure>
<br>

**Data Flow Diagram**: The complete data flow in the Title X FPAR use case is illustrated in the figure below. The diagram reflects a multi-stage de-identification process, where Family Planning CDA documents move from service sites through preliminary de-identification (Stage 1), then through a centralized advanced de-identification intermediary (Stage 2), before reaching final recipients. Each stage applies distinct privacy-preserving transformations, as described in the text above.

<figure>
<img src="fp-flow.png"
style="width:6.50694in;height:2.85347in" />
<figcaption><strong>Figure: Multi-Stage De-Identification Data Flows in the Title X Family Planning Annual Report Use Case</strong><br>
This diagram illustrates the two-stage de-identification architecture: Stage 1 (Preliminary De-identification) occurs at the source or early in the pipeline, and Stage 2 (Advanced De-identification) is performed by a centralized intermediary. Data flows and process points in the diagram correspond to these stages, showing how privacy risk is progressively reduced before data reaches authorized recipients.</figcaption>
</figure>
<br>

**Important Note**: External submissions use Family Planning CDA documents only. Internal processing may maintain de-identified CDA or FHIR representations. Other document types submitted via similar workflows are out of scope for this analysis.

#### Regulatory and Policy Context

**Applicable Regulations**:
-   HIPAA Privacy Rule (45 CFR Part 160 and Subparts A and E of Part 164)
-   Title X of the Public Health Service Act
-   Federal grant requirements for OPA Title X program

**Data Sensitivity**: Family Planning data involves sensitive reproductive health information requiring enhanced privacy protection for a potentially vulnerable patient population.

### Data Assessment

This section provides a comprehensive evaluation of the Family Planning data following the assessment framework in the [Process](process.html) chapter.

#### Data Subject Characteristics

**Population**: Individuals receiving family planning services at Title X-funded clinics

**Key Characteristics**:
-   **Age Range**: Predominantly reproductive age (15-44 years), including adolescents and older individuals
-   **Geographic Distribution**: Nationwide across U.S. states and territories, concentrated in underserved areas
-   **Gender**: Predominantly female patients, with male patients also served
-   **Socioeconomic Status**: Primarily low-income (Title X targets ≤250% federal poverty level)
-   **Vulnerable Population Status**: Enhanced re-identification risks due to potential social stigma, concentrated service delivery, and overlapping demographic characteristics

#### Data Type and Content

**Structured Data** (Primary format): Family Planning CDA documents containing:
-   Demographics: age, gender, race, ethnicity, language
-   Socioeconomic: income, health insurance status
-   Clinical: pregnancy history, services provided
-   Identifiers: patient, provider, facility IDs
-   Temporal: dates of birth, visit dates
-   Geographic: ZIP codes, facility locations

**Free Text**: Limited presence; requires NLP-based identifier scrubbing

**Format**: CDA/XML requiring XML parsing capabilities for de-identification processing

#### Data Attribute Classification

Following the [Data Types](data-types.html) framework:

**Direct Identifiers**: Patient Name (excluded from FPAR), Facility Name (transformed to ID), Provider Name (transformed to ID)

**Quasi-Identifiers**: Date of Birth/Age, Visit Date, Sex, Race, Ethnicity, ZIP Code, Language, Pregnancy History, Income, Insurance Status

**Sensitive Attributes**: Services Received, Clinical Procedures, Pregnancy Outcomes, STI Test Results

#### Dataset Properties

-   **Currency**: Operational data; annual FPAR compilation
-   **Scale**: ~3.9 million patients annually from 4,100 service sites
-   **Quality**: High-quality structured data with standard terminologies (SNOMED CT, LOINC, ICD, CDC PHIN VADS)
-   **Longitudinal Characteristic**: Multiple visits per patient increase re-identification risk

#### Attack Modeling

**Sharing Model**: Controlled Public Sharing (Data Use Agreement)
-   Accessible to thousands of authorized Title X participants
-   Federal grant agreements prohibit re-identification
-   Risk level: Moderate-to-high protection required

**Attack Types**: Identity attacks (journalist risk), attribute attacks on small groups, membership attacks

**Privacy Model**: k-anonymity (provides measurable, interpretable guarantees for quasi-identifier linkage attacks)

#### Terminology Reference

This analysis uses core terminology defined in the [Concepts](concepts.html) chapter, including de-identification, pseudonymization, anonymization, and identifiability levels. For complete definitions, refer to that chapter.

**Domain-Specific Terms**:

-   **PHIN VADS**: Public Health Information Network Vocabulary Access and Distribution System from CDC (<https://phinvads.cdc.gov/vads/SearchVocab.action>) - standard code sets for demographics
-   **FPAR**: Family Planning Annual Report required for Title X program
-   **Title X**: Federal grant program (Public Health Service Act) for family planning services

### De-identification Goals

This section establishes specific objectives for the FPAR de-identification process per the [Process](process.html) framework, balancing privacy protection with data utility.

#### General Goals

1.  **Prevent Identification**: Remove/transform direct identifiers; reduce combinability of quasi-identifiers
2.  **Control Risk**: Achieve acceptable residual risk for controlled-public sharing
3.  **Preserve Utility**: Maintain fidelity for FPAR reporting, performance measurement, trend analysis, and geographic analysis

#### Specific FPAR Goals

**Scope**: U.S. Title X context; reporting purpose only (NOT general research); protects vulnerable reproductive health patients

**Entity De-identification**: Patients (primary), facilities and providers (secondary, to prevent indirect identification)

**Data Fidelity**: Maintain aggregate accuracy, preserve longitudinal relationships, support geographic analysis

**Identifiability Target**: **Irreversibly Pseudonymized Data** ([Concepts](concepts.html#Identifiability)) - stronger than reversible pseudonymization, practical for longitudinal utility

**Risk Threshold**: Average re-identification risk ≤ 0.05 (5%); k-anonymity with k ≥ 20 as working target

**Rationale**: Non-public controlled sharing + medium-high attack possibility + medium-high impact (sensitive data, vulnerable population) = conservative threshold needed

#### Project and Data Details (attribute-specific design questions)

To select techniques per element, the following questions are applied by attribute type:

**Direct Identifiers (DI)**
-   Can it be deleted entirely?
-   If retained, can it be pseudonymized (reversible or irreversible)?

**Categorical Quasi-Identifiers (QI)** (e.g., race, ethnicity, language, insurance)
-   Can the value be generalized or grouped (e.g., broader categories)?
-   Can rare categories be suppressed or recoded?
-   Is code substitution acceptable (meaningful vs. meaningless)?

**Numerical Quasi-Identifiers (QI)** (e.g., income, counts)
-   Can the value be truncated, rounded, top/bottom coded, or statistically adjusted?
-   Can outliers be replaced with floor/ceiling values?

**Temporal Quasi-Identifiers** (e.g., DOB, visit date, time of day)
-   Can dates be collapsed (e.g., to month/year) or shifted by random offset?
-   Can time of day be generalized (e.g., weekend/weekday)?
-   Must longitudinal consistency be maintained after transformation?

**Geographic Quasi-Identifiers** (e.g., ZIP, facility location)
-   Can geography be generalized (e.g., 3-digit ZIP, county/region)?
-   Must longitudinal/geographic consistency be maintained across records?

**Free Text / Sensitive Attributes**
-   Can free text be removed or NLP-scrubbed? Can attributes be made fuzzier (noise/random code set)?
-   Can values be substituted with pseudorandom or sequential recoverable values when utility requires?

**Iterative Review**
-   After initial selections, perform holistic review to ensure transformations reduce risk without over-suppressing utility; document usability and threat analyses.

#### Balancing Clinical and Privacy Perspectives

**Clinical/Public Health**: Maintain FPAR performance measures, analytical utility for program evaluation

**Privacy/Security**: Protect vulnerable patients, minimize combinable quasi-identifiers, account for thousands of potential recipients

#### Use Cases from FPv2 Supplement

OPA requires the collection of family planning service delivery data in the form of the FPAR as a condition of its grant awards. The office uses the data for program planning and budgeting, monitoring program performance, clinical quality improvement, budget justification to Congress, and allocation of funding to address unmet need for family planning services in specific areas of the U.S. and its territories.

The IHE QRPH Family Planning version 2 (FPv2) supplement defines five use cases for family planning data collection and reporting:

1.  **Use Case #1: FP Manual Data Entry** - Manual data entry into family planning forms at service sites
2.  **Use Case #2: FP with Pre-pop Option** - Forms pre-populated with existing patient data from clinical systems
3.  **Use Case #3: FP with Pre-pop Option with Supplemental Data** - Pre-populated forms supplemented with additional clinical data sources
4.  **Use Case #4: Forms Data Capture with Document Submission** - Structured data capture with subsequent document submission
5.  **Use Case #5: EHR FP Document Submission** - Direct submission of family planning documents from EHR systems

All five use cases involve collection of family planning data from Title X grantees, sub-recipients, and service sites that provide a wide range of family planning and related preventive health services. The de-identification analysis in this document applies to all FPv2 use cases.

**Important Scope Limitation**: This analysis is specific to the Title X FPAR context in the United States. The conclusions regarding optimal de-identification techniques relate exclusively to this use case. Organizations wishing to utilize these data elements in other programs must conduct their own de-identification analysis, considering local needs and applicable legislation.
 
The identified data described in the FPv2 supplement is used for clinical purposes at the point of care. A
de-identified data set is needed for reporting and performance
measurement purposes. The de-identified data set is **not** intended to be suitable for general research purposes, as that would result in too broad and identifiable a data set. Data
elements that may be useful for some research purposes may
be redacted or segregated into separate reports to reduce
risk to vulnerable patients.

For purposes of risk analysis and exposure of the de-identified data
set, our assumptions include:

-   Data is collected by the up to 4,100 service sites that comprise the
    Title X network

-   Data is de-identified by a single, central de-identification third
    party

-   Data is submitted in a de-identified manner to OPA

-   De-identified data is made available to authorized staff from OPA
    headquarters and staff from OPA’s family planning service grantees
    and their subrecipient agencies

The risk posture of this data set is not the same as making the data
publicly available; however, with potential access numbering in the
thousands, securing this data set is a significant challenge that
must be considered during the de-identification process.

**Architectural Context**: Since the FPAR data will have already been used to provide treatment and services to the patient at the point of care, the de-identified data is not needed for clinical purposes. The de-identified data supports program evaluation, performance measurement, and policy decisions for the Title X network.

From an architectural perspective, the FPAR use case depends on de-identification being performed prior to submission to the host
organization. This means de-identification could be conducted by a third
party intermediary performed at the source EHR. However, multiple points
and levels of de-identification pose a risk to the accuracy and
longitudinal consistency of the data and therefore after public comment
feedback a single, centralized de-identification third party architecture was agreed upon.

#### Element-level De-identification Rules

This section constitutes the **core of the de-identification profile** for Family Planning data. As specified in [IHE Profile Development Guidance](ihe-use.html), it provides detailed treatment specifications for each data element, identifying what will be removed, modified, or preserved. This element-by-element specification enables implementers to apply consistent de-identification across the Title X network while understanding the rationale for each decision.

##### Analysis Methodology

Each element analysis follows a structured approach integrating concepts from the updated handbook:

3.  **Technique Selection**: Choosing appropriate techniques from the [Algorithms](algorithms.html) catalog:
    -   Suppression techniques (masking, local suppression)
    -   Pseudonymization techniques (irreversible hashing)

5.  **Risk Contribution**: Assessing how the element contributes to re-identification risk (particularly for quasi-identifiers)

6.  **Threat Analysis**: Considering specific attack scenarios and background knowledge that could enable re-identification

7.  **Usability Validation**: Confirming the transformed element maintains sufficient utility for intended purposes

The following subsections analyze each data element in the IHE QRPH Family Planning Profile. For each element, the analysis documents the decision process leading to the selected technique, balancing the clinical/analytical requirements against privacy protection needs.

##### Element-level Rules

**Table 2.6-1: Element-level De-identification Rules**

Note: Title terminology is preserved from the source white paper. In this profile, these “algorithms” correspond to selected de-identification techniques.

| Element                               | Patient Id type | De-Identification algorithm                                                                                                                                                     |
|---------------------------------------|-----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Facility identifier                   | Indirect        | Mapping table                                                                                                                                                                   |
| Clinical Provider identifier          | Indirect        | Mapping table                                                                                                                                                                   |
| Patient identifier                    | Direct          | Mapping table                                                                                                                                                                   |
| Visit Date                            | Indirect        | Generalized to week of year plus indicator of visit order                                                                                                                       |
| Date of Birth                         | Indirect        | Convert to age in years. For clients over 50, grouped and mapped to "over 50".                                                                                                 |
| Administrative Sex                    | Indirect        | For values of "Male" or "Female" forward the data unchanged. For Administrative Sex values of "other" change them to "Female"                                                |
| Pregnancy History                     | Indirect        | Redacted                                                                                                                                                                        |
| Limited Language Proficiency          | Indirect        | Collapse all forms to Limited English Proficiency (LEP) TRUE or LEP FALSE.                                                                                                      |
| Ethnicity                             | Indirect        | Only the values "2186-5 Not Hispanic or Latino" or "2135-2 Hispanic or Latino" may be used. Any other input value must be converted to "2186-5 Not Hispanic or Latino".     |
| Race                                  | Indirect        | Collapse to 5 OMB categories plus Other. For each county, establish which races are below the threshold of 50 people per county. For those races, group them into "Other"      |
| Annual Household Income               | Indirect        | Convert to percentage of Federal Poverty Level (FPL)                                                                                                                            |
| Household Size                        | Data            | Convert to percentage of Federal Poverty Level (FPL)                                                                                                                            |
| Visit Payer (U.S. Only)               | Indirect        | Convert to Public Health Information Network (PHIN) Vocabulation Access and Distribution System (VADS)                                                                          |
| Current Pregnancy Status              | Indirect        | Generalize to YES/NO/UNKNOWN                                                                                                                                                    |
| Pregnancy Intention                   | Data            | Unchanged                                                                                                                                                                       |
| Sexual Activity                       | Data            | Unchanged                                                                                                                                                                       |
| Contraceptive Method at Intake        | Data            | Unchanged.                                                                                                                                                                      |
| Reason for no contraceptive method    | Data            | Unchanged.                                                                                                                                                                      |
| Contraceptive Method at Exit          | Data            | Unchanged.                                                                                                                                                                      |
| Date of Last Pap test                 | Indirect        | Redact the day of the month, and use Week and Year only in the format of yyyyWww where week 52 of 2014 would appear 2014W52                                                     |
| HPV Co-test Ordered                   | Indirect        | Redact the day of the month, and use Week and Year only in the format of yyyyWww where week 52 of 2014 would appear 2014W52                                                     |
| CT Screen Ordered                     | Indirect        | Redact the day of the month, and use Week and Year only in the format of yyyyWww where week 52 of 2014 would appear 2014W52                                                     |
| GC Screen Ordered                     | Indirect        | Redact the day of the month, and use Week and Year only in the format of yyyyWww where week 52 of 2014 would appear 2014W52                                                     |
| HIV Screen Ordered                    | Indirect        | Redact the day of the month, and use Week and Year only in the format of yyyyWww where week 52 of 2014 would appear 2014W52                                                     |
| HIV Rapid Screen Result               | Indirect        | Delete. HIV reporting will be handled separately.                                                                                                                                                                     |
| HIV Supplemental Result               | Indirect        | Delete. HIV reporting will be handled separately.                                                                                                                                                                     |
| Referral Recommended Date             | Indirect        | Delete. HIV reporting will be handled separately.                                                                                                                                                                     |
| Referral Visit Completed Date         | Indirect        | Delete HIV referrals. HIV reporting is required for the HHS HIV linkage to care performance measure, however HIV data is sensitive and the HIV pools sufficiently small that a separate mechanism will be established for reporting on these data, such as reporting these values to a separate aggregate database. For non-HIV referrals redact the day of the month and use Month and Year only |
| Systolic blood pressure               | Data            | Unchanged                                                                                                                                                                                                              |
| Diastolic blood pressure              | Data            | Unchanged                                                                                                                                                                                                              |
| Height                                | Indirect        | Unchanged, except for values below 59 inches or above 76 inches. For values below 59 inches, convert to 59 inches. For values above 76 inches, convert to 76 inches                                                  |
| Weight                                | Indirect        | Unchanged, except for values below 100 lbs. or above 299 lbs. For values below 100 lbs., convert to 100 lbs. For values above 299 lbs., convert to 299 lbs.                                                           |
| Smoking status                        | Indirect        | Unchanged                                                                                                                                                                                                              |
{:.grid}

**Utility Assessment**: From a health services research perspective, the facility identifier is needed, at a minimum, to compare services or outcomes at the level of a small geographic region such as a county or township. When measuring
outcomes or service provision, it may also be beneficial to compare
different sites. Additionally, data contributors consuming this
de-identified data set for their own planning purposes would need some
way to distinguish outcomes or services provided across facilities. Some
form of longitudinal consistency is needed for these purposes, so this
data element cannot be deleted, and cannot be null.

The De-Identification spreadsheet[^5] that accompanied the
De-Identification whitepaper[^6], identifies each data element as being
of a particular kind of direct or indirect identifier, and indicates the
most important questions that need to be answered from the list of
de-identification methods in Section 1.1 above for that data type. These
individual question and answer pairs are left in for this data element,
to illustrate the decision process, but will be included in the
narrative in subsequent sections.

The Facility identifier is identified as being closest to either a
Person Name or Address. As such, the questions that must be answered in
order to determine de-identification requirements are:

-   Does this data element require longitudinal consistency to be
    maintained after de-identification?

Yes. For example, in order to stratify performance measures and service
delivery by facility in order to monitor variations in quality efforts
and patient outcomes.

No, as noted above.


-   Can it contain a substitute value as a random number? (Fixed length
Yes, as long as we identify a way to keep this value longitudinally
consistent.

Yes, but it may not be worth the cost of paying a third party for this
confidential mapping table, it makes sense to use the same approach for
Facility ID since we are doing it anyway.

Yes. A pseudonymized set of facility identifiers is possible. The
Deployments can determine whether to use a mapping table, or assign
ownership of pseudonym updates.

-   Can the value be replaced by a sequential value that is recoverable?

No. This does not apply to this type of data.

-   Can it be generalized to a geographical location?

Maybe, depending on the purposes of the analysis. If geographic
reporting is good for the consumer of this data set, then this is an
acceptable technique.

It is important to note that in certain legal jurisdictions the legal
protection needed for the data changes once it has been de-identified.
These regulations are subject to change, so the de-identification
processes must be adaptable.

The answers to the above questions indicate that some form of pseudonymization is ideal for a
Facility Identifier due to the requirement for longitudinal consistency,
as well as the need to be able to group observations for a single
facility (cross-sectional consistency) and facility based analysis
(calculating measures at the facility level).

Types of pseudonymization optimal for Facility Identifier:

-   Use of a new mapping table created specifically for this purpose, or
    an existing mapping table such as the Title X or one maintained by
    the Guttmacher Institute. The risk inherent to this approach is
    keeping the existing table up to date.

-   Request facilities to manage their own anonymized/different facility
    ID known only to them at the time of submission and will be used for

-   Hashed identifiers.
As identified during the usability analysis of the de-Identified data
elements, it was determined that a mapping table is the preferred
table will be maintained by an appointed organization, such as a
identifiers, as well as the list of de-identified values that they are
mapped to. For example:

| Facility ID of Origin | De-Identified Facility ID (Example only) |
| --------------------- | ---------------------------------------- |
| 12678                 | 111-111                                  |
| 92457                 | 222-222                                  |
| 92774                 | 333-333                                  |
| 92837                 | 999-999                                  |
|                       | 777-777                                  |
{:.grid}

Identifier mapping should be generated using a standardized technique,
using a cryptographically strong randomly assigned identifier.

#### Clinical Provider identifier

Uses of this data element differ across different countries. In the
U.S., consumers of the de-identified data set may want to track outcomes
down to the provider level. For example, to identify providers who
screen for chlamydia among populations who don’t need it. In the U.S.,
this tracking is permitted by law. However, in Europe this may be viewed
as tracking individual employees without predetermined cause.

This data element could be deleted or left with no value, though the
cost of deleting this data element is removing granularity of the data
at the individual level. Some countries in Europe would actually mandate
the redaction of the level of reporting, and require that a problem be
identified at the facility level before being considered to have
sufficient cause to monitor at an individual level.

It is possible to pseudonymize this data element as well, especially
since a linked provider ID is rarely needed outside of the facility. The
National Provider Identifier (NPI) used in the U.S. is tied to practice
level and practice specialty and it may be possible to convert the
provider ID to the practice level and only use that, provided that
individual level analysis is not needed.

Anonymized data could come in as anonymized, but with a known mapping
table that is heavily protected. Management of this table could be
defined in governance for a given project. Governance could state that
in the U.S. Title X grantees can have access to the mapping table and
compare performance measures by providers, but that OPA has no need to
do so. Given this, the preferred approach is a mapping table; however,
the determination of where this mapping occurs, prior to submission to
OPA, is a critical component.

#### Patient identifier

The Patient identifier is needed in the de-identified family planning
data set to track longitudinal consistency of the data. In other words,
longitudinal consistency is when data is tracked over time and linked to
each patient over that period of time even though the patient itself is
not known. As a result, in order to achieve longitudinal consistency, a
de-identified patient identifier is needed to link individual records to
a unique, but unknown, patient. For family planning performance
measures, some form of a patient identifier is needed to track things
including changes in health and care status for a given patient.

As another example, if a yearly report includes data on 10,000 patient
visits conducted, without longitudinal consistency it will be impossible
to tell if that is 10,000 unique patients with one visit each or 2,000
patients with different visit frequencies.

When implementing, it is important to consider the tolerance for errors
in longitudinal consistency. For example: A very tight/low tolerance may
require a centralized authority to create tight pseudonyms and maintain
them. If you have a higher tolerance, you may be able to leverage a
hashed/random technique for pseudonymization.

Higher tolerance may be possible in this use case. Substitution would provide some level of pseudonymization provided the
technique is strong enough. E.g., “Use a random number generator to
replace the ID with a random ID number”. The issues with this approach
are that the random number generation needs to be sufficiently random,
AND loss of the mapping table makes re-identification and longitudinal
consistency impossible.

The value could be kept in escrow or provided by a third party and
therefore segregated from the main data set, and this may be the ideal
method under certain circumstances. However, there are possible
drawbacks. A key flaw is that it provides a single point of failure.
Also, access control and security safeguards for the escrow system must
be rigorous and workflow and policy around the third party escrow usage
are challenging to implement. (i.e., changing sites, sites may not
request pseudonyms in a timely manner, etc.)

This is a value that could be pseudonymized, and a potential
de-identification technique is to agree on a hashing technique. For example,
identify the Patient ID as a value that must be included in a hashed
section of the document, and agree on how the Patient IDs will be
represented so that the hashed values will always be interpreted in the
same way. A flaw with this technique is that it is vulnerable to a brute
force attack.

Another possible technique of pseudonymization is to use two-stage
pseudonymization. For example, assign a block of pseudonyms to the site,
and then download the responsibility to the site to manage
pseudonymization for their own internal patient IDs. Currently,
site-specific IDs are difficult to track, so this technique does not
significantly impact the quality of the data. A potential issue is the
technique may not be consistently applied and would be difficult to manage.

A third possibility is the use of a one-time key generator be used. The
typical technique is to identify a short data block, like the name of
the clinic and a sequence number and then encrypt it with AES. The key
secrecy is not that critical, but you can use the encrypted result as a
unique patient ID.

This analysis indicates that, assuming workflow, policy and access
control safeguards make escrow an impractical solution, one-way
pseudonymization technique may be optimal; however, the requirement
for implementations to specify the retention duration of the local
mapping table must be made clear.

Identifier mapping should be generated using a standardized technique,
using a cryptographically strong randomly assigned identifier.

#### Visit Date

The visit date is used to measure trends, intervals between visits,
intervals between assessment of pregnancy intention and positive
pregnancy test results, etc. As multiple clinic visits by the same
patient on the same day are unlikely to occur, time of day is not a
required level of detail and must be removed. However, age at time of
visit should be calculated before this data element is de-identified.

One approach is to generalize the visit date to week of year values
(e.g., week 1, week 2, week 3). There are situations where patients come
in more than once a week, but it may be just as useful to say “3 times
in week 1” as the interval between days in that week may not be a
necessary detail. As a result of feedback submitted during public
comment, an indicator of visit order per week of year was added. Visit
dates shall henceforth be de-identified using a yearWweek-visitsequence
format, where:

-   "year" is the 4 digit year of the visit (e.g., 2014)

-   "Wweek" is the two digit week within the year (W05 for the fifth
    week; W52 for the last week)

-   "-A" is the visit order within the week (A = 1st visit of the week,
    B = 2nd visit of the week)

> For example, the 2<sup>nd</sup> visit of the fifth week of 2014 would
> be formatted as: 2014W05-B.

If we want to measure if a referral loop was completed within a 90-day
window, then any adjustment would need to be made identically to all
associated dates. For example, “add 5 days for all days for patient X,
and add 3 days for all patients Y”. However, this is unlikely to be
executed correctly/consistently and could introduce a lot of risk and
error, as well as additional maintenance of mapping tables.

Another risk of the adjusting by days approach is with annual reporting
where there are annual goals for users and the dates slide outside the
reporting year, etc.

Our conclusion is that the time component must be omitted if present.
Dates must be generalized to week of year values.

Note 1: Measures that involve the calculation of days may be affected by
this technique. Reporting periods may need to be fuzzed +- one week to
account for this.

Note 2: For smaller service sites that have low volume weeks, using
weekly values may still be a high re-identification risk. Those sites
may want to consider alternate methods of de-identification or possibly
other methods of data submission provided they do not have a significant
impact on the overall data set.

Note 3: When other dates that are recorded, such as test dates or
referral dates match the visit date, those dates must be modified to
match the weekly value of the visit date.

#### Date of Birth

Date of birth is used in family planning to do cross-tabulation with
reproductive lifespan, reproductive lifecycle and to determine services
needed at certain ages.

The Date of Birth is needed to know how old the patient is, because
according to various clinical guidelines certain procedures must be
performed at certain ages, e.g., pap smears for women ages 21 and over.
to age brackets for the population (for example, adolescents, adults
over 20, etc.).

Since the de-identified data set will not be used for clinical purposes,
the performance measure side mentioned above is the core focus here.

De-Identification whitepaper, the Date of Birth is equivalent to the DOB
field. As such, the questions that must be answered in order to
determine de-identification requirements are:
Historically, the FPAR has collected age in “brackets.” Age brackets are
fairly specific and may need to be fairly granular at some levels. 10
year brackets may be a problem. 5 year intervals may be manageable
standard pre-selected. In addition, for different measures, an
individual may fall into a different age bracket.

However, for certain performance measures, such as pap smears, the age
groups need to be quite granular. Brackets that are too broad can be a
it would be impossible to assess if those guidelines are being followed.

When the Family Planning CDA document is produced, it will contain a
date of birth. If it is decided later on to calculate age at date of X
test, then the document will already contain an age, so it may be
possible to remove the DOB. However, date of the test for which age is
calculated may not be the same as age at the time of the document, so we
may end up having an age at the top of the document as well as

Current recommendation is to calculate the age at date of visit and
submit that as a whole number (i.e., if the person is 18.6 at the time
of the visit, the age reported will be “18”. For clients over 50,
generalize their age to “over 50”.


Administrative Sex is not a clinical or genetic statement; it is used
for administrative purposes. Administrative Sex also does not equal

Administrative Sex is driven by the administrative categories that are
needed by the facility and the people they interact with.

This data element is needed to analyze care statistics for both females
and males. Both females and males are served in Family Planning.

Female numbers are used to measure contraceptive effectiveness.
Administrative sex is also needed as a primary demographic
characteristic as the users. Leaving this element in increases the risk
for the male individual since for example for Title X only 8% of the
population consuming family planning services is male, however there are
sufficient reasons to know number of males that the best method may be
to completely drop any encounter level data for patients that identify
as unknown.

The risk to that approach is that differences in numbers reported may
identify the number of unknowns at a given site; however, it is possible
determine the likelihood of identifying unknown genders. As a result, a
two-step approach may be best, where the service site itself would:

    can; and

-   Redact entire encounter level data for patients that identify as

After repeated discussion, the committee concluded that encounter
documents where the Administrative sex was listed as “other” that this
value should be changed to female for de-identification purposes. This
approach is the simplest and will not have a significant impact on
performance measures.

Please note that HL7<sup>®</sup>[^8] changed the name of “Administrative
Sex” to “Administrative Gender” in August 2012, which has caused some
confusion. The term used here is “Administrative Sex” because that is
what is currently used in the IHE QRPH Family Planning Profile.

#### Pregnancy History

Pregnancy History is a stratification variable that can have fertility
implications in the clinical realm. In the performance measurement
realm, this data element may not be necessary.

Number of pregnancies and number of births may be valuable information
to assist in understanding the population and to group women by parity
level. For the Title X FPAR use case, this data element
will not be collected at the national level. Organizations outside of Title X requiring this data element must conduct their own de-identification analysis considering their specific context and applicable regulations.

#### Limited Language Proficiency

The data element describes family planning users who do not speak the
national dominant language (e.g., English in the U.S.) as their primary
language and who have a limited ability to read, write, speak or
understand the dominant language and therefore require language
assistance services (interpretation or translation) in order to optimize
their use of health services.

CDA allows four different conceptualizations of language use:
understanding, speaking, reading, and writing.

Limited Language Proficiency is an important demographic descriptor. The
history behind this HHS requirement is to ensure that individuals with
limited local language proficiency have appropriate access to services.
This is a significant part of providing a safety net for individuals who
have barriers to care, but the granularity of language information that
can be described in CDA is not necessary for this purpose. The value set
can be limited.

However, data is collected in the local system; the only data that
should be submitted for performance measurement purposes is “LEP YES/LEP
NO”. All other language data should be redacted. Given that the data set
is a large population, people with a limited language proficiency in
English are still fairly numerous so the group of people affected by a
“YES” is not an extremely high risk of identifiability.

#### Ethnicity

Ethnicity is a stratification variable used in performance measurement
to track healthcare disparities by ethnicity. For example, in the U.S.
30% of Title X Family Planning users identify as Hispanic. Additionally,
in the U.S., this is an important health disparities measure as The
Department of Health and Human Services wants to make sure clients of
certain ethnicities are not being denied appropriate care.

In some countries, this data element must absolutely be preserved and,
in some countries, it must be removed. Deletion of this data element is
left up to discussion in national extensions. In the U.S., this data
element is mandatory for federal reporting.

It is possible to substitute ethnicity values with a less precise value
set. In the U.S., this value set has already been reduced to two very
broad categories of “Hispanic or Latino” or “Not Hispanic or Latino”.
However, this limited set does split the population down to 70% “Not”
versus 30% for clients who are Hispanic or Latino. There could
potentially be the addition of “Unknown”, which may not be needed given
that 30% is still a large population. In areas where there are very few
of either category, rules for cell suppression may be needed if the
number of people reported in any kind of analysis would be lower than a
pre-determined limit.

For the stated use case in the U.S., “Hispanic or Latino” and “Not
Hispanic or Latino” are sufficient. Note that current FPAR has three
categories; Hispanic/Latino, Not Hispanic/Not Latino, and Unknown.

#### Race

Race is used as a stratification variable to track healthcare
disparities by race. For example, in the U.S., 21% of Title X users in
2013 were Black or African American.

In some countries, this data element must absolutely be preserved, and
in other countries, it must be removed. Deletion of this data element is
left up to discussion in national extensions. In the U.S., this data
element is mandatory for federal reporting.

The data set can be generalized, using the 5 OMB categories. In the
U.S., it is possible to accept up to 900 categories, but at minimum, the
5 OMB categories are necessary for performance measurement. Currently
the categories are:

1002-5 American Indian or Alaska Native2028-9 Asian2054-5 Black or
African American2076-8 Native Hawaiian or Other Pacific Islander2106-3
White

In areas where there are very few of a given category, rules for cell
suppression may be needed if the number of people reported in any kind
of analysis would be lower than a pre-determined limit.

The recommended technique is to collapse the data set to the 5 OMB
categories using the OMB guidelines
https://www.whitehouse.gov/omb/fedreg_1997standards/, plus one
additional category of “2131-1 Other” to be used for unknown races,
instances where the individual declined to answer, and other races. For
each county, establish which races are below the threshold of 50 people
per county. For those races, group them into “Other”.

Please note that CCDA<sup>®</sup>[^9] allows for reporting of two or
more races. If two or more races are reported, de-identify each one as
above.

In other words, where a “more than one” race exists, the additional race
will appear in the original CDA document as a separate entry and each
entry will be de-identified using the same method. I.e., a dual race of
“Chinese” and “Polish” will be de-identified as “Asian and “White”.

#### Annual Household Income

Annual Household Income is asked for in order to assess whether the
patient qualifies for the annual poverty level. This is calculated
including the annual household size element as well. Additionally, there
is a regulatory requirement on the combined household size and income.
If the patient is “250% or below the federal poverty level”, then this
is recorded as a demographic statistic. This data is often calculated
incorrectly, so the raw data is requested as part of Family Planning
reporting in order to ensure consistent calculation.

We cannot necessarily just record a binary “at or below poverty”. There
is value to being able to establish your own meaningful income
categories that correspond to issues that we know occur in healthcare so
categories can be used here. For example, instead of $19,543 per year,
“under 20k” may be possible. The only concern here is that there is no
standard referenced value set for these categories.

In the U.S., Categories are set by the federal government every year and
cannot be established independently. The income categories in 2013 FPAR,
which are based on the HHS poverty guidelines published each year, are:
reported
The value could possibly be substituted by a code, but this will come at
a functional cost. The most appropriate code would be reimbursement

It was decided that Annual Household Income is too difficult to
generalize to categories. If this element is too identifiable it is
possible to just submit the FPL percentage and drop both household
income and household size, and accept the costs to the data granularity.

The conclusion reached is for the reporting organization to calculate
and submit the FPL percentage in lieu of submitting Income AND Household
size.

#### Household Size

Household size as it is defined in the IHE QRPH Family Planning Profile
is data that is not identifiable, does not need to be modified and can
be passed on unchanged. However, within the U.S., the household size is
only used to calculate the FPL in conjunction with the Annual Household
Income. Therefore, for de-identification purposes, the Household size
will be calculated into FPL percentage and then deleted. See Annual
Household Income for details.

#### Visit Payer

This data element is used for performance metrics to see what percentage
of people are uninsured, are served by Medicaid, etc. Categories used
are from the payment source typology from the public health data
standards consortium archived by Public Health Information Network
(PHIN) Vocabulary Access and Distribution System (VADS):

> 1 MEDICARE2 MEDICAID5 PRIVATE HEALTH INSURANCE23 Medicaid/SCHIP32
> Department of Veterans Affairs38 Other Government (Federal, State,
> Local not specified)81 Self-payNA No insurance9999 Unavailable /
> Unknown

The smallest category in the U.S. currently contains 1.8 million people,
so if we use the categories listed above then this may be sufficient
generalization to not be very identifying.

The conclusion reached is to use the PHIN vocabulary described here.

#### Current Pregnancy Status

This data element is needed for performance measurement purposes to
justify why a method of contraception is not assigned. This data point
should be passed through unchanged.

Current categories in the Family Planning Profile are:

> Not Pregnant, by patient reportNot Pregnant, by test
> resultSterilizedPostmenopausalPregnant, by patient reportPregnant, by
> test result

For longitudinal measurement, this element could also be useful to count
individuals who come in as pregnant after contraception has been
assigned. However, this may not be an accurate measure. There is a risk
of pairing this element with “pregnancy intention” as a use for listing
unintended pregnancies. Similarly, connecting this with pregnancy
outcomes (if someone comes back as a subsequent visit as no longer
pregnant).

The decision made is to generalize to Yes, No or Unknown.

#### Pregnancy Intention

Pregnancy intention is used in performance measurement to evaluate the
proportion of patients that were assessed in the last year.

Pregnancy intention has a defined value set that has only four entries
and is not considered very identifiable. This field is validated and a
tested question for clinical assessment. The question that is asked is
“Would you like to become pregnant in the next year?” If the individual
is not female, this question may be asked as “Would you like to become a
parent in the next year”.

-   Yes, or Okay either way

-   No, but maybe in the future

-   No, I never want to be pregnant/have a child

-   Unsure

If the individual is not female, this question can be asked as “Would
you like to become a parent in the next year”. The answers may use the
same value set and as a result are not necessarily identifying the
individual’s gender. This data element can be passed along without
applying any de-identification techniques.

#### Sexual Activity

This data element is used in performance measurements to establish a
correct denominator for clients who have been sexually active in the
past 3 months

The value set is limited to “yes/no/unknown” and is not considered to
provide enough detail to identify someone. This data element can be
passed along without applying any de-identification techniques.

#### Contraceptive Method at Intake

Contraceptive method at intake is used in performance measurement to
compare “method at intake” and “method at exit” to determine if patients
gained access to more effective contraception methods during the visit.
Where there are multiple methods in use, the QRPH Family Planning
Profile instructs users to report the most effective of the methods
listed.

it is possible that not all are necessary for performance measurement.
The full list, however, may be useful for analytic options.
The current value list includes:

| Diaphragm or cap                       | Emergency Contraceration (EC) |
| -------------------------------------- | ---------------------------- |
| Female condom                          | Female sterilization         |
| Fertility Awareness Method (FAM) FAM   | Implant                      |
| Injectables                            | IUD/IUS                      |
| Lactational Amenorrhea Method (LAM)LAM | Male Condom                  |
| Male relying on Female method          | None                         |
| Oral contraceptive pills               | Patch                        |
| Spermicide                             | Sponge                       |
| Vaginal Ring                           | Vasectomy                    |
| Withdrawal                             | Decline to answer            |
{:.grid}


For de-identification purposes, this data point may be passed through
unchanged.

#### Reason for No Contraceptive Method

Reason for No Contraceptive Method is used to further specify who should
be included in a given analysis. For example, don’t include people
seeking pregnancy in an analysis about why condoms are not used.
Additionally, it is useful for documenting why someone chooses to exit
an encounter without a contraceptive method. From a performance
perspective if they are not at risk of pregnancy then it is allowable
for them to exit the encounter without a method.

-   Abstinence

-   Same-sex partner

-   Seeking pregnancy

-   Declined all methods

-   Other

This data element can be passed along without applying any
