Instance: ex-DeathCertificateDocument-Bundle-pandemnicIPS-patient-1-stage-2
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
* entry[+].fullUrl = "urn:uuid:9fa8380c-ead1-4d68-b69f-56cae2ffb1d3"
* entry[=].resource = ex-DeathCertificate-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7"
* entry[=].resource = Decedent-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:a5435010-f532-4475-8ba5-b9af6c9b60ef"
* entry[=].resource = DecedentFather-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:99233fba-04f0-4823-bb5c-ebf9fc5c53cc"
* entry[=].resource = DecedentMother-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:6ae3a959-52e7-4e5c-be03-cd5e6b372222"
* entry[=].resource = DecedentSpouse-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:fbbf530e-2b4d-4ce2-82da-ee4959640db4"
* entry[=].resource = DecedentAge-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:c25dc105-74d3-43d2-ba6d-b31d63619048"
* entry[=].resource = DecedentUsualWork-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:cf371770-04f2-46f0-aee8-caf22a8dc8f3"
* entry[=].resource = DecedentPregnancyStatus-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:0d6d2992-4af5-4e50-bfcd-24b71a4f8d87"
* entry[=].resource = DeathDate-pandemnicIPS-patient-1-stage-2
//* entry[+].fullUrl = "urn:uuid:7ab257cf-c05c-4a6f-802d-f24cd18e74fd"
//* entry[=].resource = Pronouncer-pandemnicIPS-patient-1-stage-2
//* entry[+].fullUrl = "urn:uuid:08455e18-aaa4-4665-82bb-4f4396ea31f6"
//* entry[=].resource = MannerOfDeath-pandemnicIPS-patient-1-stage-2
//* entry[+].fullUrl = "urn:uuid:0405435d-0e9d-4183-b4de-de135b8271ee"
//* entry[=].resource = Certifier-pandemnicIPS-patient-1-stage-2
//* entry[+].fullUrl = "urn:uuid:62c1329f-829a-4f6e-8d34-0bb4cf853cf7"
//* entry[=].resource = DeathCertification-pandemnicIPS-patient-1-stage-2
//* entry[+].fullUrl = "urn:uuid:840ca6df-023f-4591-a715-39a09ce23539"
//* entry[=].resource = CauseOfDeathPart1-ex-1-pandemnicIPS-patient-1-stage-2
//* entry[+].fullUrl = "urn:uuid:5b487351-8fe4-429c-be7d-55e9d6dece5c"
//* entry[=].resource = CauseOfDeathPart1-ex-2-pandemnicIPS-patient-1-stage-2
//* entry[+].fullUrl = "urn:uuid:3bb5db37-e349-43f7-8059-3e5fbce38ffe"
//* entry[=].resource = CauseOfDeathPart2-pandemnicIPS-patient-1-stage-2
//* entry[+].fullUrl = "urn:uuid:9c46b8f5-2752-4aa6-94a1-830d5ed718a9"
//* entry[=].resource = DispositionLocation-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:886e498d-d962-497c-a871-cfcaa1be9766"
* entry[=].resource = RecordAxisCauseOfDeath-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:17e28b30-f475-42bd-b2c4-f271e2814aa1"
* entry[=].resource = EntityAxisCauseOfDeath-pandemnicIPS-patient-1-stage-2
//* entry[+].fullUrl = "urn:uuid:cc827a09-da8a-437c-a4ba-ec19c4d21058"
//* entry[=].resource = Mortician-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:af3f6234-6aab-4834-b565-d83e4b94a7be"
* entry[=].resource = ActivityAtTimeOfDeath-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:6288da45-c862-4140-bc4f-467ea1e031fc"
* entry[=].resource = CodedRaceAndEthnicity-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:82c3add0-4797-48f1-93e2-b5ba3a2a5af7"
* entry[=].resource = ManualUnderlyingCauseOfDeath-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:0abcf168-1cdc-489c-80a9-f13507164175"
* entry[=].resource = AutomatedUnderlyingCauseOfDeath-pandemnicIPS-patient-1-stage-2
//* entry[+].fullUrl = "urn:uuid:de3ff34a-b1e5-44a0-97dc-196942ea3b3e"
//* entry[=].resource = FuneralHome-pandemnicIPS-patient-1-stage-2
//* entry[+].fullUrl = "urn:uuid:205097a8-5f04-47a2-b2c6-e383e8cc6426"
//* entry[=].resource = DecedentDispositionMethod-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:e2b3e3ca-0560-40a6-8960-0516495ace4f"
* entry[=].resource = PlaceOfInjury-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:90081d02-7e3b-411b-a7df-7ac2f91a59df"
* entry[=].resource = CodingStatusValues-pandemnicIPS-patient-1-stage-2
//* entry[+].fullUrl = "urn:uuid:ae73b3a8-6fd8-4df3-ba4c-e7ffb2a7d63b"
//* entry[=].resource = PractitionerUvIps-vrdr-pandemicIPS-patient-1-stage-2

