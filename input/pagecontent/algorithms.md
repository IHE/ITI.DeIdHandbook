### Classification of de-identification techniques

[(ISO/IEC 20889, 2018)](#ISO20889) classified de-identification techniques as the following categries:
1. **Statistical tools:** Methods of a statistical nature that change the overall structure of the data. Such methods are commonly used to either de-identify datasets or to enhance the effectiveness of de-identification techniques. Techniques include: Sampling, Aggregation.
2. **Cryptographic tools:** Tools can be used to implement security measures that enhance the effectiveness of de-identification techniques, as well as acting as a part of de-identification techniques themselves (see, for example, Pseudonyms derived from identifying attributes using cryptography). Techniques include: Deterministic encryption, Order-preserving encryption, Format-preserving encryption, Homomorphic encryption, Homomorphic secret sharing.
3. **Suppression techniques:** Techniques involve removing selected attributes across all records (e.g. masking), selected attribute values (e.g. local suppression), or selected records from a dataset (e.g. record suppression). Suppression techniques are mostly applicable to categorical data. Techniques include: Masking, Local suppression, Record suppression.
4. **Pseudonymization techniques:** A category of de-identification techniques that involve replacing a data principal's identifier (or identifiers) with pseudonyms specifically created for each data. As such, pseudonymization is a technique that enables linking of associated records from different datasets without revealing the identities of the data principals. Pseudonymization used alone does not reduce the risk that an individual data principal can be singled out. There are two methods of creating pseudonyms, namely, linking table (containing the mappings between original personal identifiers to the corresponding pseudonyms), derived from identifying attributes using cryptography including Encryption, and Hashing.
5. **Anatomization:** The term “anatomization” refers to a category of de-identification techniques that disassociate identifiers from the remainder of the data by splitting a dataset into two tables: a table containing the existing identifiers (such as quasi-identifiers) and a table containing the remainder of the useful attributes. The attributes table is created in such a way that its rows represent the equivalence classes of records in the original table. A new attribute specifying an equivalence class is added to both tables. The two tables are subject to different access rights. For example, the identifiers table can be securely guarded, while the table with useful attributes can be made public. 
6. **Generalization techniques:** A category of de-identification techniques that reduce the granularity of information contained in a selected attribute or in a set of related attributes in a dataset. Generalization techniques preserve data truthfulness at the record level. As a result, data that is de-identified using generalization is useful for cases involving traceable data principal specific patterns, such as for fraud detection, healthcare outcome assessments, etc. Techniques include: Rounding, Top and bottom coding, Combining a set of attributes into a single attribute, Local generalization.
7. **Randomization techniques:** A category of de-identification techniques in which values of an attribute are modified so that their new values differ from their true values in a random way. Such a process reduces the ability of an attacker to deduce the value of an attribute from the values of other attributes in the same data record, thereby reducing the effectiveness of inference attempts. Techniques include: Noise addition, Permutation, Microaggregation.
8. **Synthetic data:** Synthetic data is an approach to generating microdata artificially to represent a predefined statistical data model. By definition, a synthetic dataset does not contain any data collected from or about existing data principals, but looks realistic for the intended purposes. In practice, the generation of synthetic data can involve multiple or continuous transformations on real datasets using randomization techniques, sampling, and AI.

### Transforming Identifiers

Identifiers including direct and indirect identifiers help reidentify individuals directly or indirectly. To reduce the re-identification risk, those identifiers need to be transformed in a way that is unlikely be used to link the de-identified records back to original personal identifiers. There are various techniques can be used to tansform those identifiers.

#### Removing or Transforming of Direct Identifiers

The purpose of tansforming direct identifiers is hidding the original personal direct identifers in the pseudonymized data without damaging the quality of data consistency regarding linking relationships between records. Usually, records are linked together via personal direct identifiers. There might be multiple direct identifiers in the dataset that are need to be processed, for example, patient ID, patient Name, mobile phome number, email etc. However, not all of them are required in order to ensure the consitency of the transformed records. Thus, it's important to correctly select direct identifiers to be replaced with the pseudonyms. Those direct identifires that are not selected to be pseudonymized should be removed or masked completely. For example, when patient ID is the only direct identifier selected to be pseudonymized, then patient name, mobile phone number, email should be removed or masked in a secure way. Typical masking techniques include[(NIST 800-188)](#):
1. Replace identifers with a repeating character, such as XXXXXX or 999999.
2. Replacement with keywords. This approach transforms identifers such as George Washington to PATIENT. Note that some keywords may be equally identifying, such as transforming George Washington to PRESIDENT.
3. Replacement with realistic surrogate values. This approach transforms identifers, such as George Washington, to surrogates that blend in, such as Abraham Polk.

For those direct identifers, serving as maintaining the relationships between records and data subjects, pseudonymization techniques should be used. The orginal personal identifiers should be replaced with pseudonyms. Pseudonyms are special kind of personal identifier that is different from the normally used personal identifier and is used with pseudonymized data to provide dataset coherence linking all the information about a subject, without disclosing the real world person identity[(ISO/IEC 20889, 2018)](#ISO20889).

Various techniques can be used to create pseudonyms, and they can be classified into two groups, A) Pseudonyms independent of identifying attributes; B)Pseudonyms derived from identifying attributes using cryptography. The decision on which method to use hinges on considerations like the expenses involved in producing pseudonyms, the hash function's ability to avoid collisions (that is, the chance of two distinct inputs yielding identical outputs), and the approach for re-establishing the identity of the data subject in a managed re-identification process[(mayer2011implementation)](#mayer2011implementation).

