# 2 Concepts

## 2.1 Navigating the Complexity of Privacy Concepts
Pseudonymization, de-identification, and anonymization, are the processes that mitigate the privacy risk of associating the disclosed information with an individual or a group of individuals when sharing personal data or anonymous information between different data environments. These concepts are widely used to protect individuals, especially in fields like healthcare. The most common healthcare use of these processes is to protect individual patients, but they may also be applied to protect healthcare clinicians and other individuals being involved.

Applying risk mitigation processes like de-identification, anonymization, and pseudonymization is challenging due to unclear or conflicting interpretations across different frameworks. For example,[@ISO25237] defines pseudonymization as a type of de-identification process, while [@ISO20889] specifies it as a de-identification technique. Under [@GDPR2016a], pseudonymization is also defined as a processing of personal data, and further clarifies the condition under which the personal data can no longer be attributed to a specific data subject. The concept of pseudonymization under GDPR is similar to the definition of de-identification under [@PIPL2021]. Both of them emphasize the condition of without using additional information when considering whether or not the disclosed (transformed) personal data can be attributed to an individual. Unlike, pseudonymizatoin under the GDPR and de-identification under the PIPL, the HIPAA Rule (under 45 C.F.R §164.514(b)(1)(i)) does not restrict the concept of de-identification under the condition of without using additional information, instead it relies on the concept of a very small risk.

The treatment of anonymous data also varies. Both GDPR and PIPL agree that data protection rules do not apply to anonymous data—defined in GDPR Recital 26 as “information which does not relate to an identified or identifiable natural person or to personal data rendered anonymous in such a manner that the data subject is not or no longer identifiable.”. PIPL defines anonymization as a process of processing personal information to make it impossible to identify specific data subject and impossible to restore. PIPL (2021) describes anonymization as a process that makes personal information untraceable to a specific individual and irreversible, a view echoed by ISO 25237, which stresses that the data subject cannot be identified directly or indirectly. However, GDPR stops short of formally defining anonymization, despite referencing “anonymous information” in Recital 26.

The varied interpretations of these concepts often spark disputes when implementing privacy compliance measures. Notable examples include the debate over absolute versus relative anonymization and the differing scopes of pseudonymization versus de-identification. Absolute anonymization, which assumes no risk of linking data to an individual, is often impractical since some possibility of re-identification typically remains. The EDPB (2025) broadens pseudonymization to cover not just direct identifiers (like names) but also quasi-identifiers (like age ranges), incorporating techniques such as randomization and generalization. This expanded scope clashes with narrower pseudonymization methods outlined in ISO 20889 and [@NIST_SP_800-188_2023]. These conflicts may persist, potentially driven by underlying factors—such as the EDPB’s reliance on GDPR terminology, which avoids the term “de-identification” altogether.

This handbook addresses these challenges by providing a practical lens. Rather than adhering strictly to any single definition, it synthesizes widely accepted ideas and adapts them for actionable use. By clarifying the relationships between these concepts—how they overlap, diverge, and serve distinct purposes—we aim to equip you with a flexible framework tailored to real-world needs, whether you’re ensuring compliance or enabling data utility. Key consensus points include:
1. Data protection principles in privacy laws like GDPR and PIPL do not apply to anonymous data. For instance, GDPR Recital 26 states that these principles exclude anonymous information [@GDPR2016], while PIPL Article 4 defines personal information as data linked to identifiable individuals, explicitly excluding anonymized data [@PIPL2021].
2. Pseudonymized and de-identified data are generally still considered identifiable and thus remain personal data. GDPR Recital 26 notes that pseudonymized data, which can be linked to a person using additional information, qualifies as personal data [@GDPR2016]. This is echoed in broader data protection guidance from the European Commission [@EC_DataProtection].
3. Pseudonymization typically allows precise tracing from pseudonyms back to original identifiers, as outlined in the UK Information Commissioner’s Office guidance on anonymization and pseudonymization [@ICO2022].
4. De-identification, by contrast, supports secondary data use, such as generating aggregate statistics, without requiring a link between pseudonyms and original identifiers. This approach is endorsed by NIST SP 800-188 [@NIST2023] and OCR guidance [@OCR2025].

## 2.2 Identifiability

