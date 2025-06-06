
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

The extent to which longitudinal consistency matters is very sensitive to details of the intended use. [DICOM](references.html#DICOM) objects make extensive use of UIDs for references to other objects. These references often must be preserved in order to maintain the usability of the collection of images created in a study. The de-identification process must consider whether original UIDs can be re-used, or whether new UIDs should be created.

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
