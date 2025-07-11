
### Classification of de-identification techniques
[(ISO20889)](references.html#ISO20889) classified de-identification techniques as the following categries:
1. **Statistical tools:** Methods of a statistical nature that change the overall structure of the data. Such methods are commonly used to either de-identify datasets or to enhance the effectiveness of de-identification techniques. Techniques include: Sampling, Aggregation.
2. **Cryptographic tools:** Tools can be used to implement security measures that enhance the effectiveness of de-identification techniques, as well as acting as a part of de-identification techniques themselves (see, for example, Pseudonyms derived from identifying attributes using cryptography). Techniques include: Deterministic encryption, Order-preserving encryption, Format-preserving encryption, Homomorphic encryption, Homomorphic secret sharing.
3. **Suppression techniques:** Aslo known as Redaction, involve removing selected attributes across all records (e.g. masking), selected attribute values (e.g. local suppression), or selected records from a dataset (e.g. record suppression). Suppression techniques are mostly applicable to categorical data. Techniques include: Masking, Local suppression, Record suppression.
4. **Pseudonymization techniques:** A category of de-identification techniques that involve replacing a data principal's identifier (or identifiers) with pseudonyms specifically created for each data. As such, pseudonymization is a technique that enables linking of associated records from different datasets without revealing the identities of the data principals. There are two methods of creating pseudonyms, namely, linking table (containing the mappings between original personal identifiers to the corresponding pseudonyms), derived from identifying attributes using cryptography including Encryption, and Hashing. Linking table and encryption are the techniques usually applied in a reversbile pseudonymization, aslo known as recoverable substitution of personal identifiers. Hashing and random number generation can be used in irreversible pseudonymization.
5. **Anatomization:** The term "anatomization" refers to a category of de-identification techniques that disassociate identifiers from the remainder of the data by splitting a dataset into two tables: a table containing the existing identifiers (such as quasi-identifiers) and a table containing the remainder of the useful attributes. The attributes table is created in such a way that its rows represent the equivalence classes of records in the original table. A new attribute specifying an equivalence class is added to both tables. The two tables are subject to different access rights. For example, the identifiers table can be securely guarded, while the table with useful attributes can be made public. 
6. **Generalization techniques:** A category of de-identification techniques that reduce the granularity of information contained in a selected attribute or in a set of related attributes in a dataset. Generalization techniques preserve data truthfulness at the record level. As a result, data that is de-identified using generalization is useful for cases involving traceable data principal specific patterns, such as for fraud detection, healthcare outcome assessments, etc. Techniques include: Rounding, Top and bottom coding, Combining a set of attributes into a single attribute, Local generalization.
7. **Randomization techniques:** A type of fuzzing techniques in which values of an attribute are modified so that their new values differ from their true values in a random way. Such a process reduces the ability of an attacker to deduce the value of an attribute from the values of other attributes in the same data record, thereby reducing the effectiveness of inference attempts. Techniques include: Noise addition, Permutation, Microaggregation.
8. **Synthetic data:** Synthetic data is an approach to generating microdata artificially to represent a predefined statistical data model. By definition, a synthetic dataset does not contain any data collected from or about existing data principals, but looks realistic for the intended purposes. In practice, the generation of synthetic data can involve multiple or continuous transformations on real datasets using randomization techniques, sampling, and AI.

### De-Identifying Identifiers

Identifiers including direct and indirect identifiers help reidentify individuals directly or indirectly. To reduce the re-identification risk, those identifiers need to be transformed in a way that is unlikely be used to link the de-identified records back to original personal identifiers. There are various techniques can be used to transform those identifiers.

#### Removing or Transforming of Direct Identifiers

The purpose of transforming direct identifiers is hiding the original personal direct identifiers in the pseudonymized data without damaging the quality of data consistency regarding linking relationships between records. Usually, records are linked together via personal direct identifiers. There might be multiple direct identifiers in the dataset that are need to be processed, for example, patient ID, patient Name, mobile phone number, email etc. However, not all of them are required in order to ensure the consistency of the transformed records. Thus, it's important to correctly select direct identifiers to be replaced with the pseudonyms. Those direct identifiers that are not selected to be pseudonymized should be removed or masked completely. For example, when patient ID is the only direct identifier selected to be pseudonymized, then patient name, mobile phone number, email should be removed or masked in a secure way. Typical masking techniques include[(NIST_SP_800-188_2023)](references.html#NIST_SP_800-188_2023):

1. Replace identifiers with a repeating character, such as XXXXXX or 999999.
2. Replacement with keywords. This approach transforms identifiers such as George Washington to PATIENT. Note that some keywords may be equally identifying, such as transforming George Washington to PRESIDENT.
3. Replacement with realistic surrogate values. This approach transforms identifiers, such as George Washington, to surrogates that blend in, such as Abraham Polk.

For those direct identifiers, serving as maintaining the relationships between records and data subjects, pseudonymization techniques should be used. The original personal identifiers should be replaced with pseudonyms. Pseudonyms are special kind of personal identifier that is different from the normally used personal identifier and is used with pseudonymized data to provide dataset coherence linking all the information about a subject, without disclosing the real world person identity[(ISO20889)](references.html#ISO20889).

Various techniques can be used to create pseudonyms, and they can be classified into two groups, A) Pseudonyms independent of identifying attributes; B)Pseudonyms derived from identifying attributes using cryptography. The decision on which method to use hinges on considerations like the expenses involved in producing pseudonyms, the hash function's ability to avoid collisions (that is, the chance of two distinct inputs yielding identical outputs), and the approach for re-establishing the identity of the data subject in a managed re-identification process[(mayer2011implementation)](references.html#mayer2011implementation).