When multiple organizations use the same pseudonymization scheme, they can trade data and perform matching on the pseudonyms. This approach is sometimes called privacy preserving record linkage (PPRL). Some PPRL approaches perform record linkage within a secure data enclave to minimize the risk of unauthorized re-identifcation. As an alternative, organizations can participate in a private set intersection protocol.

##### Pseudonyms independent of identifying attributes
The pseudonysm values are created in a way that they are independent of the original personal identifiers. Usually, random values are used to create unique pseudonyms. In order to link the pseudonyms back to it's original personal identifiers, a table (usually called linking table) is used to maintain the relationship between the pseudonyms created independently and the original personal identifiers. The linking table should not be released togeter with the pseudonymized data, and appropriate technical and organizational measures should be established to protect it from unauthorized access.

##### Pseudonyms derived from identifying attributes using cryptography

Pseudonyms can be cryptographically derived from the values of the attributes that they replace through encryption or hashing.

**Encryption** Encrypt the identifers with a strong encryption algorithm. After encryption, the key can be discarded to prevent decryption. However, if there is a desire to employ the same transformation at a later point in time, the key should be stored in a secure location that is separate from the de-identifed dataset. Encryption used for this purpose carries special risks that need to be addressed with specifc controls

**Hashing with a keyed hash** A keyed hash is a special kind of hash function that produces different hash values for different keys. The hash key should have suffcient randomness to defeat a brute force attack aimed at recovering the hash key (e.g.,SHA-256 HMAC with a 256-bit randomly generated key). As with encryption, the key should be secret and should be discarded unless there is a desire for repeatability. Hashing used for this purpose carries special risks that need to be addressed with specifc controls. Hashing without a key generally does not confer security because an attacker can brute force all possible values to be hashed.


### References

