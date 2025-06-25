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

#### Tansforming of Quasi-Identifiers
##### De-Identifying Categorical Quasi-Identifiers
In statistics, a categorical variable (also called qualitative variable) is a variable that can take on one of a limited, and usually fixed, number of possible values, assigning each individual or other unit of observation to a particular group or nominal category on the basis of some qualitative property.[Source: Wikipedia](https://en.wikipedia.org/wiki/Categorical_variable#cite_note-yates-1). In the context of de-identification, categorical quasi-identifiers are categorical variables. In healthcare, patient gender, diagnotic code are typical examples of categorical quasi-identifiers.

Common techniques for de-identifying categorical variables include:

**Generalization:** This involves reducing the granularity of data by grouping specific values into broader categories. For example, replacing the ICD-10 diagnosis code E11.2(Type 2 diabetes with kidney complications) and E11.4(Type 2 diabetes with neurological complications) with E11(Type 2 diabetes mellitus). To apply the generalization in dealing with categorical quasi-identifiers, the hierarchy defintion is required. For example, in the ICD-10 Hierarchy, E11.2 and E11.4 fall under E11. Selecting the approprite level of the generolized value needs to be carefully discussed and conformed with the intended data receivers to make sure the reduced level of the granulairty of the new value is acceptable regarding the purpose of the data collection.

**Suppression:** Removing or masking highly identifiable categories (e.g., omitting rare diagnosis code).

**Randomization:** Randomization techniques like permutation can be used to exchang values of categorical variables between records to obscure individual identities while maintaining overall distributions.

**Blanking and imputing:** Specifc values that are highly identifying can be removed and replaced with imputed values.

##### De-Identifying Numeric Quasi-Identifers
Compared with categorical variables, numerical variable may or may not have a limited or fixed number of possible values. For example, continuous numerical values, including ncluding fractions or decimals, have an unlimited possible values. Although the number of possible values for discrete numerical values or integer values for a given variable like, patient age, is fixed, the broad scope of the value domain can easily make it as an outlier data point, for example, patients over 90 years old.

For the numeric quasi-identifiers having a limited or fixed number of possible values, all the techniques of de-identifying categorical quasi-identifiers can be applied. The techniqes of dealing with specialities of the numberic quasi-identifiers include:

**Top and bottom coding:** Outlier values that are above or below certain values are coded appropriately. For example, the Safe Harbor method under the HIPAA Privacy Rule calls for ages over 89 to be “aggregated into a single category of age 90 or older”.

**Micro aggregation:** Micro-aggregation is a statistical disclosure control technique used to de-identify datasets containing continuous values by clustering records into small groups and replacing individual values with group-level averages. The process involves forming clusters of at least a minimum number of similar records (typically 3 or more) based on their continuous variable values, ensuring that records within each cluster are as homogeneous as possible. The original continuous values in each cluster are then replaced with their computed average, determined algorithmically. This approach aims to maximize within-cluster similarity to preserve data utility while reducing the risk of re-identification, balancing privacy protection with the retention of statistical properties for analysis [(Domingo-Ferrer & Mateo-Sanz, 2002)](#Domingo-Ferrer & Mateo-Sanz, 2002).

**Generalize categories with small counts:** Small counts of data subjects for a specific value of a numeric quasi-identifier increase the risk of re-identification. To mitigate this risk, categories with low counts can be generalized into a single category with a higher count. For example, if there is only one patient aged 80, 85, and 90, respectively, these individual age categories can be combined into a broader "80+" category. This technique could also be applied in contingency tables with several categories have small count values. For example, For example, rather than re-porting that there are two people with blue eyes, one person with green eyes, and one person with hazel eyes, it may be reported that there are four people with blue, green,or hazel eyes[(NIST_SP_800-188_2023)](#NIST_SP_800-188_2023).


**Noise addition:** Also called “noise infusion,” and “noise injection” (and occasion-ally “partially synthetic data”), this approach adds small random values to attributes. For example, instead of reporting that a person is 84 years old, the person may be reported as being 79 years old[(NIST_SP_800-188_2023)](#NIST_SP_800-188_2023). 

##### De-Identifying Dates (TBD)

##### De-Identifying Geographical Locations and Geolocation Data (TBD)

##### De-Identifying Genomic Information (TBD)

##### De-Identifying Text Narratives and Qualitative Information (TBD)

### De-Identifying Sensitive Attributes (TBD)

### Privacy Models
#### 𝑘-Anonymity
#### Differential privacy

### References

1. <a name="ISO20889"></a>ISO/IEC 20889. (2018). *Privacy enhancing data de-identification terminology and classification of techniques* (Standard ISO/IEC 20889:2018(E); Number ISO/IEC 20889:2018(E)). International Organization for Standardization. [https://www.iso.org/standard/69373.html](https://www.iso.org/standard/69373.html)
2. <a name="NIST_SP_800-188_2023"></a>NIST 800-188. (2023). *De-identifying Government Datasets* (Special Publication No. 800-188; Numbers 800-188). National Institute of Standards and Technology. [https://doi.org/10.6028/nist.sp.800-188](https://doi.org/10.6028/nist.sp.800-188)
3. <a name="mayer2011implementation"></a>Mayer, D. A., Teubert, D., Wetzel, S., & Meyer, U. (2011). Implementation and performance evaluation of privacy-preserving fair reconciliation protocols on ordered sets. In Proceedings of the First ACM Conference on Data and Application Security and Privacy (pp. 109–120). Association for Computing Machinery. https://doi.org/10.1145/1943513.1943529
4. <a name="Domingo-Ferrer & Mateo-Sanz, 2002"></a>Domingo-Ferrer, J., & Mateo-Sanz, J. M. (2002). Practical data-oriented microaggregation for statistical disclosure control. IEEE Transactions on Knowledge and Data Engineering, 14(1), 189–201. https://doi.org/10.1109/69.979982
