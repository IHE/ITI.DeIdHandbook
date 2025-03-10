

In general, de-identification, anonymization, and pseudonymization are processes that mitigate the privacy risk of associating the disclosed information with an individual or a group of individuals when sharing personal data or anonymous information between different data environments. The most common healthcare use of these processes is to protect individual patients, but they may also be applied to protect healthcare clinicians and other individuals being involved.

One of the challenges of applying those risk mitigation processes comes from the unclear or conflicting definitions. There are multiple sources of those definitions. For example,[@ISO25237] defines pseudonymization as a type of de-identification process, while [@ISO20889] specifies it as a de-identification technique. Under [@GDPR2016a], pseudonymization is also defined as a processing of personal data, and further clarifies the condition under which the personal data can no longer be attributed to a specific data subject. The concept of pseudonymization under [@GDPR2016a] is similar to the definition of de-identification under [@PIPL2021]. Both of them emphasize the condition of without using additional information when considering whether or not the disclosed (transformed) personal data can be attributed to an individual. Unlike, pseudonymizatoin under the GDPR and de-identification under the PIPL, the HIPAA (Health Insurance Portability and Accountability Act) Rule does not restrict the concept of de-identification under the condition of without using additional information, instead it relies on the concept of a very small risk[^1]. Both [@GDPR2016a] and [@PIPL2021] agree that the principles of data protection specified in the law should not apply to anonymous data. Another example is the concept of anonymization. [@PIPL2021] defines anonymization as a process of processing personal information to make it impossible to identify specific data subject and impossible to restore. [@ISO25237] gives a similar definition of anonymization, emphasizing the data subject can no longer be identified directly or indirectly without specifying any condition. However [@GDPR2016a] does not define the term anonymization formally even the term anonymous information is used in the GDPR Recital 26[^2]. 

The current definitions of those concepts results in disputes when considering the implementation for the purpose of privacy compliance. Well known disputes include absolute anonymization vs relative anonymization[^3], pseudonymization(extended scope) vs de-identification [@edpb2025]. The idea of an absolute anonymization makes it impractical because there's always a possibility of associating the disclosed information with an individual. [@edpb2025] extends the scope of pseudonymization from dealing with direct identifiers to quasi identifiers. As a result, techniques like, randomization, generalization can also be applied in the process of pseudonymization which is conflicts with pseudonymization techniques specified in [@ISO20889], [@NIST_SP_800-188_2023]. Those disputes may continue because behind it there might be some strong reasons, for example, what if [@edpb2025] limits themselves only to the terms introduced by the GDPR where de-identification is not used.

The concepts in this handbook are based on those existing definitions, but may be adjusted to make it more practical and actionable for the audience of the handbook. Also the handbook respects those widely accepted ideas about pseudonymization, de-identification and anonymization, and these ideas include:

1. The principles of data protection specified in the privacy laws, like, the GDPR and PIPL should not apply to anonymous data[^4][^5]. 
2. Pseudonymized and de-identified data, in general, are identifiable data, therefore, still personal data[^6][^7].
3. Pseudonymization usually enables the link tracing precisely from the pseudonyms back to the original personal identifiers[^8]. 
4. De-identification, in general, supports the secondary use of data, in other words, allowing for the production of aggregate statistics. Therefore, the link between the pseudonyms and the original personal identifiers is not required[@NIST_SP_800-188_2023][@ocr2025].

## Identifiability

Personal data transformed in a way to reduce the risk of re-identification can be at different levels. [@GB/T_42460_2023] and [@Hintze_2017] introduces a four-level identifiability. Although the definition for each level is different, the common idea is that re-identification risk is going down alone the ordered levels.

<figure>
{%include identifiability.svg%}
<figcaption><b>Figure: Two step Processing flow</b></figcaption>
</figure>
<br clear="all">

Anonymization and pseudonymization are the two types of de-identification. Anonymization is used for one-way de-identification for situations where there is no requirement to identify the patient based on these records. Pseudonymization is used when there is a requirement to be able to identify the patient based on these records. Re-identification may require contacting third parties to perform this task.

De-identification is also used to reduce risks such as bias in clinical studies or clinical reviews. De-identification is not often thought of in the context of treatment because you usually must associate the patient with his/her data in order to treat the patient. Some healthcare services, such as HIV testing, are delivered anonymously or pseudonymously. De-identification is more often an essential tool for secondary uses of data such as clinical trials and analytics.

<img src="image2.png" style="width:2.82917in;height:1.60903in" />

**Figure 2-1: De-Identification**

De-identification removes data that are not strictly required for the intended purpose of those data.

- Anonymization disassociates all identifiers from the data;

- Pseudonymization uses controlled replacements to allow longitudinal linking and authorized re-identification. An example of pseudonymization is the use of an alias when that person is admitted to a hospital.

