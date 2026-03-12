Instance: secondaryUse-pandemnicIPS-example-patient-1-stage-1
InstanceOf: Bundle
Description: """
The following bundle provides an example view of the sample patient record after applying pseudonymization. 
This shows:
- A pseudo-identifier has been applied to the patient resource and replaces the original patient identifier throughout the document.
- A pseudo-name has been applied to the patient resource and replaces the original patient name throughout the document. Note that a pseudo-name is required as content is not permitted to be omitted or replaced with a null flavor in FHIR patient resources.
- Birthdate has been date-shifted forward by 107 days.
"""
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips"
* id = "430e32bc-be3e-4c42-a17b-461ea4f402d4"
* identifier.system = "urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639"
* identifier.value = "IHEEX-33159"
* type = #document
* timestamp = "2024-07-01T00:00:00Z"
* entry[+].fullUrl = "urn:9360c0bf-785b-4998-bc6f-4ed53e660f3e"
* entry[=].resource = composition-secondaryUse-pandemnicIPS-example-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:26fd15b5-6e12-4415-8372-0a56f65b0209"
* entry[=].resource = 26fd15b5-6e12-4415-8372-0a56f65b0209
* entry[+].fullUrl = "urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208"
* entry[=].resource = patient-secondaryUse-pandemnicIPS-example-patient-1-stage-1
* entry[+].fullUrl = "urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00"
* entry[=].resource = 5bd1f7cf-8b12-4b25-9025-9cbb7da67e00
* entry[+].fullUrl = "urn:uuid:e52312c9-2ed2-47ee-8ba5-b795a20501a4"
* entry[=].resource = e52312c9-2ed2-47ee-8ba5-b795a20501a4
* entry[+].fullUrl = "urn:uuid:7566033f-57e1-4c66-9b60-62e410537136"
* entry[=].resource = 7566033f-57e1-4c66-9b60-62e410537136
* entry[+].fullUrl = "urn:uuid:60367b53-a9de-4ddf-960f-d3730002883a"
* entry[=].resource = 60367b53-a9de-4ddf-960f-d3730002883a
* entry[+].fullUrl = "urn:uuid:a88bdcee-6c68-48c0-b744-c0e99ddba37d"
* entry[=].resource = a88bdcee-6c68-48c0-b744-c0e99ddba37d
* entry[+].fullUrl = "urn:uuid:c6c6a142-b74b-4242-b447-e29a095c33ce"
* entry[=].resource = c6c6a142-b74b-4242-b447-e29a095c33ce
* entry[+].fullUrl = "urn:uuid:3265dce1-e367-4928-b514-5f5b7d906751"
* entry[=].resource = 3265dce1-e367-4928-b514-5f5b7d906751
* entry[+].fullUrl = "urn:uuid:aa04d0fa-ec03-44cc-85e1-93ef9646afe9"
* entry[=].resource = aa04d0fa-ec03-44cc-85e1-93ef9646afe9
* entry[+].fullUrl = "urn:uuid:baa0331b-564f-4998-9d50-90450ba7e63d"
* entry[=].resource = baa0331b-564f-4998-9d50-90450ba7e63d
* entry[+].fullUrl = "urn:uuid:96153c5c-42e0-4442-99c8-a66326c43f4b"
* entry[=].resource = 96153c5c-42e0-4442-99c8-a66326c43f4b
* entry[+].fullUrl = "urn:uuid:c2f665bd-b5c3-47b6-9420-db26f23a5c6f"
* entry[=].resource = c2f665bd-b5c3-47b6-9420-db26f23a5c6f
* entry[+].fullUrl = "urn:uuid:4970dc83-2268-4570-be57-1672061732ec"
* entry[=].resource = 4970dc83-2268-4570-be57-1672061732ec
* entry[+].fullUrl = "urn:uuid:4f65c1c7-854d-49f5-866e-3770e5ea4c76"
* entry[=].resource = 4f65c1c7-854d-49f5-866e-3770e5ea4c76
* entry[+].fullUrl = "urn:uuid:7f5f388e-e347-4d05-a5e6-5c1d75e720d7"
* entry[=].resource = 7f5f388e-e347-4d05-a5e6-5c1d75e720d7
* entry[+].fullUrl = "urn:uuid:fdf540ad-627a-4fdf-a3c5-6726efdac9f1"
* entry[=].resource = fdf540ad-627a-4fdf-a3c5-6726efdac9f1
* entry[+].fullUrl = "urn:uuid:4d608180-97ce-47ef-826e-ea7d9db17f5a"
* entry[=].resource = 4d608180-97ce-47ef-826e-ea7d9db17f5a
* entry[+].fullUrl = "urn:uuid:6c1f0300-6e47-4e21-849e-2d83af56b770"
* entry[=].resource = 6c1f0300-6e47-4e21-849e-2d83af56b770
* entry[+].fullUrl = "urn:uuid:10c71b09-00ff-47fa-942c-a99eb2ffce12"
* entry[=].resource = 10c71b09-00ff-47fa-942c-a99eb2ffce12
* entry[+].fullUrl = "urn:uuid:17e4e74a-5e98-46ab-acc7-b32eb45e0634"
* entry[=].resource = 17e4e74a-5e98-46ab-acc7-b32eb45e0634
* entry[+].fullUrl = "urn:uuid:47a20f92-59a9-49a6-853c-725f7a2ae990"
* entry[=].resource = 47a20f92-59a9-49a6-853c-725f7a2ae990
* entry[+].fullUrl = "urn:uuid:e39ed30d-b85c-4809-86c8-102864449557"
* entry[=].resource = e39ed30d-b85c-4809-86c8-102864449557
* entry[+].fullUrl = "urn:uuid:43e735ad-0a17-459c-94f3-22b796544596"
* entry[=].resource = 43e735ad-0a17-459c-94f3-22b796544596
* entry[+].fullUrl = "urn:uuid:5c4d9618-e852-435d-8675-9f9ce4c3423c"
* entry[=].resource = 5c4d9618-e852-435d-8675-9f9ce4c3423c
* entry[+].fullUrl = "urn:uuid:24760e8f-fe48-48d1-a8bc-271c82a5ab2f"
* entry[=].resource = 24760e8f-fe48-48d1-a8bc-271c82a5ab2f
* entry[+].fullUrl = "urn:uuid:03825cce-f3b8-4b56-b5e8-2609d0e9a29a"
* entry[=].resource = 03825cce-f3b8-4b56-b5e8-2609d0e9a29a

