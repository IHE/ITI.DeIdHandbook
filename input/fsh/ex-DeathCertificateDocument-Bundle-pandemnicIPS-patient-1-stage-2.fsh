Instance: ex-Bundle-DeathCert-pandemicIPS-VRDR-stage-2
InstanceOf: DeathCertificateDocument
Description: """
The following bundle reflects the sample mortality data after applying the approved de-identification methods to the pseudonymized bundle as described in section IPS Data Element Mappings (FHIR). This shows:
* Date shifting throughout the bundle (applies to the date of death), and
* Data omissions, noting the data is omitted in emptyReason as ‘withheld’ at the section level, and as ‘masked’ in dataAbsentReason at the data element level.

The majority of the death certificate is redacted leaving the remaining data deeded for the study:
* coded cause of death
* coded usual occupation and associated usual industry,
* pseudonymized decedent demographics, including date/time of death
"""
Usage: #example
* id = "fc7b32fe-13b1-42e9-bca1-ff805587d072"
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate-document"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/CertificateNumber"
* identifier.extension[=].valueString = "001621"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier1"
* identifier.extension[=].valueString = "000000000021"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier2"
* identifier.extension[=].valueString = "200000000021"
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2024001621"
* type = #document
* timestamp = "2024-10-16T14:48:35.401641-04:00"
* entry[+].fullUrl = "Composition/ex-Composition-DeathCert-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-Composition-DeathCert-pandemicIPS-VRDR-stage-2
* entry[=].id = "ex-Composition-DeathCert-pandemicIPS-VRDR-stage-2"
* entry[+].fullUrl = "Patient/ex-Decedent-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-Decedent-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "RelatedPerson/ex-DecedentFather-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-DecedentFather-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "RelatedPerson/ex-DecedentMother-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-DecedentMother-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "RelatedPerson/ex-DecedentSpouse-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-DecedentSpouse-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "Observation/ex-DecedentAge-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-DecedentAge-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "Observation/ex-DecedentUsualWork-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-DecedentUsualWork-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "Observation/ex-DecedentPregStat-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-DecedentPregStat-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "Observation/ex-DeathDate-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-DeathDate-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "Observation/ex-RecordAxisCauseOfDeath-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-RecordAxisCauseOfDeath-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "Observation/ex-EntityAxisCauseOfDeath-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-EntityAxisCauseOfDeath-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "Observation/ex-ActivityAtTimeOfDeath-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-ActivityAtTimeOfDeath-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "Observation/ex-CodedRaceAndEthnicity-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-CodedRaceAndEthnicity-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "Observation/ex-ManualUnderlyingCauseOfDeath-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-ManualUnderlyingCauseOfDeath-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "Observation/ex-AutomatedUnderlyingCauseOfDeath-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-AutomatedUnderlyingCauseOfDeath-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "Observation/ex-PlaceOfInjury-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-PlaceOfInjury-pandemicIPS-VRDR-stage-2
* entry[+].fullUrl = "Parameters/ex-CodingStatusValues-pandemicIPS-VRDR-stage-2"
* entry[=].resource = ex-CodingStatusValues-pandemicIPS-VRDR-stage-2

Instance: ex-Composition-DeathCert-pandemicIPS-VRDR-stage-2
InstanceOf: DeathCertificate
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate|3.0.0"
* id = "ex-Composition-DeathCert-pandemicIPS-VRDR-stage-2"
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat"
* extension[=].valueCodeableConcept = $vrdr-filing-format-cs#electronic
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
* extension[=].valueCodeableConcept = $vrdr-replace-status-cs#original
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
* extension[=].valueString = "State Specific Content"
* status = #final
* type = $loinc#64297-5 "Death certificate"
* subject = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* date = "2024-10-16T00:00:00Z"
* author.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* author.extension.valueCode = #masked
* author.display = "The information is not available due to security, privacy or related reasons." 
* title = "Death Certificate"
* attester.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* attester.extension.valueCode = #masked
* event.code = $sct#307930005 "Death certificate (record artifact)"
* event.detail.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* event.detail.extension.valueCode = #masked
* event.detail.display = "The information is not available due to security, privacy or related reasons."  

* section[DecedentDemographics].title = "Decedent Demographics"
* section[DecedentDemographics].code = $vrdr-document-section-cs#DecedentDemographics
* section[DecedentDemographics].entry[+] = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* section[DecedentDemographics].entry[+] = Reference(RelatedPerson/ex-DecedentFather-pandemicIPS-VRDR-stage-2)
* section[DecedentDemographics].entry[+] = Reference(RelatedPerson/ex-DecedentMother-pandemicIPS-VRDR-stage-2)
* section[DecedentDemographics].entry[+] = Reference(RelatedPerson/ex-DecedentSpouse-pandemicIPS-VRDR-stage-2)
* section[DecedentDemographics].entry[+] = Reference(Observation/ex-DecedentAge-pandemicIPS-VRDR-stage-2)
* section[DecedentDemographics].entry[+] = Reference(Observation/ex-DecedentUsualWork-pandemicIPS-VRDR-stage-2)

