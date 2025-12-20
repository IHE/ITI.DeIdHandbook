
This handbook explains the PROCESS for removing individually identifiable information from healthcare data. This includes de-identification, pseudonymization, re-linking, design considerations, techniques, and risks. The intended audience is IHE Profile editors and healthcare information technology implementers needing a guide for designing and implementing de-identification systems.

<div markdown="1" class="stu-note">

| [Significant Changes, Open and Closed Issues](issues.html) |
{: .grid}

</div>

### Organization of This Guide

This guide is organized into the following sections:

1. [Introduction to This Handbook](intro.html)
2. [De-Identification, Pseudonymization, and Relinking](concepts.html)
   - [Navigating the Complexity of Privacy Concepts](concepts.html#navigating-the-complexity-of-privacy-concepts)
   - [Identifiability](concepts.html#identifiability)
   - [De-Identification, Pseudonymization, and Anonymization Explained](concepts.html#de-identification-pseudonymization-and-anonymization-explained)
   - [Overall De-Identification Approach](concepts.html#overall-de-identification-approach)
   - [Definitions](concepts.html#definitions)
   - [Re-identification](concepts.html#re-identification)
   - [Threats & Attacks](concepts.html#threats--attacks)
3. [Data Types](data-types.html)
4. [Techniques](algorithms.html)
   - [Classification of de-identification techniques](algorithms.html#classification-of-de-identification-techniques)
   - [De-Identifying Identifiers](algorithms.html#de-identifying-identifiers)
   - [De-Identifying Sensitive Attributes](algorithms.html#de-identifying-identifiers)
   - [Privacy Models](algorithms.html#privacy-models)
5. [Process](process.html)
   - [Step 1 – Requirements Design](process.html#step-1--requirements-design)
   - [Step 2 – De-identification Design](process.html#step-2--de-identification-design)
   - [Step 3 – Design Validation](process.html#step-3--design-validation)
   - [Step 4 – Implementation](process.html#step-4--implementation)
   - [Step 5 – Implementation Validation](process.html#step-5--implementation-validation)
   - [Step 6 – Periodic Review of Implementation](process.html#step-6--periodic-review-of-implementation)
6. [De-Identification and Pseudonymization for IHE Profile Editors](ihe-use.html)
7. [Security Considerations](security.html)
   - [Design of De-Identification Algorithm](security.html#design-of-de-identification-algorithm)
   - [Execution of De-Identification on Data](security.html#execution-of-de-identification-on-data)
   - [ATNA and Other Logging Considerations](security.html#atna-and-other-logging-considerations)
8. Exemplar
   - [FHIR Examples](fhir-example.html)
   - [DICOM Examples](dicom-example.html)
   - [HL7 2 Examples](hl7-example.html)
   - [Family Planning](family-planning.html)
   - [IPS EHDS2](ips-ehds-example.html)
9. Other
   - [Download and Analysis](download.html)
   - [Significant Changes and Issues](issues.html)
10. [References](references.html)

See also the [Table of Contents](toc.html) and the index of [Artifacts](artifacts.html) defined as part of this implementation guide.

### Conformance Expectations

IHE uses the normative words: Shall, Should, and May according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

#### Must Support

The use of ```mustSupport``` in StructureDefinition profiles is equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).

```mustSupport``` only has a meaning on items that are minimal cardinality of zero (0), and applies only to the source actor populating the data. The source actor shall populate the elements marked with MustSupport, if the concept is supported by the actor, a value exists, and security and consent rules permit.
The consuming actors should handle these elements being populated or being absent/empty.
Note that sometimes mustSupport will appear on elements with a minimal cardinality greater than zero (0), this is due to inheritance from a less constrained profile.
