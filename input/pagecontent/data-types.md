
The semantic type of each data element determines the algorithm or algorithms to apply to that element. Below we discuss various types of data.

This table can be used as a starting point. There are also standard specifications available (e.g., DICOM PS3.15 Annex E, see Appendix B of this document) that take this high level categorization and expand it to the individual attributes for particular kinds of data. Profile writers and others should extend these tables with any data types that are specific to their intended use.

**Table: Data types**

| Data types           | Examples                                                            | Approaches                                                           |
|---------------------------|---------------------------------------------------------------------|----------------------------------------------------------------------|
| Person identifying direct identifiers| person's name (including preferred name, legal name, other names by which the person is known), by name, we are referring to the name and all name data elements as specified in ISO/TS 22220; <br><br>person identifiers (including, for example, issuing authorities, types, and designations such as patient account number, medical record number, certificate/license numbers, social security number, health plan beneficiary numbers, vehicle identifiers and serial numbers, including license plate numbers); biometrics (voice prints, finger prints, photographs, etc.); <br><br>digital certificates that identify an individual; <br><br>mother's maiden name and other similar relationship-based concept (e.g., family links); <br><br>residential address; <br><br>electronic communications (telephone, mobile telephone, fax, pager, e-mail, URL, IP addresses, device identifiers, message control IDs, and device serial numbers); subject of care linkages (mother, father, sibling, child); <br><br>descriptions of tattoos and identifying marks.| Should be removed where possible, or aggregated at a threshold specified by the domain or jurisdiction. Where these data need to be retained, risk assessment of unauthorized re-identification and appropriate mitigations to identified risks of the resulting data resource shall be conducted.|
| Aggregation variables| dates of birth and ages; <br><br>admission, discharge dates; and <br><br>location data| For statistical purposes, absolute data references should be avoided. <br><br>Dates of birth are highly identifying. Ages are less identifying but can still pose a threat for linking observational data, therefore it is better to use age groups or age types. In order to determine safe ranges, re-identification risk analysis should be run, which is outside the scope of this Technical Specification. <br><br>Admission, discharge dates, etc. can also be aggregated into types of periods, but events could be expressed relatively to a milestone (e.g., x months after treatment). <br><br>Location data, if regional codes are too specific, should be aggregated. Where location codes are structured in a hierarchical way, the finer levels can be stripped, e.g., where postal codes or dialing codes contain 20 000 or fewer people, the code may be changed to 0001)|
| Demographic data are indirect identifiers| language spoken at home;
person's communication language;
religion;
ethnicity;
person gender;
country of birth;
occupation;
criminal history;
person legal orders;
other addresses (e.g., business address, temporary addresses, mailing
addresses);
birth plurality (second or later delivery from a multiple gestation).
| Should be removed where possible or aggregated at a threshold specified by the domain or jurisdiction. Where these data need to be retained, risk assessment of unauthorized re-identification and appropriate mitigations to identified risks of the resulting data resource shall be conducted.|
| Outlier variables| rare diagnoses;
uncommon procedures;
some occupations (e.g., tennis professional);
certain recessive traits uncharacteristic of the population in the
information resource;
distinct deformities.|Outlier variables should be removed based upon risk assessment.|
|Persistent data resources claiming pseudonymity||Shall be subject to routine risk analysis for potentially
identifying outlier variables. This risk analysis shall be conducted at
least annually. The identified risks shall be coupled with a risk
mitigation strategy.|
|Structured data variables|vital signs;
diagnosis;
procedures; and
lab tests and results.|Structured data give some indication of what information can be
expected and where it can be expected. It is then up to
re-identification risk analysis to make assumptions about what can lead
to (unacceptable) identification risks, ranging from simple rules of
thumb up to analysis of populated databases and inference deductions. In
“free text”, as opposed to “structured”, automated analysis for privacy
purposes with guaranteed outcome is not possible.|
|Freeform text|Some examples are:
Physician notes
Referral letters
SOAP notes
Chief complaint
Nursing observations
Triage notes
Test interpretation
Susceptibility test interpretation
Impressions|Freeform text cannot be assured anonymity. All freeform text
shall be subject to risk analysis and a mitigation strategy for
identified risks. Re-identification risks of retained freeform text may
be mitigated through:
implementation of policy surrounding freeform text content requiring
that the freeform text data shall not contain directly identifiable
information (e.g., patient numbers, names);
verification that freeform content is unlikely to contain identifying
data (e.g., where freeform text is generated from structured text);
revising, rewriting or otherwise converting the data into coded
form.
Computationally convert the freeform text into coded concepts, thus
releasing the need for the freeform text.
As parsing and natural language processing "data scrubbing" and
pseudonymization algorithms progress, re-identification risks associated
with freeform text may merit relaxation of this assertion.
Freeform text should be revised, rewritten or otherwise converted
into coded form.|
|Text/voice data with non-parseable content|Voice recordings|As with freeform text, non-parsable data should be removed.|
|Image data|A radiology image with patient identifiers on image.|Some medical data contain identifiable information within the
data. Mitigations of such identifiable data in the structured and coded
DICOM header should be in accordance with DICOM PS 3.15 Annex E.
Additional risk assessment shall be considered for identifiable
characteristics of the image or notations that are part of the image.
See [DICOM PS 3.15 Annex E](references.html#dicom-part-15-annex-e)|
{:.grid}



<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 47%" />
<col style="width: 35%" />
</colgroup>
<thead>
<tr class="header">
<th>Data types</th>
<th>Examples</th>
<th>Approaches</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Person identifying direct identifiers.</td>
<td><p>person's name (including preferred name, legal name, other names
by which the person is known); by name, we are referring to the name and
all name data elements as specified in ISO/TS 22220;</p>
<p>person identifiers (including, e.g., issuing authorities, types, and
designations such as patient account number, medical record number,
certificate/license numbers, social security number, health plan
beneficiary numbers, vehicle identifiers and serial numbers, including
license plate numbers);</p>
<p>biometrics (voice prints, finger prints, photographs, etc.);</p>
<p>digital certificates that identify an individual;</p>
<p>mother's maiden name and other similar relationship-based concept
(e.g., family links);</p>
<p>residential address;</p>
<p>electronic communications (telephone, mobile telephone, fax, pager,
e-mail, URL, IP addresses, device identifiers, message control IDs, and
device serial numbers);</p>
<p>subject of care linkages (mother, father, sibling, child);</p>
<p>descriptions of tattoos and identifying marks.</p></td>
<td>Should be removed where possible, or aggregated at a threshold
specified by the domain or jurisdiction. Where these data need to be
retained, risk assessment of unauthorized re-identification and
appropriate mitigations to identified risks of the resulting data
resource shall be conducted</td>
</tr>
<tr class="even">
<td>Aggregation variables</td>
<td><p>dates of birth and ages;</p>
<p>admission, discharge dates; and</p>
<p>location data</p></td>
<td><p>For statistical purposes, absolute data references should be
avoided.</p>
<p>Dates of birth are highly identifying. Ages are less identifying but
can still pose a threat for linking observational data, therefore it is
better to use age groups or age types. In order to determine safe
ranges, re-identification risk analysis should be run, which is outside
the scope of this Technical Specification.</p>
<p>Admission, discharge dates, etc. can also be aggregated into
types of periods, but events could be expressed relatively to a
milestone (e.g., x months after treatment).</p>
<p>Location data, if regional codes are too specific, should be
aggregated. Where location codes are structured in a hierarchical way,
the finer levels can be stripped, e.g., where postal codes or dialing
codes contain 20 000 or fewer people, the code may be changed to
0001)</p></td>
</tr>
<tr class="odd">
<td>Demographic data are indirect identifiers</td>
<td><p>language spoken at home;</p>
<p>person's communication language;</p>
<p>religion;</p>
<p>ethnicity;</p>
<p>person gender;</p>
<p>country of birth;</p>
<p>occupation;</p>
<p>criminal history;</p>
<p>person legal orders;</p>
<p>other addresses (e.g., business address, temporary addresses, mailing
addresses);</p>
<p>birth plurality (second or later delivery from a multiple
gestation).</p></td>
<td>Should be removed where possible, or aggregated at a threshold
specified by the domain or jurisdiction. Where these data need to be
retained, risk assessment of unauthorized re-identification and
appropriate mitigations to identified risks of the resulting data
resource shall be conducted.</td>
</tr>
<tr class="even">
<td>Outlier variables</td>
<td><p>rare diagnoses;</p>
<p>uncommon procedures;</p>
<p>some occupations (e.g., tennis professional);</p>
<p>certain recessive traits uncharacteristic of the population in the
information resource;</p>
<p>distinct deformities.</p></td>
<td>Outlier variables should be removed based upon risk assessment.</td>
</tr>
<tr class="odd">
<td>Persistent data resources claiming pseudonymity</td>
<td></td>
<td>Shall be subject to routine risk analysis for potentially
identifying outlier variables. This risk analysis shall be conducted at
least annually. The identified risks shall be coupled with a risk
mitigation strategy.</td>
</tr>
<tr class="even">
<td>Structured data variables</td>
<td><p>vital signs;</p>
<p>diagnosis;</p>
<p>procedures; and</p>
<p>lab tests and results.</p></td>
<td>Structured data give some indication of what information can be
expected and where it can be expected. It is then up to
re-identification risk analysis to make assumptions about what can lead
to (unacceptable) identification risks, ranging from simple rules of
thumb up to analysis of populated databases and inference deductions. In
“free text”, as opposed to “structured”, automated analysis for privacy
purposes with guaranteed outcome is not possible.</td>
</tr>
<tr class="odd">
<td>Freeform text</td>
<td><p>Some examples are:</p>
<p>Physician notes</p>
<p>Referral letters</p>
<p>SOAP notes</p>
<p>Chief complaint</p>
<p>Nursing observations</p>
<p>Triage notes</p>
<p>Test interpretation</p>
<p>Susceptibility test interpretation</p>
<p>Impressions</p></td>
<td><p>Freeform text cannot be assured anonymity. All freeform text
shall be subject to risk analysis and a mitigation strategy for
identified risks. Re-identification risks of retained freeform text may
be mitigated through:</p>
<p>implementation of policy surrounding freeform text content requiring
that the freeform text data shall not contain directly identifiable
information (e.g., patient numbers, names);</p>
<p>verification that freeform content is unlikely to contain identifying
data (e.g., where freeform text is generated from structured text);</p>
<p>revising, rewriting or otherwise converting the data into coded
form.</p>
<p>Computationally convert the freeform text into coded concepts, thus
releasing the need for the freeform text.</p>
<p>As parsing and natural language processing "data scrubbing" and
pseudonymization algorithms progress, re-identification risks associated
with freeform text may merit relaxation of this assertion.</p>
<p>Freeform text should be revised, rewritten or otherwise converted
into coded form.</p></td>
</tr>
<tr class="even">
<td>Text/voice data with non-parseable content</td>
<td>Voice recordings</td>
<td>As with freeform text, non-parsable data should be removed.</td>
</tr>
<tr class="odd">
<td>Image data</td>
<td>A radiology image with patient identifiers on image.</td>
<td><p>Some medical data contain identifiable information within the
data. Mitigations of such identifiable data in the structured and coded
DICOM header should be in accordance with DICOM PS 3.15 Annex E.</p>
<p>Additional risk assessment shall be considered for identifiable
characteristics of the image or notations that are part of the image.
See DICOM PS 3.15 Annex E</p></td>
</tr>
</tbody>
</table>
