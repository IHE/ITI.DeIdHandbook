Instance: ex-Bundle-secondaryUse-pandemicIPS-example-patient-1-stage-1
InstanceOf: BundleUvIps
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
* entry[+].fullUrl = "http://example.org/Composition/ex-Composition-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Composition-secondaryUse-pandemicIPS-stage-1
* entry[=].id = "ex-Composition-secondaryUse-pandemicIPS-stage-1"
* entry[+].fullUrl = "http://example.org/Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Patient-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Organization/ex-Organization-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Organization-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Practitioner/ex-Practitioner-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Practitioner-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Practitioner/ex-Practitioner2-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Practitioner2-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/MedicationStatement/ex-MedicationStatement-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-MedicationStatement-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Condition/ex-Condition1-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Condition1-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Condition/ex-Condition2-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Condition2-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Condition/ex-Condition3-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Condition3-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Procedure/ex-Procedure-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Procedure-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/AllergyIntolerance/ex-Allergy-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Allergy-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Observation/ex-Lab-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Lab-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Immunization/ex-Immunization-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Immunization-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Observation/ex-PastPresJob-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-PastPresJob-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Observation/ex-PregStat-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-PregStat-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Observation/ex-EDD-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-EDD-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/DeviceUseStatement/ex-DeviceUse-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-DeviceUse-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Device/ex-Device-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Device-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/CarePlan/ex-CarePlan-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-CarePlan-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Flag/ex-Alert-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-Alert-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/ClinicalImpression/ex-ClinicalImp-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-ClinicalImp-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Observation/ex-VitalSignsPanel-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-VitalSignsPanel-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Observation/ex-VitalSigns-Height-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-VitalSigns-Height-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Observation/ex-VitalSigns-Weight-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-VitalSigns-Weight-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Observation/ex-VitalSigns-BMI-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-VitalSigns-BMI-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Observation/ex-VitalSigns-BP-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-VitalSigns-BP-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Observation/ex-VitalSigns-HeartRate-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-VitalSigns-HeartRate-secondaryUse-pandemicIPS-stage-1
* entry[+].fullUrl = "http://example.org/Observation/ex-VitalSigns-OxygenSaturation-secondaryUse-pandemicIPS-stage-1"
* entry[=].resource = ex-VitalSigns-OxygenSaturation-secondaryUse-pandemicIPS-stage-1

Instance: ex-Composition-secondaryUse-pandemicIPS-stage-1
InstanceOf: CompositionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips"
* id = "ex-Composition-secondaryUse-pandemicIPS-stage-1"
* status = #final
* type = $loinc#60591-5
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* date = "2024-07-01T00:00:00Z"
* author = Reference(Practitioner/ex-Practitioner-secondaryUse-pandemicIPS-stage-1)
* title = "International Patient Summary"
* confidentiality = #N
* custodian = Reference(Organization/ex-Organization-secondaryUse-pandemicIPS-stage-1)
* event.code = $v3-ActClass#PCPR
* event.period.start = "2024-07-01T00:00:00Z"
* event.period.end = "2024-07-01T00:00:00Z"

* section[sectionMedications].title = "Medication List"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medication section</div>"
* section[sectionMedications].entry[+] = Reference(MedicationStatement/ex-MedicationStatement-secondaryUse-pandemicIPS-stage-1)

* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergies and intolerances section</div>"
* section[sectionAllergies].entry[+] = Reference(AllergyIntolerance/ex-Allergy-secondaryUse-pandemicIPS-stage-1)

* section[sectionProblems].title = "Problem List"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Problem list section</div>"
* section[sectionProblems].entry[+] = Reference(Condition/ex-Condition1-secondaryUse-pandemicIPS-stage-1)
* section[sectionProblems].entry[+] = Reference(Condition/ex-Condition2-secondaryUse-pandemicIPS-stage-1)

