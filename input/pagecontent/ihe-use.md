
# 6 De-Identification and Pseudonymization for IHE Profile Editors

A de-identification profile will specify the kind of source data, and for all of the attributes and data elements in that source data what data will be removed, what data will be modified, how data will be modified, and what data will be passed through unmodified. For example, in clinical trials, real patient names in the source data are replaced by clinical trial IDs assigned by the clinical trial manager for that person.

A de-identification profile describes how to perform steps 1) and 2) of the process described in Sections 5.1 and 5.2 above. The authors of a profile must:

- Identify the data requirements. Instead of having specific project data requirements, a profile describes a common class of data requirements.
- Identify the risks that can be removed. There is no requirement to eliminate all risks. Some data uses, e.g., cancer boards, must preserve private information and make it available.
- Identify the residual risks that will require separate protections when this profile is used. This is reasonable even when the resulting de-identified data must be treated as protected personal information. Reducing potential bias, and reducing the risks from accidental disclosure, is very valuable.
- Identify the data elements that will be in the original data and how they will be treated. In a profile these may be both specific data elements and classes of data elements. This need not be perfect, because the requirements are coming from a class of situations. It can be appropriate to highlight particular elements where one of several different choices is appropriate, so that project specific de-identification can determine the best choice for that project.

Two examples of de-identification profiles from other organizations are described in Appendix B.2 and B.3. A de-identification profile will take tens of pages.

The Biosurveillance Specification describes one intended use, and describes how expected data elements in the input should be processed.

The DICOM standard describes a default intended use, plus several options regarding how this use might be modified, and describes how data elements in the input should be processed.

The developers of an actual de-identification process must still do their own design, but this is greatly simplified by starting with a generic profile. They can compare their intended use with the one from the profile. They can examine the expected data elements and make adjustments where necessary. This is much easier than starting from scratch. It is fairly common in the case of DICOM data to find developers for a specific use determine that the default profile plus one or more of the options are suitable.

When IHE develops a de-identification profile the user expectations are the same.