The transformation of personal data to mitigate re-identification risk results in distinct levels of identifiability. GB/T 42460-2023 and Hintze (2017) each present a four-level identifiability framework. Although their definitions diverge, both frameworks share the principle that re-identification risk diminishes along the ordered levels, progressing from left to right (as illustrated in the figure below). (from left to the right as the figure below).

<figure>
  <img src="identifiability-levels.png" alt="levels of identifiability">
  <figcaption><strong>Figure 2-2: Levels of Identifiability </strong></figcaption>
</figure>


The identifiability concepts presented herein are largely derived from the definitions in [@Hintze_2017]. Specifically, the first three levels are consistent with those outlined in that work. The definition for the last level, anonymous data, is adjusted considering the other sources including the [@GDPR2016a],[@PIPL2021], and [@HIPAA1996].

**Identified Data**

Identified data relates to a specific natural person whose identity is apparent from the data; contains data that identifies the person (such as a name, e-mail address, or government-issued ID number); or is directly linked to data that is accessible and identifies the person.

**Readily-Identifiable Data**

Readily-Identifiable data relates to a specific person whose identity is not apparent from the data, does not contain data that identifies the person, and the data is not directly linked with data that identifies the person; but there is a known, systematic way to reliably create or re-create a link with identifying data. To the data controller that pseudonymizes data, but retains the raw data set, additional data that allows re-identification, or a key that would allow the pseudonymization to be reversed, that pseudonymous data would be Readily-Identifiable data.

**De-Identified Data**

De-Identified data relates to a specific person whose identity is not apparent from the data; and the data is not directly linked with data that identifies the person. The data could potentially be re-identified if matched to additional identifying data provided by the data subject or a third party, but there is no known, systematic way for the controller to reliably create or re-create a link with identifying data.

**Anonymous Data**
Information that does not relate to an identified or identifiable natural person, or personal data that has been rendered anonymous through an anonymization process such that the data subject is no longer identifiable.

> **Notes:** (1) The original definition in [@Hintze_2017] considers only aggregated data at this level. In this book, the definition is derived from the GDPR Article 26 and [@ISO25237].(2) Practical/relative concept in understanding the idea of "no longer identifiable". The GDPR Article 26 further explains the meaning of "identifiable" as "To determine whether a natural person is identifiable, account should be taken of all the means reasonably likely to be used, such as singling out, either by the controller or by another person to identify the natural person directly or indirectly.". 

The table below summarizes the characteristics of the levels of identifiability by comparing it with [@HIPAA1996] and [@GB/T_42460_2023].

**Table 2.1-1: Characteristics of Levels of Identifiability**

|               |Identified|Readily-Identifiable|De-Identified|Anonymous|
|---------------|----------|--------------------|-------------|---------|
|Data Included  |Direct Identifiers|Quasi Identifiers + Additional Information(a known, systematic way to reliably create or re-create a link with identifying data)|Quasi Identifiers|Aggregated Data or Candidates of Quasi Identifiers + Small Risk|
|GB/T_42460_2023|Level 1: direct identifiers  |Level 2: Quasi Identifiers + High Risk|Level 3: Quasi Identifiers + Acceptable Risk      |Level 4: No Identifiers  |
|HIPAA De-ID|[Safe Harbor 18 identifiers](https://www.hhs.gov/hipaa/for-professionals/special-topics/de-identification/index.html#safeharborguidance)|Not Available|Quasi Identifiers + very small risk|Not Available|
{:.grid}


## 2.3 Pseudonymization, De-Identification and Anonymization Explained

### 2.3.1 Pseudonymization
According to GDPR Art. 4(5), pseudonymisation is defined as:

> ‘pseudonymisation’ means the processing of personal data in such a manner that the personal data can no longer be attributed to a specific data subject without the use of additional information, provided that such additional information is kept separately and is subject to technical and organisational measures to ensure that the personal data are not attributed to an identified or identifiable natural person. [@GDPR2016]

The term 'additional information' is used in the definition above without a clear explaination in GDPR. There are two kinds of 'additional information', type I) information generated during the process of pseudonymization, serving the purpose of generating secure pseudonysms. type II) any other personal information including the public dataset and social media. To avoid ambiguios, in this book, we interpret the 'additional information' used in the definition as the type I additional information, so that it can be 'kept separately' by the controller and/or processors.