1. <a name="ISO20889"></a>ISO/IEC 20889. (2018). *Privacy enhancing data de-identification terminology and classification of techniques* (Standard ISO/IEC 20889:2018(E); Number ISO/IEC 20889:2018(E)). International Organization for Standardization. [https://www.iso.org/standard/69373.html](https://www.iso.org/standard/69373.html)
2. <a name="NIST_SP_800-188_2023"></a>NIST 800-188. (2023). *De-identifying Government Datasets* (Special Publication No. 800-188; Numbers 800-188). National Institute of Standards and Technology. [https://doi.org/10.6028/nist.sp.800-188](https://doi.org/10.6028/nist.sp.800-188)
3. <a name="mayer2011implementation"></a>Mayer, D. A., Teubert, D., Wetzel, S., & Meyer, U. (2011). Implementation and performance evaluation of privacy-preserving fair reconciliation protocols on ordered sets. In Proceedings of the First ACM Conference on Data and Application Security and Privacy (pp. 109–120). Association for Computing Machinery. https://doi.org/10.1145/1943513.1943529

The major algorithms used in de-identification are:

- Redaction – Removing data, or replacing it with missing data indicators

- Fuzzing – Adding “noise” to data

- Generalization – Making data less specific

- Longitudinal consistency - Modifying data so that data from many records remain consistent.

- Recoverable Substitution – Providing the ability to recover the original data values

- Text Processing – Manual processing for free-format text

- Pass-through – Unmodified data is preserved in the resulting dataset

The key objective of most of these techniques is to increase the size of the set of patients that could be the source of the data. When this set is large enough, it becomes impractical to identify a specific patient. 
These algorithms are discussed below, and they are also used in the de-identification matrix described in Section 4.8.

### Redaction

Redaction is the process of removing one or more values so that the original information content is no longer observable by human and computer recipients of the data. Redaction is a type of substitution.

#### Characteristics

Data is fully removed. Risk is minimized.

#### Complete Redaction

Some data formats permit complete deletion of both the attribute name and value.

#### Deletion of Value

Some data formats have mandatory fields that cannot be completely deleted. These may permit replacement of the original data value with a null value or missing data indicator. If the underlying data format permits this, it is usually equivalent to complete redaction. Some care may be needed with this approach. Some data formats also indicate that there is a different meaning to deletion of value, e.g., “a missing value shall be interpreted as indicating that the patient was not asked”.

Some standard substitute data have traditionally been used as missing indicators. Common examples are “John Doe” and “999999”. This approach is less desirable because of the potential for confusion and the need for special software processing. Mistaken use of such indicators has led to a variety of statistical data processing problems.

Encryption and hashing have been intentionally omitted from this description. These are difficult to implement properly. They are often vulnerable to dictionary attack.

#### Example

Historically, this technique has been used for legal and governmental work when printed content is physically obscured with a black mark preventing the original content from being read.

<figure>
<img src="physically-redacted-document.png"
style="width:3.81319in;height:2.62639in" />
<figcaption><strong>Figure: Physically redacted USA CIA document.</strong></figcaption>
</figure>
<br>

[Source](http://upload.wikimedia.org/wikipedia/commons/0/09/Redacted_CIA_document.jpg)

The following example shows how an HL7 V2.x A08 message could be redacted.

**A08 Before:**

```hl7
MSH\|^\~\\&\|PROACCESS5\|DHIN\|BIOSENSE\|CDC01\|20080808290000\|\|ADT^A08\|1437549872\|P\|2.5\|\|

PID\|123\|12345\|00000123456\|123A\|Public^""^Corbin^""^""^""\|\|19900123\|M\|\|I\|Somestreet^1^Nieuwegein^^84063^""\|US\|+1-801-555-1212\|+1-801-555-1212\|Eng\|S\|Catholic\|MRN1234\|123-45-6789\|UTDL12345\|ID1234\|EthnicGrp\|Dayton,
OH\|""

ZPI\|1\|\|\|DoctorDr.^^""^""^""\|\|\|\|\|\|\|""

PV1\|1\|O\|\|

IN1\|\|Plan123\|PART\|InsureCo\|Address1\|Admin\|+1-801-555-1212\|Group12\|GroupNm\|EmpID\|CoNm\|20080101\|20081231\|Auth\|TypeP\|Spencer^Royce\|Son\|19990101\|Addr\|AOB\|COB\|\|\|\|\|\|\|\|\|\|\|\|\|\|\|""

```

**A08 after replacing values with fixed values:**

```hl7
MSH\|^\~\\&\|PROACCESS5\|DHIN\|BIOSENSE\|CDC01\|20080808290000\|\|ADT^A08\|111122223333\|P\|2.5\|\|

PID\|123\|123\|123456\|123\|FamilyName^""^GivenName^""^""^""\|\|19900113\|U\|Alias\|U\|""^""^""^^840??^""\|US\|HomePh\|BusPh\|U\|U\|U\|PSEUDO1234\|U\|U\|U\|U\|U\|""

```

#### Other Considerations

Care must be taken to ensure redacted data remain syntactically correct. A HL7 CDA document that complies with a template has specific rules regarding discrete data elements and required structure. Post processing after de-identification may be required to create a document that still complies with the template. Template designers may need to consider the needs of de-identification in the design of new templates.

### Fuzzing

#### Description

Fuzzing adds apparently random modifications to data while remaining within certain constraints. For example a random amount of time can be added to or removed from person’s birth date. The goal of fuzzing is to remove as much accuracy as possible while still meeting the intended use. The design phase should determine the accuracy that must be preserved. Fuzzing is the only de-identification approach that provides control over the statistical characteristics of the data.

#### Applicability

Fuzzing may be appropriate when approximate values are needed for the intended use and precise values could identify the patient. It is frequently needed as part of preserving longitudinal integrity, e.g.,
using the same data value in all of the relevant records.

#### Example

The below example applies a random offset to the birth date/time. This same date shift should be applied to the same patient each time if the intended use needs to preserve clinical time threading.

Database record before and after date fuzzing:

| First_Name | Original_DOB     | Fuzzed_DOB       | Change                                                                     |
|------------|------------------|------------------|----------------------------------------------------------------------------|
| Joe        | 1997-03-13 13:12 | 1997-03-14 13:12 | Added 1 day                                                                |
| Jane       | 2005-04-13 11:23 | 2005-04-10 10:23 | Subtracted 3 days and 1 hour                                               |
| John       | 1999-06-26 21:24 | 1999-06-21 19:24 | Subtracted 5 days and 2 hours                                              |
| Pete       | 2007-10-15 03:13 | 2007-10-15 06:28 | Added 3 hours 15 minutes                                                   |
| Fred       | 1941-05-16       | 1941-07-01       | Changing month/day to 07/01 preserves year of birth and annual statistics. |
{:.grid}


#### Variations

##### Numeric

Any numeric values can be potentially fuzzed, such as patient’s weight.

##### Zip/Postal

Postal codes can be fuzzed using algorithms that are aware of the special code formatting requirements. This requires knowledge of the individual postal codes so that sufficient accuracy remains for the
intended use, while having a potential population large enough to make individual identification impractical.

##### Codified Values

Coded values can be fuzzed by selecting a random code from a list of equivalent codes. This is effective, but requires specific medical knowledge and intended use to establish the proper lists of equivalent codes.

#### Other Considerations

Time and sequence threading can be impacted when dates and times are changed. Dates and times must remain in the proper sequence. For example, process flow may need to remain in the proper order:

> Lab Order-\>Partial Results-\>Partial Results-\>Final
> Results-\>Corrected Results
>
> Admit-\>Encounter-\>Encounter-\>Discharge

Other statistical characteristic may need to be preserved, such as population statistics for body surface area. Redaction makes it difficult to preserve these statistics. A properly designed fuzzing can preserve these statistics while concealing identities.

### Generalization

Generalization is a simpler algorithm than fuzzing, but does not preserve statistical characteristics.

Several techniques are commonly employed, with various tradeoffs.

1. Reducing the precision of a value by truncating the field so that precision is lost.

2. If the value is from a controlled vocabulary it sometimes is possible to generalize by using a more general value. For example, the many different codes for facility type code and place of service could be reduced to “Inpatient”, “Outpatient”, and “Other”.

3. Geocoded values, such as street address, can be generalized to a single, valid, location such as the geographical center of a city.

4. Dates can be changed to using a month number, or a week number instead of the exact date.

#### Applicability

Generalization may be appropriate when approximate values are still useful for the intended use and fuzzing will be too difficult.

#### Example

The below example applies several different generalization techniques to dates.

Database record before and after date generalization:

|            |                  |            |                                                     |
| First Name | Original DOB     | Fuzzed DOB | Technique Applied                                   |
| Joe        | 1997-03-13 13:12 | 1997-03-14 | Removed time                                        |
| Jane       | 2005-04-13 11:23 | 2005-04    | Removed day and time                                |
| John       | 1999-06-27 21:24 | 26         | Changed representation to a week of the year number |
| Pete       | 2007-10-27 03:13 | 2000-01-01 | Applied a floor (minimum age)                       |
| Katie      | 1923-03-27 14:00 | 1940-01-01 | Applied a ceiling (maximum age)                     |
{:.grid}

#### Advantages and Disadvantages

Generalization can be a computationally simple approach, but statistical characteristics are lost. Fuzzing should be preferred when practical.

### Longitudinal Consistency Constraints

It is often essential to preserve date/time relationships, order number relationships, etc. When the intended use will examine many related data records preserving these relationships may be important. We refer to this objective as “longitudinal consistency”.

This constraint affects both fuzzing and generalization algorithms. If order numbers are being fuzzed with random different unique order numbers, then all of the order number substitutions must be consistent. If the date and time values are being fuzzed, then all of the related records must be fuzzed by the same time change. Note that fuzzing time information can be sensitive to how time order and accuracy affect the intended use for the resulting dataset.

#### Applicability

This algorithm is potentially applicable to any fuzzing algorithm. It most often arises for dates, times, locations, and identifiers like order numbers.

#### Other Considerations

The extent to which longitudinal consistency matters is very sensitive to details of the intended use. [DICOM](references.html#dicom) objects make extensive use of UIDs for references to other objects. These references often must be preserved in order to maintain the usability of the collection of images created in a study. The de-identification process must consider whether original UIDs can be re-used, or whether new UIDs should be created.

### Recoverable Substitution

There may be a requirement that original values be recoverable. There are two basic approaches to solving this problem:

- Escrow

- Encrypted original information

There have been many attempts to use one-way functions to accomplish this goal. These have repeatedly failed in the field because they are very vulnerable to dictionary attacks and have other weaknesses.

Escrow is widely used in clinical trials. The most common example is replacement of an original patient ID and issuing hospital ID with a clinical subject ID and a clinical trial ID. The organization that de-identifies the data assigns the clinical IDs without using the original ID information, so that all linkage to the old information is broken. It preserves a record of the assignment used and keeps this separate and secret. If the original patient information is needed, it can be obtained from the clinical trial information.

Some data formats, e.g., DICOM, include an option to have a “modified elements sequence”. The original information values can be provided in encrypted form along with the de-identified data. Managing the key and disclosure control for this kind of data record is considerably more complex than managing an escrow process, so this has proven to be of limited use.

### Text Processing

There are repeated attempts to provide natural text de-identification algorithms. At this time there is no demonstrated successful general purpose algorithm.

Teaching files are often in text form. The de-identification is typically done by the educators preparing these files. They are aware of the full medical context and able to paraphrase the text so that the original patient identity is obscured while preserving the educational requirements.

### Pass-through

The data that must be preserved will be passed through without modification.

### De-identification Datatype/Algorithm Matrix

An informative table indicating which algorithms might be applied to what kinds of data is below. For each kind of data, (e.g., person name, candidate) de-identification algorithms are indicated. For some of these, (e.g., Medications) it shows “c/n/t” to indicate that this information may be **coded**, **numeric***, or **text**, and that different algorithms may be appropriate for the different forms.

**Table: Informative algorithm use**

| Algorithm | Longitudinal Consistency option | Person name | Telephone | Zip/Postal code, FIPS, GIS | Address (Residential, Work, temporary, mailing) | Date/Time values | Codes (Cal score, BMI, BW Pain Assessment) | Measurement Numeric Values | DOB | Age | Time Intervals | Weight/Height | Person IDs  | Biometrics (Finger Prints, Photographs) | Personal Digital Certs (X.509,PGP) | IP Addresses (v4,v6) | Relationship Linkages (Sibling, Child) | Links (to other documents, order IDs,) | Service Dates (admission) | Language Spoken / Written Language | Race /  Ethnicity | FIPS, GIS codes | Occupation | Criminal History | Legal Orders | Other Coded Values | Plural Birth,  Birth Order | Rare Diagnoses,  Uncommon Procedures | Vital Signs (see code or numeric) | Labs, medications, order | Free Form Text  | Accession Numbers | Encounter ID | Equipment IDs | Genetic Data
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Redaction | Delete Attribute Name and Value | x | Y | Y | Y | Y | Y | Y | Y | Y | y | Y | y | Y | y | y | Y | y | y | Y | y | y | y | y | y | y | y | y | y | c/n | c/n/t | y | y | y |  | 
|  | Delete Value |  | Y | Y | y | y | y | y | y | y | y | y | y | y | y | y | y | y | y | y | y | y | y | y | y | y | y | y | y | c/n | c/n/t | y | y | y |  | 
|  | Fixed Length Substitute Value | x | y | y | y | y | y |  | y | Y |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Original Length Substitute Value | x | y | y | y | y | y |  | y | Y |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Substitute Attribute Name and Value |  |  |  |  |  |  |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Substitute meaningful value | x |   |  |  |  |  | y |  |  |  | y |  |  | Y |   |  | y | y |  | y | y |  | y |  |  | y |  |  |  | y |  |  |  |  | 
|  | Substitute Meaningless Value | x |   |  |  |  |  |  |  |  |  |  |  |  |  |  | y |  | y |  |  | y | y | y | y | y | y | y |  | c/n | c/n/t | y | y | y |  | 
|  | "Provided by Third Party |  e.g. |  Escrow" | x | y |  |  |  |  |  |  |  |  |  |  | y |  |   |  | y |  |  |  |  |  |  |  |  |  |  |  |  | c/n/t |  |  |  | c/n/t | 
|  | Pseudonym |  | Y |  |  |  |  |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | 
| Fuzzing | Numeric (statistical algorithm) | x |  |   |  |  |  |  | y |  | y | y | y |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Code Set (Random) | x |  |  | y |  |  | y |  |  |  |  | y | y |  | y | y |   |  |  | y | y | y | y | y |  | y |  | y | c/n | c/n/t |  |  |  |  | 
| Generalization | Date/Time Collapsing  |  |  |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Week values | x |  |  |  |  | y |  |  | y | y |  |  |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | DOB to age | x |  |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Statistical adjustment | x |  |  |  |  | y |  |  |  |  | y | y |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Time of day (such as w/r to meals) specialized time of day | x |  |  |  |  | y |  |  |  |  |  |  |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Specalized date of week (weekend vs week day) | x |  |  |  |  | y |  |  |  |  |  |  |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Shift by (random) offsets | x |  |  |  |  | y |  |  |  |  |  |  |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Move to day of week | x |  |  |  |  | y |  |  |  |  |  |  |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Move to day of month | x |  |  |  |  | y |  |  |  |  |  |  |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Remove day/month/year | x |  |  |  |  | y |  |  | y | y |  |  |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Truncation | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Algorithmic substitution of appropriate code |  |  |  |  |  |  | y |  |  |  |  |  |  |  |  | y |  |  |  | y | y |  | y | y |  | y |  | y | c/n | c/n/t |  |  |  |  | y
|  | Geographical location algorithm | x |  |  | y | y |  |  |  |  |  |  |  |  |  |  | y |  |  |  |  |  | y |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
| Longitudinal Consistency | Date/Time Generalization |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Geographical locations |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Consistent algorithmic substitution of coded value |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Removing Precision |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Floor/Ceiling Values? |  |  |  |  |   |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
| Recoverable Substitution | Pseudorandom Values | x |  |  |  |  |  |  |  |  |  |  |  | y |  | y |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n | c/n/t |  |  |  |  | 
|  | Sequential Values | x | Y |  |  |  |  |  |  |  |  |  |  | y |  | y |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n/t |  |  |  |  | 
| Text Processing | Manual editing | x |  |  |  |  |  |  |  |  |  |  |  |  |   |  |   |  |  |  |  |  |  |  | y | y |  |  | y |  | c/n/t | y |  |  |  | 
|  | Text reprocessing into coded values | x |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | c/n/t |  |  |  |  | 
{:.grid}


Note:  c/n/t indicates that there are different algorithms in this category for codes
