
# Process

Projects that need de-identification or pseudonymization should follow these steps to define the de-identification process that is appropriate for the project’s intended uses of the de-identified data.

1. Requirements Definition: Define the data needed. This is not always a simple binary decision. Some data elements will be useful but not critical for the project purposes. There may be a need to tradeoff between procedural privacy protections and protection through de-identification. There may be tradeoffs between data fidelity and privacy protection. This may involve negotiation.
2. De-identification Design: Design and document the de-identification and procedural protection approach. This includes designing the data flows, identifying special considerations, procedural steps like the use of intermediaries, etc.
3. Confirmation and Validation: Confirm the ability to both satisfy the data needs and the ability to adequately protect patient privacy and security. Confirmation often includes an independent design review and validation.
4. Implementation: This may be configuration of established tools and use of existing procedures. This may involve software development and creating new operational procedures.
5. Process Validation: The process and procedures must be validated with test data and dry-run operations. It is not appropriate to go operational without validation.
6. Periodic review during operation: At regular intervals the process and procedures should be re-evaluated. Threats evolve and technology changes, which may require changes to the de-identification process. There should also be a review of problem reports. An appropriate corrective action and preventative action process should be in place and its appropriate use verified.

## Step 1 – Requirements Design

The intended uses of the data determine the extent of de-identification and risk. Clearly define the specific data needed for the intended use. The reason for each data element that is needed should be documented. That will determine what data is preserved (pass through), what data is removed (e.g., redacted), and what data is obscured (e.g., fuzzed).

Data elements that are direct identifiers (e.g., Name, Address, Phone Number, SSN) are usually removed but substitute identifiers may be needed. Sometimes the intended use requires a consistent identifier. If this is needed then a pseudonym will be needed. Sometimes these pseudonyms can be assigned in a non-reversible way. Sometimes the potential benefits to the patient make a reversible pseudonym desirable (e.g., after a clinical trial the patient may be informed of their previously blinded treatment and given recommendations). Other data elements that are identifiers (e.g., insurance, payment) may be unnecessary and fully removed.

Data elements that are structured, coded, and needed by the intended use are generally left in place. If the data is not needed, it should be removed. The resulting dataset may be statistically evaluated to identify whether the data would still be identifying. If it is identifying and the identifying data elements are necessary, the resulting dataset will still need to be protected as PHI.

Data elements that are NOT structured or coded (e.g., text comments) are generally removed.

This leaves data elements that are 'Indirect Identifiers', that is they could be used to re-identify the data. For example, Latanya Sweeney from CMU used Date-of-Birth, Current ZIP Code, and Sex to achieve a high percentage of patient re-identification. Where these data elements are not needed, they should be removed. If the data is needed, a fuzzing algorithm may be acceptable for the secondary use.

It is important to consider the option that the resulting data will still be considered PHI. There are many internal uses, such as Cancer Board reviews, where a de-identification step is taken to reduce the risk of accidental disclosures and bias. The de-identified data could still be easily re-identified, so it must still be protected as PHI. But, the risks of accidental disclosure can be greatly reduced by removing all the unnecessary identifiers.

The result of a requirements design is a document. The following outline is suggested:

> 1.0 Project Scope
>    1.1 What data must be retained in order to satisfy the primary and
tertiary needs of the project?
>    1.2 What is the acceptable level of privacy risk (for example, a tumor
board will accept a high level of risk than a clinical trial)?
>     1.3 What legal sensitivities apply to these data? Are the data subject
to special sensitivity rules such as for behavioral health?
> 2.0 Project Details
>     2.1 What are the threats that need to be protected against?
>     2.2 Is there a need to re-identify the original patient? What elements
are needed for this purpose?
>     2.3 What general types of entities are being de-identified? Patients?
Providers? Facilities? Other?
>     2.4 What are the additional project requirements beyond raw data, for
example administrative tracking data?
>     2.5 Is there a need to maintain clinical time threading? Does it
maintain a time relationship to external events? If so, what is the type
of error allowed (e.g., time shifted, fuzzy, loss of precision)?
>    2.6 How accurate do the remaining data elements need to be? Is it
desirable for the remaining data to not show evidence of
de-identification?

## Step 2 – De-identification Design

**Design Considerations**

Is the data set completely available in advance of de-identification? Or are the data de-identified and pseudonymized as the data arrives? Knowledge of the complete data set allows for a more precise determination of which elements are available and what time threading is available.

Is an intermediary organization required for process or legal reasons? Clinical trials regulations often require intermediary organizations.