A typical process of pseudonymization is hiding the direct identifies from the rest of the personal data, and keeping the additional information used for replacing personal direct identifiers with secure pseudonysms as secrets. In this way, it can serve the use cases where linking the pseudonymized personal data back to the original personal identifier. As mentioned in the begining of this section, EDPB (European Data Protection Board) tends to extends the typical concept of pseudonymization to an extend that the type I 'additional information' is no longer needed (sometimes called one-way/irreversible pseudonymizaton, irreversable), and also quasi identifies can be transformed to further reduce the risk of re-identification. [@Hintz_2017] names the extended level of pseudonymization as 'strong pseudonymization'. In this book, we exclude 'strong/one-way/irreversible pseodonymization' from the plain term 'pseudonymization', meaning a typical process of pseudonymization will output two kinds of information: 1)pseodonymized data; 2) additional information that enables a systematic way to reliably create or re-create a link with identifying data. In other words, pseudonymization separates personal identifiers from payload data by assigning new identifiers. This approach maintains a connection between payload data in all the records by means of the new identifiers. It can allow for re-identification under prescribed circumstances and protections if the relationship between the new identifiers and original identifiers is preserved. Figure 2.1.1-1 illustrates the relationships between the outcomes of the process of pseudonymization with the identifiable person.

<figure>
  <img src="relationships-in-original-data.png" style="width:6.50694in;height:2.85347in" />
  <figcaption><strong>Figure 2.3.1-1: Relationships in original data</strong></figcaption>
</figure>

Clinical trials usually employ pseudonymization. Clinical trial processes remove identifying information, such as the patients’ demographics, that are not required. Where attributes about the patient must be preserved, different methods are used to obscure the real identity while maintaining the needed information. For example, most clinical trials replace the original patient ID and record numbers with a clinical trial ID and a subject ID. Only the clinical trial manager knows both numbers. A reviewer that needs to inform a patient about a finding must contact the clinical trial manager. Only the trial manager can determine the actual patient hospital and patient ID from the clinical trial ID and subject ID. 

**Example Case**
> A clinical trial is being planned that will involve independent reviewers of patient records to assess the response to an experimental drug. It may be necessary to inform patients of unusual findings. The trial sponsors set up a trial manager that will receive information from the physicians. The trial sponsor will perform the de-identification of the records, substituting clinical trial IDs for the original identifiers, obscuring dates, and redacting other non-clinical information. They chose to use a trial manager rather than ask the various patient physicians to perform de-identification based on the complexity of the trial requirements. The patients, physicians, and the trial sponsor agreed to allow a de-identification team access to the original patient data. The de-identification team and their systems are kept separate from the clinical trial results analysis. Only the de-identification team knows the relationship between clinical trial IDs and patient IDs.

>In the event that a significant finding is made by the review team, they communicate the finding to the de-identification team. The de-identification team contacts the patient’s physician with the finding. The patient’s physician examines the record and communicates with the patient. The physician informs the de-identification team that the patient has been informed. The de-identification team informs the review team, so that the review team can confirm that their ethical duty to ensure that the patient is informed has been met.

In this book, one-way/irreversible pseudonymization is considered as de-identification (irreversible).

### 2.3.2 De-Identification
De-identification is the process of removing or transforming sufficient information from the source data. The goal is that the risk of re-identification is reduced to an acceptable level while also achieving the objectives of the intended use. One of the definition is:
> general term for any process of removing the association between a set of identifying data and the data subject.[@ISO25237]

The definition above aligns closely with the HIPAA Rule (see 45 CFR § 164.514(a), (b), (c)). Under this rule, the process may follow the Safe Harbor method, the Expert Determination method, or a combination of both. Although the GDPR does not explicitly define de-identification—whether formally or informally—its concept of pseudonymization, as outlined in Art. 4(5) GDPR, can be regarded as a specific type of de-identification. In contrast, China’s Personal Information Protection Law (PIPL) distinguishes de-identification from anonymization as distinct processes with different legal requirements and implications. Under PIPL, de-identified data remains classified as personal data, while anonymized data is considered non-personal data. Comparing pseudonymization under GDPR (Art. 4(5)) with de-identification under PIPL (Art. 73(3)) highlights two key similarities: first, the data resulting from both processes is still treated as personal data; second, both stipulate that an individual cannot be re-identified from the processed dataset—whether pseudonymized or de-identified—without additional information. To align these concepts with modern privacy laws, this book defines de-identification as a process that produces a de-identified (including Readily-Identifiable)  dataset, which remains personal data identifiable only with additional information.