* section[DeathInvestigation].title = "Death Investigation"
* section[DeathInvestigation].code = $vrdr-document-section-cs#DeathInvestigation
* section[DeathInvestigation].entry[+] = Reference(Observation/ex-DecedentPregStat-pandemicIPS-VRDR-stage-2)
* section[DeathInvestigation].entry[+] = Reference(Observation/ex-DeathDate-pandemicIPS-VRDR-stage-2)

* section[DeathCertification].title = "Death Certification"
* section[DeathCertification].code = $vrdr-document-section-cs#DeathCertification
* section[DeathCertification].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld "Information Withheld"

* section[DecedentDisposition].title = "Decedent Disposition"
* section[DecedentDisposition].code = $vrdr-document-section-cs#DecedentDisposition
* section[DecedentDisposition].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld "Information Withheld"

* section[CodedContent].title = "Coded Content"
* section[CodedContent].code = $vrdr-document-section-cs#CodedContent
* section[CodedContent].entry[+] = Reference(Observation/ex-ActivityAtTimeOfDeath-pandemicIPS-VRDR-stage-2)
* section[CodedContent].entry[+] = Reference(Observation/ex-PlaceOfInjury-pandemicIPS-VRDR-stage-2)
* section[CodedContent].entry[+] = Reference(Observation/ex-CodedRaceAndEthnicity-pandemicIPS-VRDR-stage-2)
* section[CodedContent].entry[+] = Reference(Observation/ex-ManualUnderlyingCauseOfDeath-pandemicIPS-VRDR-stage-2)
* section[CodedContent].entry[+] = Reference(Observation/ex-AutomatedUnderlyingCauseOfDeath-pandemicIPS-VRDR-stage-2)
* section[CodedContent].entry[+] = Reference(Observation/ex-RecordAxisCauseOfDeath-pandemicIPS-VRDR-stage-2)
* section[CodedContent].entry[+] = Reference(Observation/ex-EntityAxisCauseOfDeath-pandemicIPS-VRDR-stage-2)
* section[CodedContent].entry[+] = Reference(Parameters/ex-CodingStatusValues-pandemicIPS-VRDR-stage-2)


Instance: ex-Decedent-pandemicIPS-VRDR-stage-2
InstanceOf: Decedent
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent"
* id = "ex-Decedent-pandemicIPS-VRDR-stage-2"
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/SpouseAlive"
* extension[=].valueCodeableConcept = $v2-0136#Y
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
* extension[=].valueCodeableConcept = $administrative-gender#female "Female"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* extension[=].extension.valueCode = #masked
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "123456789"
* name.use = #anonymous
* name.text = "Pseudo Decedent"
* name.family = "PseudoFamily"
* name.given = "PseudoGiven"
* gender = #female
* birthDate = "1996-08-16"
* telecom.system = #phone
* telecom.value = "masked"
* telecom.use = #temp
* telecom.value.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* telecom.value.extension.valueCode = #masked
* address.use.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* address.use.extension.valueCode = #masked
* address.line.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* address.line.extension.valueCode = #masked
* address.city.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* address.city.extension.valueCode = #masked
* address.postalCode = "460"
* address.country = "GM"
//* address.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-within-city-limits-indicator-vr"
//* address.extension[=].valueCoding = $v2-0136#Y "Yes"
//* address.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/StreetName"
//* address.extension[=].valueString = "Lockwood"
//* address.line = "5590 Lockwood Drive"
//* address.city = "Danville"
//* address.city.extension.url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/CityCode"
//* address.city.extension.valuePositiveInt = 1234
//* address.district = "Fairfax"
//* address.district.extension.url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/DistrictCode"
//* address.district.extension.valuePositiveInt = 321
//* address.state = "VA"
//* address.country = "US"
* maritalStatus.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* maritalStatus.extension.valueCode = #masked
* contact.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* contact.extension.valueCode = #masked
* generalPractitioner.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* generalPractitioner.extension.valueCode = #masked
* generalPractitioner.display = "The information is not available due to security, privacy or related reasons." 

