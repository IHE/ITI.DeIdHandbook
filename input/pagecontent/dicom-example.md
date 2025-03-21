
The DICOM standard has defined a set of confidentiality options for common de-identification situations. These apply directly to many real world situations, and can be used as the starting point for specialized adaptation to other situations. Many clinical trial plans and RFPs require use of these standard de-identification methods, and the DICOM standard is recognized by the FDA.

There is a very large table in [DICOM PS 3.15, Annex E](references.html#dicom-part-15-annex-e) that specifies how every possible attribute should be de-identified. There is a default de-identification profile and several common options that modify that default. An extract is shown below as an example of how to read that table.

[DICOM](references.html#dicom) defines standard actions. The following is the subset that used in the example below.

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

The [DICOM standard PS 3.15 Annex-E](references.html#dicom-part-15-annex-e) and [all of DICOM](references.html#dicom).