Instance: composition-secondaryUse-pandemnicIPS-example-patient-1-stage-1
InstanceOf: CompositionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips"
* id = "9360c0bf-785b-4998-bc6f-4ed53e660f3e"
* status = #final
* type = $loinc#60591-5
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* date = "2024-07-01T00:00:00Z"
* author = Reference(urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00)
* title = "International Patient Summary"
* confidentiality = #N
* custodian = Reference(urn:uuid:26fd15b5-6e12-4415-8372-0a56f65b0209)
* event.code = $v3-ActClass#PCPR
* event.period.start = "2024-07-01T00:00:00Z"
* event.period.end = "2024-07-01T00:00:00Z"

* section[sectionMedications].title = "Medication List"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medication section</div>"
* section[sectionMedications].entry = Reference(urn:uuid:7566033f-57e1-4c66-9b60-62e410537136) 

* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergies and intolerances section</div>"
* section[sectionAllergies].entry = Reference(urn:uuid:aa04d0fa-ec03-44cc-85e1-93ef9646afe9)

* section[sectionProblems].title = "Problem List"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Problem list section</div>"
* section[sectionProblems].entry[+] = Reference(urn:uuid:60367b53-a9de-4ddf-960f-d3730002883a)
* section[sectionProblems].entry[+] = Reference(urn:uuid:a88bdcee-6c68-48c0-b744-c0e99ddba37d)

