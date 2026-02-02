Instance: secondaryUse-pandemnicIPS-example-patient-1
InstanceOf: BundleUvIps
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips"
* identifier.system = "urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639"
* identifier.value = "IHEEX-33159"
* type = #document
* timestamp = "2024-07-01T00:00:00Z"
* entry[+].fullUrl = "urn:uuid:5392cf13-ccbd-485c-b81d-8b0695233e95"
* entry[=].resource = d174bd1a-b368-41e6-83a2-af77f2b3c60f
* entry[+].fullUrl = "urn:uuid:5bc0c003-a3cd-44f2-b3be-8cb256d0e83a"
* entry[=].resource = 5bc0c003-a3cd-44f2-b3be-8cb256d0e83a
* entry[+].fullUrl = "urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f"
* entry[=].resource = Ex-patient-for-secondaryUse-pandemnicIPS-example-patient-1
* entry[+].fullUrl = "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
* entry[=].resource = fd584c2f-5814-425d-9b00-0a5b1a6effee
* entry[+].fullUrl = "urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28"
* entry[=].resource = 9e57d970-d0ae-4a36-908f-1cad06f94f28
* entry[+].fullUrl = "urn:uuid:dffca459-b71b-41ec-a0a2-077310d64d92"
* entry[=].resource = dffca459-b71b-41ec-a0a2-077310d64d92
* entry[+].fullUrl = "urn:uuid:f2acb378-5c29-4541-b0c0-953b53d61d05"
* entry[=].resource = f2acb378-5c29-4541-b0c0-953b53d61d05
* entry[+].fullUrl = "urn:uuid:fab09f14-d6b9-4bd4-a03b-836568f9706a"
* entry[=].resource = fab09f14-d6b9-4bd4-a03b-836568f9706a
* entry[+].fullUrl = "urn:uuid:22f96a81-b119-4150-bfd2-ffe8ea48cdbb"
* entry[=].resource = 22f96a81-b119-4150-bfd2-ffe8ea48cdbb
* entry[+].fullUrl = "urn:uuid:402afc3f-318f-4a48-9d79-0cab913d7efd"
* entry[=].resource = 402afc3f-318f-4a48-9d79-0cab913d7efd
* entry[+].fullUrl = "urn:uuid:b06be658-3d84-4b1b-be48-6fac0e5427c6"
* entry[=].resource = b06be658-3d84-4b1b-be48-6fac0e5427c6
* entry[+].fullUrl = "urn:uuid:e4040d7c-03f5-4e2e-9cfe-3618899aa777"
* entry[=].resource = e4040d7c-03f5-4e2e-9cfe-3618899aa777
* entry[+].fullUrl = "urn:uuid:7925d1b8-f0b2-49d8-b4a0-68f1b9ae238a"
* entry[=].resource = 7925d1b8-f0b2-49d8-b4a0-68f1b9ae238a
* entry[+].fullUrl = "urn:uuid:50a342f1-e715-43f9-bf43-30f219e77560"
* entry[=].resource = 50a342f1-e715-43f9-bf43-30f219e77560
* entry[+].fullUrl = "urn:uuid:525840ed-762d-44c5-a0bf-bac7a275ad80"
* entry[=].resource = 525840ed-762d-44c5-a0bf-bac7a275ad80
* entry[+].fullUrl = "urn:uuid:b8b80efb-eb42-4eeb-b308-86a465d0ab7a"
* entry[=].resource = b8b80efb-eb42-4eeb-b308-86a465d0ab7a
* entry[+].fullUrl = "urn:uuid:8064d9f4-4b5f-4719-9189-00ec8ef59ec6"
* entry[=].resource = 8064d9f4-4b5f-4719-9189-00ec8ef59ec6
* entry[+].fullUrl = "urn:uuid:25a63f47-1f87-42f6-ba4c-c6887f4db418"
* entry[=].resource = 25a63f47-1f87-42f6-ba4c-c6887f4db418
* entry[+].fullUrl = "urn:uuid:0ce67e34-6c8f-4a69-9bb1-1c721635bb84"
* entry[=].resource = 0ce67e34-6c8f-4a69-9bb1-1c721635bb84
* entry[+].fullUrl = "urn:uuid:176ae1b5-0e8f-415f-8ea9-a58221f4fbee"
* entry[=].resource = 176ae1b5-0e8f-415f-8ea9-a58221f4fbee 
* entry[+].fullUrl = "urn:uuid:f44c6b4b-53f4-49bb-a251-521379991ce0"
* entry[=].resource = f44c6b4b-53f4-49bb-a251-521379991ce0
* entry[+].fullUrl = "urn:uuid:3c297c4b-019a-4284-b667-cfd8666d6aeb"
* entry[=].resource = 3c297c4b-019a-4284-b667-cfd8666d6aeb