Instance: ex-DeathCertificate-pandemnicIPS-patient-1-stage-2
InstanceOf: DeathCertificate
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate"
* id = "9fa8380c-ead1-4d68-b69f-56cae2ffb1d3"
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat"
* extension[=].valueCodeableConcept = $vrdr-filing-format-cs#electronic
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
* extension[=].valueCodeableConcept = $vrdr-replace-status-cs#original
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
* extension[=].valueString = "State Specific Content"
* status = #final
* type = $loinc#64297-5 "Death certificate"
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
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
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:a5435010-f532-4475-8ba5-b9af6c9b60ef)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:99233fba-04f0-4823-bb5c-ebf9fc5c53cc)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:6ae3a959-52e7-4e5c-be03-cd5e6b372222)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:fbbf530e-2b4d-4ce2-82da-ee4959640db4)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:c25dc105-74d3-43d2-ba6d-b31d63619048)

* section[DeathInvestigation].title = "Death Investigation"
* section[DeathInvestigation].code = $vrdr-document-section-cs#DeathInvestigation
* section[DeathInvestigation].entry[+] = Reference(urn:uuid:cf371770-04f2-46f0-aee8-caf22a8dc8f3)
* section[DeathInvestigation].entry[+] = Reference(urn:uuid:0d6d2992-4af5-4e50-bfcd-24b71a4f8d87)

* section[DeathCertification].title = "Death Certification"
* section[DeathCertification].code = $vrdr-document-section-cs#DeathCertification
* section[DeathCertification].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld "Information Withheld"
// remove references to the following oids
//* section[DeathCertification].entry[+] = Reference(urn:uuid:0405435d-0e9d-4183-b4de-de135b8271ee)
//* section[DeathCertification].entry[+] = Reference(urn:uuid:62c1329f-829a-4f6e-8d34-0bb4cf853cf7)
//* section[DeathCertification].entry[+] = Reference(urn:uuid:08455e18-aaa4-4665-82bb-4f4396ea31f6)
//* section[DeathCertification].entry[+] = Reference(urn:uuid:840ca6df-023f-4591-a715-39a09ce23539)
//* section[DeathCertification].entry[+] = Reference(urn:uuid:5b487351-8fe4-429c-be7d-55e9d6dece5c)
//* section[DeathCertification].entry[+] = Reference(urn:uuid:3bb5db37-e349-43f7-8059-3e5fbce38ffe)

* section[DecedentDisposition].title = "Decedent Disposition"
* section[DecedentDisposition].code = $vrdr-document-section-cs#DecedentDisposition
* section[DeathCertification].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld "Information Withheld"
// remove references to the following oids
//* section[DecedentDisposition].entry[+] = Reference(urn:uuid:9c46b8f5-2752-4aa6-94a1-830d5ed718a9)
//* section[DecedentDisposition].entry[+] = Reference(urn:uuid:de3ff34a-b1e5-44a0-97dc-196942ea3b3e)
//* section[DecedentDisposition].entry[+] = Reference(urn:uuid:205097a8-5f04-47a2-b2c6-e383e8cc6426)
//* section[DecedentDisposition].entry[+] = Reference(urn:uuid:cc827a09-da8a-437c-a4ba-ec19c4d21058)

