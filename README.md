# Status

This is the Update to the De-Identification Handbook.

- [DeIdentification Handbook GitHub](https://github.com/IHE/ITI.DeIdHandbook)
- [CI build](https://build.fhir.org/ig/IHE/DeIdHandbook/)

## Plan

- Lead: John Moehrke
- Proposal Editor: Alan Zhang, Soyean Kim, John Moehrke … (TBD)
- Work item Editor: Alan Zhang, Soyean Kim, John Moehrke … (TBD)
- Date: 2025-02-18
- Version: 0.1
- Domain: ITI

Note: Diagrams must be in an editible form: preferrably plantuml, else powerpoint.

### The Problem

IHE IT Infrastructure Handbook (The handbook) was published in 2014. The handbook starts with introduction to the fundamental terms/concepts of de-identification, like, pseudonymization, de-identification, anonymization, technologies(algorithms) etc. Afterwards, it describes the process of de-identification which can be used in various scenarios in healthcare including educational materials, public health, clinical trials, etc.  The target audience of the handbook is IHE Profile editors and healthcare information technology implementers.

It has been more than 10 years since the handbook was published. In the past 10 years, the value of data has been fully recognized and explored than ever before. Ubiquitous Big Data and AI drive not only the development of technologies, but also huge demands of collecting and managing personal data. For example, in healthcare domain, the needs on secondary use of clinical data with certain personal information is increasing, especially in AI-enabled medical device development and product registration. FDA and NMPA require high representative data including demography information used during algorithm training/testing. Collecting and analyzing health data from multiple clinical sites (collaborative analysis), sometimes, becomes crucial.

At the same time, public concerns about privacy have been well acknowledged by the regulators globally. As one of the measures of privacy protection, De-identification or the similar terms have become part of the regulatory requirement of data privacy. For example, pseudonymization, anonymous information under the GDPR, de-identification under the HIPAA and PIPL.

In response to the needs of data usage and privacy protection, new technologies and standards continue to emerge and develop. For example, PETs for Privacy Preserving Data Processing that facilitate data processing or the production of statistics while preserving privacy of the individuals providing raw data, or of the specific raw data elements. In the past few years, many de-identification (anonymization) standards have been published, like, ISO/IEC 20889:2018, ISO 25237:2017, ISO/IEC 27559:2022 etc., and many more are being drafted. 

The current version of the handbook, published in 2014, covers a lot of common definitions and topics of de-identification that are also more or less mentioned, specified or defined in recent privacy laws and standards, which brings some problems to us including: 

- Confusing definitions. Definitions from various sources of standards, laws may create difficulties in understanding the definitions in the handbook, like, pseudonymization, de-identification.
- Untouched use cases, like, collaborative analysis (in genomics and other domains), multi-stage process of de-identification.
- Outdated references

Therefore, it’s time to modernize the handbook to better serve the intended audience. Specifically, update the de-identification handbook with collaborative analysis and de-identification workflows. Major additions include the multi-stage de-identification process and multi-party data sharing. Several other sections of the handbook will also require updates.

### Key Use Case

#### Collaborative Pseudonymization

Post pandemic landscape with a significant acceleration towards digital health introduced emerging threats and evolving technology landscape for privacy best practices. With new health care data modalities (i.e. genomic) and new use cases involving new patterns of information flow (i.e. data linking involving multiple parties), implementers are tasked with decision making for responsible data sharing and use(s) where common best practices for de-identification do not yet exist.

It is currently difficult to define (i.e. threat model) and address privacy challenges for collaborative analysis involving patient data sets securely (i.e. data linking).

The first step of collaborative analysis is data matching, which identifies rows from the same individual or device. We can apply a salted hash algorithm to Personally Identifiable Information (PII) for each dataset. However, the salt value must be kept confidential. Thus, two organizations cannot use the same salt for hashing without the assistance of a trusted third party, such as a government agency. In other words, it is impossible to perform a collaborative analysis while adhering to the guidelines.

Collaborative Pseudonymization based on MPC (Secure multi-party computation) is a process to create commonly agreed pseudonym in a secure manner. Figure 1 illustrates the data flow between the data owner and collaborator in a collaborative pseudonymization.

Figure 1 Collaborative Pseudonymization

The key properties of collaborative pseudonymization include:
- Utilizing a cryptographic protocol, collaborative pseudonymization can be performed without any information leakage.
- This means that the data owner does not gain any information about the "additional information" shown in Figure 1
- Additional information is still kept separate (satisfying GDPR's requirements).
- The only requirement is that D' (pseudonymized data) should not be sent to the collaborator.
The benefits of collaborative pseudonymization include:
- Without concerns about additional information leakage, multiple data owners can generate pseudonymized data with common additional information.
- Pseudonymized data with common additional information can be used for (secure) data linkage.

#### Multi Stages Process of de-identification

The needs on secondary use of clinical data with certain personal information is increasing, especially in AI-enabled medical device development and product registration. For example, FDA and NMPA require high representative data including demography information used during algorithm training/testing. Data users care the usability of data, and from their view, De-Identification should be done per needs of secondary data use.

A typical problematic DICOM data sharing use case scenario is illustrated as 

Figure 2:

Figure 2 An example of problematic single-stage de-identification process

- A physician performs de-identification function on the modality/PACS system when exporting/querying health data for secondary use (e.g, RAD:- TCE). The de-identification function is usually implemented by following the basic de-identification profile specified in DICOM PS3.15/Attribute Confidentiality Profiles. The basic de-identification profile is the most conservative one, which leads to a de-identified DICOM data without containing some of the mandatory data attributes required by AI algorithm development team per regulatory requirements, like, patient age, patient weight etc.
- The hospital transfers the de-identified data to the medical device manufacture.
- A De-Identification expert from the medical device manufacture checks the de-identified DICOM data and identifies the missing mandatory DICOM data attributes.

The De-identification expert communicates the missing data attributes issue and alternative solution with the physician and AI algorithm developers. Usually, rework on implementing, deploying, and performing de-identification is required.

##### Cause of the problem

Applying the most stringent de-identification policy at the beginning of a workflow/process is a natural consequence of a single-stage de-identification process. A single-stage de-identification process usually consists of activities fully functional for any given use case. For example, given a well identified de-identification requirement, a step of performing de-identification function would include all the transformations of direct identifiers and quasi-identifiers. As a result, implementors of single-stage de-identification prefer a stringent or conservative style of de-identification function (data transformations regarding direct and quasi-identifiers).

In the medical imaging domian, most modality/system manufactures provide the strictest De-ID option as default (or even the only) option, for example, imaging device De-Identification feature based on the “basic profile” of DICOM PS3.15 E.1. Such “One click completion”  removes most of the demography information, which is required by AI medical devices developer to meet the regulatory requirement of AI medical device safety check.

##### Proposed solution

Multi-stage de-identification process is a method of resolving the problem identified above:
- Stage 1: Preliminary De-Identification: Apply common de-identification policies/practices which are applicable to most (if not all) the cases, for example, transforming direct identifiers.
- Other Stages: Advanced De-Identification: Apply de-identification policies/practices which are required by a specific case, for example, shifting patient hospital visit date, generalizing age, applying K-Anonymity with K=5, etc.

Figure 3 below shows a process of de-identification starting with a slight de-identification and ending up with a fully de-identified usable DICOM data, namely, two/multi stages of de-identification.
 
Figure 3 An example of multiple stage de-identification process

- Stage 1: A physician performs de-identification function on the modality/PACS system when exporting/querying health data for secondary use (e.g., RAD:- TCE) which follows a minimal de-identification profile (first stage of de-identification service)
- The physician submits the minimal de-identified DICOM data for further de-identification. 
- Stage 2: Experts from the hospital perform additional/advanced de-identification function (transforming data) according to the well-defined de-identification requirement.
- A De-Identification expert from the medical device manufacture checks the de-identified DICOM data and performs further de-identification actions according to the identified gaps between de-identification requirements and the checking results. 
- De-Identification expert shares the fully de-identified DICOM data with the AI algorithm development team.

##### Standards & Systems

Systems:
- Raw data repositories/stores. For example, image modality, PACS, EHR.
- De-identification tools. For example, de-identification integrated within modality system, standalone on-premises de-identification tools, de-identification services on the cloud, etc.
- De-identified data repositories. For example, Health/Clinical Data Lakes.

Standards:
- ISO 25237:2017 Health informatics — Pseudonymization
- ISO IEC 27559 Information security, cybersecurity and Privacy enhancing data de-identification framework
- DICOM/PS3.15/Attribute Confidentiality Profiles
- HL7 CDA, FHIR Bulk Data
- MolSeq, CQL, GA4GH, and/or HIE
- Discussion

### Ideas of handbook update

- Chapter 1. Intended audience:
  - Issue: Assuming the responsibilities of IHE Profile editors and healthcare information technology implementers are different, it’s unclear how IHE Profile editors and healthcare information technology implementers benefit from the handbook.
  - Proposed update: identify the benefits that can be gained from the handbook for IHE Profile editors and healthcare information technology implementers, respectively.
- Chapter 2. De-Identification, Pseudonymization, and Relinking (including Chapter 2.2 Definitions)
  - issue: " Anonymization and pseudonymization are the two types of de-identification" may not be accurate now. Some terms may not be covered, like, taxonomy for de-identification standards with emerging cryptographic techniques for record linkage “collaborative pseudonymization”.
  - proposed update: (1) The concept/definition of anonymization, de-identification and pseudonymization need to be updated according to other sources of information, including ISO IEC 20889-2018, NIST SP 800-188, GDPR, PIPL etc. (2) Update taxonomy for de-identification standards with emerging cryptographic techniques for record linkage “collaborative pseudonymization”
- Chapter 2.1 General Approach 
  - issue: The approach of starting by allowing no data does not support enabling de-identification services for multiple projects/cases.  " This approach starts by allowing no data, which requires that the project team justify that each attribute is required to fulfill the use case objectives."
  - proposed update: two/multi stages of de-identification. The first stage (preliminary de-identification) is the starting point of the process and can be leveraged by multiple data collection projects/cases.
- Chapter 2.3 De-identification Background
  - issue: the examples in Chapter 2.3.1 is not relevant to IHE profiles.
  - proposed update: include IHE profiles that requires de-identification services as examples, like, RAD:TCE, ITI:MPQ, XDR, etc.
- Chapter 4. Algorithms
  - Issue: Emerging technologies in use are not captured (e.g., privacy enhancing technologies, PETs)
  - Proposed update: Introduce collaborative pseudonymization and enabled use cases.
- Chapter 5. Process
  - Issue: The process consists of six steps without specifying the actors which makes the adoption of the process a bit challenging (responsibility assignment of de-identification is unclear).
  - proposed update: (1) Identify essential actors and assign the steps to actors considering two/multiple stages of de-identification service. (2) Identify key steps (e.g., ID generation) and data life cycles (e.g., metadata management, collaborative analysis beyond linkage) in the use of cryptographic record linkage.
- Chapter 6 De-Identification and Pseudonymization for IHE Profile Editors
  - Issue: single-layered of de-identification profile can lead to inconsistencies in applying common practices of de-identification due to the duplication between different data collection cases. 
  - Proposed update: Multi-layered de-identification profiles can separate de-identification concerns and standardize how common de-identification practices are applied.
- Chapter B.3 DICOM De-identification
  - Issue: the referenced file is out of dated.
  - Proposed update: update the referenced files.
