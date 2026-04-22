

### Significant Changes from Revision 455e8b5 (Sep 23, 2022)

- The handbook has been restructured from a single standalone markdown draft into a full IHE Implementation Guide project, with SUSHI/IG build configuration, publication metadata, local templates, and updated build and publisher scripts.
- The core guidance has been substantially expanded into dedicated sections covering introduction, concepts, glossary, data types, process, techniques, security, downloads, references, and issue tracking, with a stronger emphasis on risk-based and multi-stage de-identification.
- New implementation content has been added for concrete interoperability use cases, including detailed FHIR, DICOM, HL7, IPS/EHDS, and family-planning examples, together with guidance on element-level and dataset-level treatment of identifiers and quasi-identifiers.
- The current version now includes computable artifacts and examples in FSH, including audit and capability definitions and multiple example bundles for staged de-identification workflows.
- Visual and reference material has been significantly broadened through new diagrams, generated images, bibliographic sources, and supporting reference documents that ground the handbook in external guidance and project-specific analysis.

### Issues

#### Open Issues

- #35: [Feature]: Homomorphic-Encryption (https://github.com/IHE/ITI.DeIdHandbook/issues/35)
  - Latest comment: Gap: Homomorphic Encryption (HE) for Privacy-Preserving Collaborative Analysis. While multiple stakeholders have identified the need to support privacy-preserving collaborative analysis across clinical settings and health provider networks—scenarios where multiple organizations wish to perform joint computations (e.g., aggregate statistics, machine learning model training, cohort identification) without disclosing individual-level data—the current handbook does not provide guidance on homomorphic encryption techniques as a de-identification mechanism for this use case. Although HE offers a theoretically sound approach by enabling computation on encrypted data without decryption (thus eliminating the need to transmit or share plaintext records), integration of HE into the handbook has not been feasible due to two constraints: (1) External contributor participation: The technical expertise and real-world implementation experience necessary to properly specify HE techniques came primarily from practitioners outside the IHE membership structure, who lack formal standing in the workgroup's governance and decision-making processes. (2) Workgroup resource limitation: The de-identification workgroup lacks dedicated capacity to research, validate, and document HE techniques—including their cryptographic security assumptions, computational overhead, regulatory compliance implications, and practical deployment challenges—at the depth required for a normative contribution to the handbook. Impact of this gap: Organizations seeking to conduct collaborative secondary analysis across multiple health systems currently cannot reference this handbook for guidance on HE-based approaches, forcing them either to pursue ad-hoc implementations without established best practices, to rely on external cryptographic expertise that may not be coordinated with the broader de-identification governance framework, or to accept the alternative of centralizing data in a trusted secure enclave—with corresponding increase in data concentration risk. This limitation particularly affects research consortia, public health agencies conducting multi-site epidemiological studies, and healthcare networks pursuing federated learning initiatives, where neither traditional centralized de-identification nor pseudonymization alone fully satisfies both the privacy requirements and the analytical need for real-time computation on sensitive attributes across organizational boundaries.

- #14: [Feature]: Incoporate EU pseudonymization guideline (https://github.com/IHE/ITI.DeIdHandbook/issues/14)
  - Latest comment: The most precise blocker to incorporating the EDPB Guidelines 01/2025 into this handbook is a structural mismatch in the scope of pseudonymization itself. This handbook, following ISO 25237, defines pseudonymization as a process that acts on direct identifiers — replacing them with pseudonyms to preserve record linkage while removing explicit identity. Treatment of quasi-identifiers is a separate, complementary step governed by generalization, suppression, or statistical privacy models such as k-anonymity. The EDPB Guidelines, by contrast, define pseudonymization as a risk-based processing mode whose validity is judged by a single criterion: whether the full record, considering both direct and quasi-identifiers together, can still be attributed to a data subject by actors within the defined pseudonymization domain. Under this framing, quasi-identifier treatment is not a parallel activity — it is an intrinsic sub-step of the pseudonymizing transformation itself (§84, §3.1.3.2). As a result, data that qualifies as pseudonymized under the handbook's technical definition may not satisfy the EDPB standard if residual quasi-identifiers remain exploitable within the processing context. Aligning the two would require dismantling the handbook's separation between pseudonymization and quasi-identifier techniques — a reorganization that would conflict with the jurisdiction-neutral, technique-oriented architecture the handbook is built on, and would impose GDPR-specific legal constructs (controller obligations, pseudonymization domain, Art. 4(5) compliance) onto a framework intentionally designed to apply across HIPAA, PIPL, ISO, and NIST contexts.