**Pseudonym Requirements**

Select the algorithm used to compute this pseudonym:

- Care should be taken to ensure the identifier is selected in such a way that it is not subject to re-identification by attackers identified in the security risks session.
- Design should accommodate changes to patients’ traits over time, such as name and address changes.
- Design should ensure that any de-duplication occurs before the de-identification and/or pseudonymization.
- Design needs to consider factors for inter and intra reader variability analysis for clinical trials. For example unique value requirements for identical datasets.

**Semantic Considerations**

In a semantically interoperable environment it may be necessary to ensure that the data elements remain valid so that specific constraints on the types and/or values of the element are met. For example, if redaction is chosen for a mandatory data element, a suitable replacement value must be established. A related issue is that coding systems must take into account any evolution of code sets over time.

There is a subtle threat related to code sets. Specifically, if a code system is narrowly used, it can identify the source data system. For example, a facility-specific code set identifies the facility. A vendor
code system identifies the vendor. An identity assigning authority identifies the scope of the identities.

**Resistance to Re-identification**

During the design phase determine the potential for re-identification from remaining data set. This is often measured in terms of the percentage of participants that could be expected to be re-identified using established methods. This influences the extent of PHI protections that will be needed for the de-identified data set.

**Element by Element de-identification design**

One key element of the design is an element by element listing of how each possible data element in the input data set will be processed. Two examples are given in Appendix E. It is not possible to create a single universally appropriate table. Examples like these can act as a starting point for purpose specific designs.

The DICOM standard provides initial starting point tables for commonplace de-identification requirements for imaging results in the DICOM format. These are in PS 3.15 Annex E, especially Table E.1-1. The DICOM standard is freely available for use and permission is granted for public and private use of extracts. It is provided in Word format to simplify such use. Note: The DICOM standard identifies private attributes that are claimed to lack personal information. Other treatment of private attributes must be part of the design process.

There are also project and other examples available, such as the Biosurveillance Use Case Minimum Data Elements Specification.

## Step 3 – Design Validation

The design should be validated before the design is fully implemented. Validation should focus on confirming that identified project risks are either reduced or identified as protection requirements. This must include risks related to overall project objectives, risks to individual patient privacy, and risks of non-compliance with applicable policy. The validation review may need to include stakeholders such as the IRB. 
The validation phase consists of three phases:

1. Reviewing the input data to manually confirm that the field-level algorithm selections are appropriate and all input data elements are addressed. This often involves manually examining a random selection of input data records.
2. Reviewing a prototype of the post-processed data, which may be manually created or adapted.
3. Validating that the results will meet the project requirements.

We encourage identifying a small subset of the project data, or a very similar data set, for review.

A best practice is to write some test scripts or to manually process the data using the anticipated algorithms and then to provide the processed
data to the end-user to confirm it meets their expectations.

As should be apparent, the more data can be removed, the easier the validation phase, and subsequent steps, are. In addition, the risks are also lowered.

## Step 4 – Implementation

IHE has profiles, such as imaging teaching files profile, for some of the common de-identification situations. DICOM has identified some common intended use requirements and defined de-identification profiles for these situations. Other organizations have published their de-identification profiles.

When developing project specific de-identification profiles these can be a good starting point.

This document does not cover the implementation of processes, procedures, software, or staffing of the de-identification system. There are already established methodologies for project management, safety risk analysis, etc. These are also applicable to deployment of de-identification processes. There is usually no need to invent new unfamiliar processes for the organization.

## Step 5 – Implementation Validation

Implementation validation is part of any healthcare system deployment. The existing processes should apply here also.

De-identification adds one extra element. An operational validation using a subset of real data should be performed. This is very similar to the initial design validation, but using the operational system processes, staff, and software.

## Step 6 – Periodic Review of Implementation

De-identification requirements are a continuously moving target. Re-identification algorithms change, making previously low risk data elements into higher risk elements. Computer and storage capabilities increase rapidly. Genetic data that was once too costly to use for identification is now usable because the cost of storage and computing has plummeted. Previously private information is increasingly available for sale. You can now track a person’s location from cell phone records to match person ID to healthcare provider visits. This kind of information used to be prohibitively expensive, but it is now available for sale at lower and lower cost.

One example of this is the analysis by Latanya Sweeney from CMU using simply: Date-of-Birth, Current ZIP Code, and Sex (see Sweeney in references). An example of the impact of changing technology is the evaluation of risks from unrestricted publication of raw genetic data by Erlich and Narayanan <http://arxiv.org/pdf/1310.3197v1>.
