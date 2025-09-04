DICOM (Digital Imaging and Communications in Medicine) is a standard for storing, transmitting, and managing medical imaging data, such as X-rays, MRIs, and CT scans. In secondary use, DICOM data is repurposed beyond its primary clinical applications, such as diagnosis and treatment planning, for research, education, and analytics. This involves extracting de-identified data for studies, training AI models, or quality improvement initiatives. Secondary use leverages the rich metadata and imaging information in DICOM files to advance medical research, improve healthcare outcomes, and develop innovative tools, while ensuring compliance with privacy regulations like HIPAA.

The Teaching File and Clinical Trial Export (TCE) Profile facilitates the selection and export of DICOM instances, series, or studies—such as images, key image notes, reports, evidence documents, and presentation states—for use in teaching files or clinical trials. It specifies an Export Selection actor, typically integrated with an Image Display or Acquisition Modality, and an Export Processing actor, which must support configurable de-identification of exported instances. The profile also offers options for de-identifying pixel data, remapping identifiers to pseudonymous values, including additional teaching file information, and delaying export for various reasons[(IHE RAD TF Vol1)](references.html#IHE_RAD_TF_Vol1). The TCE introduces thres actors, Export Selector, Export Manager, and Receiver. The Export Selector selects and makes DICOM instances availale to the Export Manager for exporting. The Export Manager performs the task of de-identifying DICOM data before sending it to the Receiver.

As we explained in the section of de-identification process, some cases requries a multi-stage de-identification. The diagram below shows a two stages of de-identification based on TCE profile. The first stage is pseudonymization, and the second stage is anonymization.

<figure>
  <img src="example-multi-stage-deid-dicom.png" alt="levels of identifiability">
  <figcaption><strong>Two stages of de-identification based on TCE Profile </strong></figcaption>
</figure>

This example demostrats a scenario that the de-identification function deployed on a modality works together with a dedicated or centrally managed de-identification service based on TCE profile. The example is based on the following assumptions:
- The modality implements funcationalities of Export Selector, Export Manager and Portable Media Creator. Since these actors are all grouped together, it's not necessary to follow the transactions between them specified the TCE Profile.
- De-Identification function on the modality is builtin function of the modality, and the de-identification function is based on a pseudonymization policy.
- The pseudonymized DICOM data is exported to a portable media.
- A dedicated centralized DICOM data for secondary use is established based on the TCE profile, which more advanced DICOM anonymization can be performed.
- A portable media is used to transfer the pseudonymized DICOM data from the modality to the secondary data use environment due to the unavailability of DICOM network service between them.




------- old conent --------

The DICOM standard has defined a set of confidentiality options for common de-identification situations. These apply directly to many real world situations, and can be used as the starting point for specialized adaptation to other situations. Many clinical trial plans and RFPs require use of these standard de-identification methods, and the DICOM standard is recognized by the FDA.

There is a very large table in [DICOM PS 3.15, Annex E](references.html#DICOM-part-15-annex-e) that specifies how every possible attribute should be de-identified. There is a default de-identification profile and several common options that modify that default. An extract is shown below as an example of how to read that table.

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

In the snippet below, you can see that Acquisition DateTime (0008,002A) has not been retired from the standard, and is found in standard composite IODs. The default behavior is to remove this attribute unless its presence is required at that location by the IOD rules. If it is required by IOD rules, a dummy substitute value will be used. This behavior may be modified by specifying the “Retain Longitudinal Full Dates” Option. That option specifies that the attribute be kept unmodified. There is also a “Retain Longitudinal Modified Dates” Option. With that option the dates will be consistently modified for all objects being de-identified.

**Table: (In DICOM PS 3.15, Annex E) - Application Level Confidentiality Profile Attributes**

<table style="width:100%;">
<colgroup>
<col style="width: 11%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 10%" />
<col style="width: 13%" />
<col style="width: 11%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute Name</th>
<th>Tag</th>
<th>Retired (from PS 3.6)</th>
<th>In Std. Comp. IOD (from PS 3.3)</th>
<th>Default</th>
<th><p>More Options</p>
<p>…</p></th>
<th>Retain Long. Full Dates Option</th>
<th>Retain Long. Modif. Dates Option</th>
<th><p>More Options</p>
<p>…</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>…</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Acquisition DateTime</td>
<td>(0008,002A)</td>
<td>N</td>
<td>Y</td>
<td>X/D</td>
<td></td>
<td>K</td>
<td>C</td>
<td></td>
</tr>
</tbody>
</table>

The [DICOM standard PS 3.15 Annex-E](references.html#DICOM-part-15-annex-e) and [all of DICOM](references.html#DICOM).