#### Closed Issues

- #109: spelling errors (https://github.com/IHE/ITI.DeIdHandbook/issues/109)
- #106: "_telecom" is a incorrect element name of FHIR resource (https://github.com/IHE/ITI.DeIdHandbook/issues/106)
- #104: Chapter Concept: Suppressing patient.name is some cases violates the profiles, like, C-CDA and FHIR uscore (https://github.com/IHE/ITI.DeIdHandbook/issues/104)
- #102: section-level empty-reason of ‘withheld’ (https://github.com/IHE/ITI.DeIdHandbook/issues/102)
- #101: IHE profile volume 4 addresses jurisdictional requirement (https://github.com/IHE/ITI.DeIdHandbook/issues/101)
- #100: Include "Data Permit" to the process of de-identification (https://github.com/IHE/ITI.DeIdHandbook/issues/100)
- #98: IHE Profile should not define project level de-identification governance  policy (https://github.com/IHE/ITI.DeIdHandbook/issues/98)
- #97: rephrase "Stage 3 (Recipient / Verification): " in chapter 8.3 (https://github.com/IHE/ITI.DeIdHandbook/issues/97)
- #96: restructure the section "What an IHE De-Identification Profile Must Define" make it consistent with the chapter process. (https://github.com/IHE/ITI.DeIdHandbook/issues/96)
- #95: notation consistency check for "R = R_d × R_c" (https://github.com/IHE/ITI.DeIdHandbook/issues/95)
- #94: include "secure processing environment" in the 7.8 governance section (https://github.com/IHE/ITI.DeIdHandbook/issues/94)
- #93: rephrase  "Other organizations have published their de-identification profiles. " in chapter 7.7 Implementation (https://github.com/IHE/ITI.DeIdHandbook/issues/93)
- #92: make the data usage agreement as part of the released de-identified dataset (https://github.com/IHE/ITI.DeIdHandbook/issues/92)
- #91: multiple data sources data collection should be described somewhere in the handbook (https://github.com/IHE/ITI.DeIdHandbook/issues/91)
- #90: [Bug]: Blur Can Be Reversed With Modern Techniques (https://github.com/IHE/ITI.DeIdHandbook/issues/90)
- #89: F2F Review Feb 2026 (https://github.com/IHE/ITI.DeIdHandbook/issues/89)
- #87: Example Resources (https://github.com/IHE/ITI.DeIdHandbook/issues/87)
- #86: relativity of anonymous data (https://github.com/IHE/ITI.DeIdHandbook/issues/86)
- #84: chapter process: fix the LaTex style of formulas (https://github.com/IHE/ITI.DeIdHandbook/issues/84)
- #82: fix broken links (https://github.com/IHE/ITI.DeIdHandbook/issues/82)
- #79: The file name algorithm.md does not reflect the content of de-identification techniques. (https://github.com/IHE/ITI.DeIdHandbook/issues/79)
- #76: update IPS EHDS example (https://github.com/IHE/ITI.DeIdHandbook/issues/76)
- #75: Secondary use of IPS FHIR or CDA with Mortality Data (EHDS2)-Base (https://github.com/IHE/ITI.DeIdHandbook/issues/75)
- #74: Secondary use of IPS FHIR or CDA with Mortality Data (EHDS2) (https://github.com/IHE/ITI.DeIdHandbook/issues/74)
- #71: update Family Planning Example (https://github.com/IHE/ITI.DeIdHandbook/issues/71)
- #68: update HL7 example (https://github.com/IHE/ITI.DeIdHandbook/issues/68)
- #66: update DICOM examples (https://github.com/IHE/ITI.DeIdHandbook/issues/66)
- #65: Update HL7 FHIR example (https://github.com/IHE/ITI.DeIdHandbook/issues/65)
- #64: [Chapter 5: Techniques] Generalize the zip code into 3 digits in the table 2-Anonymous Data (https://github.com/IHE/ITI.DeIdHandbook/issues/64)
- #63: [Chapter 5: Techniques] Include the concept of L-Diversity and t-closeness into the section 𝑘-Anonymity (https://github.com/IHE/ITI.DeIdHandbook/issues/63)
- #62: [Chapter 5: Techniques] Move the K-Anonymity data tables closer to the text "The example table below" (https://github.com/IHE/ITI.DeIdHandbook/issues/62)
- #61: [Chapter 5: Techniques] Replace the common diagnosis values with something a bit of rare disease. (https://github.com/IHE/ITI.DeIdHandbook/issues/61)
- #59: [Chapter 5: Techniques] Add description for each of the sub chapters for the data types (two levels) applicable (https://github.com/IHE/ITI.DeIdHandbook/issues/59)
- #58: [Chapter 4: Data Types] Change the sub chapter "Dataset Types and Approaches" to the table title (https://github.com/IHE/ITI.DeIdHandbook/issues/58)
- #57: [Chapter 4: Data types] remove "Assess unique cybersecurity risks per NIST guidelines."  from the genomics data  type. (https://github.com/IHE/ITI.DeIdHandbook/issues/57)
- #56: [Chapter 4: Data types] Replace "FHIR" with "HL7 FHIR" (https://github.com/IHE/ITI.DeIdHandbook/issues/56)
- #55: Change the sub chapter "Dataset Types and Approaches" to the table title [Chapter 4 Data types] (https://github.com/IHE/ITI.DeIdHandbook/issues/55)
- #54: [Chapter 4: Data types] remove "Assess unique cybersecurity risks per NIST guidelines."  from the genomics data  type. (https://github.com/IHE/ITI.DeIdHandbook/issues/54)
- #53: [Chapter 4: Data types] remove "rare diagnoses, uncommon procedures (e.g., tennis professional)" from the sensitive attributes of the section 4.1.1 (https://github.com/IHE/ITI.DeIdHandbook/issues/53)
- #52: [Chapter 4: Data Types] Replace "FHIR" with "HL7 FHIR" in the chapter Data Types. (https://github.com/IHE/ITI.DeIdHandbook/issues/52)
- #51: [Chapter 3: Concept] replace the "Crafted Data Sample" with "Synthetic data created manually for this example". (https://github.com/IHE/ITI.DeIdHandbook/issues/51)
- #50: [Chapter 3: Concept] add reference of transformation to the tables under the section of 3.2 (https://github.com/IHE/ITI.DeIdHandbook/issues/50)
- #48: [Feature]: check the alignment with Australian National Data Service (ANDS): ANDS Guide: De-Identification (https://github.com/IHE/ITI.DeIdHandbook/issues/48)
- #47: [Feature]: Check the alignment with Information and Privacy Commissioner of Ontario: De-Identification Guidelines for Structured Data (https://github.com/IHE/ITI.DeIdHandbook/issues/47)
- #46: [Feature]: check the alignment with Anonymisation: managing data protection risk code of practice (https://github.com/IHE/ITI.DeIdHandbook/issues/46)
- #43: naming of identifiability, relationship of concepts (https://github.com/IHE/ITI.DeIdHandbook/issues/43)
- #40: definitions (https://github.com/IHE/ITI.DeIdHandbook/issues/40)
- #38: TOC (https://github.com/IHE/ITI.DeIdHandbook/issues/38)
- #36: move references to references.html page (https://github.com/IHE/ITI.DeIdHandbook/issues/36)
- #34: remove must-support (https://github.com/IHE/ITI.DeIdHandbook/issues/34)
- #31: [Bug]: section title of "re-identification" is not accurate (https://github.com/IHE/ITI.DeIdHandbook/issues/31)
- #30: [Bug]: Clarify Intended Audience Use of Handbook (https://github.com/IHE/ITI.DeIdHandbook/issues/30)
- #29: Header "General Approach" is misleading (https://github.com/IHE/ITI.DeIdHandbook/issues/29)
- #28: [Bug]: Section 3.8 Reference 14 URL does not resolve (404 error) (https://github.com/IHE/ITI.DeIdHandbook/issues/28)
- #27: pseudonymization, de-identification (irreversible), and anonymization (https://github.com/IHE/ITI.DeIdHandbook/issues/27)
- #26: need to define pseudonymization and authorized re-identifiation (https://github.com/IHE/ITI.DeIdHandbook/issues/26)
- #25: clarify "authorized re-identification" as distinct from "unauthorized re-identification" (https://github.com/IHE/ITI.DeIdHandbook/issues/25)
- #24: should Definitions be a standalone page (https://github.com/IHE/ITI.DeIdHandbook/issues/24)
- #23: [Bug]: Language Clarity Update (https://github.com/IHE/ITI.DeIdHandbook/issues/23)
- #22: [Feature]: describe identifiers(direct and indirect) for different data types including images (https://github.com/IHE/ITI.DeIdHandbook/issues/22)
- #21: [Bug]: Section 2 Language Update (https://github.com/IHE/ITI.DeIdHandbook/issues/21)
- #20: [Bug]: Addition of verb for clarity (https://github.com/IHE/ITI.DeIdHandbook/issues/20)
- #18: add tcon to readme (https://github.com/IHE/ITI.DeIdHandbook/issues/18)
- #15: [Bug]: Reference to DICOM PS3.15 should be to current URL not an ancient dated release (https://github.com/IHE/ITI.DeIdHandbook/issues/15)
- #12: [Feature]: automatic numbering, citation and diagrams (https://github.com/IHE/ITI.DeIdHandbook/issues/12)
- #9: [Feature]: updated references (https://github.com/IHE/ITI.DeIdHandbook/issues/9)
- #8: [Feature]: Multi-layered de-identification profiles (https://github.com/IHE/ITI.DeIdHandbook/issues/8)
- #7: [Feature]: multi-stage de-identification process (https://github.com/IHE/ITI.DeIdHandbook/issues/7)
- #6: [Feature]: De-identification techniques (algorithms) (https://github.com/IHE/ITI.DeIdHandbook/issues/6)
- #5: [Feature]: de-identification background under IHE (https://github.com/IHE/ITI.DeIdHandbook/issues/5)
- #4: [Feature]: Multi-Stage General Approach (https://github.com/IHE/ITI.DeIdHandbook/issues/4)
- #3: [Feature]: Intended audience and their benefits (https://github.com/IHE/ITI.DeIdHandbook/issues/3)
- #2: Security Considerations Audit should point at BALP (https://github.com/IHE/ITI.DeIdHandbook/issues/2)
- #1: [Feature]: harmonize concepts and terms (https://github.com/IHE/ITI.DeIdHandbook/issues/1)

### Acknowledgements

The authoring group would like the express gratitude and recognition to the following for their valuable insights and assistance in creating this handbook.

First Revision: Geoff Pascoe, Robert Horn, Vassil Peytchev, Charles Parisot, Lisa Nelson, John Moehrke, Amit Popat, Dan Trainor, Illa Fortunov, Jennifer Puyenbroek, Karen Witting, Landen Bain, Manuel Metz, and Mick Talley 

Second Revision: Alan Zhang, John Moehrke, Mary Jungers, Jose Costa Teixeira, Andrea Fourquet, Lori Fourquet, Mick Talley, Martin Rosner, Christopher Melo
