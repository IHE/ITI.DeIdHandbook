Alias: $loinc = http://loinc.org
Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $sct = http://snomed.info/sct
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $v3-ActSite = http://terminology.hl7.org/CodeSystem/v3-ActSite
Alias: $v3-RouteOfAdministration = http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration
Alias: $v2-0443 = http://terminology.hl7.org/CodeSystem/v2-0443
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $ISCO08 = https://profiles.ihe.net/PCC/ODH/CodeSystem/ISCO08
Alias: $ISICRev4 = https://profiles.ihe.net/PCC/ODH/CodeSystem/ISICRev4

Instance: secondaryUse-pandemnicIPS-example-patient-1
InstanceOf: Bundle
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

Instance: d174bd1a-b368-41e6-83a2-af77f2b3c60f
InstanceOf: CompositionUvIps
Usage: #example
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
* birthDate = "1956-09-30"
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
* medicationCodeableConcept = $sct#395802006 "Mometasone furoate (substance)"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* effectiveDateTime = "2014-02-01"
* dateAsserted = "2014-02-22"

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
* onsetDateTime = "2016-05-25"
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
InstanceOf: AllergyIntoleranceUvIps
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
InstanceOf: Observation
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
* vaccineCode = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* vaccineCode.text = "Comirnaty"
* patient = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* occurrenceDateTime = "2024-05-01"
* site = $v3-ActSite#LA "left arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* performer.function = $v2-0443#OP
* performer.actor = Reference(urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28)
* protocolApplied.targetDisease = $sct#840539006 "COVID-19"
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
* valueCodeableConcept = $ISCO08#5321 "Health Care Assistants"
* component.code = $loinc#86188-0 "History of Occupation Industry"
* component.valueCodeableConcept = $ISICRev4#871 "Residential nursing care facilities"
* performer = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)

Instance: 525840ed-762d-44c5-a0bf-bac7a275ad80
InstanceOf: ObservationPregnancyStatusUvIps
Usage: #inline
* status = #final
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* code = $loinc#82810-3 "Pregnancy status"
* valueCodeableConcept = $sct#77386006 "Pregnant"
* hasMember = Reference(urn:uuid:b8b80efb-eb42-4eeb-b308-86a465d0ab7a)
* effectiveDateTime = "2014-02-01"
* performer = Reference(urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee)

Instance: b8b80efb-eb42-4eeb-b308-86a465d0ab7a
InstanceOf: ObservationPregnancyEddUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips"
* status = #final
* code = $loinc#11778-8 "Delivery date Estimated"
* subject = Reference(urn:uuid:d174bd1a-b368-41e6-83a2-af77f2b3c60f)
* effectiveDateTime = "2014-02-01"
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