Instance: ex-DecedentFather-pandemicIPS-VRDR-stage-2
InstanceOf: DecedentFather
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-father"
* id = "ex-DecedentFather-pandemicIPS-VRDR-stage-2"
* active = true
* patient = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* relationship = $v3-RoleCode#FTH
* name.use = #anonymous
* name.text = "Pseudo Dad"
* name.family = "PseudoFamilyDad"
* name.given = "PseudoGivenDad"
* name.suffix.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.suffix.extension.valueCode = #masked

Instance: ex-DecedentMother-pandemicIPS-VRDR-stage-2
InstanceOf: DecedentMother
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-mother"
* id = "ex-DecedentMother-pandemicIPS-VRDR-stage-2"
* active = true
* patient = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* relationship = $v3-RoleCode#MTH
* name.use = #anonymous
* name.text = "Pseudo Mom"
* name.family = "PseudoFamilyMom"
* name.given = "PseudoGivenMom"

Instance: ex-DecedentSpouse-pandemicIPS-VRDR-stage-2
InstanceOf: DecedentSpouse
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-spouse"
* id = "ex-DecedentSpouse-pandemicIPS-VRDR-stage-2"
* active = true
* patient = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* relationship = $v3-RoleCode#SPS
* name.use = #anonymous
* name.text = "Pseudo Spouse"
* name.family = "PseudoFamilySpouse"
* name.given = "PseudoGivenSpouse"
* name.suffix.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.suffix.extension.valueCode = #masked

Instance: ex-DecedentAge-pandemicIPS-VRDR-stage-2
InstanceOf: DecedentAge
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-age"
* id = "ex-DecedentAge-pandemicIPS-VRDR-stage-2"
* status = #final
* code = $loinc#39016-1 "Age at death"
* subject = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* valueQuantity = 29 'a' "years"

Instance: ex-DecedentUsualWork-pandemicIPS-VRDR-stage-2
InstanceOf: DecedentUsualWork
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work"
* id = "ex-DecedentUsualWork-pandemicIPS-VRDR-stage-2"
* status = #final
* code = $loinc#21843-8 "History of Usual occupation"
* subject = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* valueCodeableConcept = $ISCO08#5321 "Health Care Assistants"
* component[odh-UsualIndustry].valueCodeableConcept = $ISICRev4#871 "Residential nursing care facilities"

Instance: ex-DecedentPregStat-pandemicIPS-VRDR-stage-2
InstanceOf: DecedentPregnancyStatus
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-pregnancy-status"
* id = "ex-DecedentPregStat-pandemicIPS-VRDR-stage-2"
* status = #final
* code = $loinc#69442-2 "Timing of recent pregnancy in relation to death"
* subject = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueCodeableConcept.extension.valueCode = #masked

Instance: ex-DeathDate-pandemicIPS-VRDR-stage-2
InstanceOf: DeathDate
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-date"
* id = "ex-DeathDate-pandemicIPS-VRDR-stage-2"
* status = #final
* code = $loinc#81956-5 "Date and time of death [TimeStamp]"
* subject = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* effectiveDateTime = "2024-10-15T16:39:40-05:00"
* performer.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* performer.extension.valueCode = #masked
* performer.display = "The information is not available due to security, privacy or related reasons." 
* valueDateTime.extension.url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-partial-date-time-vr"
* valueDateTime.extension.extension[+].url = "day"
* valueDateTime.extension.extension[=].valueUnsignedInt = 15
* valueDateTime.extension.extension[+].url = "year"
* valueDateTime.extension.extension[=].valueUnsignedInt = 2024
* valueDateTime.extension.extension[+].url = "month"
* valueDateTime.extension.extension[=].valueUnsignedInt = 10
* valueDateTime.extension.extension[+].url = "time"
* valueDateTime.extension.extension[=].valueTime = "12:13:14"
* component[datetimePronouncedDead].valueDateTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component[datetimePronouncedDead].valueDateTime.extension.valueCode = #masked
* component[placeOfDeath].valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component[placeOfDeath].valueCodeableConcept.extension.valueCode = #masked


Instance: ex-RecordAxisCauseOfDeath-pandemicIPS-VRDR-stage-2
InstanceOf: RecordAxisCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-record-axis-cause-of-death"
* id = "ex-RecordAxisCauseOfDeath-pandemicIPS-VRDR-stage-2"
* status = #final
* code = $loinc#80357-7 "Record Axis Condition on Death Certificate"
* subject = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* valueCodeableConcept = $ICD10#U07.1 "COVID-19, virus identified"
* component[position].valueInteger = 1

