
This handbook explains the PROCESS for removing individually identifiable information from healthcare data. This includes de-identification, pseudonymization, re-linking, design considerations, techniques, and risks. The intended audience is IHE Profile editors and healthcare information technology implementers needing a guide for designing and implementing de-identification systems.

<div markdown="1" class="stu-note">

| [Significant Changes, Open and Closed Issues](issues.html) |
{: .grid}

</div>

### Organization of This Guide

This guide is organized into the following sections:

1. [Introduction to This Handbook](intro.html)
2. [De-Identification, Pseudonymization, and Relinking](concepts.html)
   - [2.1 General Approach](concepts.html#21-general-approach)
   - [2.2 Definitions](concepts.html#22-definitions)
   - [2.3 De-identification Background](concepts.html#23-de-identification-background)
   - [2.4 Pseudonymization](concepts.html#24-pseudonymization)
   - [2.5 Relinking or Re-identification](concepts.html#25-relinking-or-re-identification)
   - [2.6 Threat Categories](concepts.html#26-threat-categories)
3. [Data Types](data-types.html)
4. [Algorithms](algorithms.html)
   - [4.1 Redaction](algorithms.html#41-redaction)
   - [4.2 Fuzzing](algorithms.html#42-fuzzing)
   - [4.3 Generalization](algorithms.html#43-generalization)
   - [4.4 Longitudinal Consistency Constraints](algorithms.html#44-longitudinal-consistency-constraints)
   - [4.5 Recoverable Substitution](algorithms.html#45-recoverable-substitution)
   - [4.6 Text Processing](algorithms.html#46-text-processing)
   - [4.7 Pass-through](algorithms.html#47-pass-through)
   - [4.8 De-identification datatype/algorithm matrix](algorithms.html#48-de-identification-datatypealgorithm-matrix)
5. [Process](process.html)
   - [5.1 Step 1 – Requirements Design](process.html#51-step-1--requirements-design)
   - [5.2 Step 2 – De-identification Design](process.html#52-step-2--de-identification-design)
   - [5.3 Step 3 – Design Validation](process.html#53-step-3--design-validation)
   - [5.4 Step 4 – Implementation](process.html#54-step-4--implementation)
   - [5.5 Step 5 – Implementation Validation](process.html#55-step-5--implementation-validation)
   - [5.6 Step 6 – Periodic Review of Implementation](process.html#56-step-6--periodic-review-of-implementation)
6. [De-Identification and Pseudonymization for IHE Profile Editors](ihe-use.html)
7. [Security Considerations](security.html)
   - [7.1 ATNA and Other Logging Considerations](security.html#71-atna-and-other-logging-considerations)
8. Exemplar
   - [FHIR Examples](fhir-example.html)
   - [DICOM Examples](dicom-example.html)
   - [HL7 2 Examples](hl7-example.html)
9. Other
   - [Download and Analysis](download.html)
   - [References](references.html)

See also the [Table of Contents](toc.html) and the index of [Artifacts](artifacts.html) defined as part of this implementation guide.

### Conformance Expectations

IHE uses the normative words: Shall, Should, and May according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

#### Must Support

The use of ```mustSupport``` in StructureDefinition profiles equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).

mustSupport of true - only has a meaning on items that are minimal cardinality of zero (0), and applies only to the source actor populating the data. The source actor shall populate the elements marked with MustSupport, if the concept is supported by the actor, a value exists, and security and consent rules permit.
The consuming actors should handle these elements being populated or being absent/empty.
Note that sometimes mustSupport will appear on elements with a minimal cardinality greater than zero (0), this is due to inheritance from a less constrained profile.
