Instance: ex-Bundle-secondaryUse-pandemicIPS-example-patient-1-stage-2
InstanceOf: BundleUvIps
Usage: #example
Description: """
The following bundle provides an example view of the sample patient record after applying the approved de-identification methods to the pseudonymized bundle as described in section IPS Data Element Mappings (FHIR). 
This shows:
- Date shifting throughout the bundle (e.g. dates associated with problems, procedures, medications, immunizations, allergies, etc.)
- The Patient's birthdate has been date-shifted forward by 107 days.
- Data omissions, noting the data is omitted in emptyReason as ‘withheld’ at the section level, and as ‘masked’ in dataAbsentReason at the data element level. 
"""
* id = "6603561c-2888-4355-9df4-23675f6eb458"
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips"
* identifier.system = "urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639"
* identifier.value = "IHEEX-33159"
* type = #document
* timestamp = "2024-10-16T00:00:00Z"
* entry[+].fullUrl = "http://example.org/Composition/ex-Composition-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-Composition-secondaryUse-pandemicIPS-stage-2
* entry[=].id = "ex-Composition-secondaryUse-pandemicIPS-stage-2"
* entry[+].fullUrl = "http://example.org/Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-Patient-secondaryUse-pandemicIPS-stage-2
* entry[+].fullUrl = "http://example.org/Organization/ex-OrganizationUvIps-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-OrganizationUvIps-secondaryUse-pandemicIPS-stage-2
* entry[+].fullUrl = "http://example.org/MedicationStatement/ex-MedicationStatement-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-MedicationStatement-secondaryUse-pandemicIPS-stage-2
* entry[+].fullUrl = "http://example.org/Condition/ex-Condition1-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-Condition1-secondaryUse-pandemicIPS-stage-2
* entry[+].fullUrl = "http://example.org/Condition/ex-Condition2-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-Condition2-secondaryUse-pandemicIPS-stage-2
* entry[+].fullUrl = "http://example.org/Procedure/ex-Procedure-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-Procedure-secondaryUse-pandemicIPS-stage-2
* entry[+].fullUrl = "http://example.org/AllergyIntolerance/ex-Allergy-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-Allergy-secondaryUse-pandemicIPS-stage-2
* entry[+].fullUrl = "http://example.org/Observation/ex-Lab-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-Lab-secondaryUse-pandemicIPS-stage-2
* entry[+].fullUrl = "http://example.org/Immunization/ex-Immunization-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-Immunization-secondaryUse-pandemicIPS-stage-2
* entry[+].fullUrl = "http://example.org/Observation/ex-PastPresJob-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-PastPresJob-secondaryUse-pandemicIPS-stage-2
* entry[+].fullUrl = "http://example.org/Observation/ex-PregStat-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-PregStat-secondaryUse-pandemicIPS-stage-2
* entry[+].fullUrl = "http://example.org/Observation/ex-EDD-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-EDD-secondaryUse-pandemicIPS-stage-2
* entry[+].fullUrl = "http://example.org/Flag/ex-Alert-secondaryUse-pandemicIPS-stage-2"
* entry[=].resource = ex-Alert-secondaryUse-pandemicIPS-stage-2


Instance: ex-Composition-secondaryUse-pandemicIPS-stage-2
InstanceOf: CompositionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips"
* id = "ex-Composition-secondaryUse-pandemicIPS-stage-2"
* status = #final
* type = $loinc#60591-5
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2)
* date = "2024-10-16T00:00:00Z"
* author = Reference(Organization/ex-OrganizationUvIps-secondaryUse-pandemicIPS-stage-2)
* title = "International Patient Summary"
* confidentiality = #N
* custodian = Reference(Organization/ex-OrganizationUvIps-secondaryUse-pandemicIPS-stage-2)
* event.code = $v3-ActClass#PCPR
* event.period.start = "2024-10-16T00:00:00Z"
* event.period.end = "2024-10-16T00:00:00Z"

* section[sectionMedications].title = "Medication List"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medication section</div>"
* section[sectionMedications].entry[+] = Reference(MedicationStatement/ex-MedicationStatement-secondaryUse-pandemicIPS-stage-2)

* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergies and intolerances section</div>"
* section[sectionAllergies].entry[+] = Reference(AllergyIntolerance/ex-Allergy-secondaryUse-pandemicIPS-stage-2)

* section[sectionProblems].title = "Problem List"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Problem list section</div>"
* section[sectionProblems].entry[+] = Reference(Condition/ex-Condition1-secondaryUse-pandemicIPS-stage-2)
* section[sectionProblems].entry[+] = Reference(Condition/ex-Condition2-secondaryUse-pandemicIPS-stage-2)

* section[sectionPastProblems].title = "Past Problems"
* section[sectionPastProblems].code = $loinc#11348-0 "History of Past illness note"
* section[sectionPastProblems].text.status = #generated
* section[sectionPastProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">History of Past Problems Section</div>"
* section[sectionPastProblems].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld "Information Withheld"

* section[sectionImmunizations].title = "History of Immunizations"
* section[sectionImmunizations].code = $loinc#11369-6 "History of Immunization note"
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Immunizations section</div>"
* section[sectionImmunizations].entry[+] = Reference(Immunization/ex-Immunization-secondaryUse-pandemicIPS-stage-2)

* section[sectionProceduresHx].title = "History of Procedures"
* section[sectionProceduresHx].code = $loinc#47519-4 "History of Procedures Document"
* section[sectionProceduresHx].text.status = #generated
* section[sectionProceduresHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">History of Procedures section</div>"
* section[sectionProceduresHx].entry[+] = Reference(Procedure/ex-Procedure-secondaryUse-pandemicIPS-stage-2)

* section[sectionResults].title = "Diagnostic Results"
* section[sectionResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[sectionResults].text.status = #generated
* section[sectionResults].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results section</div>"
* section[sectionResults].entry[+] = Reference(Observation/ex-Lab-secondaryUse-pandemicIPS-stage-2)

* section[sectionSocialHistory].title = "Social History"
* section[sectionSocialHistory].code = $loinc#29762-2 "Social history note"
* section[sectionSocialHistory].text.status = #generated
* section[sectionSocialHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Social History </div>"
* section[sectionSocialHistory].entry[+] = Reference(Observation/ex-PastPresJob-secondaryUse-pandemicIPS-stage-2)

* section[sectionPregnancyHx].title = "Pregnancy History"
* section[sectionPregnancyHx].code = $loinc#10162-6 "History of Pregnancies Narrative"
* section[sectionPregnancyHx].text.status = #generated
* section[sectionPregnancyHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pregnancy section</div>"
* section[sectionPregnancyHx].entry[+] = Reference(Observation/ex-PregStat-secondaryUse-pandemicIPS-stage-2)

* section[sectionMedicalDevices].title = "Medical Devices"
* section[sectionMedicalDevices].code = $loinc#46264-8 "History of Medical Device Use"
* section[sectionMedicalDevices].text.status = #generated
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results section</div>"
* section[sectionMedicalDevices].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld "Information Withheld"

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
* section[sectionAlerts].entry[+] = Reference(Flag/ex-Alert-secondaryUse-pandemicIPS-stage-2)

* section[sectionFunctionalStatus].title = "Functional Status"
* section[sectionFunctionalStatus].code = $loinc#47420-5 "Functional status assessment note"
* section[sectionFunctionalStatus].text.status = #generated
* section[sectionFunctionalStatus].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Functional Status Section</div>"
* section[sectionFunctionalStatus].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld "Information Withheld"

Instance: ex-OrganizationUvIps-secondaryUse-pandemicIPS-stage-2
InstanceOf: OrganizationUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
* id = "ex-OrganizationUvIps-secondaryUse-pandemicIPS-stage-2"
* identifier[+].use = #usual
* identifier[=].system = "urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639"
* identifier[=].value = "IHEPCC-20260331"
* identifier[=].period.start = "2026-04-01"
* identifier[=].assigner.display = "IHE International"
* active = true 
* type = http://terminology.hl7.org/CodeSystem/organization-type#edu "Educational Institute"
* name = "IHE International PCC"
* alias = "IHE PCC"
* telecom[+].system = #phone
* telecom[=].value = "+1 630-571-2670"
* telecom[+].system = #email
* telecom[=].value = "pcc@ihe.net"
* address[+].type = #physical
* address[=].text = "820 Jorie Blvd, Suite 200, Oak Brook, IL 60523 USA"
* address[=].line[+] = "820 Jorie Blvd"
* address[=].line[=] = "Suite 200"
* address[=].city = "Oak Brook"
* address[=].district = "DuPage"
* address[=].state = "IL"
* address[=].postalCode = "60523"
* address[=].country = "USA"

Instance: ex-Patient-secondaryUse-pandemicIPS-stage-2
InstanceOf: PatientUvIps
Description: """
Stage 2 de-identification of the patient where the telecom is masked, the address is reduced to the first 3 digits of the postal code, the general practitioner can be seen as masked, and the birthdate has been date-shifted forward by 107 days.
"""
Usage: #example
* id = "ex-Patient-secondaryUse-pandemicIPS-stage-2"
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
* generalPractitioner.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* generalPractitioner.extension.valueCode = #masked
* generalPractitioner.display = "The information is not available due to security, privacy or related reasons." 

Instance: ex-MedicationStatement-secondaryUse-pandemicIPS-stage-2
InstanceOf: MedicationStatementIPS
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"
* id = "ex-MedicationStatement-secondaryUse-pandemicIPS-stage-2"
* status = #completed
* medicationCodeableConcept = $sct#116113006 "Oseltamivir phosphate (substance)"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2)
* effectiveDateTime = "2024-10-01"
* dateAsserted = "2024-10-01"

Instance: ex-Condition1-secondaryUse-pandemicIPS-stage-2
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* id = "ex-Condition1-secondaryUse-pandemicIPS-stage-2"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#24484000 "Severe"
* code = $sct#719865001 "Influenza caused by pandemic influenza virus (disorder)"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2)
* onsetDateTime = "2024-10-30"
* asserter.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* asserter.extension.valueCode = #masked
* asserter.display = "The information is not available due to security, privacy or related reasons." 

Instance: ex-Condition2-secondaryUse-pandemicIPS-stage-2
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* id = "ex-Condition2-secondaryUse-pandemicIPS-stage-2"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#24484000 "Severe"
* code = $sct#370221004 "Severe asthma (disorder)"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2)
* onsetDateTime = "2006-01-03"
* asserter.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* asserter.extension.valueCode = #masked
* asserter.display = "The information is not available due to security, privacy or related reasons." 


Instance: ex-Procedure-secondaryUse-pandemicIPS-stage-2
InstanceOf: ProcedureUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips"
* id = "ex-Procedure-secondaryUse-pandemicIPS-stage-2"
* status = #completed
* code = $sct#480571000146108 "Artificial ventilation using ventilator (regime/therapy)"
* code.text = "Artificial ventilation using ventilator (regime/therapy)"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2)
* performedDateTime = "2024-10-10"
* bodySite = $sct#39607008 "Lung structure"
* note.text = "Artificial ventilation using ventilaton performed"

Instance: ex-Allergy-secondaryUse-pandemicIPS-stage-2
InstanceOf: AllergyIntoleranceUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"
* id = "ex-Allergy-secondaryUse-pandemicIPS-stage-2"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* criticality = #high
* code = $sct#294647003 "Allergy to component of vaccine product containing Influenza virus antigen (finding)"
* patient = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2)
* onsetDateTime = "2020-10-01"
* lastOccurrence = "2020-10-01"
* reaction.manifestation = $sct#271807003 "Rash"
* reaction.severity = #moderate

Instance: ex-Lab-secondaryUse-pandemicIPS-stage-2
InstanceOf: ObservationResultsLaboratoryPathologyUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-pathology-uv-ips"
* id = "ex-Lab-secondaryUse-pandemicIPS-stage-2"
* status = #final
* code = $loinc#109691-6 "Influenza virus A Ag [Measurement] in Nasopharynx"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2)
* effectiveDateTime = "2024-10-30"
* performer.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* performer.extension.valueCode = #masked
* performer.display = "The information is not available due to security, privacy or related reasons."
* valueQuantity.value = 13.2
* valueQuantity.unit = "g/dL"
* interpretation = $v3-ObservationInterpretation#H "High"
* note.text = "Positive for Influenza A"

Instance: ex-Immunization-secondaryUse-pandemicIPS-stage-2
InstanceOf: ImmunizationUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
* id = "ex-Immunization-secondaryUse-pandemicIPS-stage-2"
* status = #completed
* vaccineCode = $sct#1181000221105 "Vaccine product containing only Influenza virus antigen (medicinal product)"
* vaccineCode.text = "Invluenza Vaccination"
* patient = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2)
* occurrenceDateTime = "2024-08-16"
* site = $v3-ActSite#LA "left arm"
* route.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* route.extension.valueCode = #masked
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* performer.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* performer.extension.valueCode = #masked
* performer.actor.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* performer.actor.extension.valueCode = #masked
* performer.actor.display = "The information is not available due to security, privacy or related reasons." 
* protocolApplied.targetDisease.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* protocolApplied.targetDisease.extension.valueCode = #masked
* protocolApplied.doseNumberPositiveInt = 2

Instance: ex-PastPresJob-secondaryUse-pandemicIPS-stage-2
InstanceOf: PastOrPresentJob
Usage: #inline
* meta.profile = "https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-PastOrPresentJob"
* id = "ex-PastPresJob-secondaryUse-pandemicIPS-stage-2"
* status = #final
* category = $observation-category#social-history "Social History"
* category.text = "Social History"
* code = $loinc#11341-5 "History of Occupation"
* code.text = "History of Occupation"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2)
* effectivePeriod.start = "2016-03-10"
* effectivePeriod.end = "2020-04-14"
* issued = "2024-10-21T13:28:53+02:00"
* performer.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* performer.extension.valueCode = #masked
* performer.display = "The information is not available due to security, privacy or related reasons." 
* valueCodeableConcept = $ISCO08#5321 "Health Care Assistants"
* component.code = $loinc#86188-0 "History of Occupation Industry"
* component.valueCodeableConcept = $ISICRev4#871 "Residential nursing care facilities"

Instance: ex-PregStat-secondaryUse-pandemicIPS-stage-2
InstanceOf: ObservationPregnancyStatusUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"
* id = "ex-PregStat-secondaryUse-pandemicIPS-stage-2"
* status = #final
* code = $loinc#82810-3 "Pregnancy status"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2)
* effectiveDateTime = "2014-02-01"
* performer.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* performer.extension.valueCode = #masked
* performer.display = "The information is not available due to security, privacy or related reasons." 
* valueCodeableConcept = $sct#77386006 "Pregnant"
* hasMember = Reference(Observation/ex-EDD-secondaryUse-pandemicIPS-stage-2)

Instance: ex-EDD-secondaryUse-pandemicIPS-stage-2
InstanceOf: ObservationPregnancyEddUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips"
* id = "ex-EDD-secondaryUse-pandemicIPS-stage-2"
* status = #final
* code = $loinc#11778-8 "Delivery date Estimated"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2)
* effectiveDateTime = "2024-10-17"
* performer.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* performer.extension.valueCode = #masked
* performer.display = "The information is not available due to security, privacy or related reasons." 
* valueDateTime = "2025-03-18"

Instance: ex-Alert-secondaryUse-pandemicIPS-stage-2
InstanceOf: FlagAlertUvIps
Usage: #inline
* meta.profile[+] = "http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/Flag|4.0.1"
//* extension[flag-priority].url = "http://hl7.org/fhir/StructureDefinition/flag-priority"
//* extension[flag-priority].valueCodeableConcept = http://hl7.org/fhir/flag-priority-code#PM "Medium priority"
* id = "ex-Alert-secondaryUse-pandemicIPS-stage-2"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/flag-category#clinical
* code = $sct#370221004 "Severe asthma (disorder)"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2)
