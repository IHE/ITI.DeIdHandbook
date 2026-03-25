Instance: ex-DeathCertificateDocument-Bundle-pandemnicIPS-patient-1-stage-0
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
* entry[+].fullUrl = "urn:uuid:d8d50ead-2e13-4a31-b2b5-9d76449d6927"
* entry[=].resource = ex-DeathCertificate-pandemnicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda"
* entry[=].resource = Decedent-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:b26a068a-0209-4ea3-90cd-d230662c0d4b"
* entry[=].resource = DecedentFather-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:6185867c-4557-496b-ab18-e74ac54816c8"
* entry[=].resource = DecedentMother-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:fc52d5bf-489b-4737-ba93-f57760b42056"
* entry[=].resource = DecedentSpouse-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:bf783f65-79fe-4eff-8956-f2b272f79bb6"
* entry[=].resource = DecedentAge-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:67102e26-55de-42be-8a9c-f39a12b91730"
* entry[=].resource = DecedentUsualWork-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:e01efcda-88e3-41fa-834d-779a23d96668"
* entry[=].resource = DecedentPregnancyStatus-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:5ac8090e-eb27-4bf9-a163-641068138e39"
* entry[=].resource = DeathDate-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:387cbded-d40e-41bd-95f3-db25dee6dff6"
* entry[=].resource = Pronouncer-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:3b9e8828-d7b0-4789-a857-1df9bf9f3984"
* entry[=].resource = MannerOfDeath-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:02be46af-10b4-49b9-8c8a-c3feef00e7b2"
* entry[=].resource = Certifier-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:70e2d3f5-8b5b-48ad-b039-e55eb3b81e6b"
* entry[=].resource = DeathCertification-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:b71e6423-74ee-41c6-b705-395d358579a3"
* entry[=].resource = CauseOfDeathPart1-ex-1-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:83e11e6c-0f39-44ae-bd84-0e93543bcd2d"
* entry[=].resource = CauseOfDeathPart1-ex-2-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:48ae2a58-11cb-4aff-b808-b2d66982d9ce"
* entry[=].resource = CauseOfDeathPart2-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:eb27de55-55c3-4459-8e55-6ff8669caeb7"
* entry[=].resource = DispositionLocation-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:4aa7b00f-8f53-409c-ad5b-364381de19d4"
* entry[=].resource = RecordAxisCauseOfDeath-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:b36b95ed-6f49-4488-ac4a-228471707f15"
* entry[=].resource = EntityAxisCauseOfDeath-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:d111662d-aeae-4d37-9d1f-142b23d122e6"
* entry[=].resource = Mortician-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:8076800a-4382-4ddc-a873-8877e255a5f6"
* entry[=].resource = ActivityAtTimeOfDeath-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:be362235-c816-47cf-b375-62144c43cf10"
* entry[=].resource = CodedRaceAndEthnicity-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:53dddd5c-d75e-4413-b810-6138881ee573"
* entry[=].resource = ManualUnderlyingCauseOfDeath-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:ad580db9-034c-4d6f-9549-1140d19f2725"
* entry[=].resource = AutomatedUnderlyingCauseOfDeath-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:d7e83018-8071-444b-9c8f-c38821ce744f"
* entry[=].resource = FuneralHome-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:1f22c3d0-5e84-41a7-a079-a31cdd657b90"
* entry[=].resource = DecedentDispositionMethod-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:4d27baa2-df9a-48f3-8ea4-2d6c0b776a8d"
* entry[=].resource = PlaceOfInjury-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:0a4a01cd-25f4-4993-826e-c54c363624e6"
* entry[=].resource = CodingStatusValues-pandemicIPS-patient-1-stage-0
* entry[+].fullUrl = "urn:uuid:d30e788b-7fcc-4440-8a40-cec41c70224a"
* entry[=].resource = PractitionerUvIps-vrdr-pandemicIPS-patient-1-stage-0