Instance: ex-EntityAxisCauseOfDeath-pandemicIPS-VRDR-stage-2
InstanceOf: EntityAxisCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-entity-axis-cause-of-death"
* id = "ex-EntityAxisCauseOfDeath-pandemicIPS-VRDR-stage-2"
* status = #final
* code = $loinc#80356-9 "Entity Axis Condition on Death Certificate"
* subject = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* valueCodeableConcept = $ICD10#U07.1 "COVID-19, virus identified"
* component[lineNumber].valueInteger = 1
* component[position].valueInteger = 1

Instance: ex-ActivityAtTimeOfDeath-pandemicIPS-VRDR-stage-2
InstanceOf: ActivityAtTimeOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-activity-at-time-of-death"
* id = "ex-ActivityAtTimeOfDeath-pandemicIPS-VRDR-stage-2"
* status = #final
* valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueCodeableConcept.extension.valueCode = #masked
* subject = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* effectiveDateTime = "2024-10-15T16:39:40-05:00"


Instance: ex-CodedRaceAndEthnicity-pandemicIPS-VRDR-stage-2
InstanceOf: ObservationCodedRaceAndEthnicityVitalRecords
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/coded-race-and-ethnicity-vr"
* id = "ex-CodedRaceAndEthnicity-pandemicIPS-VRDR-stage-2"
* status = #final
* subject = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* code = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-local-observation-codes-vr#codedraceandethnicity "Coded Race and Ethnicity"
* component.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component.extension.valueCode = #masked
* component[FirstEditedCode].code.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component[FirstEditedCode].code.extension.valueCode = #masked 
* component[FirstEditedCode].valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component[FirstEditedCode].valueCodeableConcept.extension.valueCode = #masked
* component[SecondEditedCode].code.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component[SecondEditedCode].code.extension.valueCode = #masked
* component[SecondEditedCode].valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component[SecondEditedCode].valueCodeableConcept.extension.valueCode = #masked
* component[FirstAmericanIndianCode].code.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component[FirstAmericanIndianCode].code.extension.valueCode = #masked
* component[FirstAmericanIndianCode].valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component[FirstAmericanIndianCode].valueCodeableConcept.extension.valueCode = #masked
* component[RaceRecode40].code.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component[RaceRecode40].code.extension.valueCode = #masked
* component[RaceRecode40].valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component[RaceRecode40].valueCodeableConcept.extension.valueCode = #masked
* component[HispanicCode].code.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component[HispanicCode].code.extension.valueCode = #masked
* component[HispanicCode].valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* component[HispanicCode].valueCodeableConcept.extension.valueCode = #masked

Instance: ex-ManualUnderlyingCauseOfDeath-pandemicIPS-VRDR-stage-2
InstanceOf: ManualUnderlyingCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manual-underlying-cause-of-death"
* id = "ex-ManualUnderlyingCauseOfDeath-pandemicIPS-VRDR-stage-2"
* status = #final
* subject = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* valueCodeableConcept = $ICD10#J96.0 "Acute respiratory failure"

Instance: ex-AutomatedUnderlyingCauseOfDeath-pandemicIPS-VRDR-stage-2
InstanceOf: AutomatedUnderlyingCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-automated-underlying-cause-of-death"
* id = "ex-AutomatedUnderlyingCauseOfDeath-pandemicIPS-VRDR-stage-2"
* status = #final
* subject = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* valueCodeableConcept = $ICD10#J96.0 "Acute respiratory failure"

Instance: ex-PlaceOfInjury-pandemicIPS-VRDR-stage-2
InstanceOf: PlaceOfInjury
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-place-of-injury"
* id = "ex-PlaceOfInjury-pandemicIPS-VRDR-stage-2"
* status = #final
* subject = Reference(Patient/ex-Decedent-pandemicIPS-VRDR-stage-2)
* valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueCodeableConcept.extension.valueCode = #masked
* valueCodeableConcept.coding.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueCodeableConcept.coding.extension.valueCode = #masked

Instance: ex-CodingStatusValues-pandemicIPS-VRDR-stage-2
InstanceOf: CodingStatusValues
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-coding-status-values"
* id = "ex-CodingStatusValues-pandemicIPS-VRDR-stage-2"
* parameter.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter.extension.valueCode = #masked
* parameter[shipmentNumber].valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[shipmentNumber].valueString.extension.valueCode = #masked
* parameter[receiptDate].valueDate.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[receiptDate].valueDate.extension.valueCode = #masked
* parameter[intentionalReject].valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[intentionalReject].valueCodeableConcept.extension.valueCode = #masked
* parameter[acmeSystemReject].valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[acmeSystemReject].valueCodeableConcept.extension.valueCode = #masked
* parameter[transaxConversion].valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* parameter[transaxConversion].valueCodeableConcept.extension.valueCode = #masked