Instance: ex-Bundle-DeathCert-pandemicIPS-VRDR
InstanceOf: DeathCertificateDocument
Description: """
The following bundle reflects a complete death certificate record, including:
* the decedent demographics, including death date/time,
* their next-of-kin demographics,
* coded cause of death information,
* coded usual occupation and associated usual industry,
* death pronouncer,
* death certifier,
* funeral home information, and
* burial information.
"""
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate-document"
* id = "78f68a27-c439-4cd5-9ca2-ebc882468ade"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/CertificateNumber"
* identifier.extension[=].valueString = "003424"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier1"
* identifier.extension[=].valueString = "000000000001"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier2"
* identifier.extension[=].valueString = "100000000001"
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2024003424"
* type = #document
* timestamp = "2024-07-01T14:48:35.401641-04:00"
* entry[+].fullUrl = "http://example.org/Composition/ex-Composition-DeathCert-pandemicIPS-VRDR"
* entry[=].resource = ex-Composition-DeathCert-pandemicIPS-VRDR
* entry[=].id = "ex-Composition-DeathCert-pandemicIPS-VRDR"
* entry[+].fullUrl = "http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR"
* entry[=].resource = ex-Decedent-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Practitioner/ex-Practitioner-pandemicIPS-VRDR"
* entry[=].resource = ex-Practitioner-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/RelatedPerson/ex-DecedentFather-pandemicIPS-VRDR"
* entry[=].resource = ex-DecedentFather-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/RelatedPerson/ex-DecedentMother-pandemicIPS-VRDR"
* entry[=].resource = ex-DecedentMother-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/RelatedPerson/ex-DecedentSpouse-pandemicIPS-VRDR"
* entry[=].resource = ex-DecedentSpouse-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-DecedentAge-pandemicIPS-VRDR"
* entry[=].resource = ex-DecedentAge-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-DecedentUsualWork-pandemicIPS-VRDR"
* entry[=].resource = ex-DecedentUsualWork-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-DecedentPregStat-pandemicIPS-VRDR"
* entry[=].resource = ex-DecedentPregStat-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-DeathDate-pandemicIPS-VRDR"
* entry[=].resource = ex-DeathDate-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR"
* entry[=].resource = ex-Practitioner2-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-MannerOfDeath-pandemicIPS-VRDR"
* entry[=].resource = ex-MannerOfDeath-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Practitioner/ex-Certifier-pandemicIPS-VRDR"
* entry[=].resource = ex-Certifier-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Procedure/ex-DeathCertification-pandemicIPS-VRDR"
* entry[=].resource = ex-DeathCertification-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-CauseOfDeathPart1-pandemicIPS-VRDR"
* entry[=].resource = ex-CauseOfDeathPart1-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-CauseOfDeathPart1-ex2-pandemicIPS-VRDR"
* entry[=].resource = ex-CauseOfDeathPart1-ex2-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-CauseOfDeathPart2-pandemicIPS-VRDR"
* entry[=].resource = ex-CauseOfDeathPart2-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Location/ex-DispLocation-pandemicIPS-VRDR"
* entry[=].resource = ex-DispLocation-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-RecordAxisCauseOfDeath-pandemicIPS-VRDR"
* entry[=].resource = ex-RecordAxisCauseOfDeath-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-EntityAxisCauseOfDeath-pandemicIPS-VRDR"
* entry[=].resource = ex-EntityAxisCauseOfDeath-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Practitioner/ex-Mortician-pandemicIPS-VRDR"
* entry[=].resource = ex-Mortician-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-ActivityAtTimeOfDeath-pandemicIPS-VRDR"
* entry[=].resource = ex-ActivityAtTimeOfDeath-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-CodedRaceAndEthnicity-pandemicIPS-VRDR"
* entry[=].resource = ex-CodedRaceAndEthnicity-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-ManualUnderlyingCauseOfDeath-pandemicIPS-VRDR"
* entry[=].resource = ex-ManualUnderlyingCauseOfDeath-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-AutomatedUnderlyingCauseOfDeath-pandemicIPS-VRDR"
* entry[=].resource = ex-AutomatedUnderlyingCauseOfDeath-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Organization/ex-FuneralHome-pandemicIPS-VRDR"
* entry[=].resource = ex-FuneralHome-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-DecedentDispositionMethod-pandemicIPS-VRDR"
* entry[=].resource = ex-DecedentDispositionMethod-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Observation/ex-PlaceOfInjury-pandemicIPS-VRDR"
* entry[=].resource = ex-PlaceOfInjury-pandemicIPS-VRDR
* entry[+].fullUrl = "http://example.org/Parameters/ex-CodingStatusValues-pandemicIPS-VRDR"
* entry[=].resource = ex-CodingStatusValues-pandemicIPS-VRDR