Instance: ex-DeathCertificate-pandemnicIPS-patient-1-stage-0
InstanceOf: DeathCertificate
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate"
* id = "d8d50ead-2e13-4a31-b2b5-9d76449d6927"
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat"
* extension[=].valueCodeableConcept = $vrdr-filing-format-cs#electronic
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
* extension[=].valueCodeableConcept = $vrdr-replace-status-cs#original
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
* extension[=].valueString = "State Specific Content"
* status = #final
* type = $loinc#64297-5 "Death certificate"
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* date = "2024-07-01T00:00:00Z"
* author = Reference(urn:uuid:02be46af-10b4-49b9-8c8a-c3feef00e7b2)
* title = "Death Certificate"
* attester.party = Reference(urn:uuid:1256ca08-8e8a-43fe-b7af-2dc549ae70db)
* attester.mode = #legal
* attester.time = "2024-07-21T16:39:40-05:00"
* attester.party = Reference(urn:uuid:02be46af-10b4-49b9-8c8a-c3feef00e7b2)
* event.code = $sct#307930005 "Death certificate (record artifact)"
* event.detail = Reference(urn:uuid:70e2d3f5-8b5b-48ad-b039-e55eb3b81e6b)

* section[DecedentDemographics].title = "Decedent Demographics"
* section[DecedentDemographics].code = $vrdr-document-section-cs#DecedentDemographics
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:b26a068a-0209-4ea3-90cd-d230662c0d4b)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:6185867c-4557-496b-ab18-e74ac54816c8)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:fc52d5bf-489b-4737-ba93-f57760b42056)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:bf783f65-79fe-4eff-8956-f2b272f79bb6)
* section[DecedentDemographics].entry[+] = Reference(urn:uuid:67102e26-55de-42be-8a9c-f39a12b91730)

* section[DeathInvestigation].title = "Death Investigation"
* section[DeathInvestigation].code = $vrdr-document-section-cs#DeathInvestigation
* section[DeathInvestigation].entry[+] = Reference(urn:uuid:e01efcda-88e3-41fa-834d-779a23d96668)
* section[DeathInvestigation].entry[+] = Reference(urn:uuid:5ac8090e-eb27-4bf9-a163-641068138e39)

* section[DeathCertification].title = "Death Certification"
* section[DeathCertification].code = $vrdr-document-section-cs#DeathCertification
* section[DeathCertification].entry[+] = Reference(urn:uuid:02be46af-10b4-49b9-8c8a-c3feef00e7b2)
* section[DeathCertification].entry[+] = Reference(urn:uuid:70e2d3f5-8b5b-48ad-b039-e55eb3b81e6b)
* section[DeathCertification].entry[+] = Reference(urn:uuid:3b9e8828-d7b0-4789-a857-1df9bf9f3984)
* section[DeathCertification].entry[+] = Reference(urn:uuid:b71e6423-74ee-41c6-b705-395d358579a3)
* section[DeathCertification].entry[+] = Reference(urn:uuid:83e11e6c-0f39-44ae-bd84-0e93543bcd2d)
* section[DeathCertification].entry[+] = Reference(urn:uuid:48ae2a58-11cb-4aff-b808-b2d66982d9ce)

* section[DecedentDisposition].title = "Decedent Disposition"
* section[DecedentDisposition].code = $vrdr-document-section-cs#DecedentDisposition
* section[DecedentDisposition].entry[+] = Reference(urn:uuid:eb27de55-55c3-4459-8e55-6ff8669caeb7)
* section[DecedentDisposition].entry[+] = Reference(urn:uuid:d7e83018-8071-444b-9c8f-c38821ce744f)
* section[DecedentDisposition].entry[+] = Reference(urn:uuid:1f22c3d0-5e84-41a7-a079-a31cdd657b90)
* section[DecedentDisposition].entry[+] = Reference(urn:uuid:d111662d-aeae-4d37-9d1f-142b23d122e6)

* section[CodedContent].title = "Coded Content"
* section[CodedContent].code = $vrdr-document-section-cs#CodedContent
* section[CodedContent].entry[+] = Reference(urn:uuid:8076800a-4382-4ddc-a873-8877e255a5f6)
* section[CodedContent].entry[+] = Reference(urn:uuid:4d27baa2-df9a-48f3-8ea4-2d6c0b776a8d)
* section[CodedContent].entry[+] = Reference(urn:uuid:be362235-c816-47cf-b375-62144c43cf10)
* section[CodedContent].entry[+] = Reference(urn:uuid:53dddd5c-d75e-4413-b810-6138881ee573)
* section[CodedContent].entry[+] = Reference(urn:uuid:ad580db9-034c-4d6f-9549-1140d19f2725)
* section[CodedContent].entry[+] = Reference(urn:uuid:4aa7b00f-8f53-409c-ad5b-364381de19d4)
* section[CodedContent].entry[+] = Reference(urn:uuid:b36b95ed-6f49-4488-ac4a-228471707f15)
* section[CodedContent].entry[+] = Reference(urn:uuid:0a4a01cd-25f4-4993-826e-c54c363624e6)