* section[sectionPastProblems].title = "Past Problems"
* section[sectionPastProblems].code = $loinc#11348-0 "History of Past illness note"
* section[sectionPastProblems].text.status = #generated
* section[sectionPastProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">History of Past Problems Section</div>"
* section[sectionPastProblems].entry[+] = Reference(Condition/ex-Condition3-secondaryUse-pandemicIPS-stage-1)

* section[sectionImmunizations].title = "History of Immunizations"
* section[sectionImmunizations].code = $loinc#11369-6 "History of Immunization note"
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Immunizations section</div>"
* section[sectionImmunizations].entry[+] = Reference(Immunization/ex-Immunization-secondaryUse-pandemicIPS-stage-1)

* section[sectionProceduresHx].title = "History of Procedures"
* section[sectionProceduresHx].code = $loinc#47519-4 "History of Procedures Document"
* section[sectionProceduresHx].text.status = #generated
* section[sectionProceduresHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">History of Procedures section</div>"
* section[sectionProceduresHx].entry[+] = Reference(Procedure/ex-Procedure-secondaryUse-pandemicIPS-stage-1)

* section[sectionResults].title = "Diagnostic Results"
* section[sectionResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[sectionResults].text.status = #generated
* section[sectionResults].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results section</div>"
* section[sectionResults].entry[+] = Reference(Observation/ex-Lab-secondaryUse-pandemicIPS-stage-1)

* section[sectionSocialHistory].title = "Social History"
* section[sectionSocialHistory].code = $loinc#29762-2 "Social history note"
* section[sectionSocialHistory].text.status = #generated
* section[sectionSocialHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Social History </div>"
* section[sectionSocialHistory].entry[+] = Reference(Observation/ex-PastPresJob-secondaryUse-pandemicIPS-stage-1)

* section[sectionPregnancyHx].title = "Pregnancy History"
* section[sectionPregnancyHx].code = $loinc#10162-6 "History of Pregnancies Narrative"
* section[sectionPregnancyHx].text.status = #generated
* section[sectionPregnancyHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pregnancy section</div>"
* section[sectionPregnancyHx].entry[+] = Reference(Observation/ex-PregStat-secondaryUse-pandemicIPS-stage-1)

* section[sectionMedicalDevices].title = "Medical Devices"
* section[sectionMedicalDevices].code = $loinc#46264-8 "History of Medical Device Use"
* section[sectionMedicalDevices].text.status = #generated
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results section</div>"
* section[sectionMedicalDevices].entry[+] = Reference(DeviceUseStatement/ex-DeviceUse-secondaryUse-pandemicIPS-stage-1)

* section[sectionVitalSigns].title = "Vital Signs"
* section[sectionVitalSigns].code = $loinc#8716-3 "Vital signs note"
* section[sectionVitalSigns].text.status = #generated
* section[sectionVitalSigns].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vital Signs Section</div>"
* section[sectionVitalSigns].entry[+] = Reference(Observation/ex-VitalSignsPanel-secondaryUse-pandemicIPS-stage-1)

* section[sectionPlanOfCare].title = "Plan of Care"
* section[sectionPlanOfCare].code = $loinc#18776-5 "Plan of care note"
* section[sectionPlanOfCare].text.status = #generated
* section[sectionPlanOfCare].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Plan of Care Section</div>"
* section[sectionPlanOfCare].entry[+] = Reference(CarePlan/ex-CarePlan-secondaryUse-pandemicIPS-stage-1)

* section[sectionAdvanceDirectives].title = "Advance Directives"
* section[sectionAdvanceDirectives].code = $loinc#42348-3 "Advance healthcare directives"
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No Advanced Directives</div>"

* section[sectionAlerts].title = "Alerts"
* section[sectionAlerts].code = $loinc#104605-1 "Alert"
* section[sectionAlerts].text.status = #generated
* section[sectionAlerts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alerts Section</div>"
* section[sectionAlerts].entry[+] = Reference(Flag/ex-Alert-secondaryUse-pandemicIPS-stage-1)

* section[sectionFunctionalStatus].title = "Functional Status"
* section[sectionFunctionalStatus].code = $loinc#47420-5 "Functional status assessment note"
* section[sectionFunctionalStatus].text.status = #generated
* section[sectionFunctionalStatus].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Functional Status Section</div>"
* section[sectionFunctionalStatus].entry[+] = Reference(ClinicalImpression/ex-ClinicalImp-secondaryUse-pandemicIPS-stage-1)


Instance: ex-Organization-secondaryUse-pandemicIPS-stage-1
InstanceOf: OrganizationUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
* id = "ex-Organization-secondaryUse-pandemicIPS-stage-1"
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

Instance: ex-Patient-secondaryUse-pandemicIPS-stage-1
InstanceOf: PatientUvIps
Usage: #inline
* id = "ex-Patient-secondaryUse-pandemicIPS-stage-1"
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
* address.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* address.extension.valueCode = #masked
* deceasedDateTime = "2024-06-30"
* generalPractitioner = Reference(Practitioner/ex-Practitioner2-secondaryUse-pandemicIPS-stage-1) "Yaser, Joseph"
* maritalStatus = $v3-MaritalStatus#S "Never Married"
* contact.relationship = $v2-0131#U
* contact.relationship.text = "Friend of family"
* contact.name.text = "Joe Smith"

Instance: ex-Practitioner-secondaryUse-pandemicIPS-stage-1
InstanceOf: PractitionerUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
* id = "ex-Practitioner-secondaryUse-pandemicIPS-stage-1"
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

Instance: ex-Practitioner2-secondaryUse-pandemicIPS-stage-1
InstanceOf: PractitionerUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
* id = "ex-Practitioner2-secondaryUse-pandemicIPS-stage-1"
* name.text = "Joseph Yaser"
* name.family = "Joseph"
* name.given = "Yaser"

Instance: ex-MedicationStatement-secondaryUse-pandemicIPS-stage-1
InstanceOf: MedicationStatementIPS
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"
* id = "ex-MedicationStatement-secondaryUse-pandemicIPS-stage-1"
* status = #completed
* medicationCodeableConcept = $sct#116113006 "Oseltamivir phosphate (substance)"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectiveDateTime = "2024-06-16"
* dateAsserted = "2024-06-16"

Instance: ex-Condition1-secondaryUse-pandemicIPS-stage-1
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* id = "ex-Condition1-secondaryUse-pandemicIPS-stage-1"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#24484000 "Severe"
* code = $sct#719865001 "Influenza caused by pandemic influenza virus (disorder)"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* onsetDateTime = "2024-06-15"
* asserter = Reference(Practitioner/ex-Practitioner2-secondaryUse-pandemicIPS-stage-1)

Instance: ex-Condition2-secondaryUse-pandemicIPS-stage-1
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* id = "ex-Condition2-secondaryUse-pandemicIPS-stage-1"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#24484000 "Severe"
* code = $sct#370221004 "Severe asthma (disorder)"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* onsetDateTime = "2006-01-03"
* asserter = Reference(Practitioner/ex-Practitioner2-secondaryUse-pandemicIPS-stage-1)

Instance: ex-Condition3-secondaryUse-pandemicIPS-stage-1
InstanceOf: ConditionUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
* id = "ex-Condition3-secondaryUse-pandemicIPS-stage-1"    
* clinicalStatus = $condition-clinical#resolved
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* severity = $sct#24484000 "Severe"
* code = $sct#71620000 "Fracture of femur (disorder)"
* bodySite = $sct#61396006 "Structure of left thigh (body structure)"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* onsetDateTime = "2023-11-16"
* asserter = Reference(Practitioner/ex-Practitioner2-secondaryUse-pandemicIPS-stage-1)

Instance: ex-Procedure-secondaryUse-pandemicIPS-stage-1
InstanceOf: ProcedureUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips"
* id = "ex-Procedure-secondaryUse-pandemicIPS-stage-1"
* status = #completed
* code = $sct#480571000146108 "Artificial ventilation using ventilator (regime/therapy)"
* code.text = "Artificial ventilation using ventilator (regime/therapy)"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* performedDateTime = "2024-06-25"
* bodySite = $sct#39607008 "Lung structure"
* note.text = "Artificial ventilation using ventilaton performed"

Instance: ex-Allergy-secondaryUse-pandemicIPS-stage-1
InstanceOf: AllergyIntoleranceUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"
* id = "ex-Allergy-secondaryUse-pandemicIPS-stage-1"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* criticality = #high
* code = $sct#294647003 "Allergy to component of vaccine product containing Influenza virus antigen (finding)"
* patient = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* onsetDateTime = "2020-10-01"
* lastOccurrence = "2020-10-01"
* reaction.manifestation = $sct#271807003 "Rash"
* reaction.severity = #moderate

Instance: ex-Lab-secondaryUse-pandemicIPS-stage-1
InstanceOf: ObservationResultsLaboratoryPathologyUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-pathology-uv-ips"
* id = "ex-Lab-secondaryUse-pandemicIPS-stage-1"
* status = #final
* code = $loinc#109691-6 "Influenza virus A Ag [Measurement] in Nasopharynx"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectiveDateTime = "2024-06-15"
* performer = Reference(Practitioner/ex-Practitioner-secondaryUse-pandemicIPS-stage-1)
* valueQuantity.value = 13.2
* valueQuantity.unit = "g/dL"
* interpretation = $v3-ObservationInterpretation#H "High"
* note.text = "Positive for Influenza A"

Instance: ex-Immunization-secondaryUse-pandemicIPS-stage-1
InstanceOf: ImmunizationUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
* id = "ex-Immunization-secondaryUse-pandemicIPS-stage-1"
* status = #completed
* vaccineCode = $sct#1181000221105 "Vaccine product containing only Influenza virus antigen (medicinal product)"
* vaccineCode.text = "Invluenza Vaccination"
* patient = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* occurrenceDateTime = "2024-05-01"
* site = $v3-ActSite#LA "left arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* performer.function = $v2-0443#OP
* performer.actor = Reference(Practitioner/ex-Practitioner2-secondaryUse-pandemicIPS-stage-1)
* protocolApplied.targetDisease = $sct#719865001 "Influenza caused by pandemic influenza virus (disorder)"
* protocolApplied.doseNumberPositiveInt = 2

Instance: ex-PastPresJob-secondaryUse-pandemicIPS-stage-1
InstanceOf: PastOrPresentJob
Usage: #inline
* meta.profile = "https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-PastOrPresentJob"
* id = "ex-PastPresJob-secondaryUse-pandemicIPS-stage-1"
* status = #final
* category = $observation-category#social-history "Social History"
* category.text = "Social History"
* code = $loinc#11341-5 "History of Occupation"
* code.text = "History of Occupation"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectivePeriod.start = "2016-03-10"
* effectivePeriod.end = "2020-04-14"
* issued = "2024-06-06T13:28:53+02:00"
* performer = Reference(Practitioner/ex-Practitioner-secondaryUse-pandemicIPS-stage-1)
* valueCodeableConcept = $ISCO08#5321 "Health Care Assistants"
* component.code = $loinc#86188-0 "History of Occupation Industry"
* component.valueCodeableConcept = $ISICRev4#871 "Residential nursing care facilities"

Instance: ex-PregStat-secondaryUse-pandemicIPS-stage-1
InstanceOf: ObservationPregnancyStatusUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"
* id = "ex-PregStat-secondaryUse-pandemicIPS-stage-1"
* status = #final
* code = $loinc#82810-3 "Pregnancy status"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectiveDateTime = "2014-02-01"
* performer = Reference(Practitioner/ex-Practitioner-secondaryUse-pandemicIPS-stage-1)
* valueCodeableConcept = $sct#77386006 "Pregnant"
* hasMember = Reference(Observation/ex-EDD-secondaryUse-pandemicIPS-stage-1)

Instance: ex-EDD-secondaryUse-pandemicIPS-stage-1
InstanceOf: ObservationPregnancyEddUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips"
* id = "ex-EDD-secondaryUse-pandemicIPS-stage-1"
* status = #final
* code = $loinc#11778-8 "Delivery date Estimated"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectiveDateTime = "2024-06-02"
* performer = Reference(Practitioner/ex-Practitioner-secondaryUse-pandemicIPS-stage-1)
* valueDateTime = "2024-12-01"

Instance: ex-DeviceUse-secondaryUse-pandemicIPS-stage-1
InstanceOf: DeviceUseStatementUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips"
* id = "ex-DeviceUse-secondaryUse-pandemicIPS-stage-1"
* status = #completed
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* timingDateTime = "2014-02-01"
* device = Reference(Device/ex-Device-secondaryUse-pandemicIPS-stage-1)
* note.text = "Device data required"

Instance: ex-Device-secondaryUse-pandemicIPS-stage-1
InstanceOf: DeviceUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips"
* id = "ex-Device-secondaryUse-pandemicIPS-stage-1"
* type = $sct#787483001 "No known device use"
* patient = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)

Instance: ex-VitalSignsPanel-secondaryUse-pandemicIPS-stage-1
InstanceOf: vitalsigns
Usage: #inline
* id = "ex-VitalSignsPanel-secondaryUse-pandemicIPS-stage-1"
* status = #final
* code = $loinc#85353-1 "Vital signs, weight, height, head circumference, oxygen saturation and BMI panel"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer = Reference(Practitioner/ex-Practitioner-secondaryUse-pandemicIPS-stage-1)
* hasMember[+] = Reference(Observation/ex-VitalSigns-Height-secondaryUse-pandemicIPS-stage-1)
* hasMember[+] = Reference(Observation/ex-VitalSigns-Weight-secondaryUse-pandemicIPS-stage-1)
* hasMember[+] = Reference(Observation/ex-VitalSigns-BMI-secondaryUse-pandemicIPS-stage-1)
* hasMember[+] = Reference(Observation/ex-VitalSigns-BP-secondaryUse-pandemicIPS-stage-1)
* hasMember[+] = Reference(Observation/ex-VitalSigns-HeartRate-secondaryUse-pandemicIPS-stage-1)
* hasMember[+] = Reference(Observation/ex-VitalSigns-OxygenSaturation-secondaryUse-pandemicIPS-stage-1)

Instance: ex-VitalSigns-Height-secondaryUse-pandemicIPS-stage-1
InstanceOf: vitalsigns
Usage: #inline
* id = "ex-VitalSigns-Height-secondaryUse-pandemicIPS-stage-1"
* status = #final
* code = $loinc#8302-2 "Body height"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer = Reference(Practitioner/ex-Practitioner2-secondaryUse-pandemicIPS-stage-1)
* valueQuantity = 71 '[in_i]' "in_i"

Instance: ex-VitalSigns-Weight-secondaryUse-pandemicIPS-stage-1
InstanceOf: vitalsigns
Usage: #inline
* id = "ex-VitalSigns-Weight-secondaryUse-pandemicIPS-stage-1"
* status = #final
* code = $loinc#29463-7 "Body weight"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer = Reference(Practitioner/ex-Practitioner2-secondaryUse-pandemicIPS-stage-1)
* valueQuantity = 230 '[lb_av]' "lbs"

Instance: ex-VitalSigns-BMI-secondaryUse-pandemicIPS-stage-1
InstanceOf: vitalsigns
Usage: #inline
* id = "ex-VitalSigns-BMI-secondaryUse-pandemicIPS-stage-1"
* status = #final
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer = Reference(Practitioner/ex-Practitioner2-secondaryUse-pandemicIPS-stage-1)
* valueQuantity = 32.1 'kg/m2' "kg/m2"

Instance: ex-VitalSigns-BP-secondaryUse-pandemicIPS-stage-1
InstanceOf: vitalsigns
Usage: #inline
* id = "ex-VitalSigns-BP-secondaryUse-pandemicIPS-stage-1"
* status = #final
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer = Reference(Practitioner/ex-Practitioner2-secondaryUse-pandemicIPS-stage-1)
* component[+].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 80 'mm[Hg]' "mm[Hg]"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 130 'mm[Hg]' "mm[Hg]"

Instance: ex-VitalSigns-HeartRate-secondaryUse-pandemicIPS-stage-1
InstanceOf: vitalsigns
Usage: #inline
* id = "ex-VitalSigns-HeartRate-secondaryUse-pandemicIPS-stage-1"  
* status = #final
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer = Reference(Practitioner/ex-Practitioner2-secondaryUse-pandemicIPS-stage-1)
* valueQuantity = 80 '/min' "/min"

Instance: ex-VitalSigns-OxygenSaturation-secondaryUse-pandemicIPS-stage-1
InstanceOf: vitalsigns
Usage: #inline
* id = "ex-VitalSigns-OxygenSaturation-secondaryUse-pandemicIPS-stage-1"
* status = #final
* code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectiveDateTime = "2024-06-15T09:44:00+06:00"
* performer = Reference(Practitioner/ex-Practitioner2-secondaryUse-pandemicIPS-stage-1)
* valueQuantity = 85 '%' "%"

Instance: ex-CarePlan-secondaryUse-pandemicIPS-stage-1
InstanceOf: CarePlan
Usage: #inline
* id = "ex-CarePlan-secondaryUse-pandemicIPS-stage-1"
* status = #completed
* intent = #order
* title = "Plan of Care"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* period.start = "2024-06-16"
* created = "2024-06-16"
* note[+].text = "Treat with antiviral medication for 5 days"
* note[+].text = "Provide Assisted Breathing on Ventilator"

Instance: ex-Alert-secondaryUse-pandemicIPS-stage-1
InstanceOf: FlagAlertUvIps
Usage: #inline
* meta.profile[+] = "http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/Flag|4.0.1"
* id = "ex-Alert-secondaryUse-pandemicIPS-stage-1"
//* extension[flag-priority].url = "http://hl7.org/fhir/StructureDefinition/flag-priority"
//* extension[flag-priority].valueCodeableConcept = http://hl7.org/fhir/flag-priority-code#PM "Medium priority"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/flag-category#clinical
* code = $sct#370221004 "Severe asthma (disorder)"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)

Instance: ex-ClinicalImp-secondaryUse-pandemicIPS-stage-1
InstanceOf: ClinicalImpression
Usage: #inline
* id = "ex-ClinicalImp-secondaryUse-pandemicIPS-stage-1"
* status = #completed
* code = $sct#105721009 "General problem AND/OR complaint (finding)"
* subject = Reference(Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1)
* effectiveDateTime = "2024-06-16"
* date = "2024-06-16"
* assessor = Reference(Practitioner/ex-Practitioner-secondaryUse-pandemicIPS-stage-1)
* finding.itemCodeableConcept = $sct#365112008 "Finding of walking aid use (finding)"