* section[CodedContent].title = "Coded Content"
* section[CodedContent].code = $vrdr-document-section-cs#CodedContent
* section[CodedContent].entry[+] = Reference(urn:uuid:af3f6234-6aab-4834-b565-d83e4b94a7be)
* section[CodedContent].entry[+] = Reference(urn:uuid:e2b3e3ca-0560-40a6-8960-0516495ace4f)
* section[CodedContent].entry[+] = Reference(urn:uuid:6288da45-c862-4140-bc4f-467ea1e031fc)
* section[CodedContent].entry[+] = Reference(urn:uuid:82c3add0-4797-48f1-93e2-b5ba3a2a5af7)
* section[CodedContent].entry[+] = Reference(urn:uuid:0abcf168-1cdc-489c-80a9-f13507164175)
* section[CodedContent].entry[+] = Reference(urn:uuid:886e498d-d962-497c-a871-cfcaa1be9766)
* section[CodedContent].entry[+] = Reference(urn:uuid:17e28b30-f475-42bd-b2c4-f271e2814aa1)
* section[CodedContent].entry[+] = Reference(urn:uuid:90081d02-7e3b-411b-a7df-7ac2f91a59df)

Instance: Decedent-pandemnicIPS-patient-1-stage-2
InstanceOf: Decedent
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent"
* id = "24b634d5-3d22-4395-8449-db06fadf2de7"
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/SpouseAlive"
* extension[=].valueCodeableConcept = $v2-0136#Y
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
* extension[=].valueCodeableConcept = $administrative-gender#F "Female"
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
* telecom.system.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* telecom.system.extension.valueCode = #masked
* telecom.value.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* telecom.value.extension.valueCode = #masked
* address.use.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* address.use.extension.valueCode = #masked
* address.line.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* address.line.extension.valueCode = #masked
* address.city.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* address.city.extension.valueCode = #masked
* address.postalCode = "460"
* address.country = "DEU"
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

Instance: DecedentFather-pandemnicIPS-patient-1-stage-2
InstanceOf: DecedentFather
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-father"
* id = "a5435010-f532-4475-8ba5-b9af6c9b60ef"
* active = true
* patient = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* relationship = $v3-RoleCode#FTH
* name.use = #anonymous
* name.text = "Pseudo Dad"
* name.family = "PseudoFamilyDad"
* name.given = "PseudoGivenDad"
* name.suffix.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.suffix.extension.valueCode = #masked

Instance: DecedentMother-pandemnicIPS-patient-1-stage-2
InstanceOf: DecedentMother
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-mother"
* id = "99233fba-04f0-4823-bb5c-ebf9fc5c53cc"
* active = true
* patient = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* relationship = $v3-RoleCode#MTH
* name.use = #anonymous
* name.text = "Pseudo Mom"
* name.family = "PseudoFamilyMom"
* name.given = "PseudoGivenMom"

Instance: DecedentSpouse-pandemnicIPS-patient-1-stage-2
InstanceOf: DecedentSpouse
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-spouse"
* id = "6ae3a959-52e7-4e5c-be03-cd5e6b372222"
* active = true
* patient = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* relationship = $v3-RoleCode#SPS
* name.use = #anonymous
* name.text = "Pseudo Spouse"
* name.family = "PseudoFamilySpouse"
* name.given = "PseudoGivenSpouse"
* name.suffix.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.suffix.extension.valueCode = #masked

Instance: DecedentAge-pandemnicIPS-patient-1-stage-2
InstanceOf: DecedentAge
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-age"
* id = "fbbf530e-2b4d-4ce2-82da-ee4959640db4"
* status = #final
* code = $loinc#39016-1
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* valueQuantity = 29 'a' "years"