Instance: Decedent-pandemicIPS-patient-1-stage-0
InstanceOf: Decedent
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent"
* id = "35091917-585a-4f65-b15b-8bdd561fbbda"
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

Instance: PractitionerUvIps-vrdr-pandemicIPS-patient-1-stage-0
InstanceOf: PractitionerUvIps
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
* id = "d30e788b-7fcc-4440-8a40-cec41c70224a"
* name.text = "Joseph Yaser"
* name.family = "Joseph"
* name.given = "Yaser"

Instance: DecedentFather-pandemicIPS-patient-1-stage-0
InstanceOf: DecedentFather
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-father"
* id = "b26a068a-0209-4ea3-90cd-d230662c0d4b"
* active = true
* patient = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* relationship = $v3-RoleCode#FTH
* name.use = #official
* name.text = "Decedent Dad"
* name.family = "Smith"
* name.given = "John"
* name.suffix = "Sr"

Instance: DecedentMother-pandemicIPS-patient-1-stage-0
InstanceOf: DecedentMother
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-mother"
* id = "6185867c-4557-496b-ab18-e74ac54816c8"
* active = true
* patient = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* relationship = $v3-RoleCode#MTH
* name.use = #maiden
* name.text = "Decedent Mom"
* name.family = "Suzette"
* name.given = "Jane"

Instance: DecedentSpouse-pandemicIPS-patient-1-stage-0
InstanceOf: DecedentSpouse
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-spouse"
* id = "fc52d5bf-489b-4737-ba93-f57760b42056"
* active = true
* patient = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* relationship = $v3-RoleCode#SPS
* name.use = #maiden
* name.text = "Decedent Spouse"
* name.family = "Gazette"
* name.given = "Samuel"
* name.suffix = "III"

Instance: DecedentAge-pandemicIPS-patient-1-stage-0
InstanceOf: DecedentAge
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-age"
* id = "bf783f65-79fe-4eff-8956-f2b272f79bb6"
* status = #final
* code = $loinc#39016-1
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* valueQuantity = 29 'a' "years"

Instance: DecedentUsualWork-pandemicIPS-patient-1-stage-0
InstanceOf: DecedentUsualWork
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work"
* id = "67102e26-55de-42be-8a9c-f39a12b91730"
* status = #final
* code = $loinc#21843-8
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* valueCodeableConcept = $ISCO08#5321 "Health Care Assistants"
* component[odh-UsualIndustry].valueCodeableConcept = $ISICRev4#871 "Residential nursing care facilities"

Instance: DecedentPregnancyStatus-pandemicIPS-patient-1-stage-0
InstanceOf: DecedentPregnancyStatus
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-pregnancy-status"
* id = "e01efcda-88e3-41fa-834d-779a23d96668"
* status = #final
* code = $loinc#69442-2
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* valueCodeableConcept = $CodeSystem-death-pregnancy-status#2 "Pregnant at time of death"

Instance: DeathDate-pandemicIPS-patient-1-stage-0
InstanceOf: DeathDate
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-date"
* id = "5ac8090e-eb27-4bf9-a163-641068138e39"
* status = #final
* code = $loinc#81956-5
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(urn:uuid:387cbded-d40e-41bd-95f3-db25dee6dff6)
* valueDateTime.extension.url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-partial-date-time-vr"
* valueDateTime.extension.extension[+].url = "day"
* valueDateTime.extension.extension[=].valueUnsignedInt = 30
* valueDateTime.extension.extension[+].url = "year"
* valueDateTime.extension.extension[=].valueUnsignedInt = 2024
* valueDateTime.extension.extension[+].url = "month"
* valueDateTime.extension.extension[=].valueUnsignedInt = 6
* valueDateTime.extension.extension[+].url = "time"
* valueDateTime.extension.extension[=].valueTime = "12:13:14"
* component[datetimePronouncedDead].code = $loinc#80616-6
* component[datetimePronouncedDead].valueDateTime = "2024-06-30T16:39:40-05:00"
* component[placeOfDeath].code = $loinc#58332-8
* component[placeOfDeath].valueCodeableConcept = $sct#440081000124100 "Death in home"