<figure>
  <img src="relationships-between-concepts.drawio.png" />
  <figcaption><strong>Figure 2.3.2-1: Relationships between different concepts of de-identification</strong></figcaption>
</figure>
 
Figure above illustrates the concepts of de-identification across various levels. The outermost zones represent a broad view of de-identification, encompassing all its forms, differentiated solely by the degree of their outcomes. However, this expansive perspective is imprecise and may cause confusion, especially when addressing implementation for compliance purposes. To resolve this, this book employs the concepts at a more specific level: reversible de-identification (pseudonymization), irreversible de-identification (typically simplified as de-identification), and anonymization.

When determining the extent of a de-identification process, there is a trade-off between the fidelity of the resulting de-identified dataset and the risk of re-identification considering the pupose of using data. According to ISO/TS 25237, "There is no single de-identification procedure that can meet the diverse needs of all medical applications while ensuring identity concealment. Every record release process must undergo a risk analysis to evaluate the balance between data utility and privacy protection". Every data release process shall be subject to risk analysis to evaluate:
1. the purpose for the data release (e.g., analysis);

2. the minimum information that shall be released to meet that purpose;

3. what the disclosure risks will be (including re-identification);

4. what release strategies are available.

Irreversible de-identification, often simply referred to as de-identification, differs from pseudonymization in that no additional information is generated during the process to enable secure linking of the processed data back to the original personal identifiers. This distinction typically applies to scenarios focused solely on analyzing insights about a group or population.

<figure>
	<img src="relationships-removed-by-deid.png" style="width:6.50694in;height:2.85347in" />
	<figcaption><strong>Figure 2.3.2-2: Relationships removed by De-identification</strong></figcaption>
</figure>

In the above figures, each person is associated with specific characteristics such as age, administrate gender, given name, etc. Starting with zero knowledge, an attacker can only identify a large set of people as candidates. But each time the attacker obtains a characteristic, the set of candidate individuals is reduced. If an attacker can collect enough characteristics about a person, then the set of candidate individuals is reduced to a single person. De-identification techniques are used, to ensure that all these sets remain sufficiently large that the risk of identifying a specific individual is acceptable.

De-identification is also used to reduce risks such as bias in clinical studies or clinical reviews. De-identification is not often thought of in the context of treatment because you usually must associate the patient with his/her data in order to treat the patient. Some healthcare services, such as HIV testing, are delivered anonymously or pseudonymously. De-identification is more often an essential tool for secondary uses of data such as clinical trials and analytics.

One-way/irreversible pseudonymization is considered as de-identification. One key use of irreversible pseudonymization is to preserve the relationships that associate data in many different documents to a specific individual. The pseudonymous identifier is a new characteristic that substitutes for the original person identifier. De-identification must use still be done after pseudonymization to remove the remaining non-essential characteristics.

**Example Case**
>A national government project in central Europe was seeking to identify prisons that had populations that were at high risk for outbreaks of certain disease so that they could intervene. They found that certain lifestyle traits, specifically a history of intravenous drug usage, piercings, and tattoos, had a high positive correlation with this disease. This lifestyle information was not codified and only existed in free form text notes. Their first solution was to manually redact the records and supply the remaining information to the researchers. But it failed to achieve privacy objectives. Specific prisoners could often be identified. Their second solution was to use manual free form text data mining tools to extract only certain key words, removing the entire record, and only supplying those keywords and the prison location. This proved successful. Their current plan is to use automated tools to identify key phrases, transform those into project-specific codified values, and then only supply that information along with the prison identifier to the researchers.