Instance: d174bd1a-b368-41e6-83a2-af77f2b3c60f
InstanceOf: CompositionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips"
* status = #final
* type = $loinc#60591-5
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* date = "2024-07-01T00:00:00Z"
* author = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)
* title = "International Patient Summary"
* confidentiality = #N
* custodian = Reference(urn:uuid:5bc0c003-a3cd-44f2-b3be-8cb256d0e83a)
* event.code = $v3-ActClass#PCPR
* event.period.start = "2024-07-01T00:00:00Z"
* event.period.end = "2024-07-01T00:00:00Z"

* section[sectionMedications].title = "Medication List"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medication section</div>"
* section[sectionMedications].entry[+] = Reference(urn:uuid:dffca459-b71b-41ec-a0a2-077310d64d92)

* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergies and intolerances section</div>"
* section[sectionAllergies].entry[+] = Reference(urn:uuid:b06be658-3d84-4b1b-be48-6fac0e5427c6)

* section[sectionProblems].title = "Problem List"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Problem list section</div>"
* section[sectionProblems].entry[+] = Reference(urn:uuid:f2acb378-5c29-4541-b0c0-953b53d61d05)
* section[sectionProblems].entry[+] = Reference(urn:uuid:fab09f14-d6b9-4bd4-a03b-836568f9706a)