Clinical trials usually employ pseudonymization. Clinical trial processes remove identifying information, such as the patients’ demographics, that are not required. Where attributes about the patient must be preserved, different methods are used to obscure the real identity while maintaining the needed information. For example, most clinical trials replace the original patient ID and record numbers with a clinical trial ID and a subject ID. Only the clinical trial manager knows both numbers. A reviewer that needs to inform a patient about a finding must contact the clinical trial manager. Only the trial manager can determine the actual patient hospital and patient ID from the clinical trial ID and subject ID.

De-identification lowers, but does not eliminate, the risk of re-identification. The database relating clinical trial and subject ID to patient hospital and patient ID must be protected to preserve privacy. A poor choice of pseudonymous ID, such as a hash of patient name, enables easy re-identification.

A teaching file is an example of an anonymization scrubbing process. Teaching files, such as radiological images illustrating a specific patient condition, are manually reviewed, file-by-file, field-by-field, to determine which fields are needed for the intended instructional purpose, and to determine if the field (or fields) could be used to re-identify the subject of the images. Often textual descriptions of the patient condition are rewritten to retain the useful meaning, because narrative text is often critical to the purpose of instruction. There is no requirement to be able to identify the patient later, so all traces of the patient should be removed and the data made fully anonymous.

Maintenance and repair logs for equipment and software are a frequent patient disclosure risk where anonymization is very appropriate.

It is important to note that in certain legal jurisdictions the legal protection needed for the data changes once it has been de-identified. These regulations are subject to change, so the de-identification
processes must be adaptable.

In the USA, part of the clinical trial process is governed by an Institutional Review Board (IRB). This body is sometimes known as an Independent Ethics Committee, or an Ethical Review Board. The IRB is governed by Title 45 CFR Part 46 of the federal regulations which are subject to the “Common Rule” which states that federally funded clinical trials must have an IRB, and that the IRB must guarantee that it will provide and enforce protection of human subjects. The IRB accomplishes this, in part, by a pre-trial review of the protocol, and specifically reviews risks (both to human subjects and to the learning objectives of the trial).

Part of the human subject risk considered by IRBs is that to patient privacy, which most nations require protection of. In the US, regulations state “IRBs should determine the adequacy of the provisions to protect the **privacy** of subjects and to maintain the **confidentiality** of the data \[*see* Guidebook Chapter 3, Section D, "Privacy and Confidentiality"\]” One effective method to help reduce both study bias and privacy risk is to use data that has been pseudonymized. Since IHE profiles are not governed by IRBs, IHE writers need to provide enough info in their profiles to help implementers comply with anticipated future IRB policies.

## General Approach

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

**Table 2.1-1: Illustrative List of Fields and Risks**

| Example Field           | Intended Use                        | Risk Characteristics                        | Mitigation                        | Residual Risk                        |
|-------------------------|-------------------------------------|---------------------------------------------|-----------------------------------|--------------------------------------|
| Medical Record Number (MRN)| Re-identification is required when the patient must be notified of a significant diagnosis.| Direct identification of a patient within a facility or indirect identification outside the facility.| Pseudonymize using separately stored Trial ID and Patient ID relationship| Re-identification database must be protected|
| National/regional identity numbers (SSN for the UA realm, Provincial Health Card for Canada, NI for the UK, etc.)| None| Direct identification of a patient to an attacker with access to commonly available data sources.| Redact| Nil|
| Codified medications| | Provided that these data are not outliers, the risk of identifying a person is reasonably low. <br><br>Inconsistent use of codes and changes to value sets may cause analysis problems.| None, preserve information. <br><br>Flag unusual values for technical analysis.| Some sensitive disease information (e.g., HIV treatment), remains in the dataset.|
| Etc.| | | | |
{:.grid}

Ultimately there will be residual risk that will need to be documented as unmitigated. This may make it necessary to protect the resulting de-identified data through other means like access controls and physical limits.

## Definitions

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

## De-identification Background

De-identification is the process of removing or transforming sufficient information from the source data. The goal is that the risk of re-identification is reduced to an acceptable level while also achieving the objectives of the intended use. There is a trade-off between the fidelity of the resulting de-identified data set, and the risk of re-identification. From ISO/TS 25237 “There is no one single de-identification procedure that will meet the diverse needs of all the medical uses while providing identity concealment. Every record release process shall be subject to risk analysis to evaluate:

1. the purpose for the data release (e.g., analysis);

2. the minimum information that shall be released to meet that purpose;

3. what the disclosure risks will be (including re-identification);

4. what release strategies are available.

<img src="relationships-in-original-data.png"
style="width:6.50694in;height:2.85347in" />

**Figure 2.3-1: Relationships in original data**

<img src="relationships-removed-by-deid.png"
style="width:6.50694in;height:2.85347in" />

**Figure 2.3-2: Relationships removed by De-identification**