* section[sectionPastProblems].title = "Past Problems"
* section[sectionPastProblems].code = $loinc#11348-0 "History of Past illness note"
* section[sectionPastProblems].text.status = #generated
* section[sectionPastProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">History of Past Problems Section</div>"
* section[sectionPastProblems].entry[+] = Reference(urn:uuid:c6c6a142-b74b-4242-b447-e29a095c33ce)

* section[sectionImmunizations].title = "History of Immunizations"
* section[sectionImmunizations].code = $loinc#11369-6 "History of Immunization note"
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Immunizations section</div>"
* section[sectionImmunizations].entry[+] = Reference(urn:uuid:96153c5c-42e0-4442-99c8-a66326c43f4b)

* section[sectionProceduresHx].title = "History of Procedures"
* section[sectionProceduresHx].code = $loinc#47519-4 "History of Procedures Document"
* section[sectionProceduresHx].text.status = #generated
* section[sectionProceduresHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">History of Procedures section</div>"
* section[sectionProceduresHx].entry = Reference(urn:uuid:3265dce1-e367-4928-b514-5f5b7d906751)

* section[sectionResults].title = "Diagnostic Results"
* section[sectionResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[sectionResults].text.status = #generated
* section[sectionResults].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results section</div>"
* section[sectionResults].entry[+] = Reference(urn:uuid:baa0331b-564f-4998-9d50-90450ba7e63d)

* section[sectionSocialHistory].title = "Social History"
* section[sectionSocialHistory].code = $loinc#29762-2 "Social history note"
* section[sectionSocialHistory].text.status = #generated
* section[sectionSocialHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Social History </div>"
* section[sectionSocialHistory].entry[+] = Reference(urn:uuid:c2f665bd-b5c3-47b6-9420-db26f23a5c6f)

* section[sectionPregnancyHx].title = "Pregnancy History"
* section[sectionPregnancyHx].code = $loinc#10162-6 "History of Pregnancies Narrative"
* section[sectionPregnancyHx].text.status = #generated
* section[sectionPregnancyHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pregnancy section</div>"
* section[sectionPregnancyHx].entry[+] = Reference(urn:uuid:4970dc83-2268-4570-be57-1672061732ec)

* section[sectionMedicalDevices].title = "Medical Devices"
* section[sectionMedicalDevices].code = $loinc#46264-8 "History of Medical Device Use"
* section[sectionMedicalDevices].text.status = #generated
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results section</div>"
* section[sectionMedicalDevices].entry[+] = Reference(urn:uuid:7f5f388e-e347-4d05-a5e6-5c1d75e720d7)

* section[sectionVitalSigns].title = "Vital Signs"
* section[sectionVitalSigns].code = $loinc#8716-3 "Vital signs note"
* section[sectionVitalSigns].text.status = #generated
* section[sectionVitalSigns].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vital Signs Section</div>"
* section[sectionVitalSigns].entry[+] = Reference(urn:uuid:4d608180-97ce-47ef-826e-ea7d9db17f5a)

* section[sectionPlanOfCare].title = "Plan of Care"
* section[sectionPlanOfCare].code = $loinc#18776-5 "Plan of care note"
* section[sectionPlanOfCare].text.status = #generated
* section[sectionPlanOfCare].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Plan of Care Section</div>"
* section[sectionPlanOfCare].entry[+] = Reference(urn:uuid:5c4d9618-e852-435d-8675-9f9ce4c3423c)

* section[sectionAdvanceDirectives].title = "Advance Directives"
* section[sectionAdvanceDirectives].code = $loinc#42348-3 "Advance healthcare directives"
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No Advanced Directives</div>"

* section[sectionAlerts].title = "Alerts"
* section[sectionAlerts].code = $loinc#104605-1 "Alert"
* section[sectionAlerts].text.status = #generated
* section[sectionAlerts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alerts Section</div>"
* section[sectionAlerts].entry[+] = Reference(urn:uuid:24760e8f-fe48-48d1-a8bc-271c82a5ab2f)

* section[sectionFunctionalStatus].title = "Functional Status"
* section[sectionFunctionalStatus].code = $loinc#47420-5 "Functional status assessment note"
* section[sectionFunctionalStatus].text.status = #generated
* section[sectionFunctionalStatus].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Functional Status Section</div>"
* section[sectionFunctionalStatus].entry[+] = Reference(urn:uuid:03825cce-f3b8-4b56-b5e8-2609d0e9a29a)


Instance: 26fd15b5-6e12-4415-8372-0a56f65b0209
InstanceOf: OrganizationUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
* id = "26fd15b5-6e12-4415-8372-0a56f65b0209"
* identifier.system = "urn:oid:1.1.1.1.1.1.1.3"
* identifier.value = "WHO-CX"
* name = "World Health Organization"

Instance: patient-secondaryUse-pandemnicIPS-example-patient-1-stage-1
InstanceOf: PatientUvIps
Usage: #inline
* id = "7309d4b4-9981-4887-a6e5-33ade1ae9208"
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"
* identifier.system = "urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639"
* identifier.value = "IHEEX-33159"
* active = true
* name.use = #anonymous
* name.text = "PseudoFamily"
* name.family = "PseudoFamily"
* name.given = "PseudoGiven"
* telecom.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* telecom.extension.valueCode = #masked
* gender = #female
* birthDate = "1996-08-16"
* deceasedDateTime = "2024-10-15"
* generalPractitioner = Reference(urn:uuid:e52312c9-2ed2-47ee-8ba5-b795a20501a4) "Yaser, Joseph"

Instance: 5bd1f7cf-8b12-4b25-9025-9cbb7da67e00
InstanceOf: PractitionerUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
* id = "5bd1f7cf-8b12-4b25-9025-9cbb7da67e00"
* identifier[+].use = #official
* identifier[=].system = "urn:oid:2.16.528.1.1007.3.1"
* identifier[=].value = "874635264"
* identifier[+].use = #usual
* identifier[=].system = "urn:oid:2.16.840.1.113883.2.4.6.3"
* identifier[=].value = "567IUI51C154"
* name.use = #official
* name.text = "Heps Simone MD"
* name.family = "Heps"
* name.given = "Simone"
* name.suffix = "MD"
* address.use = #work
* address.line = "Galapagosweg 91"
* address.city = "Den Burg"
* address.postalCode = "9105 PZ"
* address.country = "NLD"
* gender = #female
* birthDate = "1971-11-07"

Instance: e52312c9-2ed2-47ee-8ba5-b795a20501a4
InstanceOf: PractitionerUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
* id = "e52312c9-2ed2-47ee-8ba5-b795a20501a4"
* name.text = "Joseph Yaser"
* name.family = "Joseph"
* name.given = "Yaser"

Instance: 7566033f-57e1-4c66-9b60-62e410537136
InstanceOf: MedicationStatementIPS
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"
* id = "7566033f-57e1-4c66-9b60-62e410537136"
* status = #completed
* medicationCodeableConcept = $sct#116113006 "Oseltamivir phosphate (substance)"
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* effectiveDateTime = "2024-06-16"
* dateAsserted = "2024-06-16"

Instance: 60367b53-a9de-4ddf-960f-d3730002883a
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* id = "60367b53-a9de-4ddf-960f-d3730002883a"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#24484000 "Severe"
* code = $sct#719865001 "Influenza caused by pandemic influenza virus (disorder)"
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* onsetDateTime = "2024-06-15"
* asserter = Reference(urn:uuid:e52312c9-2ed2-47ee-8ba5-b795a20501a4)

Instance: a88bdcee-6c68-48c0-b744-c0e99ddba37d
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* id = "a88bdcee-6c68-48c0-b744-c0e99ddba37d"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#24484000 "Severe"
* code = $sct#370221004 "Severe asthma (disorder)"
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* onsetDateTime = "2006-01-03"
* asserter = Reference(urn:uuid:e52312c9-2ed2-47ee-8ba5-b795a20501a4)

Instance: c6c6a142-b74b-4242-b447-e29a095c33ce
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* id = "c6c6a142-b74b-4242-b447-e29a095c33ce"
* clinicalStatus = $condition-clinical#resolved
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* severity = $sct#24484000 "Severe"
* code = $sct#71620000 "Fracture of femur (disorder)"
* bodySite = $sct#61396006 "Structure of left thigh (body structure)"
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* onsetDateTime = "2023-11-16"
* asserter = Reference(urn:uuid:e52312c9-2ed2-47ee-8ba5-b795a20501a4)

Instance: 3265dce1-e367-4928-b514-5f5b7d906751
InstanceOf: ProcedureUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips"
* id = "3265dce1-e367-4928-b514-5f5b7d906751"
* status = #completed
* code = $sct#480571000146108 "Artificial ventilation using ventilator (regime/therapy)"
* code.text = "Artificial ventilation using ventilator (regime/therapy)"
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* performedDateTime = "2024-06-25"
* bodySite = $sct#39607008 "Lung structure"
* note.text = "Artificial ventilation using ventilaton performed"

Instance: aa04d0fa-ec03-44cc-85e1-93ef9646afe9
InstanceOf: AllergyIntoleranceUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"
* id = "aa04d0fa-ec03-44cc-85e1-93ef9646afe9"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* criticality = #high
* code = $sct#294647003 "Allergy to component of vaccine product containing Influenza virus antigen (finding)"
* patient = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* onsetDateTime = "2020-10-01"
* lastOccurrence = "2020-10-01"
* reaction.manifestation = $sct#271807003 "Rash"
* reaction.severity = #moderate

Instance: baa0331b-564f-4998-9d50-90450ba7e63d
InstanceOf: ObservationResultsLaboratoryPathologyUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-pathology-uv-ips"
* id = "baa0331b-564f-4998-9d50-90450ba7e63d"
* status = #final
* code = $loinc#109691-6 "Influenza virus A Ag [Measurement] in Nasopharynx"
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* effectiveDateTime = "2024-06-15"
* performer = Reference(urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00)
* valueQuantity.value = 13.2
* valueQuantity.unit = "g/dL"
* interpretation = $v3-ObservationInterpretation#H "High"
* note.text = "Positive for Influenza A"

Instance: 96153c5c-42e0-4442-99c8-a66326c43f4b
InstanceOf: ImmunizationUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
* id = "96153c5c-42e0-4442-99c8-a66326c43f4b"
* status = #completed
* vaccineCode = $sct#1181000221105 "Vaccine product containing only Influenza virus antigen (medicinal product)"
* vaccineCode.text = "Invluenza Vaccination"
* patient = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* occurrenceDateTime = "2024-05-01"
* site = $v3-ActSite#LA "left arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* performer.function = $v2-0443#OP
* performer.actor = Reference(urn:uuid:e52312c9-2ed2-47ee-8ba5-b795a20501a4)
* protocolApplied.targetDisease = $sct#719865001 "Influenza caused by pandemic influenza virus (disorder)"
* protocolApplied.doseNumberPositiveInt = 2

Instance: c2f665bd-b5c3-47b6-9420-db26f23a5c6f
InstanceOf: PastOrPresentJob
Usage: #inline
* meta.profile = "https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-PastOrPresentJob"
* id = "c2f665bd-b5c3-47b6-9420-db26f23a5c6f"
* status = #final
* category = $observation-category#social-history "Social History"
* category.text = "Social History"
* code = $loinc#11341-5 "History of Occupation"
* code.text = "History of Occupation"
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* effectivePeriod.start = "2016-03-10"
* effectivePeriod.end = "2020-04-14"
* issued = "2024-06-06T13:28:53+02:00"
* performer = Reference(urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00)
* valueCodeableConcept = $ISCO08#5321 "Health Care Assistants"
* component.code = $loinc#86188-0 "History of Occupation Industry"
* component.valueCodeableConcept = $ISICRev4#871 "Residential nursing care facilities"

Instance: 4970dc83-2268-4570-be57-1672061732ec
InstanceOf: ObservationPregnancyStatusUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"
* id = "4970dc83-2268-4570-be57-1672061732ec"
* status = #final
* code = $loinc#82810-3 "Pregnancy status"
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* effectiveDateTime = "2014-02-01"
* performer = Reference(urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00)
* valueCodeableConcept = $sct#77386006 "Pregnant"
* hasMember = Reference(urn:uuid:4f65c1c7-854d-49f5-866e-3770e5ea4c76)

Instance: 4f65c1c7-854d-49f5-866e-3770e5ea4c76
InstanceOf: ObservationPregnancyEddUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips"
* id = "4f65c1c7-854d-49f5-866e-3770e5ea4c76"
* status = #final
* code = $loinc#11778-8 "Delivery date Estimated"
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* effectiveDateTime = "2024-06-02"
* performer = Reference(urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00)
* valueDateTime = "2024-12-01"

Instance: 7f5f388e-e347-4d05-a5e6-5c1d75e720d7
InstanceOf: DeviceUseStatementUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips"
* id = "7f5f388e-e347-4d05-a5e6-5c1d75e720d7"
* status = #completed
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* timingDateTime = "2014-02-01"
* device = Reference(urn:uuid:fdf540ad-627a-4fdf-a3c5-6726efdac9f1)
* note.text = "Device data required"

Instance: fdf540ad-627a-4fdf-a3c5-6726efdac9f1
InstanceOf: DeviceUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips"
* id = "fdf540ad-627a-4fdf-a3c5-6726efdac9f1"
* type = $sct#787483001 "No known device use"
* patient = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)

Instance: 4d608180-97ce-47ef-826e-ea7d9db17f5a
InstanceOf: vitalsigns
Usage: #inline
* id = "4d608180-97ce-47ef-826e-ea7d9db17f5a"
* status = #final
* code = $loinc#85353-1
* subject.reference = "urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208"
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer.reference = "urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00"
* hasMember[+].reference = "urn:uuid:6c1f0300-6e47-4e21-849e-2d83af56b770"
* hasMember[+].reference = "urn:uuid:10c71b09-00ff-47fa-942c-a99eb2ffce12"
* hasMember[+].reference = "urn:uuid:17e4e74a-5e98-46ab-acc7-b32eb45e0634"
* hasMember[+].reference = "urn:uuid:47a20f92-59a9-49a6-853c-725f7a2ae990"
* hasMember[+].reference = "urn:uuid:e39ed30d-b85c-4809-86c8-102864449557"
* hasMember[+].reference = "urn:uuid:43e735ad-0a17-459c-94f3-22b796544596"

Instance: 6c1f0300-6e47-4e21-849e-2d83af56b770
InstanceOf: vitalsigns
Usage: #inline
* id = "6c1f0300-6e47-4e21-849e-2d83af56b770"
* status = #final
* code = $loinc#8302-2 "Body height"
* subject.reference = "urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208"
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer.reference = "urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00"
* valueQuantity = 71 '[in_i]' "in_i"

Instance: 10c71b09-00ff-47fa-942c-a99eb2ffce12
InstanceOf: vitalsigns
Usage: #inline
* id = "10c71b09-00ff-47fa-942c-a99eb2ffce12"
* status = #final
* code = $loinc#29463-7 "Body weight"
* subject.reference = "urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208"
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer.reference = "urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00"
* valueQuantity = 230 '[lb_av]' "lbs"

Instance: 17e4e74a-5e98-46ab-acc7-b32eb45e0634
InstanceOf: vitalsigns
Usage: #inline
* id = "17e4e74a-5e98-46ab-acc7-b32eb45e0634"
* status = #final
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject.reference = "urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208"
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer.reference = "urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00"
* valueQuantity = 32.1 'kg/m2' "kg/m2"

Instance: 47a20f92-59a9-49a6-853c-725f7a2ae990
InstanceOf: vitalsigns
Usage: #inline
* id = "47a20f92-59a9-49a6-853c-725f7a2ae990"
* status = #final
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject.reference = "urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208"
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer.reference = "urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00"
* component[+].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 80 'mm[Hg]' "mm[Hg]"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 130 'mm[Hg]' "mm[Hg]"

Instance: e39ed30d-b85c-4809-86c8-102864449557
InstanceOf: vitalsigns
Usage: #inline
* id = "e39ed30d-b85c-4809-86c8-102864449557"
* status = #final
* code = $loinc#8867-4 "Heart rate"
* subject.reference = "urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208"
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer.reference = "urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00"
* valueQuantity = 80 '/min' "/min"

Instance: 43e735ad-0a17-459c-94f3-22b796544596
InstanceOf: vitalsigns
Usage: #inline
* id = "43e735ad-0a17-459c-94f3-22b796544596"
* status = #final
* code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* subject.reference = "urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208"
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer.reference = "urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00"
* valueQuantity = 85 '%' "%"

Instance: 5c4d9618-e852-435d-8675-9f9ce4c3423c
InstanceOf: CarePlan
Usage: #inline
* id = "5c4d9618-e852-435d-8675-9f9ce4c3423c"
* status = #completed
* intent = #order
* title = "Plan of Care"
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* period.start = "2024-06-16"
* created = "2024-06-16"
* note[+].text = "Treat with antiviral medication for 5 days"
* note[+].text = "Provide Assisted Breathing on Ventilator"

Instance: 24760e8f-fe48-48d1-a8bc-271c82a5ab2f
InstanceOf: FlagAlertUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips"
* id = "24760e8f-fe48-48d1-a8bc-271c82a5ab2f"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/flag-category#clinical
* code = $sct#370221004 "Severe asthma (disorder)"
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)

Instance: 03825cce-f3b8-4b56-b5e8-2609d0e9a29a
InstanceOf: ClinicalImpression
Usage: #inline
//* meta.profile = "http://hl7.org/fhir/StructureDefinition/ClinicalImpression"
* id = "03825cce-f3b8-4b56-b5e8-2609d0e9a29a"
* status = #completed
* code = $sct#105721009 "General problem AND/OR complaint (finding)"
* subject = Reference(urn:uuid:7309d4b4-9981-4887-a6e5-33ade1ae9208)
* effectiveDateTime = "2024-06-16"
* date = "2024-06-16"
* assessor = Reference(urn:uuid:5bd1f7cf-8b12-4b25-9025-9cbb7da67e00)
* finding.itemCodeableConcept = $sct#365112008 "Finding of walking aid use (finding)"