Instance: Pronouncer-pandemicIPS-patient-1-stage-0
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* id = "387cbded-d40e-41bd-95f3-db25dee6dff6"
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

Instance: MannerOfDeath-pandemicIPS-patient-1-stage-0
InstanceOf: MannerOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manner-of-death"
* id = "3b9e8828-d7b0-4789-a857-1df9bf9f3984"
* status = #final
* code = $loinc#69449-7
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* performer = Reference(urn:uuid:02be46af-10b4-49b9-8c8a-c3feef00e7b2)
* valueCodeableConcept = $sct#38605008 "Natural death"

Instance: Certifier-pandemicIPS-patient-1-stage-0
InstanceOf: Certifier
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-certifier"
* id = "02be46af-10b4-49b9-8c8a-c3feef00e7b2"
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

Instance: DeathCertification-pandemicIPS-patient-1-stage-0
InstanceOf: DeathCertification
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certification"
* id = "70e2d3f5-8b5b-48ad-b039-e55eb3b81e6b"
* identifier.value = "180"
* status = #completed
* code = $sct#308646001 "Death certification"
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* performedDateTime = "2024-01-21T16:39:40-05:00"
* performer.function = $v3-NullFlavor#OTH "Other"
* performer.function.text = "Nurse Practitioner"
* performer.actor = Reference(urn:uuid:02be46af-10b4-49b9-8c8a-c3feef00e7b2)

Instance: CauseOfDeathPart1-ex-1-pandemicIPS-patient-1-stage-0
InstanceOf: CauseOfDeathPart1
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* id = "b71e6423-74ee-41c6-b705-395d358579a3"
* status = #final
* code = $loinc#69453-9
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* performer = Reference(urn:uuid:02be46af-10b4-49b9-8c8a-c3feef00e7b2)
* valueCodeableConcept.text = "Covid-19"
* component[lineNumber].valueInteger = 1
* component[interval].code = $loinc#69440-6
* component[interval].valueString = "4 hours"

Instance: CauseOfDeathPart1-ex-2-pandemicIPS-patient-1-stage-0
InstanceOf: CauseOfDeathPart1
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* id = "83e11e6c-0f39-44ae-bd84-0e93543bcd2d"
* status = #final
* code = $loinc#69453-9
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* performer = Reference(urn:uuid:02be46af-10b4-49b9-8c8a-c3feef00e7b2)
* valueCodeableConcept.text = "Eclampsia"
* component[lineNumber].valueInteger = 2
* component[interval].code = $loinc#69440-6
* component[interval].valueString = "3 months"

Instance: CauseOfDeathPart2-pandemicIPS-patient-1-stage-0
InstanceOf: CauseOfDeathPart2
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part2"
* id = "48ae2a58-11cb-4aff-b808-b2d66982d9ce"
* status = #final
* code = $loinc#69441-4
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* performer = Reference(urn:uuid:02be46af-10b4-49b9-8c8a-c3feef00e7b2)
* valueCodeableConcept.text = "hypertensive heart disease"

Instance: DispositionLocation-pandemicIPS-patient-1-stage-0
InstanceOf: DispositionLocation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-disposition-location"
* id = "eb27de55-55c3-4459-8e55-6ff8669caeb7"
* name = "Rosewood Cemetary"
* type = $vrdr-location-type-cs#disposition
* address.line = "303 Rosewood Ave"
* address.city = "Danville"
* address.state = "VA"
* address.postalCode = "24541"
* address.country = "US"
* physicalType = $location-physical-type#si "Site"

Instance: RecordAxisCauseOfDeath-pandemicIPS-patient-1-stage-0
InstanceOf: RecordAxisCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-record-axis-cause-of-death"
* id = "4aa7b00f-8f53-409c-ad5b-364381de19d4"
* status = #final
* code = $loinc#80357-7
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* valueCodeableConcept = $ICD10#U07.1 "COVID-19"
* component[position].valueInteger = 1

Instance: EntityAxisCauseOfDeath-pandemicIPS-patient-1-stage-0
InstanceOf: EntityAxisCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-entity-axis-cause-of-death"
* id = "b36b95ed-6f49-4488-ac4a-228471707f15"
* status = #final
* code = $loinc#80356-9
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* valueCodeableConcept = $ICD10#U07.1 "COVID-19"
* component[lineNumber].valueInteger = 1
* component[position].valueInteger = 1

