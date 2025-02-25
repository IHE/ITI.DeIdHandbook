
# 1 Introduction to This Handbook

This handbook explains the PROCESS for removing individually identifiable information from healthcare data. This includes de-identification, pseudonymization, re-linking, design considerations, techniques, and risks. The intended audience is IHE Profile editors and healthcare information technology implementers needing a guide for designing and implementing de-identification systems.

De-identification is used to reduce privacy risks in a wide variety of situations:

- Extreme de-identification is used for educational materials that will be made widely public, yet must convey enough detail to be useful for medical education purposes. (There is an IHE profile for automation assistance for performing this kind of de-identification. Much of the process is customized to the individual patient and educational purpose.)
- Public health uses de-identified databases to track and understand diseases.
- Clinical trials use de-identification both to protect privacy and to avoid subconscious bias by removing other information such as whether the patient received a placebo or an experimental drug.
- Slight de-identification is used in many clinical reviews, where the reviewers are kept ignorant of the treating physician, hospital, patient, etc. both to reduce privacy risks and to remove subconscious biases. This kind of de-identification only prevents incidental disclosure to reviewers. An intentional effort will easily discover the patient identity, etc.

Public health and clinical trials might also have a requirement to be able to contact a person based on their de-identified records. This poses further constraints on the methods used to de-identify the records.

***It is important to understand that you can only reduce the risks. The only way to absolutely assure a person cannot be relinked to their data is to provide no data at all. De-identified data can still be full of identifying information, and may still need extensive privacy protections.***

This handbook describes a general process that should be adapted to specific situations. This handbook does not define a universal de-identification profile. Each situation must be evaluated according to its data needs and the environment. This must be specific to the information being processed, applicable laws and regulations, organizational policies, the operational environment, and more.

The design and operation of any de-identification profile or system must be validated and monitored. Validation should occur early in the design phase, again when the system is going live, and during operational use. The characteristics of many data sets change over time, and monitoring production de-identification systems helps ensure that they remain effective over time. An IHE profile editor may be unaware of these specifics and thus unable to provide detailed guidance. IHE profiles can provide help by eliminating unnecessary information from content modules, and perhaps providing guidance for common expected intended uses.

It is also important to remember data that is appropriately de-identified for one purpose (such as a clinical trial) may not be correctly de-identified for a new use of the data (such as using the same data set for a public health database).

ISO/TS 25237 describes the objectives of de-identification to include:

- secondary use of clinical data (e.g., research);
- clinical trials and post-marketing surveillance;
- pseudonymous care;
- patient identification systems;
- public health monitoring and assessment;
- confidential patient-safety reporting (e.g., adverse drug effects);
- comparative quality indicator reporting;
- peer review;
- consumer groups;
- medical device calibration or maintenance.