* section[sectionPastProblems].title = "Past Problems"
* section[sectionPastProblems].code = $loinc#11348-0 "History of Past illness note"
* section[sectionPastProblems].text.status = #generated
* section[sectionPastProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">History of Past Problems Section</div>"
* section[sectionPastProblems].entry[+] = Reference(urn:uuid:22f96a81-b119-4150-bfd2-ffe8ea48cdbb)

* section[sectionImmunizations].title = "History of Immunizations"
* section[sectionImmunizations].code = $loinc#11369-6 "History of Immunization note"
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Immunizations section</div>"
* section[sectionImmunizations].entry[+] = Reference(urn:uuid:7925d1b8-f0b2-49d8-b4a0-68f1b9ae238a)

* section[sectionProceduresHx].title = "History of Procedures"
* section[sectionProceduresHx].code = $loinc#47519-4 "History of Procedures Document"
* section[sectionProceduresHx].text.status = #generated
* section[sectionProceduresHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">History of Procedures section</div>"
* section[sectionProceduresHx].entry = Reference(urn:uuid:402afc3f-318f-4a48-9d79-0cab913d7efd)

* section[sectionResults].title = "Diagnostic Results"
* section[sectionResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[sectionResults].text.status = #generated
* section[sectionResults].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results section</div>"
* section[sectionResults].entry[+] = Reference(urn:uuid:e4040d7c-03f5-4e2e-9cfe-3618899aa777)

* section[sectionSocialHistory].title = "Social History"
* section[sectionSocialHistory].code = $loinc#29762-2 "Social history note"
* section[sectionSocialHistory].text.status = #generated
* section[sectionSocialHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Social History </div>"
* section[sectionSocialHistory].entry[+] = Reference(urn:uuid:50a342f1-e715-43f9-bf43-30f219e77560)

* section[sectionPregnancyHx].title = "Pregnancy History"
* section[sectionPregnancyHx].code = $loinc#10162-6 "History of Pregnancies Narrative"
* section[sectionPregnancyHx].text.status = #generated
* section[sectionPregnancyHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pregnancy section</div>"
* section[sectionPregnancyHx].entry[+] = Reference(urn:uuid:525840ed-762d-44c5-a0bf-bac7a275ad80)

* section[sectionMedicalDevices].title = "Medical Devices"
* section[sectionMedicalDevices].code = $loinc#46264-8 "History of Medical Device Use"
* section[sectionMedicalDevices].text.status = #generated
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results section</div>"
* section[sectionMedicalDevices].entry[+] = Reference(urn:uuid:8064d9f4-4b5f-4719-9189-00ec8ef59ec6)

* section[sectionVitalSigns].title = "Vital Signs"
* section[sectionVitalSigns].code = $loinc#8716-3 "Vital signs note"
* section[sectionVitalSigns].text.status = #generated
* section[sectionVitalSigns].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vital Signs Section</div>"
* section[sectionVitalSigns].entry[+] = Reference(urn:uuid:0ce67e34-6c8f-4a69-9bb1-1c721635bb84)

* section[sectionPlanOfCare].title = "Plan of Care"
* section[sectionPlanOfCare].code = $loinc#18776-5 "Plan of care note"
* section[sectionPlanOfCare].text.status = #generated
* section[sectionPlanOfCare].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Plan of Care Section</div>"
* section[sectionPlanOfCare].entry[+] = Reference(urn:uuid:176ae1b5-0e8f-415f-8ea9-a58221f4fbee)

* section[sectionAdvanceDirectives].title = "Advance Directives"
* section[sectionAdvanceDirectives].code = $loinc#42348-3 "Advance healthcare directives"
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No Advanced Directives</div>"

* section[sectionAlerts].title = "Alerts"
* section[sectionAlerts].code = $loinc#104605-1 "Alert"
* section[sectionAlerts].text.status = #generated
* section[sectionAlerts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alerts Section</div>"
* section[sectionAlerts].entry[+] = Reference(urn:uuid:f44c6b4b-53f4-49bb-a251-521379991ce0)

* section[sectionFunctionalStatus].title = "Functional Status"
* section[sectionFunctionalStatus].code = $loinc#47420-5 "Functional status assessment note"
* section[sectionFunctionalStatus].text.status = #generated
* section[sectionFunctionalStatus].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Functional Status Section</div>"
* section[sectionFunctionalStatus].entry[+] = Reference(urn:uuid:3c297c4b-019a-4284-b667-cfd8666d6aeb)

Instance: 5bc0c003-a3cd-44f2-b3be-8cb256d0e83a
InstanceOf: OrganizationUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
* identifier.system = "urn:oid:1.1.1.1.1.1.1.3"
* identifier.value = "WHO-CX"
* name = "World Health Organization"

Instance: Ex-patient-for-secondaryUse-pandemnicIPS-example-patient-1
InstanceOf: PatientUvIps
Usage: #example
* id = "d174bd1a-b368-41e6-83a2-af77f2b3c60f"
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"
* identifier.system = "urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639"
* identifier.value = "IHEEX-33159"
* active = true
* name.text = "Patricia JORDANA"
* name.family = "JORDANA"
* name.given = "Patricia"
* telecom.system = #phone
* telecom.value = "07 850 9900"
* telecom.use = #mobile
* gender = #female
* birthDate = "1996-05-01"
* deceasedDateTime = "2024-06-30"
* generalPractitioner = Reference(urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28) "Yaser, Joseph"

Instance: fd584c2f-5814-425d-9b00-0a5b1a6effee
InstanceOf: PractitionerUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
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

Instance: 9e57d970-d0ae-4a36-908f-1cad06f94f28
InstanceOf: PractitionerUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
* name.text = "Joseph Yaser"
* name.family = "Joseph"
* name.given = "Yaser"

Instance: dffca459-b71b-41ec-a0a2-077310d64d92
InstanceOf: MedicationStatementIPS
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"
* status = #completed
* medicationCodeableConcept = $sct#116113006 "Oseltamivir phosphate (substance)"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* effectiveDateTime = "2024-06-16"
* dateAsserted = "2024-06-16"

Instance: f2acb378-5c29-4541-b0c0-953b53d61d05
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#24484000 "Severe"
* code = $sct#719865001 "Influenza caused by pandemic influenza virus (disorder)"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* onsetDateTime = "2024-06-15"
* asserter = Reference(urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28)

Instance: fab09f14-d6b9-4bd4-a03b-836568f9706a
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#24484000 "Severe"
* code = $sct#370221004 "Severe asthma (disorder)"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* onsetDateTime = "2006-01-03"
* asserter = Reference(urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28)

Instance: 22f96a81-b119-4150-bfd2-ffe8ea48cdbb
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* clinicalStatus = $condition-clinical#resolved
* verificationStatus = $condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* severity = $sct#24484000 "Severe"
* code = $sct#71620000 "Fracture of femur (disorder)"
* bodySite = $sct#61396006 "Structure of left thigh (body structure)"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* onsetDateTime = "2023-11-16"
* asserter = Reference(urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28)


Instance: 402afc3f-318f-4a48-9d79-0cab913d7efd
InstanceOf: ProcedureUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips"
* status = #completed
* code = $sct#480571000146108 "Artificial ventilation using ventilator (regime/therapy)"
* code.text = "Laparoscopic appendectomy"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* performedDateTime = "2024-06-25"
* bodySite = $sct#39607008 "Lung structure"
* note.text = "Artificial ventilation using ventilaton performed"

Instance: b06be658-3d84-4b1b-be48-6fac0e5427c6
InstanceOf: AllergyIntolerance
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* criticality = #high
* code = $sct#294647003 "Allergy to component of vaccine product containing Influenza virus antigen (finding)"
* patient = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* onsetDateTime = "2020-10-01"
* lastOccurrence = "2020-10-01"
* reaction.manifestation = $sct#271807003 "Rash"
* reaction.severity = #moderate

Instance: e4040d7c-03f5-4e2e-9cfe-3618899aa777
InstanceOf: ObservationResultsLaboratoryPathologyUvIps
Usage: #inline
* status = #final
* code = $loinc#109691-6 "Influenza virus A Ag [Measurement] in Nasopharynx"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* effectiveDateTime = "2024-06-15"
* performer = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)
* valueQuantity.value = 13.2
* valueQuantity.unit = "g/dL"
* interpretation = $v3-ObservationInterpretation#H "High"
* note.text = "Positive for Influenza A"

Instance: 7925d1b8-f0b2-49d8-b4a0-68f1b9ae238a
InstanceOf: ImmunizationUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
* status = #completed
* vaccineCode = $sct#1181000221105 "Vaccine product containing only Influenza virus antigen (medicinal product)"
* vaccineCode.text = "Invluenza Vaccination"
* patient = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* occurrenceDateTime = "2024-05-01"
* site = $v3-ActSite#LA "left arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* performer.function = $v2-0443#OP
* performer.actor = Reference(urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28)
* protocolApplied.targetDisease = $sct#719865001 "Influenza caused by pandemic influenza virus (disorder)"
* protocolApplied.doseNumberPositiveInt = 2

Instance: 50a342f1-e715-43f9-bf43-30f219e77560
InstanceOf: PastOrPresentJob
Usage: #inline
* meta.profile = "https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-PastOrPresentJob"
* status = #final
* category = $observation-category#social-history "Social History"
* category.text = "Social History"
* code = $loinc#11341-5 "History of Occupation"
* code.text = "History of Occupation"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* effectivePeriod.start = "2016-03-10"
* effectivePeriod.end = "2020-04-14"
* issued = "2024-06-06T13:28:53+02:00"
* performer = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)
* valueCodeableConcept = $ISCO08#5321 "Health Care Assistants"
* component.code = $loinc#86188-0 "History of Occupation Industry"
* component.valueCodeableConcept = $ISICRev4#871 "Residential nursing care facilities"

Instance: 525840ed-762d-44c5-a0bf-bac7a275ad80
InstanceOf: ObservationPregnancyStatusUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"
* status = #final
* code = $loinc#82810-3 "Pregnancy status"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* effectiveDateTime = "2014-02-01"
* performer = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)
* valueCodeableConcept = $sct#77386006 "Pregnant"
* hasMember = Reference(urn:uuid:b8b80efb-eb42-4eeb-b308-86a465d0ab7a)

Instance: b8b80efb-eb42-4eeb-b308-86a465d0ab7a
InstanceOf: ObservationPregnancyEddUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips"
* status = #final
* code = $loinc#11778-8 "Delivery date Estimated"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* effectiveDateTime = "2024-06-02"
* performer = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)
* valueDateTime = "2024-12-01"

Instance: 8064d9f4-4b5f-4719-9189-00ec8ef59ec6
InstanceOf: DeviceUseStatementUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips"
* status = #completed
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* timingDateTime = "2014-02-01"
* device = Reference(urn:uuid:25a63f47-1f87-42f6-ba4c-c6887f4db418)
* note.text = "Device data required"

Instance: 25a63f47-1f87-42f6-ba4c-c6887f4db418
InstanceOf: DeviceUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips"
* type = $sct#787483001 "No known device use"
* patient = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)


Instance: 0ce67e34-6c8f-4a69-9bb1-1c721635bb84
InstanceOf: vitalsigns
Usage: #inline
* meta.profile = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* status = http://hl7.org/fhir/observation-status#final
* code = $loinc#85353-1
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)
* component[+].code = $loinc#8302-2 "Body height"
* component[=].valueQuantity = 71 '[in_us]' "in"
* component[+].code = $loinc#3141-9 "Body weight Measured"
* component[=].valueQuantity = 230 '[lb_av]' "lbs"
* component[+].code = $loinc#39156-5 "BMI (Body Mass Index)"
* component[=].valueQuantity = 32.1 '[kg/m2]' "kg/m2"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 130 '[mm[Hg]]' "mm[Hg]"
* component[+].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 80 '[mm[Hg]]' "mm[Hg]"
* component[+].code = $loinc#8867-4 "Heart rate"
* component[=].valueQuantity = 80 '[/min]' "/min"
* component[+].code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* component[=].valueQuantity = 85 '[%]' "%"