When multiple organizations use the same pseudonymization scheme, they can trade data and perform matching on the pseudonyms. This approach is sometimes called privacy preserving record linkage (PPRL). Some PPRL approaches perform record linkage within a secure data enclave to minimize the risk of unauthorized re-identification. As an alternative, organizations can participate in a private set intersection protocol.

##### Pseudonyms independent of identifying attributes

The pseudonym values are created in a way that they are independent of the original personal identifiers. Usually, random values are used to create unique pseudonyms. In order to link the pseudonyms back to it's original personal identifiers, a table (usually called linking table) is used to maintain the relationship between the pseudonyms created independently and the original personal identifiers. The linking table should not be released together with the pseudonymized data, and appropriate technical and organizational measures should be established to protect it from unauthorized access.

##### Pseudonyms derived from identifying attributes using cryptography

Pseudonyms can be cryptographically derived from the values of the attributes that they replace through encryption or hashing.

**Encryption** Encrypt the identifiers with a strong encryption algorithm. After encryption, the key can be discarded to prevent decryption. However, if there is a desire to employ the same transformation at a later point in time, the key should be stored in a secure location that is separate from the de-identified dataset. Encryption used for this purpose carries special risks that need to be addressed with specific controls. Canonicalization is essential when generating pseudonyms via encryption because it ensures that minor variations in input data for the same real-world identity always produce the exact same pseudonym. Without it, an individual could inadvertently be assigned multiple pseudonyms, undermining data consistency and referential integrity. By standardizing the input (e.g., converting emails to lowercase), canonicalization guarantees a consistent, deterministic mapping, crucial for effective and secure pseudonymization.

**Hashing with a keyed hash** A keyed hash is a special kind of hash function that produces different hash values for different keys. The hash key should have sufficient randomness to defeat a brute force attack aimed at recovering the hash key (e.g.,SHA-256 HMAC with a 256-bit randomly generated key). As with encryption, the key should be secret and should be discarded unless there is a desire for repeatability. Hashing used for this purpose carries special risks that need to be addressed with specific controls. Hashing without a key generally does not confer security because an attacker can brute force all possible values to be hashed.

A brute-force attack on pseudonyms involves an attacker systematically guessing original identity data (e.g., names, emails) and applying the pseudonym generation logic (hashing or encryption) until a match with a target pseudonym is found. This can reveal the original sensitive information, especially if the original data is predictable or if crucial defenses like salting are not employed. Strong algorithms and proper salting are vital to make such attacks computationally infeasible.

#### Transforming of Quasi-Identifiers

##### De-Identifying Categorical Quasi-Identifiers