Instance: DecedentUsualWork-pandemnicIPS-patient-1-stage-2
InstanceOf: DecedentUsualWork
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work"
* id = "c25dc105-74d3-43d2-ba6d-b31d63619048"
* status = #final
* code = $loinc#21843-8
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* valueCodeableConcept = $ISCO08#5321 "Health Care Assistants"
* component[odh-UsualIndustry].valueCodeableConcept = $ISICRev4#871 "Residential nursing care facilities"

Instance: DecedentPregnancyStatus-pandemnicIPS-patient-1-stage-2
InstanceOf: DecedentPregnancyStatus
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-pregnancy-status"
* id = "cf371770-04f2-46f0-aee8-caf22a8dc8f3"
* status = #final
* code = $loinc#69442-2
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueCodeableConcept.extension.valueCode = #masked

Instance: DeathDate-pandemnicIPS-patient-1-stage-2
InstanceOf: DeathDate
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-date"
* id = "0d6d2992-4af5-4e50-bfcd-24b71a4f8d87"
* status = #final
* code = $loinc#81956-5
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
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


Instance: RecordAxisCauseOfDeath-pandemnicIPS-patient-1-stage-2
InstanceOf: RecordAxisCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-record-axis-cause-of-death"
* id = "886e498d-d962-497c-a871-cfcaa1be9766"
* status = #final
* code = $loinc#80357-7
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* valueCodeableConcept = $ICD10#U07.1 "COVID-19"
* component[position].valueInteger = 1

Instance: EntityAxisCauseOfDeath-pandemnicIPS-patient-1-stage-2
InstanceOf: EntityAxisCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-entity-axis-cause-of-death"
* id = "17e28b30-f475-42bd-b2c4-f271e2814aa1"
* status = #final
* code = $loinc#80356-9
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* valueCodeableConcept = $ICD10#U07.1 "COVID-19"
* component[lineNumber].valueInteger = 1
* component[position].valueInteger = 1

Instance: ActivityAtTimeOfDeath-pandemnicIPS-patient-1-stage-2
InstanceOf: ActivityAtTimeOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-activity-at-time-of-death"
* id = "af3f6234-6aab-4834-b565-d83e4b94a7be"
* status = #final
* valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueCodeableConcept.extension.valueCode = #masked
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* effectiveDateTime = "2024-10-15T16:39:40-05:00"


Instance: CodedRaceAndEthnicity-pandemnicIPS-patient-1-stage-2
InstanceOf: ObservationCodedRaceAndEthnicityVitalRecords
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/coded-race-and-ethnicity-vr"
* id = "6288da45-c862-4140-bc4f-467ea1e031fc"
* status = #final
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* code = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-local-observation-codes-vr#CodedRaceAndEthnicity "Coded Race and Ethnicity Data produced by NCHS from submitted death record"
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

Instance: ManualUnderlyingCauseOfDeath-pandemnicIPS-patient-1-stage-2
InstanceOf: ManualUnderlyingCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manual-underlying-cause-of-death"
* id = "82c3add0-4797-48f1-93e2-b5ba3a2a5af7"
* status = #final
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* valueCodeableConcept = $ICD10#J96.0

Instance: AutomatedUnderlyingCauseOfDeath-pandemnicIPS-patient-1-stage-2
InstanceOf: AutomatedUnderlyingCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-automated-underlying-cause-of-death"
* id = "0abcf168-1cdc-489c-80a9-f13507164175"
* status = #final
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* valueCodeableConcept = $ICD10#J96.0

Instance: PlaceOfInjury-pandemnicIPS-patient-1-stage-2
InstanceOf: PlaceOfInjury
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-place-of-injury"
* id = "e2b3e3ca-0560-40a6-8960-0516495ace4f"
* status = #final
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueCodeableConcept.extension.valueCode = #masked
* valueCodeableConcept.coding.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueCodeableConcept.coding.extension.valueCode = #masked

Instance: CodingStatusValues-pandemnicIPS-patient-1-stage-2
InstanceOf: CodingStatusValues
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-coding-status-values"
* id = "90081d02-7e3b-411b-a7df-7ac2f91a59df"
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