Instance: 176ae1b5-0e8f-415f-8ea9-a58221f4fbee
InstanceOf: CarePlan
Usage: #inline
* meta.profile = "http://hl7.org/fhir/StructureDefinition/carePlan"
* status = http://hl7.org/fhir/request-status#completed
* intent = http://hl7.org/fhir/request-intent#order
* title = "Plan of Care"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* period.start = "2024-06-16"
* created = "2024-06-16"
* note[+].text = "Treat with antiviral medication for 5 days" 
* note[+].text = "Provide Assisted Breathing on Ventilator" 

Instance: f44c6b4b-53f4-49bb-a251-521379991ce0
InstanceOf: FlagAlertUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips"
//* flag-priority = http://hl7.org/fhir/flag-priority-code#PM 
* status = http://hl7.org/fhir/flag-status#active
* category = http://terminology.hl7.org/CodeSystem/flag-category#clinical
* code = $sct#370221004 "Severe asthma (disorder)"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)

Instance: 3c297c4b-019a-4284-b667-cfd8666d6aeb
InstanceOf: ClinicalImpression
Usage: #inline
* meta.profile = "http://hl7.org/fhir/StructureDefinition/ClinicalImpression"
* status = http://hl7.org/fhir/event-status#completed
* code = $sct#409586006 "Complaint"
* effectiveDateTime = "2024-06-16"
* date = "2024-06-16"
* assessor = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* finding.itemCodeableConcept = $sct#365112008 "Finding of walking aid use (finding)"


