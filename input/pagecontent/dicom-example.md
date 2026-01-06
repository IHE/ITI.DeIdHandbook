### DICOM data for secondary use

DICOM (Digital Imaging and Communications in Medicine) is a standard for storing, transmitting, and managing medical imaging data, such as X-rays, MRIs, and CT scans. In secondary use, DICOM data is repurposed beyond its primary clinical applications, such as diagnosis and treatment planning, for research, education, and analytics. This involves extracting de-identified data for studies, training AI models, or quality improvement initiatives. Secondary use leverages the rich metadata and imaging information in DICOM files to advance medical research, improve healthcare outcomes, and develop innovative tools, while ensuring compliance with privacy regulations like HIPAA.

The DICOM standard has defined a set of confidentiality options for common de-identification situations. These apply directly to many real world situations, and can be used as the starting point for specialized adaptation to other situations. Many clinical trial plans and RFPs require use of these standard de-identification methods, and the DICOM standard is recognized by the FDA.

[DICOM](references.html#DICOM) defines standard actions. The following is the subset that used in the example below.

**Table: DICOM Algorithms (Subset for example)**

| Algorithm Code | Algorithm Description                                                                                                         |
|----------------|-------------------------------------------------------------------------------------------------------------------------------|
| D              | replace with a non-zero length value that may be a dummy value and consistent with the value representation (VR)              |
| X              | Remove                                                                                                                        |
| K              | keep (unchanged for non-sequence attributes, cleaned for sequences)                                                           |
| C              | clean, that is replace with values of similar meaning known not to contain identifying information and consistent with the VR |
| X/D            | X unless D is required to maintain IOD conformance (Type 3 versus Type 1)                                                     |
{:.grid}

There is a very large table (Table E.1-1. Application Level Confidentiality Profile Attributes) in [DICOM PS 3.15, Annex E](references.html#DICOM-part-15-annex-e) that specifies how every possible attribute should be de-identified. There is a default de-identification profile and several common options that modify that default. An extract is shown below as an example of how to read that table.

**Table: Table E.1-1. Application Level Confidentiality Profile Attributes (Subset for example)**

| Attribute Name | Tag         | Basic Prof. | More Options | Rtn. Pat. Chars. Opt. | More Options |
|----------------|-------------|-------------|--------------|-----------------------|--------------|
| Patient's Age  | (0010,1010) | X           | ...          | K                     | ...          |
|----------------|-------------|-------------|--------------|-----------------------|--------------|
| Patient's Sex  | (0010,0040) | Z           | ...          | K                     | ...          |
{:.grid}

In the snippet above, you can see that in the default profile requries to remove (Action code: X) Patient's Age (0010,1010), Patient's Sex (0010,0040). Some cases, for example, AI Model traning, regulatory bodies, like FDA, require keep the patient demographic information. You could keep those attribues by enabling patient retension option (Rtn. Pat. Chars. Opt.), but the data utility risk comes from other attributes removed by default. Therefore, for the example in this chapter, we apply a two-stage of de-identification to make sure privacy risk and data utility are well managed.

### Teaching File and Clinical Trail Export

The Teaching File and Clinical Trial Export (TCE) Profile facilitates the selection and export of DICOM instances, series, or studies—such as images, key image notes, reports, evidence documents, and presentation states—for use in teaching files or clinical trials. It specifies an Export Selection actor, typically integrated with an Image Display or Acquisition Modality, and an Export Processing actor, which must support configurable de-identification of exported instances. The profile also offers options for de-identifying pixel data, remapping identifiers to pseudonymous values, including additional teaching file information, and delaying export for various reasons[(IHE RAD TF Vol1)](references.html#IHE_RAD_TF_Vol1). The TCE introduces thres actors, Export Selector, Export Manager, and Receiver. The Export Selector selects and makes DICOM instances availale to the Export Manager for exporting. The Export Manager performs the task of de-identifying DICOM data before sending it to the Receiver.

### Two stages of de-identification for secondary use of DICOM

In this example, we assume a dedicated anonymization service is deployed in an enviroment that serving secondary DICOM use, which is seperated from the enviroment where  the medical modality is deployed. The de-identification on the modality usually follows [(DICOM PS 3.15, Annex E)](https://dicom.nema.org/medical/dicom/current/output/chtml/part15/chapter_e.html). In this example, we assume the de-identification behavior can be customized as a pseudonymization policy (only processing direct identifiers, like, all kinds of iD/UIDs, patient's id etc). Anonymizing the quasi-identifiers, like, patient age, will be processed by the dedicated anonymization service which is based on the TCE profile. The diagram below shows a work flow of the two stages of de-identification. In the diagram, we use the same actor names(export selector, export manager) introduced in the TCE profile just for illustration, meaning the modality does not need to implement their de-identification function by following the transactions required by the TCE profile.

<figure>
  <img src="example-multi-stage-deid-dicom.png" alt="levels of identifiability">
  <figcaption><strong>Two stages of de-identification based on TCE Profile </strong></figcaption>
</figure>

**Process Steps: Stage 1**

1. Enable pseudonymization policy on the modality.
As we explained, in this example, we assume the modality supports comtomization of the de-identification behavior to enable a pseudonymization policy. The pseudonymization policy covers all the attributes which are direct indentifiers, like, UIDs, Patient ID.

2. Export pseudonymized DICOM to a portable media.
After properly setting the pseudonymization policy, user select and export the DICOM data to a portable media. The modality performes de-identification by following the pseudonymization policy, and then exports the pseudonymized DICOM to a portable media. We assume The modality exports the pseudonymized DICOM data to the portable media by following the Portable Data for Imaging Integration Profile (PDI) specified in [(IHE RAD TF Vol1)](references.html#IHE_RAD_TF_Vol1).

3. Transfer the portable media to enviroment of anonymization. 
This step is human activity. An alternative solution in other cases is transfer the pseudonymized DICOM via a secure network.

**Process Steps: Stage 2**
1. Import the pseudonymized DICOM data.
The user received the portable media can import the pseudonymized DICOM data stored on it. We assume the dedicated de-identification system adopted the Portable Media Creator defined in the Portable Data for Imaging Integration Profile (PDI) specified in [(IHE RAD TF Vol1)](references.html#IHE_RAD_TF_Vol1).

2. Select anonymization policy.
An anonymization policy needs to be selected sent to the Export Manager together with the selected pseudonymized DICOM data. For some cases, a default anonymization policy could be deployed together with the Export Manager. Anonymization policy describes the behavior of processing quasi-identifiers, like, Patient's Age, Patient's Sex. The processing behavior can not be unified to fit the requirement of all data collection cases. For example, patient age usually needs to be tranformed into a ranged value from the original value, but range scope maybe different for different cases, some requirs 5 years range, like, 20-25, 25-30, others may require 3 years range. Therefore, ideally, the anonymization policy is customized and approved in a case-by-case manner.

3. Store pseudonymized DICOM data and Anonymization Policy.
The Export Selector selects the imported pseudonymized DICOM data and the selected anonymization policy then send them to the Export Manager. According to the TCE profile, following the transaction Store Export Selection [RAD-51] to send the DICOM data, and Store Additional Teaching File Information [RAD-52] can be used to send the anonymization policy.

4. Perform anonymization.
The Export Manager performs the anonymization after receiving the pseudonymized DICOM data and anonymization policy, then send the anonymized DICOM data to the Receiver via the transaction Export Instances [RAD-53].

5. Export anonymized DICOM to a portable media.
After receiving the anoymization, the Receiver triggers the grouped Portable Media Creator to perform a task of exporting the anonymized DICOM data to a portable media. We asssume follows the Portable Data for Imaging Integration Profile (PDI) specified in [(IHE RAD TF Vol1)](references.html#IHE_RAD_TF_Vol1).