### 2.3.3 Anonymization
Unlike pseudonymization and de-identification (irreversible), anonymization requires released dataset is no loner ideantifiable even with the use of additional information.
> The principles of data protection should therefore not apply to anonymous information, namely information which does not relate to an identified or identifiable natural person or to personal data rendered anonymous in such a manner that the data subject is not or no longer identifiable. [Recital 26, GDPR](https://gdpr-info.eu/recitals/no-26/).
> "anonymization" refers to the process of processing personal information to make it impossible to identify specific natural persons and impossible to restore. [Art 73 (4), PIPL](http://en.npc.gov.cn.cdurl.cn/2021-12/29/c_694559_3.htm)

Recital 26 of the GDPR defines anonymous information as data that cannot be linked to an identifiable individual, without specifying whether this holds with or without additional information. By contrast, the GDPR describes pseudonymized data as identifiable only with the use of additional information. Thus, anonymization under the GDPR implies that released data must remain non-identifiable in both cases—regardless of additional information. A comparable principle applies to China’s Personal Information Protection Law (PIPL), where de-identification entails processing personal information to prevent identification of specific individuals without additional information, though it similarly omits explicit mention of scenarios involving such information in its anonymization definition.

[ISO 25237 (2017)](references.html#ISO25237) defines the concept of anonymization as:
> process by which personal data is irreversibly altered in such a way that a data subject can no longer be identified directly or indirectly, either by the data controller alone or in collaboration with any other party.

[ISO 25237:2017](references.html#ISO25237) acknowledges that an absolute definition of anonymization is difficult to achieve and often impractical, favoring a practical approach that is increasingly widely accepted. In Case [C-582/14](https://curia.europa.eu/juris/liste.jsf?num=C-582/14), the Court of Justice of the European Union (CJEU) held that a dynamic IP address qualifies as personal data for a website operator only if the operator has legal means reasonably likely to access additional identifying information, such as from an internet service provider. More recently, Case [T-557/20](https://curia.europa.eu/juris/liste.jsf?language=en&td=ALL&num=T-557/20) from the CJEU provided a key precedent by delineating pseudonymized from anonymized data in cross-entity data-sharing contexts. The court introduced the "reasonable likelihood" standard, stressing that data’s status as personal hinges on the recipient’s actual re-identification capability, not theoretical potential. This pragmatic stance aligns with the Expert Determination method under the HIPAA Privacy Rule (45 C.F.R. §164.514(b)). Likewise, China is crafting data anonymization standards that adopt a practical lens, assessing re-identification risk from the recipient’s perspective. Recognizing that such risks cannot be fully eradicated, these standards prioritize governance measures alongside technical safeguards.

**Example Cases**

A teaching file is an example of an anonymization scrubbing process. Teaching files, such as radiological images illustrating a specific patient condition, are manually reviewed, file-by-file, field-by-field, to determine which fields are needed for the intended instructional purpose, and to determine if the field (or fields) could be used to re-identify the subject of the images. Often textual descriptions of the patient condition are rewritten to retain the useful meaning, because narrative text is often critical to the purpose of instruction. There is no requirement to be able to identify the patient later, so all traces of the patient should be removed and the data made fully anonymous.

Maintenance and repair logs for equipment and software are a frequent patient disclosure risk where anonymization is very appropriate.

It is important to note that in certain legal jurisdictions the legal protection needed for the data changes once it has been de-identified. These regulations are subject to change, so the de-identification
processes must be adaptable.

In the USA, part of the clinical trial process is governed by an Institutional Review Board (IRB). This body is sometimes known as an Independent Ethics Committee, or an Ethical Review Board. The IRB is governed by Title 45 CFR Part 46 of the federal regulations which are subject to the “Common Rule” which states that federally funded clinical trials must have an IRB, and that the IRB must guarantee that it will provide and enforce protection of human subjects. The IRB accomplishes this, in part, by a pre-trial review of the protocol, and specifically reviews risks (both to human subjects and to the learning objectives of the trial).

Part of the human subject risk considered by IRBs is that to patient privacy, which most nations require protection of. In the US, regulations state “IRBs should determine the adequacy of the provisions to protect the **privacy** of subjects and to maintain the **confidentiality** of the data \[*see* Guidebook Chapter 3, Section D, "Privacy and Confidentiality"\]” One effective method to help reduce both study bias and privacy risk is to use data that has been pseudonymized. Since IHE profiles are not governed by IRBs, IHE writers need to provide enough info in their profiles to help implementers comply with anticipated future IRB policies.

## 2.4 General Approach

The process of de-identification focuses on risk reduction. This starts with defining the intended use of the de-identified data and understanding the needs of that use. This approach starts by allowing no data, which requires that the project team justify that each attribute is required to fulfill the use case objectives. As each attribute is examined, various methods of manipulation are considered. The data use purpose may be met by data that has been modified to reduce the amount of identifying information conveyed. The goal is to eliminate everything that the implementer can afford lose. The result is that only the minimal information needed for the intended use remains in the de-identified data-set.

In this process you must examine some key questions:

- What are the intended use requirements?
- What kinds of data elements are involved?
- From whom is the asset being protected? This is affected by the expected scope of disclosure and publication.
- What data attributes must be processed in a similar or consistent manner?

For each element you must consider the associated risk. Risk Assessment is the topic of the IHE ITI Cookbook: Preparing the IHE Profile Security Section and the reader is guided to that paper for more information. That paper discusses how to evaluate risks for likelihood and impact of disclosure and how to use various de-identification algorithms to mitigate identified risks.

Much of this analysis must be aided by subject matter experts. For example, consider what information is needed for a prescription record that will be part of a clinical review. Clearly the patient name, address, etc. are not needed for the review. Is the prescription number needed? The exact number is probably not needed, but a substitute unique number might be needed for software processing and tracking references, e.g., references from the dispense report. Is the dispensing pharmacy identification needed? Is the dispense time needed? Is the brand or lot number needed? These depend entirely upon the purpose of the review. If it is evaluating pharmacy performance the pharmacy identification needs to be psuedonymized. If not, the pharmacy identification may be anonymized. The subject matter expert can answer this kind of question. The answer will be different for different intended uses.

This analysis will also be affected by regulatory requirements. Most nations have laws that identify particular sensitive data that must be given special protection, and other laws that may mandate disclosure of other information. Local regulatory expertise will be needed.

At the end of the requirement analysis process a table of data elements, intended use, risks, mitigations, and residual risks will be created. Some standards, e.g., DICOM PS3.15 Annex E, provide tables that can act as the starting point for creating a use specific final table. Table 2.1-1 illustrates what a final table might contain.

**Table 2.4-1: Illustrative List of Fields and Risks**

| Example Field           | Intended Use                        | Risk Characteristics                        | Mitigation                        | Residual Risk                        |
|-------------------------|-------------------------------------|---------------------------------------------|-----------------------------------|--------------------------------------|
| Medical Record Number (MRN)| Re-identification is required when the patient must be notified of a significant diagnosis.| Direct identification of a patient within a facility or indirect identification outside the facility.| Pseudonymize using separately stored Trial ID and Patient ID relationship| Re-identification database must be protected|
| National/regional identity numbers (SSN for the UA realm, Provincial Health Card for Canada, NI for the UK, etc.)| None| Direct identification of a patient to an attacker with access to commonly available data sources.| Redact| Nil|
| Codified medications| | Provided that these data are not outliers, the risk of identifying a person is reasonably low. <br><br>Inconsistent use of codes and changes to value sets may cause analysis problems.| None, preserve information. <br><br>Flag unusual values for technical analysis.| Some sensitive disease information (e.g., HIV treatment), remains in the dataset.|
| Etc.| | | | |
{:.grid}

Ultimately there will be residual risk that will need to be documented as unmitigated. This may make it necessary to protect the resulting de-identified data through other means like access controls and physical limits.

## 2.5 Definitions

**Anonymity:** Anonymity means that the subject is not identifiable. For example, a patient cannot be identified from a teaching file. From the perspective of an attacker, anonymity means that no individual subjects can be identified.

**Anonymization**: A process that is intended to irreversibly remove the association between a subject and information that can identify the subject. If the process is intended to be reversible and a new identifier is substituted for the subject’s real identifiers, then the process is called **pseudonymization**.

**Anonymous identifier**: An identifier for a subject that, in contrast to pseudonymization, is not intended to allow relinking to the subject. It may be created from one-way mapping from a subject to an identifier that cannot be reversed. This is different than pseudonymization, see below.

**De-identification**: Any process that removes the association between a subject’s identity and the subject’s data elements. Anonymization and pseudonymization are types of de-identification.

**Direct identifying data:** Data that directly identifies a single individual. Direct identifiers include data that can be cross-referenced through commonly available information sources, e.g., telephone number. Locally used identifiers (such as hospital IDs) can be considered directly identifying to personnel of the local domain.

**Identifiable person**: A person who can be identified, directly or indirectly. For example through one or more factors specific to their physical, physiological, mental, economic, cultural or social identity (see “Directive 95/46/EC of the European Parliament and of the Council of 24 October 1995 on the protection of individuals with regard to the processing of personal data and on the free movement of such data”).

**Indirect identifying data**: “Data that does not directly identify a single individual but may be used in collaboration with other indirect identifiers to identify an individual. … Examples: Zipcode(sic), Sex, Age, Date-of-Birth, Race.” \[ISO 25237\]

**Irreversibility**: The inability to determine an original value, or set of values. This is not always a simple binary statement. It is often a measure of difficulty. It is computationally difficult to determine the original values once it has been subjected to a SHA-256 one-way hash with a salt. Some national organizations may have the resources to perform this computation, and changes in computer technology will change the degree of difficulty. 

**Natural person**: The subject of the data, e.g., the patient.

**Pseudonym**: A computed or assigned value that is substituted for one or more data elements in that subject’s record. Alias and nickname are common terms for pseudonym. For example, a pseudonym of “csrk123” could be added to a subject’s record, and that subject’s first, last, middle, and national ID numbers could be removed. The protection provided by a pseudonym is dependent on the system used to create and protect the relationship between the pseudonym and the person’s real identity. Well known aliases are an example of pseudonyms that provide little protection. More people know the alias “Lenin” than his birth name. This differs from anonymization by preserving continuity throughout the resulting data set.

**Pseudonymization**: A particular type of anonymization that removes the association between data and a subject and introduces a new identifier that establishes a bidirectional-mapping between that subject and the new identifier. Pronunciation guide: “soo-DON-imm-ization”, rhymes with optimization.

**Real name**: The recognized names of the subject (natural person). This is often also called the “legal name”, but there can be subtle differences between legal requirements and identification. The real name can be multiple or change over time as a result of changes like a legal name change due to a marriage. Real names can also include extensive optional elements, such as the family history components of Spanish names or the extended content of some Indian names.

**Unlinkability:** A state whereby which two items cannot be associated.

## 2.6 Relinking or Re-identification

Re-identification is the process of re-associating the de-identified data with the original subject identity. The need for re-identification increases the complexity.

Reasons for re-identification include:

- Verification and validation of data integrity
- Checking for suspected duplicate records
- Enabling requests for additional data
- Linking to supplement research information variables
- Compliance audits
- Informing data subjects or their care providers of significant findings
- Facilitating follow-up research
- Law enforcement

## 2.7 Threat Categories

There are various kinds of threats that motivate de-identification. The following table is illustrative of these kinds of threats. As part of the risk assessment there is a threat analysis that will consider whether these and other threats apply in that situation.

**Table 2.7-1: Threat Categories**

| Category of Threat | Threat Description     | Scenario            | Example           | Candidate Mitigations          |
|--------------------|----------------------- |---------------------|-------------------|--------------------------------|
| 1| Attacker will determine the identity of the subject by combining directly available data elements such as first name, last name, and  address, identification numbers, email, facial image, etc.| Direct identifiers| Full name and address left in the data (e.g., free text field) in one database| Removal of clearly identifying data; removal of text narratives|
| 2| Attacker will correlate and aggregate fields from other data sources to determine a subjects identity| Multiple data sources| Combining pseudonymized gender and postal code in one data source, address in another, name in another. <br><br>Using publicly available data (e.g., auto license plate number). <br><br>Dates left in the data correlate to known health events for individual (e.g., attacker surveillance of individual knows dates of service). | Attempt to remove data elements that provide for direct correlation, or generalize or fuzz these elements (such as using only first 3 digits of USA Zip postal codes) to make direct correlation harder. <br><br>Using only first 3 digits of USA Zip postal codes.<br><br>Fuzz the dates-of-service.
| 3| Attacker will identify an individual via remaining data elements that alone uniquely identify an individual| Use of outliers| Unusual medical condition in a rural area|Supply minimal data set and conduct a statistical analysis of the result; work with sufficiently large data sets|
| 4| Attacker will infer missing information from provided information|Data elements remaining are sufficient to infer the identity| Can infer the age or gender of a person based on certain tests| Complex threat modeling, statistical analysis; use of large data sets; carefully control vocabulary and allowed values of tests and procedures, etc.|
| 5| Pseudonym-to-real identifiers cross reference table is compromised| | | |
| 6| Weak pseudonym algorithm is compromised|A specific pseudonymization approach may use a vulnerable algorithm (such as a non-cryptographic hash) of an identifier|A USA domain Social Security Number is hashed using MD5 with no salt where a “rainbow table” attack is highly viable.| Use a cryptographic hash (with a salt) or create a random identifier that is not a mathematical function of any real identifiers.|
| 7| Previously protected information is compromised| | Old court records made publicly available, by mistake, authorized individual, or social engineering attack| |
{:.grid}


