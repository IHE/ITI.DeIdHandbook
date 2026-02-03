Instance: ex-Bundle-secondaryUse-pandemnicIPS-example-patient-1-stage-2
InstanceOf: BundleUvIps
Usage: #example
* id = "6603561c-2888-4355-9df4-23675f6eb458"
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips"
* identifier.system = "urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639"
* identifier.value = "IHEEX-33159"
* type = #document
* timestamp = "2024-10-16T00:00:00Z"
* entry[+].fullUrl = "urn:uuid:5392cf13-ccbd-485c-b81d-8b0695233e95"
* entry[=].resource = 6274d469-7a4d-4a66-a261-e5e7b71af267
* entry[+].fullUrl = "urn:uuid:5bc0c003-a3cd-44f2-b3be-8cb256d0e83a"
* entry[=].resource = 5bc0c003-a3cd-44f2-b3be-8cb256d0e83a
* entry[+].fullUrl = "urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267"
* entry[=].resource = Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-2
* entry[+].fullUrl = "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
* entry[=].resource = fd584c2f-5814-425d-9b00-0a5b1a6effee
* entry[+].fullUrl = "urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28"
* entry[=].resource = 9e57d970-d0ae-4a36-908f-1cad06f94f28
* entry[+].fullUrl = "urn:uuid:0aeb9ee8-4968-4342-b833-080dc1abe7c3"
* entry[=].resource = 0aeb9ee8-4968-4342-b833-080dc1abe7c3
* entry[+].fullUrl = "urn:uuid:c86543b7-4002-4ba6-9a9b-aaa4ecf01b7c"
* entry[=].resource = c86543b7-4002-4ba6-9a9b-aaa4ecf01b7c
* entry[+].fullUrl = "urn:uuid:b25745c5-e5de-446f-8bac-3baff9e75270"
* entry[=].resource = b25745c5-e5de-446f-8bac-3baff9e75270
* entry[+].fullUrl = "urn:uuid:b066f5b5-fe10-4f8b-8341-bf3a227e15c1"
* entry[=].resource = b066f5b5-fe10-4f8b-8341-bf3a227e15c1
* entry[+].fullUrl = "urn:uuid:057e5b9c-89c7-411d-ad11-92114df5d287"
* entry[=].resource = 057e5b9c-89c7-411d-ad11-92114df5d287
* entry[+].fullUrl = "urn:uuid:b2a55f80-c7f9-4d49-8023-226b2e735445"
* entry[=].resource = b2a55f80-c7f9-4d49-8023-226b2e735445
* entry[+].fullUrl = "urn:uuid:c76c4f38-de14-4578-8fa6-ec6aad88c4ee"
* entry[=].resource = c76c4f38-de14-4578-8fa6-ec6aad88c4ee
* entry[+].fullUrl = "urn:uuid:ff4bccb4-b5d4-4e21-b12a-84bf6d04c710"
* entry[=].resource = ff4bccb4-b5d4-4e21-b12a-84bf6d04c710
* entry[+].fullUrl = "urn:uuid:c1f6d2f1-2899-4b68-8f62-f2d18e0766cb"
* entry[=].resource = c1f6d2f1-2899-4b68-8f62-f2d18e0766cb
* entry[+].fullUrl = "urn:uuid:892bc1ee-cea1-490a-b0a4-ef2e3fbfd278"
* entry[=].resource = 892bc1ee-cea1-490a-b0a4-ef2e3fbfd278
* entry[+].fullUrl = "urn:uuid:1499748c-bc94-4a6d-9d4e-d0e90b902411"
* entry[=].resource = 1499748c-bc94-4a6d-9d4e-d0e90b902411
* entry[+].fullUrl = "urn:uuid:c66e2f88-0f51-4e3e-a2fb-94d63930aaa3"
* entry[=].resource = c66e2f88-0f51-4e3e-a2fb-94d63930aaa3
* entry[+].fullUrl = "urn:uuid:60d35c97-adc0-4354-b606-2a582e7fa6b6"
* entry[=].resource = 60d35c97-adc0-4354-b606-2a582e7fa6b6