Instance: Mortician-pandemicIPS-patient-1-stage-0
InstanceOf: Mortician
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-mortician"
* id = "d111662d-aeae-4d37-9d1f-142b23d122e6"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "212222AB"
* name.text = "Ronald Q Smith"
* name.use = #official
* name.family = "Smith"
* name.given = "Ronald"
* name.given = "Q"

Instance: ActivityAtTimeOfDeath-pandemicIPS-patient-1-stage-0
InstanceOf: ActivityAtTimeOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-activity-at-time-of-death"
* id = "8076800a-4382-4ddc-a873-8877e255a5f6"
* status = #final
* valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-activity-at-time-of-death-cs#1 "While engaged in leisure activities."
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* effectiveDateTime = "2024-06-30T16:39:40-05:00"


Instance: CodedRaceAndEthnicity-pandemicIPS-patient-1-stage-0
InstanceOf: ObservationCodedRaceAndEthnicityVitalRecords
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/coded-race-and-ethnicity-vr"
* id = "be362235-c816-47cf-b375-62144c43cf10"
* status = #final
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* code = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-local-observation-codes-vr#CodedRaceAndEthnicity "Coded Race and Ethnicity Data produced by NCHS from submitted death record"
* component[FirstEditedCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#101 "White"
* component[SecondEditedCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#122 "Israeli"
* component[FirstAmericanIndianCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#A31 "Arikara"
* component[RaceRecode40].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#20 "AIAN and Asian"
* component[HispanicCode].valueCodeableConcept = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-race-code-vr#233 "Chilean"

Instance: ManualUnderlyingCauseOfDeath-pandemicIPS-patient-1-stage-0
InstanceOf: ManualUnderlyingCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manual-underlying-cause-of-death"
* id = "53dddd5c-d75e-4413-b810-6138881ee573"
* status = #final
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* valueCodeableConcept = $ICD10#J96.0

Instance: AutomatedUnderlyingCauseOfDeath-pandemicIPS-patient-1-stage-0
InstanceOf: AutomatedUnderlyingCauseOfDeath
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-automated-underlying-cause-of-death"
* id = "ad580db9-034c-4d6f-9549-1140d19f2725"
* status = #final
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* valueCodeableConcept = $ICD10#J96.0

Instance: FuneralHome-pandemicIPS-patient-1-stage-0
InstanceOf: FuneralHome
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-funeral-home"
* id = "d7e83018-8071-444b-9c8f-c38821ce744f"
* active = true 
* name = "Lancaster Funeral Home and Crematory"
* address.line = "211 High Street"
* address.city = "Lancaster"
* address.state = "PA"
* address.country = "US"
* address.postalCode = "17573"

Instance: DecedentDispositionMethod-pandemicIPS-patient-1-stage-0
InstanceOf: DecedentDispositionMethod
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-disposition-method"
* id = "1f22c3d0-5e84-41a7-a079-a31cdd657b90"
* status = #final
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* performer = Reference(urn:uuid:d111662d-aeae-4d37-9d1f-142b23d122e6)
* valueCodeableConcept = $sct#449971000124106 "Patient status determination, deceased and buried"

Instance: PlaceOfInjury-pandemicIPS-patient-1-stage-0
InstanceOf: PlaceOfInjury
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-place-of-injury"
* id = "4d27baa2-df9a-48f3-8ea4-2d6c0b776a8d"
* status = #final
* subject = Reference(urn:uuid:35091917-585a-4f65-b15b-8bdd561fbbda)
* valueCodeableConcept = $loinc#LA14084-0 "Home"

Instance: CodingStatusValues-pandemicIPS-patient-1-stage-0
InstanceOf: CodingStatusValues
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-coding-status-values"
* id = "0a4a01cd-25f4-4993-826e-c54c363624e6"
* parameter[shipmentNumber].valueString = "A2B2"
* parameter[receiptDate].valueDate = "2021-12-12"
* parameter[coderStatus].valueInteger = 5
* parameter[intentionalReject].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-intentional-reject-cs#1 "Reject1"
* parameter[acmeSystemReject].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-intentional-reject-cs#0 "Not Rejected"
* parameter[transaxConversion].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-transax-conversion-cs#3 "Conversion using non-ambivalent table entries"