In statistics, a categorical variable (also called qualitative variable) is a variable that can take on one of a limited, and usually fixed, number of possible values, assigning each individual or other unit of observation to a particular group or nominal category on the basis of some qualitative property.[Source: Wikipedia](https://en.wikipedia.org/wiki/Categorical_variable#cite_note-yates-1). In the context of de-identification, categorical quasi-identifiers are categorical variables. In healthcare, patient gender, diagnostic code are typical examples of categorical quasi-identifiers.

Common techniques for de-identifying categorical variables include:

**Generalization:** This involves reducing the granularity of data by grouping specific values into broader categories. For example, replacing the ICD-10 diagnosis code E11.2(Type 2 diabetes with kidney complications) and E11.4(Type 2 diabetes with neurological complications) with E11(Type 2 diabetes mellitus). To apply the generalization in dealing with categorical quasi-identifiers, the hierarchy definition is required. For example, in the ICD-10 Hierarchy, E11.2 and E11.4 fall under E11. Selecting the appropriate level of the generalized value needs to be carefully discussed and conformed with the intended data receivers to make sure the reduced level of the granularity of the new value is acceptable regarding the purpose of the data collection.

**Suppression:** Removing or masking highly identifiable categories (e.g., omitting rare diagnosis code).

**Randomization:** Randomization techniques like permutation can be used to exchange values of categorical variables between records to obscure individual identities while maintaining overall distributions.

**Blanking and imputing:** Specific values that are highly identifying can be removed and replaced with imputed values. Methods for generating imputed values range from simple to statistically complex, aiming to replace sensitive, missing, or identifying data points with plausible substitutes while preserving data utility and privacy. Basic techniques include replacing values with the mean, median, or mode of the observed data, or a fixed constant. More advanced methods leverage statistical models, such as regression imputation, which predicts values based on other variables, or K-Nearest Neighbors (KNN) imputation, which uses values from similar records. For robust analysis, multiple imputation is often preferred, generating several complete datasets with different plausible imputed values and combining the results to account for uncertainty.

##### De-Identifying Numeric Quasi-Identifiers

Compared with categorical variables, numerical variable may or may not have a limited or fixed number of possible values. For example, continuous numerical values, including fractions or decimals, have an unlimited possible values. Although the number of possible values for discrete numerical values or integer values for a given variable like, patient age, is fixed, the broad scope of the value domain can easily make it as an outlier data point, for example, patients over 90 years old.

For the numeric quasi-identifiers having a limited or fixed number of possible values, all the techniques of de-identifying categorical quasi-identifiers can be applied. The techniques of dealing with specialties of the numeric quasi-identifiers include:

**Top and bottom coding:** Outlier values that are above or below certain values are coded appropriately. For example, the Safe Harbor method under the HIPAA Privacy Rule calls for ages over 89 to be "aggregated into a single category of age 90 or older".

**Micro aggregation:** Micro-aggregation is a statistical disclosure control technique used to de-identify datasets containing continuous values by clustering records into small groups and replacing individual values with group-level averages. The process involves forming clusters of at least a minimum number of similar records (typically 3 or more) based on their continuous variable values, ensuring that records within each cluster are as homogeneous as possible. The original continuous values in each cluster are then replaced with their computed average, determined algorithmically. This approach aims to maximize within-cluster similarity to preserve data utility while reducing the risk of re-identification, balancing privacy protection with the retention of statistical properties for analysis [(Domingo-Ferrer & Mateo-Sanz, 2002)](references.html#Domingo-Ferrer%20&%20Mateo-Sanz,%202002).

**Generalize categories with small counts:** Small counts of data subjects for a specific value of a numeric quasi-identifier increase the risk of re-identification. To mitigate this risk, categories with low counts can be generalized into a single category with a higher count. For example, if there is only one patient aged 80, 85, and 90, respectively, these individual age categories can be combined into a broader "80+" category. This technique could also be applied in contingency tables with several categories have small count values. For example, For example, rather than re-porting that there are two people with blue eyes, one person with green eyes, and one person with hazel eyes, it may be reported that there are four people with blue, green,or hazel eyes[(NIST_SP_800-188_2023)](references.html#NIST_SP_800-188_2023).

**Noise addition:** Also called "noise infusion," and "noise injection" (and occasion-ally "partially synthetic data"), this approach adds small random values to attributes. For example, instead of reporting that a person is 84 years old, the person may be reported as being 79 years old[(NIST_SP_800-188_2023)](references.html#NIST_SP_800-188_2023).

##### De-Identifying Dates

Dates are a common quasi-identifier and must be handled carefully to prevent re-identification. Common techniques include:

* **Date Shifting:** All dates for a specific individual are shifted by a random (but consistent) number of days. This preserves the interval between events but obscures the actual dates.
* **Coarsening:** The precision of the date is reduced. For example, a specific birth date (e.g., "1985-04-12") is replaced with just the year ("1985") or a broader range (e.g., "1985-1990").
* **Converting to Age:** Dates can be converted into an age at the time of an event. This age can then be generalized (e.g., grouped into 5-year brackets) to further reduce risk.

##### De-Identifying Geographical Locations and Geolocation Data

Geographic data is highly identifying. Techniques for de-identifying it include:

* **Generalization:** Replace precise addresses with broader regions, such as zip codes, counties, or states. The level of generalization depends on the population density of the area.
* **Geometric Aggregation:** Combine geographic points into larger polygons, obscuring the exact location of individuals.
* **Suppression:** Remove location data entirely for individuals in sparsely populated areas where they could be easily identified.

##### De-Identifying Genomic Information

Genomic data is unique and inherently identifying. De-identification is extremely challenging and often focuses on risk mitigation rather than complete anonymization. Key strategies include:

* **Transforming Identifiers:** Genetic data is typically stored with or linked to identifying or quasi-identifying records (e.g. electronic health records, consumer profiles, socio-demographic information, and other clinical information). Therefore, techniqes of transforming identifies mentioned above can be used to de-identify those electronic heal records.
* **Differential Privacy:** Differential Privacy (DP) anonymizes genomic data by adding a carefully measured amount of mathematical noise to the results of statistical queries. This process ensures that the outcome of any analysis—such as a Genome-Wide Association Study (GWAS) or a query for allele frequencies—remains almost identical whether or not any single individual's data is included. By making individual contributions statistically indistinguishable, DP provides a powerful, provable guarantee against re-identification from sensitive genetic information. This allows researchers to study datasets and publish aggregate findings without compromising the privacy of the participants who contributed their data.
* **Cryptographic Methods:** Using techniques like homomorphic encryption to allow computation on encrypted genomic data without decrypting it. Secure computation anonymizes genomic data by enabling analysis on encrypted information, ensuring raw genetic sequences remain protected. This is achieved through advanced cryptographic methods like Secure Multi-Party Computation (MPC), which allows multiple institutions to jointly analyze their collective data without sharing it, and homomorphic encryption, which permits computations on encrypted data without decryption. In both approaches, queries and statistical tests are performed on data that remains encrypted throughout the process. Because sensitive genetic information is never accessible to researchers or computing platforms, this "anonymization-in-use" provides a robust privacy guarantee, revealing only the final, aggregated results of the analysis.

Although advanced technical solutions for mitigating privacy risks in genetic data are still largely in the research and development phase, organizations are currently prioritizing privacy policies and data management practices that define privacy controls for genetic data (including, but not limited to, de-identification), while considering genetic data as not easily identifiable[(Future of Privacy Forum, 2020)](references.html#Future_of_Privacy_Forum_2020).

##### De-Identifying Text Narratives and Qualitative Information

Free-text fields like clinical notes or physician comments are a major challenge for de-identification because they often contain direct and indirect identifiers in unstructured formats. Automated de-identification of this content requires a combination of techniques.

* **Regular Expressions (Regex):** For PII that follows a predictable pattern, regular expressions are highly efficient and accurate. They are ideal for finding and masking values like phone numbers, social security numbers, bank account numbers, and email addresses.
* **Natural Language Processing (NLP):** For identifiers that do not have a fixed format, such as names of people, locations, or organizations, more advanced NLP models are necessary. **Named Entity Recognition (NER)** models are trained to identify and classify these entities within the text.
* **Redaction and Masking:** Once an identifier is found (either by regex or NLP), it can be removed (redacted) or replaced with a generic placeholder (e.g., "[PATIENT_NAME]", "[PHONE_NUMBER]").

A best practice is to use a hybrid approach. First, apply a set of highly accurate regular expressions to catch structured PII. Then, run an NLP model on the remaining text to identify more complex and context-dependent identifiers. This layered strategy maximizes the removal of sensitive information while minimizing the risk of altering non-sensitive clinical information.

### De-Identifying Sensitive Attributes

Sensitive attributes (e.g., medical diagnoses, income) are the information that an attacker is trying to learn. While not identifiers themselves, protecting them is critical because their disclosure is often the primary goal of an attack. A significant challenge arises when de-identification techniques like k-anonymity, which focus on preventing re-identification, fail to prevent *attribute disclosure*. An attacker may not need to pinpoint a single individual's record if they can determine with high probability that a target belongs to a group that overwhelmingly shares the same sensitive trait. This risk is magnified when the sensitive attribute has a very limited number of distinct values (e.g., "cancer" vs. "no cancer"). In such cases, even if an equivalence class is large (e.g., 20 members, giving a low 5% re-identification risk), if all members share the same diagnosis, the attacker learns the sensitive attribute with 100% certainty.

This vulnerability is exploited through homogeneity and background knowledge attacks. A homogeneity attack succeeds when the sensitive values within an equivalence class lack diversity, allowing for confident inference. For example, if an attacker knows their target is in a 10-person equivalence class where everyone has the same rare disease, the target’s sensitive information is compromised. A background knowledge attack is more subtle, where an attacker uses external information to infer the sensitive attribute. For instance, if an equivalence class contains 19 people with a common cold and one with HIV, an attacker might infer that any individual in that group is highly unlikely to have HIV, which still reveals information.

To counter these inference attacks, privacy models that go beyond k-anonymity are necessary. The principle of **l-diversity** was introduced to directly address the problem of homogeneity. It strengthens k-anonymity by requiring that every equivalence class contains at least *l* distinct or "well-represented" values for the sensitive attribute. This ensures that even if an attacker successfully identifies an individual's equivalence class, they cannot infer the sensitive attribute with a confidence greater than 1/*l*. For example, if an equivalence class satisfies 3-diversity for a "Diagnosis" attribute, it must contain at least three different diagnosis values, making it significantly harder for an attacker to pinpoint the correct one.

While l-diversity prevents exact disclosure by ensuring variety, it can still be vulnerable if the distribution of sensitive values is skewed or if the values themselves, while different, are semantically similar. The **t-closeness** principle offers a more robust solution by requiring that the distribution of the sensitive attribute within each equivalence class is close to its distribution in the overall dataset. The "distance" between the two distributions must be no more than a predefined threshold *t*. By maintaining this distributional similarity, t-closeness ensures that an attacker gains no significant new information by learning which equivalence class an individual belongs to, thereby protecting against a wider range of attribute inference attacks.

### Privacy Models

#### 𝑘-Anonymity

*k*-Anonymity is a privacy model that provides a clear, measurable standard for de-identification. Unlike techniques that focus on single attributes (like pseudonymization or generalization), *k*-anonymity assesses the re-identification risk from the perspective of the entire dataset. It ensures that any individual in a de-identified dataset cannot be distinguished from at least *k*-1 other individuals based on their quasi-identifiers. The value of *k* represents the size of the "anonymity set," and the re-identification risk for any individual in that set is quantified as 1/*k*.

This is achieved by generalizing or suppressing quasi-identifiers until each record's set of quasi-identifiers is identical to at least *k*-1 other records in the dataset. These groups of identical records are called "equivalence classes." For example, if *k*=5, for any combination of quasi-identifiers (e.g., age, gender, zip code), there must be at least 5 records with those same generalized values. This makes it harder for an attacker to re-identify individuals by linking the data with other sources.

The typical application of *k*-anonymity is for microdata. Microdata refers to datasets where each row corresponds to a specific individual or unit of observation (like a person, a household, or a single transaction), and the columns correspond to different variables or attributes of that unit. The example table below is a form of microdata. For other data types, extensions have been developed:

* **For Relational and transactional data**, which contains both standard quasi-identifiers and set-valued transactional attributes (e.g., a patient's diagnoses and the set of medications they take), standard *k*-anonymity is insufficient. An attacker could use the unique combination of transactions to re-identify individuals. The paper by [(Poulis, G., et al., 2013)](references.html#Poulis2013) addresses this by proposing a method that anonymizes both types of attributes simultaneously, ensuring that the combination of relational and transactional data meets a specified anonymity standard.
* **For graph data** (e.g., social networks), anonymizing nodes is not enough, as an attacker can use structural information, like the number of connections (degree) a node has, to re-identify it. To address this, [(Liu, K., & Terzi, E. (2008))](references.html#Liu2008) proposed a *k*-degree anonymity model. The solution involves strategically adding or removing edges in the graph to ensure that for any node, there are at least *k*-1 other nodes with the same degree, thus preventing degree-based attacks.

##### Example of 2-Anonymity in Healthcare

For this example, we assume the quasi-identifiers are {Age, Gender, Zip Code}. The `Name` is a direct identifier and `Diagnosis` is a sensitive attribute. Consider the following original patient data (microdata):

| Name    | Age | Gender | Zip Code | Diagnosis      |
| :------ | :-: | :----: | :------: | :------------- |
| Alice   | 28  | Female | 10021    | Hypertension   |
| Carol   | 29  | Female | 10023    | Asthma         |
| Eve     | 27  | Female | 10025    | Migraine       |
| Bob     | 31  | Male   | 10032    | Diabetes       |
| David   | 32  | Male   | 10034    | Hypertension   |
{:.grid}

To achieve 2-anonymity (*k*=2), we replace the direct identifier `Name` with a 5-digit random number pseudonym and generalize the `Age` and `Zip Code` quasi-identifiers.

**2-Anonymous Data:**

| Pseudonym | Age Range | Gender | Zip Code | Diagnosis      |
| :-------- | :-------- | :----: | :------: | :------------- |
| 83451     | 25-29     | Female | 1002x    | Hypertension   |
| 49281     | 25-29     | Female | 1002x    | Asthma         |
| 10358     | 25-29     | Female | 1002x    | Migraine       |
| 62215     | 30-34     | Male   | 1003x    | Diabetes       |
| 90872     | 30-34     | Male   | 1003x    | Hypertension   |
{:.grid}

In this transformed table, the data is 2-anonymous. The records have been grouped into two equivalence classes based on the quasi-identifiers {Age Range, Gender, Zip Code}:

1. The records with pseudonyms 83451, 49281, and 10358 form the equivalence class: {25-29, Female, 1002x}. This group has 3 members.
2. The records with pseudonyms 62215 and 90872 form the equivalence class: {30-34, Male, 1003x}. This group has 2 members.

Since the smallest equivalence class has 2 records, the dataset satisfies 2-anonymity. An attacker cannot distinguish any individual from at least one other person in the dataset, and the pseudonyms allow for internal record linkage without revealing real names.

#### Differential Privacy

Differential Privacy (DP) offers a formal, mathematical guarantee of privacy that is distinct from traditional de-identification methods. The core problem it solves is protecting against attacks that try to infer information about a specific individual by observing the output of a data analysis. Even if a dataset is anonymized, an attacker could run a query on it, then run the same query on a slightly different dataset (e.g., with one person's data removed) and infer information about that person by comparing the results. Differential Privacy makes this type of attack mathematically impossible.

As outlined by the National Institute of Standards and Technology (NIST), DP works by injecting a carefully calibrated amount of random noise into the output of a computation or analysis [(NIST_SP_800-226)](references.html#NIST_SP_800-226). This noise is large enough to mask the contribution of any single individual, but small enough to ensure that the overall result remains statistically useful. The key idea is that the output of a query should not significantly change whether any particular individual's data is included in the dataset or not. This provides plausible deniability for every participant.

The strength of the privacy guarantee is controlled by a parameter called epsilon (ε), often referred to as the "privacy budget." A smaller epsilon means more noise is added, providing stronger privacy but potentially lower accuracy. A larger epsilon provides higher accuracy but a weaker privacy guarantee. The choice of epsilon represents a direct trade-off between privacy and utility, and its value must be carefully chosen based on the sensitivity of the data and the needs of the analysis.

Unlike methods like *k*-anonymity, which modify the data itself, Differential Privacy is typically applied to the analysis or query mechanism. This makes it a powerful tool for sharing aggregate statistics, training machine learning models, or generating synthetic datasets that retain the statistical properties of the original data without revealing information about individuals. Its formal guarantees and flexibility have made it a leading approach for privacy-preserving data analysis in modern systems.

##### Example of a Differentially Private Query

Imagine a hospital database with patient records. An attacker knows their target, Bob, is in this database and wants to find out if he has diabetes.

**The Attack (on a Non-Private System):**
An attacker could perform a "differencing attack" if they can query the database at two different points in time or query two different versions of it.

1. **Query 1:** The attacker queries the database: `SELECT COUNT(*) FROM Patients WHERE Diagnosis = 'Diabetes';` The system returns the true, exact count: **100**.
2. **Query 2:** The attacker finds a way to query the database again after Bob has been removed (e.g., Bob is discharged, or the attacker uses a public version of the data from the previous week before Bob was admitted). They run the exact same query. The system now returns the new true count: **99**.
3. **The Inference:** By subtracting the results (100 - 99 = 1), the attacker can confidently infer that Bob's presence in the database was the reason for the difference. They have now learned Bob's sensitive diagnosis.

**The Defense (with a Differentially Private System):**

A system using Differential Privacy prevents this by adding calibrated random noise to the query result.

1. **Query 1 (with Bob):** The true answer is 100. The DP system adds random noise (e.g., +4) and returns **104**.
2. **Query 2 (without Bob):** The true answer is 99. The DP system adds new, independent random noise (e.g., -2) and returns **97**.
3. **The Failed Inference:** The attacker now compares the two results: 104 and 97. The difference is 7. This number is meaningless because it is dominated by the random noise. The attacker cannot tell if the change was due to Bob's data or just the randomness. They learn nothing meaningful about Bob's diagnosis, and his privacy is preserved.