Instance: ex-Composition-DeathCert-pandemicIPS-VRDR
InstanceOf: DeathCertificate
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate|3.0.0"
* id = "ex-Composition-DeathCert-pandemicIPS-VRDR"
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat"
* extension[=].valueCodeableConcept = $vrdr-filing-format-cs#electronic
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
* extension[=].valueCodeableConcept = $vrdr-replace-status-cs#original
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
* extension[=].valueString = "State Specific Content"
* status = #final
* type = $loinc#64297-5 "Death certificate"
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* date = "2024-07-01T00:00:00Z"
* author = Reference(http://example.org/Practitioner/ex-Certifier-pandemicIPS-VRDR)
* title = "Death Certificate"
* attester.party = Reference(http://example.org/Practitioner/ex-Certifier-pandemicIPS-VRDR)
* attester.mode = #legal
* attester.time = "2024-07-21T16:39:40-05:00"
* attester.party = Reference(http://example.org/Practitioner/ex-Certifier-pandemicIPS-VRDR)
* event.code = $sct#307930005 "Death certificate (record artifact)"
* event.detail = Reference(http://example.org/Procedure/ex-DeathCertification-pandemicIPS-VRDR)

* section[DecedentDemographics].title = "Decedent Demographics"
* section[DecedentDemographics].code = $vrdr-document-section-cs#DecedentDemographics
* section[DecedentDemographics].entry[+] = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* section[DecedentDemographics].entry[+] = Reference(http://example.org/RelatedPerson/ex-DecedentFather-pandemicIPS-VRDR)
* section[DecedentDemographics].entry[+] = Reference(http://example.org/RelatedPerson/ex-DecedentMother-pandemicIPS-VRDR)
* section[DecedentDemographics].entry[+] = Reference(http://example.org/RelatedPerson/ex-DecedentSpouse-pandemicIPS-VRDR)
* section[DecedentDemographics].entry[+] = Reference(http://example.org/Observation/ex-DecedentAge-pandemicIPS-VRDR)
* section[DecedentDemographics].entry[+] = Reference(http://example.org/Observation/ex-DecedentUsualWork-pandemicIPS-VRDR)

* section[DeathInvestigation].title = "Death Investigation"
* section[DeathInvestigation].code = $vrdr-document-section-cs#DeathInvestigation
* section[DeathInvestigation].entry[+] = Reference(http://example.org/Observation/ex-DecedentPregStat-pandemicIPS-VRDR)
* section[DeathInvestigation].entry[+] = Reference(http://example.org/Observation/ex-DeathDate-pandemicIPS-VRDR)

* section[DeathCertification].title = "Death Certification"
* section[DeathCertification].code = $vrdr-document-section-cs#DeathCertification
* section[DeathCertification].entry[+] = Reference(http://example.org/Practitioner/ex-Certifier-pandemicIPS-VRDR)
* section[DeathCertification].entry[+] = Reference(http://example.org/Procedure/ex-DeathCertification-pandemicIPS-VRDR)
* section[DeathCertification].entry[+] = Reference(http://example.org/Observation/ex-MannerOfDeath-pandemicIPS-VRDR)
* section[DeathCertification].entry[+] = Reference(http://example.org/Observation/ex-CauseOfDeathPart1-pandemicIPS-VRDR)
* section[DeathCertification].entry[+] = Reference(http://example.org/Observation/ex-CauseOfDeathPart1-ex2-pandemicIPS-VRDR)
* section[DeathCertification].entry[+] = Reference(http://example.org/Observation/ex-CauseOfDeathPart2-pandemicIPS-VRDR)

* section[DecedentDisposition].title = "Decedent Disposition"
* section[DecedentDisposition].code = $vrdr-document-section-cs#DecedentDisposition
* section[DecedentDisposition].entry[+] = Reference(http://example.org/Location/ex-DispLocation-pandemicIPS-VRDR)
* section[DecedentDisposition].entry[+] = Reference(http://example.org/Organization/ex-FuneralHome-pandemicIPS-VRDR)
* section[DecedentDisposition].entry[+] = Reference(http://example.org/Observation/ex-DecedentDispositionMethod-pandemicIPS-VRDR)
* section[DecedentDisposition].entry[+] = Reference(http://example.org/Practitioner/ex-Mortician-pandemicIPS-VRDR)

* section[CodedContent].title = "Coded Content"
* section[CodedContent].code = $vrdr-document-section-cs#CodedContent
* section[CodedContent].entry[+] = Reference(http://example.org/Observation/ex-ActivityAtTimeOfDeath-pandemicIPS-VRDR)
* section[CodedContent].entry[+] = Reference(http://example.org/Observation/ex-PlaceOfInjury-pandemicIPS-VRDR)
* section[CodedContent].entry[+] = Reference(http://example.org/Observation/ex-CodedRaceAndEthnicity-pandemicIPS-VRDR)
* section[CodedContent].entry[+] = Reference(http://example.org/Observation/ex-ManualUnderlyingCauseOfDeath-pandemicIPS-VRDR)
* section[CodedContent].entry[+] = Reference(http://example.org/Observation/ex-AutomatedUnderlyingCauseOfDeath-pandemicIPS-VRDR)
* section[CodedContent].entry[+] = Reference(http://example.org/Observation/ex-RecordAxisCauseOfDeath-pandemicIPS-VRDR)
* section[CodedContent].entry[+] = Reference(http://example.org/Observation/ex-EntityAxisCauseOfDeath-pandemicIPS-VRDR)
* section[CodedContent].entry[+] = Reference(http://example.org/Parameters/ex-CodingStatusValues-pandemicIPS-VRDR)

Instance: ex-Decedent-pandemicIPS-VRDR
InstanceOf: Decedent
Description: """
The following patient resource represents the decedent referenced in the death certificate document bundle. This is the stage 0 version of the patient, where no de-identification has been applied and all direct identifiers are present.
"""
Usage: #example
* meta.profile[+] = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent"
* meta.profile[+] = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Patient-vr"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/Patient"
* id = "ex-Decedent-pandemicIPS-VRDR"
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/SpouseAlive"
* extension[=].valueCodeableConcept = $v2-0136#Y
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
* extension[=].valueCodeableConcept = $administrative-gender#female "Female"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Roanoke"
* extension[=].valueAddress.state = "VA"
* extension[=].valueAddress.country = "US"
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "987654321"
* name.use = #official
* name.text = "Patricia Jordana"
* name.family = "Patricia"
* name.given = "Jordana"
* gender = #female
* birthDate = "1996-05-01"
* telecom.system = #phone
* telecom.value = "07 850 9900"
* telecom.use = #mobile
* address.use = #home 
* address.line = "Grenzstraße"
* address.city = "Oberhausen"
* address.postalCode = "46045"
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
* maritalStatus = $v3-MaritalStatus#S "Never Married"
* contact.relationship = $v2-0131#U
* contact.relationship.text = "Friend of family"
* contact.name.text = "Joe Smith"
* generalPractitioner = Reference(http://example.org/Practitioner/ex-Practitioner-pandemicIPS-VRDR) "Yaser, Joseph"

Instance: ex-Practitioner-pandemicIPS-VRDR
InstanceOf: PractitionerUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
* id = "ex-Practitioner-pandemicIPS-VRDR"
* name.text = "Joseph Yaser"
* name.family = "Joseph"
* name.given = "Yaser"

Instance: ex-DecedentFather-pandemicIPS-VRDR
InstanceOf: DecedentFather
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-father"
* id = "ex-DecedentFather-pandemicIPS-VRDR"
* active = true
* patient = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* relationship = $v3-RoleCode#FTH
* name.use = #official
* name.text = "Decedent Dad"
* name.family = "Smith"
* name.given = "John"
* name.suffix = "Sr"

Instance: ex-DecedentMother-pandemicIPS-VRDR
InstanceOf: DecedentMother
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-mother"
* id = "ex-DecedentMother-pandemicIPS-VRDR"
* active = true
* patient = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* relationship = $v3-RoleCode#MTH
* name.use = #maiden
* name.text = "Decedent Mom"
* name.family = "Suzette"
* name.given = "Jane"

Instance: ex-DecedentSpouse-pandemicIPS-VRDR
InstanceOf: DecedentSpouse
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-spouse"
* id = "ex-DecedentSpouse-pandemicIPS-VRDR"
* active = true
* patient = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* relationship = $v3-RoleCode#SPS
* name.use = #maiden
* name.text = "Decedent Spouse"
* name.family = "Gazette"
* name.given = "Samuel"
* name.suffix = "III"

Instance: ex-DecedentAge-pandemicIPS-VRDR
InstanceOf: DecedentAge
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-age"
* id = "ex-DecedentAge-pandemicIPS-VRDR"
* status = #final
* code = $loinc#39016-1
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* valueQuantity = 29 'a' "years"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR)

Instance: ex-DecedentUsualWork-pandemicIPS-VRDR
InstanceOf: DecedentUsualWork
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work"
* id = "ex-DecedentUsualWork-pandemicIPS-VRDR"
* status = #final
* code = $loinc#21843-8 "History of Usual occupation"
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* valueCodeableConcept = $ISCO08#5321 "Health Care Assistants"
* component[odh-UsualIndustry].valueCodeableConcept = $ISICRev4#871 "Residential nursing care facilities"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR)

Instance: ex-DecedentPregStat-pandemicIPS-VRDR
InstanceOf: DecedentPregnancyStatus
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-pregnancy-status"
* id = "ex-DecedentPregStat-pandemicIPS-VRDR"
* status = #final
* code = $loinc#69442-2 "Timing of recent pregnancy in relation to death"
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* valueCodeableConcept = $CodeSystem-death-pregnancy-status#2 "Pregnant at time of death"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR)


Instance: ex-DeathDate-pandemicIPS-VRDR
InstanceOf: DeathDate
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-date"
* id = "ex-DeathDate-pandemicIPS-VRDR"
* status = #final
* code = $loinc#81956-5 "Date and time of death [TimeStamp]"
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR)
* valueDateTime.extension.url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-partial-date-time-vr"
* valueDateTime.extension.extension[+].url = "day"
* valueDateTime.extension.extension[=].valueUnsignedInt = 30
* valueDateTime.extension.extension[+].url = "year"
* valueDateTime.extension.extension[=].valueUnsignedInt = 2024
* valueDateTime.extension.extension[+].url = "month"
* valueDateTime.extension.extension[=].valueUnsignedInt = 6
* valueDateTime.extension.extension[+].url = "time"
* valueDateTime.extension.extension[=].valueTime = "12:13:14"
* component[datetimePronouncedDead].code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
* component[datetimePronouncedDead].valueDateTime = "2024-06-30T16:39:40-05:00"
* component[placeOfDeath].code = $loinc#58332-8 "Location of death"
* component[placeOfDeath].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH "Other"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR)


Instance: ex-Practitioner2-pandemicIPS-VRDR
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* id = "ex-Practitioner2-pandemicIPS-VRDR"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339101"
* name.use = #official
* name.family = "Purple"
* name.given = "Jane"
* address.line = "44 South Street"
* address.city = "Rockville"
* address.state = "MD"
* address.postalCode = "20854"
* address.country = "US"

Instance: ex-MannerOfDeath-pandemicIPS-VRDR
InstanceOf: MannerOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manner-of-death"
* id = "ex-MannerOfDeath-pandemicIPS-VRDR"
* status = #final
* code = $loinc#69449-7 "Manner of death"
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* performer = Reference(http://example.org/Practitioner/ex-Certifier-pandemicIPS-VRDR)
* valueCodeableConcept = $sct#38605008 "Natural death"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"


Instance: ex-Certifier-pandemicIPS-VRDR
InstanceOf: Certifier
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-certifier"
* id = "ex-Certifier-pandemicIPS-VRDR"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "9941339100"
* name.use = #official
* name.family = "Black"
* name.given = "Jim"
* address.line = "44 South Street"
* address.city = "Bird in Hand"
* address.state = "PA"
* address.postalCode = "17505"
* address.country = "US"

Instance: ex-DeathCertification-pandemicIPS-VRDR
InstanceOf: DeathCertification
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certification"
* id = "ex-DeathCertification-pandemicIPS-VRDR"
* identifier.value = "180"
* status = #completed
* code = $sct#308646001 "Death certification"
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* performedDateTime = "2024-01-21T16:39:40-05:00"
* performer.function = $v3-NullFlavor#OTH "Other"
* performer.function.text = "Nurse Practitioner"
* performer.actor = Reference(http://example.org/Practitioner/ex-Certifier-pandemicIPS-VRDR)

Instance: ex-CauseOfDeathPart1-pandemicIPS-VRDR
InstanceOf: CauseOfDeathPart1
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* id = "ex-CauseOfDeathPart1-pandemicIPS-VRDR"
* status = #final
* code = $loinc#69453-9 "Cause of death [US Standard Certificate of Death]"
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* performer = Reference(http://example.org/Practitioner/ex-Certifier-pandemicIPS-VRDR)
* valueCodeableConcept.text = "Covid-19"
* component[lineNumber].valueInteger = 1
* component[interval].code = $loinc#69440-6
* component[interval].valueString = "4 hours"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"

Instance: ex-CauseOfDeathPart1-ex2-pandemicIPS-VRDR
InstanceOf: CauseOfDeathPart1
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* id = "ex-CauseOfDeathPart1-ex2-pandemicIPS-VRDR"
* status = #final
* code = $loinc#69453-9 "Cause of death [US Standard Certificate of Death]"
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* performer = Reference(http://example.org/Practitioner/ex-Certifier-pandemicIPS-VRDR)
* valueCodeableConcept.text = "Eclampsia"
* component[lineNumber].valueInteger = 2
* component[interval].code = $loinc#69440-6
* component[interval].valueString = "3 months"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"

Instance: ex-CauseOfDeathPart2-pandemicIPS-VRDR
InstanceOf: CauseOfDeathPart2
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part2"
* id = "ex-CauseOfDeathPart2-pandemicIPS-VRDR"
* status = #final
* code = $loinc#69441-4 "Other significant causes or conditions of death"
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* performer = Reference(http://example.org/Practitioner/ex-Certifier-pandemicIPS-VRDR)
* valueCodeableConcept.text = "hypertensive heart disease"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"

Instance: ex-DispLocation-pandemicIPS-VRDR
InstanceOf: DispositionLocation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-disposition-location"
* id = "ex-DispLocation-pandemicIPS-VRDR"
* name = "Rosewood Cemetary"
* type = $vrdr-location-type-cs#disposition
* address.line = "303 Rosewood Ave"
* address.city = "Danville"
* address.state = "VA"
* address.postalCode = "24541"
* address.country = "US"
* physicalType = $location-physical-type#si "Site"

Instance: ex-RecordAxisCauseOfDeath-pandemicIPS-VRDR
InstanceOf: RecordAxisCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-record-axis-cause-of-death"
* id = "ex-RecordAxisCauseOfDeath-pandemicIPS-VRDR"
* status = #final
* code = $loinc#80357-7 "Cause of death record axis code [Automated]"
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* valueCodeableConcept = $ICD10#U07.1 "COVID-19, virus identified"
* component[position].valueInteger = 1
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR)


Instance: ex-EntityAxisCauseOfDeath-pandemicIPS-VRDR
InstanceOf: EntityAxisCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-entity-axis-cause-of-death"
* id = "ex-EntityAxisCauseOfDeath-pandemicIPS-VRDR"
* status = #final
* code = $loinc#80356-9 "Cause of death entity axis code [Automated]"
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* valueCodeableConcept = $ICD10#U07.1 "COVID-19, virus identified"
* component[lineNumber].valueInteger = 1
* component[position].valueInteger = 1
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR)


Instance: ex-Mortician-pandemicIPS-VRDR
InstanceOf: Mortician
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-mortician"
* id = "ex-Mortician-pandemicIPS-VRDR"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "212222AB"
* name.text = "Ronald Q Smith"
* name.use = #official
* name.family = "Smith"
* name.given = "Ronald"
* name.given = "Q"

Instance: ex-ActivityAtTimeOfDeath-pandemicIPS-VRDR
InstanceOf: ActivityAtTimeOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-activity-at-time-of-death"
* id = "ex-ActivityAtTimeOfDeath-pandemicIPS-VRDR"
* status = #final
* valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-activity-at-time-of-death-cs#1 "While engaged in leisure activities."
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR)


Instance: ex-CodedRaceAndEthnicity-pandemicIPS-VRDR
InstanceOf: ObservationCodedRaceAndEthnicityVitalRecords
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/coded-race-and-ethnicity-vr"
* id = "ex-CodedRaceAndEthnicity-pandemicIPS-VRDR"
* status = #final
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* code = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-local-observation-codes-vr#codedraceandethnicity "Coded Race and Ethnicity"
* component[FirstEditedCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#101 "White"
* component[SecondEditedCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#122 "Israeli"
* component[FirstAmericanIndianCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#A31 "Arikara"
* component[RaceRecode40].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-recode-40-vr#20 "AIAN and Asian"
* component[HispanicCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-hispanic-origin-vr#233 "Chilean"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR)


Instance: ex-ManualUnderlyingCauseOfDeath-pandemicIPS-VRDR
InstanceOf: ManualUnderlyingCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manual-underlying-cause-of-death"
* id = "ex-ManualUnderlyingCauseOfDeath-pandemicIPS-VRDR"
* status = #final
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* valueCodeableConcept = $ICD10#J96.0 "Acute respiratory failure"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR)


Instance: ex-AutomatedUnderlyingCauseOfDeath-pandemicIPS-VRDR
InstanceOf: AutomatedUnderlyingCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-automated-underlying-cause-of-death"
* id = "ex-AutomatedUnderlyingCauseOfDeath-pandemicIPS-VRDR"
* status = #final
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* valueCodeableConcept = $ICD10#J96.0 "Acute respiratory failure"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR)

Instance: ex-FuneralHome-pandemicIPS-VRDR
InstanceOf: FuneralHome
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-funeral-home"
* id = "ex-FuneralHome-pandemicIPS-VRDR"
* active = true 
* name = "Lancaster Funeral Home and Crematory"
* address.line = "211 High Street"
* address.city = "Lancaster"
* address.state = "PA"
* address.country = "US"
* address.postalCode = "17573"

Instance: ex-DecedentDispositionMethod-pandemicIPS-VRDR
InstanceOf: DecedentDispositionMethod
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-disposition-method"
* id = "ex-DecedentDispositionMethod-pandemicIPS-VRDR"
* status = #final
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* performer = Reference(http://example.org/Practitioner/ex-Mortician-pandemicIPS-VRDR)
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH "Other"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"

Instance: ex-PlaceOfInjury-pandemicIPS-VRDR
InstanceOf: PlaceOfInjury
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-place-of-injury"
* id = "ex-PlaceOfInjury-pandemicIPS-VRDR"
* status = #final
* subject = Reference(http://example.org/Patient/ex-Decedent-pandemicIPS-VRDR)
* valueCodeableConcept = $loinc#LA14084-0 "Home"
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(http://example.org/Practitioner/ex-Practitioner2-pandemicIPS-VRDR)


Instance: ex-CodingStatusValues-pandemicIPS-VRDR
InstanceOf: CodingStatusValues
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-coding-status-values"
* id = "ex-CodingStatusValues-pandemicIPS-VRDR"
* parameter[shipmentNumber].valueString = "A2B2"
* parameter[receiptDate].valueDate = "2021-12-12"
* parameter[coderStatus].valueInteger = 5
* parameter[intentionalReject].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-intentional-reject-cs#1 "Reject1"
* parameter[acmeSystemReject].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-system-reject-cs#0 "Not Rejected"
* parameter[transaxConversion].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-transax-conversion-cs#3 "Conversion using non-ambivalent table entries"