Instance: 6274d469-7a4d-4a66-a261-e5e7b71af267
InstanceOf: CompositionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips"
* status = #final
* type = $loinc#60591-5
* subject = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
* date = "2024-10-16T00:00:00Z"
* author = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)
* title = "International Patient Summary"
* confidentiality = #N
* custodian = Reference(urn:uuid:5bc0c003-a3cd-44f2-b3be-8cb256d0e83a)
* event.code = $v3-ActClass#PCPR
* event.period.start = "2024-10-16T00:00:00Z"
* event.period.end = "2024-10-16T00:00:00Z"

* section[sectionMedications].title = "Medication List"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medication section</div>"
* section[sectionMedications].entry[+] = Reference(urn:uuid:0aeb9ee8-4968-4342-b833-080dc1abe7c3)

* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergies and intolerances section</div>"
* section[sectionAllergies].entry[+] = Reference(urn:uuid:057e5b9c-89c7-411d-ad11-92114df5d287)

* section[sectionProblems].title = "Problem List"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Problem list section</div>"
* section[sectionProblems].entry[+] = Reference(urn:uuid:c86543b7-4002-4ba6-9a9b-aaa4ecf01b7c)
* section[sectionProblems].entry[+] = Reference(urn:uuid:b25745c5-e5de-446f-8bac-3baff9e75270)

