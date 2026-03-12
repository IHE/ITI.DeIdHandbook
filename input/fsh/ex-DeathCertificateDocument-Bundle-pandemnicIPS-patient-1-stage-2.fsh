Instance: ex-DeathCertificateDocument-Bundle-pandemnicIPS-patient-1-stage-2
InstanceOf: DeathCertificateDocument
Description: """
TODO
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
* timestamp = "2024-07-01T14:48:35.401641-04:00"
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
* entry[+].fullUrl = "urn:uuid:7ab257cf-c05c-4a6f-802d-f24cd18e74fd"
* entry[=].resource = Pronouncer-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:08455e18-aaa4-4665-82bb-4f4396ea31f6"
* entry[=].resource = MannerOfDeath-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:0405435d-0e9d-4183-b4de-de135b8271ee"
* entry[=].resource = Certifier-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:62c1329f-829a-4f6e-8d34-0bb4cf853cf7"
* entry[=].resource = DeathCertification-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:840ca6df-023f-4591-a715-39a09ce23539"
* entry[=].resource = CauseOfDeathPart1-ex-1-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:5b487351-8fe4-429c-be7d-55e9d6dece5c"
* entry[=].resource = CauseOfDeathPart1-ex-2-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:3bb5db37-e349-43f7-8059-3e5fbce38ffe"
* entry[=].resource = CauseOfDeathPart2-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:9c46b8f5-2752-4aa6-94a1-830d5ed718a9"
* entry[=].resource = DispositionLocation-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:886e498d-d962-497c-a871-cfcaa1be9766"
* entry[=].resource = RecordAxisCauseOfDeath-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:17e28b30-f475-42bd-b2c4-f271e2814aa1"
* entry[=].resource = EntityAxisCauseOfDeath-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:cc827a09-da8a-437c-a4ba-ec19c4d21058"
* entry[=].resource = Mortician-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:af3f6234-6aab-4834-b565-d83e4b94a7be"
* entry[=].resource = ActivityAtTimeOfDeath-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:6288da45-c862-4140-bc4f-467ea1e031fc"
* entry[=].resource = CodedRaceAndEthnicity-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:82c3add0-4797-48f1-93e2-b5ba3a2a5af7"
* entry[=].resource = ManualUnderlyingCauseOfDeath-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:0abcf168-1cdc-489c-80a9-f13507164175"
* entry[=].resource = AutomatedUnderlyingCauseOfDeath-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:de3ff34a-b1e5-44a0-97dc-196942ea3b3e"
* entry[=].resource = FuneralHome-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:205097a8-5f04-47a2-b2c6-e383e8cc6426"
* entry[=].resource = DecedentDispositionMethod-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:e2b3e3ca-0560-40a6-8960-0516495ace4f"
* entry[=].resource = PlaceOfInjury-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:90081d02-7e3b-411b-a7df-7ac2f91a59df"
* entry[=].resource = CodingStatusValues-pandemnicIPS-patient-1-stage-2
* entry[+].fullUrl = "urn:uuid:ae73b3a8-6fd8-4df3-ba4c-e7ffb2a7d63b"
* entry[=].resource = PractitionerUvIps-vrdr-pandemicIPS-patient-1-stage-2

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
* date = "2024-07-01T00:00:00Z"
* author = Reference(urn:uuid:0405435d-0e9d-4183-b4de-de135b8271ee)
* title = "Death Certificate"
* attester.party = Reference(urn:uuid:0405435d-0e9d-4183-b4de-de135b8271ee)
* attester.mode = #legal
* attester.time = "2024-07-21T16:39:40-05:00"
* attester.party = Reference(urn:uuid:0405435d-0e9d-4183-b4de-de135b8271ee)
* event.code = $sct#307930005 "Death certificate (record artifact)"
* event.detail = Reference(urn:uuid:62c1329f-829a-4f6e-8d34-0bb4cf853cf7)

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
* section[DeathCertification].entry[+] = Reference(urn:uuid:0405435d-0e9d-4183-b4de-de135b8271ee)
* section[DeathCertification].entry[+] = Reference(urn:uuid:62c1329f-829a-4f6e-8d34-0bb4cf853cf7)
* section[DeathCertification].entry[+] = Reference(urn:uuid:08455e18-aaa4-4665-82bb-4f4396ea31f6)
* section[DeathCertification].entry[+] = Reference(urn:uuid:840ca6df-023f-4591-a715-39a09ce23539)
* section[DeathCertification].entry[+] = Reference(urn:uuid:5b487351-8fe4-429c-be7d-55e9d6dece5c)
* section[DeathCertification].entry[+] = Reference(urn:uuid:3bb5db37-e349-43f7-8059-3e5fbce38ffe)

* section[DecedentDisposition].title = "Decedent Disposition"
* section[DecedentDisposition].code = $vrdr-document-section-cs#DecedentDisposition
* section[DecedentDisposition].entry[+] = Reference(urn:uuid:9c46b8f5-2752-4aa6-94a1-830d5ed718a9)
* section[DecedentDisposition].entry[+] = Reference(urn:uuid:de3ff34a-b1e5-44a0-97dc-196942ea3b3e)
* section[DecedentDisposition].entry[+] = Reference(urn:uuid:205097a8-5f04-47a2-b2c6-e383e8cc6426)
* section[DecedentDisposition].entry[+] = Reference(urn:uuid:cc827a09-da8a-437c-a4ba-ec19c4d21058)

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
* extension[=].valueAddress.city = "Roanoke"
* extension[=].valueAddress.state = "VA"
* extension[=].valueAddress.country = "US"
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "123456789"
* name.use = #anonymous
* name.text = "PseudoFamily"
* name.family = "PseudoFamily"
* name.given = "PseudoGiven"
* gender = #female
* birthDate = "1996-05-01"
* telecom.system = #phone
* telecom.value = "07 850 9900"
* telecom.use = #mobile
* address.use = #home 
* address.line = "Grenzstraße"
* address.city = "Oberhausen"
* address.postalCode = "46045"
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
* maritalStatus = $v3-MaritalStatus#S "Never Married"
* contact.relationship = $v2-0131#U
* contact.relationship.text = "Friend of family"
* contact.name.text = "Joe Smith"
* generalPractitioner = Reference(urn:uuid:d30e788b-7fcc-4440-8a40-cec41c70224a) "Yaser, Joseph"

Instance: PractitionerUvIps-vrdr-pandemicIPS-patient-1-stage-2
InstanceOf: PractitionerUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
* id = "d30e788b-7fcc-4440-8a40-cec41c70224a"
* name.text = "Joseph Yaser"
* name.family = "Joseph"
* name.given = "Yaser"

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
* valueCodeableConcept = $CodeSystem-death-pregnancy-status#2 "Pregnant at time of death"

Instance: DeathDate-pandemnicIPS-patient-1-stage-2
InstanceOf: DeathDate
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-date"
* id = "0d6d2992-4af5-4e50-bfcd-24b71a4f8d87"
* status = #final
* code = $loinc#81956-5
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(urn:uuid:7ab257cf-c05c-4a6f-802d-f24cd18e74fd)
* valueDateTime.extension.url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-partial-date-time-vr"
* valueDateTime.extension.extension[+].url = "day"
* valueDateTime.extension.extension[=].valueUnsignedInt.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueDateTime.extension.extension[=].valueUnsignedInt.extension.valueCode = #unknown
* valueDateTime.extension.extension[+].url = "year"
* valueDateTime.extension.extension[=].valueUnsignedInt = 2024
* valueDateTime.extension.extension[+].url = "month"
* valueDateTime.extension.extension[=].valueUnsignedInt = 6
* valueDateTime.extension.extension[+].url = "time"
* valueDateTime.extension.extension[=].valueTime = "12:13:14"
* valueDateTime.extension.extension[=].valueTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueDateTime.extension.extension[=].valueTime.extension.valueCode = #unknown
* component[datetimePronouncedDead].code = $loinc#80616-6
* component[datetimePronouncedDead].valueDateTime = "2024-06-30T16:39:40-05:00"
* component[placeOfDeath].code = $loinc#58332-8
* component[placeOfDeath].valueCodeableConcept = $sct#440081000124100 "Death in home"

Instance: Pronouncer-pandemnicIPS-patient-1-stage-2
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* id = "7ab257cf-c05c-4a6f-802d-f24cd18e74fd"
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

Instance: MannerOfDeath-pandemnicIPS-patient-1-stage-2
InstanceOf: MannerOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manner-of-death"
* id = "08455e18-aaa4-4665-82bb-4f4396ea31f6"
* status = #final
* code = $loinc#69449-7
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* performer = Reference(urn:uuid:0405435d-0e9d-4183-b4de-de135b8271ee)
* valueCodeableConcept = $sct#38605008 "Natural death"

Instance: Certifier-pandemnicIPS-patient-1-stage-2
InstanceOf: Certifier
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-certifier"
* id = "0405435d-0e9d-4183-b4de-de135b8271ee"
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

Instance: DeathCertification-pandemnicIPS-patient-1-stage-2
InstanceOf: DeathCertification
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certification"
* id = "62c1329f-829a-4f6e-8d34-0bb4cf853cf7"
* identifier.value = "180"
* status = #completed
* code = $sct#308646001 "Death certification"
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* performedDateTime = "2024-01-21T16:39:40-05:00"
* performer.function = $v3-NullFlavor#OTH "Other"
* performer.function.text = "Nurse Practitioner"
* performer.actor = Reference(urn:uuid:0405435d-0e9d-4183-b4de-de135b8271ee)

Instance: CauseOfDeathPart1-ex-1-pandemnicIPS-patient-1-stage-2
InstanceOf: CauseOfDeathPart1
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* id = "840ca6df-023f-4591-a715-39a09ce23539"
* status = #final
* code = $loinc#69453-9
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* performer = Reference(urn:uuid:0405435d-0e9d-4183-b4de-de135b8271ee)
* valueCodeableConcept.text = "Covid-19"
* component[lineNumber].valueInteger = 1
* component[interval].code = $loinc#69440-6
* component[interval].valueString = "4 hours"

Instance: CauseOfDeathPart1-ex-2-pandemnicIPS-patient-1-stage-2
InstanceOf: CauseOfDeathPart1
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* id = "5b487351-8fe4-429c-be7d-55e9d6dece5c"
* status = #final
* code = $loinc#69453-9
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* performer = Reference(urn:uuid:0405435d-0e9d-4183-b4de-de135b8271ee)
* valueCodeableConcept.text = "Eclampsia"
* component[lineNumber].valueInteger = 2
* component[interval].code = $loinc#69440-6
* component[interval].valueString = "3 months"

Instance: CauseOfDeathPart2-pandemnicIPS-patient-1-stage-2
InstanceOf: CauseOfDeathPart2
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part2"
* id = "3bb5db37-e349-43f7-8059-3e5fbce38ffe"
* status = #final
* code = $loinc#69441-4
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* performer = Reference(urn:uuid:0405435d-0e9d-4183-b4de-de135b8271ee)
* valueCodeableConcept.text = "hypertensive heart disease"

Instance: DispositionLocation-pandemnicIPS-patient-1-stage-2
InstanceOf: DispositionLocation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-disposition-location"
* id = "9c46b8f5-2752-4aa6-94a1-830d5ed718a9"
* name = "Rosewood Cemetary"
* type = $vrdr-location-type-cs#disposition
* address.line = "303 Rosewood Ave"
* address.city = "Danville"
* address.state = "VA"
* address.postalCode = "24541"
* address.country = "US"
* physicalType = $location-physical-type#si "Site"

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

Instance: Mortician-pandemnicIPS-patient-1-stage-2
InstanceOf: Mortician
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-mortician"
* id = "cc827a09-da8a-437c-a4ba-ec19c4d21058"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "212222AB"
* name.text = "Ronald Q Smith"
* name.use = #official
* name.family = "Smith"
* name.given = "Ronald"
* name.given = "Q"

Instance: ActivityAtTimeOfDeath-pandemnicIPS-patient-1-stage-2
InstanceOf: ActivityAtTimeOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-activity-at-time-of-death"
* id = "af3f6234-6aab-4834-b565-d83e4b94a7be"
* status = #final
* valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-activity-at-time-of-death-cs#1 "While engaged in leisure activities."
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* effectiveDateTime = "2024-06-30T16:39:40-05:00"


Instance: CodedRaceAndEthnicity-pandemnicIPS-patient-1-stage-2
InstanceOf: ObservationCodedRaceAndEthnicityVitalRecords
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/coded-race-and-ethnicity-vr"
* id = "6288da45-c862-4140-bc4f-467ea1e031fc"
* status = #final
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* code = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-local-observation-codes-vr#CodedRaceAndEthnicity "Coded Race and Ethnicity Data produced by NCHS from submitted death record"
* component[FirstEditedCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#101 "White"
* component[SecondEditedCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#122 "Israeli"
* component[FirstAmericanIndianCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#A31 "Arikara"
* component[RaceRecode40].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#20 "AIAN and Asian"
* component[HispanicCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#233 "Chilean"

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

Instance: FuneralHome-pandemnicIPS-patient-1-stage-2
InstanceOf: FuneralHome
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-funeral-home"
* id = "de3ff34a-b1e5-44a0-97dc-196942ea3b3e"
* active = true 
* name = "Lancaster Funeral Home and Crematory"
* address.line = "211 High Street"
* address.city = "Lancaster"
* address.state = "PA"
* address.country = "US"
* address.postalCode = "17573"

Instance: DecedentDispositionMethod-pandemnicIPS-patient-1-stage-2
InstanceOf: DecedentDispositionMethod
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-disposition-method"
* id = "205097a8-5f04-47a2-b2c6-e383e8cc6426"
* status = #final
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* performer = Reference(urn:uuid:cc827a09-da8a-437c-a4ba-ec19c4d21058)
* valueCodeableConcept = $sct#449971000124106 "Patient status determination, deceased and buried"

Instance: PlaceOfInjury-pandemnicIPS-patient-1-stage-2
InstanceOf: PlaceOfInjury
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-place-of-injury"
* id = "e2b3e3ca-0560-40a6-8960-0516495ace4f"
* status = #final
* subject = Reference(urn:uuid:24b634d5-3d22-4395-8449-db06fadf2de7)
* valueCodeableConcept = $loinc#LA14084-0 "Home"

Instance: CodingStatusValues-pandemnicIPS-patient-1-stage-2
InstanceOf: CodingStatusValues
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-coding-status-values"
* id = "90081d02-7e3b-411b-a7df-7ac2f91a59df"
* parameter[shipmentNumber].valueString = "A2B2"
* parameter[receiptDate].valueDate = "2021-12-12"
* parameter[coderStatus].valueInteger = 5
* parameter[intentionalReject].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-intentional-reject-cs#1 "Reject1"
* parameter[acmeSystemReject].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-intentional-reject-cs#0 "Not Rejected"
* parameter[transaxConversion].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-transax-conversion-cs#3 "Conversion using non-ambivalent table entries"