In the above figures, each person is associated with specific
characteristics such as age, administrate gender, given name, etc.
Starting with zero knowledge, an attacker can only identify a large set
of people as candidates. But each time the attacker obtains a
characteristic, the set of candidate individuals is reduced. If an
attacker can collect enough characteristics about a person, then the set
of candidate individuals is reduced to a single person.
De-identification techniques are used, to ensure that all these sets
remain sufficiently large that the risk of identifying a specific
individual is acceptable.

###  Examples

A national government project in central Europe was seeking to identify prisons that had populations that were at high risk for outbreaks of certain disease so that they could intervene. They found that certain lifestyle traits, specifically a history of intravenous drug usage, piercings, and tattoos, had a high positive correlation with this disease. This lifestyle information was not codified and only existed in free form text notes. Their first solution was to manually redact the records and supply the remaining information to the researchers. But it failed to achieve privacy objectives. Specific prisoners could often be identified. Their second solution was to use manual free form text data mining tools to extract only certain key words, removing the entire record, and only supplying those keywords and the prison location. This proved successful. Their current plan is to use automated tools to identify key phrases, transform those into project-specific codified values, and then only supply that information along with the prison identifier to the researchers.

A clinical trial is being planned that will involve independent reviewers of patient records to assess the response to an experimental drug. It may be necessary to inform patients of unusual findings. The trial sponsors set up a trial manager that will receive information from the physicians. The trial sponsor will perform the de-identification of the records, substituting clinical trial IDs for the original identifiers, obscuring dates, and redacting other non-clinical information. They chose to use a trial manager rather than ask the various patient physicians to perform de-identification based on the complexity of the trial requirements. The patients, physicians, and the
trial sponsor agreed to allow a de-identification team access to the original patient data. The de-identification team and their systems are kept separate from the clinical trial results analysis. Only the de-identification team knows the relationship between clinical trial IDs and patient IDs.

In the event that a significant finding is made by the review team, they communicate the finding to the de-identification team. The de-identification team contacts the patient’s physician with the finding. The patient’s physician examines the record and communicates with the patient. The physician informs the de-identification team that the patient has been informed. The de-identification team informs the review team, so that the review team can confirm that their ethical duty to ensure that the patient is informed has been met.

## Pseudonymization

Pseudonymization is a particular type of de-identification “that both removes the association with a data subject and adds an association between a particular set of characteristics relating to the data subject and one or more pseudonyms.

- In irreversible pseudonymization, the pseudonymized data do not contain information that allows the re-establishment of the link between the pseudonymized data and the data subject. This is overlaps with anonymization, but preserves continuity for the pseudonym throughout the resulting data set.

- In reversible pseudonymization, the pseudonymized data can be linked with the data subject by applying procedures restricted to duly authorized users.

Pseudonymization separates personal identifiers from payload data by assigning new identifiers. This approach maintains a connection between payload data in all the records by means of the new identifiers. It can allow for re-identification under prescribed circumstances and protections if the relationship between the new identifiers and original identifiers is preserved.

<img src="pseudonymization.png"
style="width:6.47986in;height:2.82639in" />

**Figure 2.4-1: Pseudonymization**

One key use of pseudonymization is to preserve the relationships that
associate data in many different documents to a specific individual. The
pseudonymous identifier is a new characteristic that substitutes for the
original person identifier. De-identification must use still be done
after pseudonymization to remove the remaining non-essential
characteristics.

## Relinking or Re-identification

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

## Threat Categories

There are various kinds of threats that motivate de-identification. The following table is illustrative of these kinds of threats. As part of the risk assessment there is a threat analysis that will consider whether these and other threats apply in that situation.

**Table 2.6-1: Threat Categories**

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

[^1]: 45 C.F.R $164.514(b)(1)(i)

[^2]: See Recital 26 of the General Data Protection Regulation (GDPR): “The principles of data protection should not apply to anonymous information, namely information which does not relate to an identified or identifiable natural person or to personal data rendered anonymous in such a manner that the data subject is not or no longer identifiable.”

[^3]: IAPP. (n.d.). https://iapp.org/news/a/a-practical-guide-to-anonymization-standards-across-the-eu-and-uk

[^4]: See Recital 26 of the General Data Protection Regulation (GDPR): "The principles of data protection should therefore not apply to anonymous information."

[^5]: See Personal Information Protection Law of the People's Republic of China (PIPL) Chapter I Article 4: "Personal information refers to various information related to an identified or identifiable natural person recorded electronically or by other means, but does not include anonymized information"

[^6]: See Recital 26 of the General Data Protection Regulation (GDPR): "Personal data which have undergone pseudonymisation, which could be attributed to a natural person by the use of additional information should be considered to be information on an identifiable natural person."

[^7]: See European Commission. (n.d.). Data Protection explained. European Commission. https://commission.europa.eu/law/law-topic/data-protection/data-protection-explained_en

[^8]: See Information Commissioner’s Office. (2022). Draft anonymisation, pseudonymisation and privacy enhancing technologies guidance. In Chapter 3. https://ico.org.uk/media/about-the-ico/consultations/4019579/chapter-3-anonymisation-guidance.pdf