* section[sectionPastProblems].title = "Past Problems"
* section[sectionPastProblems].code = $loinc#11348-0 "History of Past illness note"
* section[sectionPastProblems].text.status = #generated
* section[sectionPastProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">History of Past Problems Section</div>"
* section[sectionPastProblems].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld "Information Withheld"

* section[sectionImmunizations].title = "History of Immunizations"
* section[sectionImmunizations].code = $loinc#11369-6 "History of Immunization note"
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Immunizations section</div>"
* section[sectionImmunizations].entry[+] = Reference(urn:uuid:c76c4f38-de14-4578-8fa6-ec6aad88c4ee)

* section[sectionProceduresHx].title = "History of Procedures"
* section[sectionProceduresHx].code = $loinc#47519-4 "History of Procedures Document"
* section[sectionProceduresHx].text.status = #generated
* section[sectionProceduresHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">History of Procedures section</div>"
* section[sectionProceduresHx].entry = Reference(urn:uuid:b066f5b5-fe10-4f8b-8341-bf3a227e15c1)

* section[sectionResults].title = "Diagnostic Results"
* section[sectionResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[sectionResults].text.status = #generated
* section[sectionResults].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results section</div>"
* section[sectionResults].entry[+] = Reference(urn:uuid:b2a55f80-c7f9-4d49-8023-226b2e735445)

* section[sectionSocialHistory].title = "Social History"
* section[sectionSocialHistory].code = $loinc#29762-2 "Social history note"
* section[sectionSocialHistory].text.status = #generated
* section[sectionSocialHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Social History </div>"
* section[sectionSocialHistory].entry[+] = Reference(urn:uuid:ff4bccb4-b5d4-4e21-b12a-84bf6d04c710)

* section[sectionPregnancyHx].title = "Pregnancy History"
* section[sectionPregnancyHx].code = $loinc#10162-6 "History of Pregnancies Narrative"
* section[sectionPregnancyHx].text.status = #generated
* section[sectionPregnancyHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pregnancy section</div>"
* section[sectionPregnancyHx].entry[+] = Reference(urn:uuid:c1f6d2f1-2899-4b68-8f62-f2d18e0766cb)

* section[sectionMedicalDevices].title = "Medical Devices"
* section[sectionMedicalDevices].code = $loinc#46264-8 "History of Medical Device Use"
* section[sectionMedicalDevices].text.status = #generated
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results section</div>"
* section[sectionMedicalDevices].entry[+] = Reference(urn:uuid:1499748c-bc94-4a6d-9d4e-d0e90b902411)

* section[sectionVitalSigns].title = "Vital Signs"
* section[sectionVitalSigns].code = $loinc#8716-3 "Vital signs note"
* section[sectionVitalSigns].text.status = #generated
* section[sectionVitalSigns].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vital Signs Section</div>"
* section[sectionVitalSigns].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld "Information Withheld"

* section[sectionPlanOfCare].title = "Plan of Care"
* section[sectionPlanOfCare].code = $loinc#18776-5 "Plan of care note"
* section[sectionPlanOfCare].text.status = #generated
* section[sectionPlanOfCare].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Plan of Care Section</div>"
* section[sectionPlanOfCare].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld "Information Withheld"

* section[sectionAdvanceDirectives].title = "Advance Directives"
* section[sectionAdvanceDirectives].code = $loinc#42348-3 "Advance healthcare directives"
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Advance healthcare directives Information Withheld</div>"
* section[sectionAdvanceDirectives].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld "Information Withheld"

* section[sectionAlerts].title = "Alerts"
* section[sectionAlerts].code = $loinc#104605-1 "Alert"
* section[sectionAlerts].text.status = #generated
* section[sectionAlerts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alerts Section</div>"
* section[sectionAlerts].entry[+] = Reference(urn:uuid:60d35c97-adc0-4354-b606-2a582e7fa6b6)

* section[sectionFunctionalStatus].title = "Functional Status"
* section[sectionFunctionalStatus].code = $loinc#47420-5 "Functional status assessment note"
* section[sectionFunctionalStatus].text.status = #generated
* section[sectionFunctionalStatus].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Functional Status Section</div>"
* section[sectionFunctionalStatus].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld "Information Withheld"

//Instance: 5bc0c003-a3cd-44f2-b3be-8cb256d0e83a
//InstanceOf: OrganizationUvIps
//Usage: #inline
//* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
//* identifier.system = "urn:oid:1.1.1.1.1.1.1.3"
//* identifier.value = "WHO-CX"
//* name = "World Health Organization"

Instance: Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-2
InstanceOf: PatientUvIps
Usage: #example
* id = "6274d469-7a4d-4a66-a261-e5e7b71af267"
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"
* identifier.system = "urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639"
* identifier.value = "IHEEX-33159"
* active = true
* name.text = "PseudoFamily"
* name.family = "PseudoFamily"
* name.given = "PseudoGiven"
* telecom.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* telecom.extension.valueCode = #masked
* gender = #female
* birthDate = "1996-08-16"
* deceasedDateTime = "2024-10-15"
* address.postalCode = "3210"
* generalPractitioner = Reference(Practitioner/9e57d970-d0ae-4a36-908f-1cad06f94f28)

//Instance: fd584c2f-5814-425d-9b00-0a5b1a6effee
//InstanceOf: PractitionerUvIps
//Usage: #inline
//* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
//* identifier[+].use = #official
//* identifier[=].system = "urn:oid:2.16.528.1.1007.3.1"
//* identifier[=].value = "874635264"
//* identifier[+].use = #usual
//* identifier[=].system = "urn:oid:2.16.840.1.113883.2.4.6.3"
//* identifier[=].value = "567IUI51C154"
//* name.use = #official
//* name.text = "Heps Simone MD"
//* name.family = "Heps"
//* name.given = "Simone"
//* name.suffix = "MD"
//* address.use = #work
//* address.line = "Galapagosweg 91"
//* address.city = "Den Burg"
//* address.postalCode = "9105 PZ"
//* address.country = "NLD"
//* gender = #female
//* birthDate = "1971-11-07"

//Instance: 9e57d970-d0ae-4a36-908f-1cad06f94f28
//InstanceOf: PractitionerUvIps
//Usage: #inline
//* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
//* name.text = "Joseph Yaser"
//* name.family = "Joseph"
//* name.given = "Yaser"

Instance: 0aeb9ee8-4968-4342-b833-080dc1abe7c3
InstanceOf: MedicationStatementIPS
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"
* status = #completed
* medicationCodeableConcept = $sct#116113006 "Oseltamivir phosphate (substance)"
* subject = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
* effectiveDateTime = "2024-10-01"
* dateAsserted = "2024-10-01"

Instance: c86543b7-4002-4ba6-9a9b-aaa4ecf01b7c
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#24484000 "Severe"
* code = $sct#719865001 "Influenza caused by pandemic influenza virus (disorder)"
* subject = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
* onsetDateTime = "2024-10-30"
* asserter = Reference(urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28)

Instance: b25745c5-e5de-446f-8bac-3baff9e75270
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#24484000 "Severe"
* code = $sct#370221004 "Severe asthma (disorder)"
* subject = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
* onsetDateTime = "2006-01-03"
* asserter = Reference(urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28)


Instance: b066f5b5-fe10-4f8b-8341-bf3a227e15c1
InstanceOf: ProcedureUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips"
* status = #completed
* code = $sct#480571000146108 "Artificial ventilation using ventilator (regime/therapy)"
* code.text = "Artificial ventilation using ventilator (regime/therapy)"
* subject = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
* performedDateTime = "2024-10-10"
* bodySite = $sct#39607008 "Lung structure"
* note.text = "Artificial ventilation using ventilaton performed"

Instance: 057e5b9c-89c7-411d-ad11-92114df5d287
InstanceOf: AllergyIntoleranceUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* criticality = #high
* code = $sct#294647003 "Allergy to component of vaccine product containing Influenza virus antigen (finding)"
* patient = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
* onsetDateTime = "2020-10-01"
* lastOccurrence = "2020-10-01"
* reaction.manifestation = $sct#271807003 "Rash"
* reaction.severity = #moderate

Instance: b2a55f80-c7f9-4d49-8023-226b2e735445
InstanceOf: ObservationResultsLaboratoryPathologyUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-pathology-uv-ips"
* status = #final

* code = $loinc#109691-6 "Influenza virus A Ag [Measurement] in Nasopharynx"
* subject = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
* effectiveDateTime = "2024-10-30"
* performer = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)
* valueQuantity.value = 13.2
* valueQuantity.unit = "g/dL"
* interpretation = $v3-ObservationInterpretation#H "High"
* note.text = "Positive for Influenza A"

Instance: c76c4f38-de14-4578-8fa6-ec6aad88c4ee
InstanceOf: ImmunizationUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
* status = #completed
* vaccineCode = $sct#1181000221105 "Vaccine product containing only Influenza virus antigen (medicinal product)"
* vaccineCode.text = "Invluenza Vaccination"
* patient = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
* occurrenceDateTime = "2024-08-16"
* site = $v3-ActSite#LA "left arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* performer.function = $v2-0443#OP
* performer.actor = Reference(urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28)
* protocolApplied.targetDisease = $sct#719865001 "Influenza caused by pandemic influenza virus (disorder)"
* protocolApplied.doseNumberPositiveInt = 2

Instance: ff4bccb4-b5d4-4e21-b12a-84bf6d04c710
InstanceOf: PastOrPresentJob
Usage: #inline
* meta.profile = "https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-PastOrPresentJob"
* status = #final
* category = $observation-category#social-history "Social History"
* category.text = "Social History"
* code = $loinc#11341-5 "History of Occupation"
* code.text = "History of Occupation"
* subject = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
* effectivePeriod.start = "2016-03-10"
* effectivePeriod.end = "2020-04-14"
* issued = "2024-10-21T13:28:53+02:00"
* performer = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)
* valueCodeableConcept = $ISCO08#5321 "Health Care Assistants"
* component.code = $loinc#86188-0 "History of Occupation Industry"
* component.valueCodeableConcept = $ISICRev4#871 "Residential nursing care facilities"

Instance: c1f6d2f1-2899-4b68-8f62-f2d18e0766cb
InstanceOf: ObservationPregnancyStatusUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"
* status = #final
* code = $loinc#82810-3 "Pregnancy status"
* subject = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
* effectiveDateTime = "2014-02-01"
* performer = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)
* valueCodeableConcept = $sct#77386006 "Pregnant"
* hasMember = Reference(urn:uuid:892bc1ee-cea1-490a-b0a4-ef2e3fbfd278)

Instance: 892bc1ee-cea1-490a-b0a4-ef2e3fbfd278
InstanceOf: ObservationPregnancyEddUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips"
* status = #final
* code = $loinc#11778-8 "Delivery date Estimated"
* subject = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
* effectiveDateTime = "2024-10-17"
* performer = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)
* valueDateTime = "2025-03-18"

Instance: 1499748c-bc94-4a6d-9d4e-d0e90b902411
InstanceOf: DeviceUseStatementUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips"
* status = #completed
* subject = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
* timingDateTime = "2014-02-01"
* device = Reference(urn:uuid:c66e2f88-0f51-4e3e-a2fb-94d63930aaa3)
* note.text = "Device data required"

Instance: c66e2f88-0f51-4e3e-a2fb-94d63930aaa3
InstanceOf: DeviceUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips"
* type = $sct#787483001 "No known device use"
* patient = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)

Instance: 60d35c97-adc0-4354-b606-2a582e7fa6b6
InstanceOf: FlagAlertUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/flag-category#clinical
* code = $sct#370221004 "Severe asthma (disorder)"
* subject = Reference(urn:uuid:6274d469-7a4d-4a66-a261-e5e7b71af267)
