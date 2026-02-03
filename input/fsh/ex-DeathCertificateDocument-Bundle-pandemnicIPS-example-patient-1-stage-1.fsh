Instance: ex-DeathCertificateDocument-Bundle-pandemnicIPS-example-patient-1-stage-1
InstanceOf: Bundle
Usage: #example
* id = "e817cefe-a7c4-487a-8116-be23cf865f3f"
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate-document"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/CertificateNumber"
* identifier.extension[=].valueString = "001621"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier1"
* identifier.extension[=].valueString = "000000000001"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier2"
* identifier.extension[=].valueString = "100000000001"
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2024001621"
* type = #document
* timestamp = "2024-07-01T14:48:35.401641-04:00"
* entry[+].fullUrl = "http://www.example.org/fhir/Composition/DeathCertificate-pandemnicIPS-example-patient-1"
* entry[=].resource = DeathCertificate-pandemnicIPS-example-patient-1
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1"
* entry[=].resource = Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1
* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/DecedentFather-Example1"
* entry[=].resource = DecedentFather-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/DecedentMother-Example1"
* entry[=].resource = DecedentMother-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/DecedentSpouse-Example1"
* entry[=].resource = DecedentSpouse-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/DecedentAge-Example1"
* entry[=].resource = DecedentAge-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/DecedentUsualWork-Example1"
* entry[=].resource = DecedentUsualWork-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/DecedentPregnancyStatus-Example1"
* entry[=].resource = DecedentPregnancyStatus-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/DeathDate-Example2"
* entry[=].resource = DeathDate-Example2
* entry[+].fullUrl = "http://www.example.org/fhir/Practitioner/Pronouncer-Example1"
* entry[=].resource = Pronouncer-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/MannerOfDeath-Example1"
* entry[=].resource = MannerOfDeath-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Practitioner/Certifier-Example1"
* entry[=].resource = Certifier-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Procedure/DeathCertification-Example1"
* entry[=].resource = DeathCertification-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/CauseOfDeathPart1-Example1"
* entry[=].resource = CauseOfDeathPart1-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/CauseOfDeathPart1-Example2"
* entry[=].resource = CauseOfDeathPart1-Example2
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/CauseOfDeathPart2-Example1"
* entry[=].resource = CauseOfDeathPart2-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Location/DispositionLocation-Example1"
* entry[=].resource = DispositionLocation-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/RecordAxisCauseOfDeath-Example1"
* entry[=].resource = RecordAxisCauseOfDeath-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/EntityAxisCauseOfDeath-Example1"
* entry[=].resource = EntityAxisCauseOfDeath-Example1

Instance: DeathCertificate-pandemnicIPS-example-patient-1
InstanceOf: Composition
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate"
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat"
* extension[=].valueCodeableConcept = $vrdr-filing-format-cs#electronic
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
* extension[=].valueCodeableConcept = $vrdr-replace-status-cs#original
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
* extension[=].valueString = "State Specific Content"
* status = #final
* type = $loinc#64297-5 "Death certificate"
* subject = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* date = "2024-07-01T00:00:00Z"
* author = Reference(Certifier-Example1)
* title = "Death Certificate"
* attester.mode = #legal
* attester.time = "2024-07-21T16:39:40-05:00"
* attester.party = Reference(Certifier-Example1)
* event.code = $sct#307930005 "Death certificate (record artifact)"
* event.detail = Reference(DeathCertification-Example1)
* section[+].code = $vrdr-document-section-cs#DecedentDemographics
* section[=].entry[+] = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* section[=].entry[+] = Reference(DecedentFather-Example1)
* section[=].entry[+] = Reference(DecedentMother-Example1)
* section[=].entry[+] = Reference(DecedentSpouse-Example1)
* section[=].entry[+] = Reference(DecedentAge-Example1)
* section[=].entry[+] = Reference(DecedentUsualWork-Example1)
* section[+].code = $vrdr-document-section-cs#DeathInvestigation
* section[=].entry[+] = Reference(DecedentPregnancyStatus-Example1)
* section[=].entry[+] = Reference(DeathDate-Example2)
* section[+].code = $vrdr-document-section-cs#DeathCertification
* section[=].entry[+] = Reference(Certifier-Example1)
* section[=].entry[+] = Reference(DeathCertification-Example1)
* section[=].entry[+] = Reference(MannerOfDeath-Example1)
* section[=].entry[+] = Reference(CauseOfDeathPart1-Example1)
* section[=].entry[+] = Reference(CauseOfDeathPart1-Example2)
* section[=].entry[+] = Reference(CauseOfDeathPart2-Example1)
* section[+].code = $vrdr-document-section-cs#DecedentDisposition
* section[=].entry[+] = Reference(DispositionLocation-Example1)
* section[=].entry[+] = Reference(Organization/FuneralHome-Example1)
* section[=].entry[+] = Reference(Observation/DecedentDispositionMethod-Example1)
* section[=].entry[+] = Reference(Practitioner/Mortician-Example1)
* section[+].code = $vrdr-document-section-cs#CodedContent
* section[=].entry[+] = Reference(Observation/ActivityAtTimeOfDeath-Example1)
* section[=].entry[+] = Reference(Observation/PlaceOfInjury-Example1)
* section[=].entry[+] = Reference(Observation/CodedRaceAndEthnicity-Example1)
* section[=].entry[+] = Reference(Observation/ManualUnderlyingCauseOfDeath-Example1)
* section[=].entry[+] = Reference(Observation/AutomatedUnderlyingCauseOfDeath-Example1)
* section[=].entry[+] = Reference(RecordAxisCauseOfDeath-Example1)
* section[=].entry[+] = Reference(EntityAxisCauseOfDeath-Example1)
* section[=].entry[+] = Reference(Parameters/CodingStatusValues-Example1)

Instance: Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1
InstanceOf: PatientUvIps
Usage: #example 
* id = "39c9964c-96b7-442d-afc1-2702106a9e57"
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent"
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
* name.use = #official
* name.family = "Patricia"
* name.given = "Jordana"
* gender = #female
* birthDate = "1996-08-16"
* address.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-within-city-limits-indicator-vr"
* address.extension[=].valueCoding = $v2-0136#Y "Yes"
* address.extension[+].url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/StreetName"
* address.extension[=].valueString = "Lockwood"
* address.line = "5590 Lockwood Drive"
* address.city = "Danville"
* address.city.extension.url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/CityCode"
* address.city.extension.valuePositiveInt = 1234
* address.district = "Fairfax"
* address.district.extension.url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/DistrictCode"
* address.district.extension.valuePositiveInt = 321
* address.state = "VA"
* address.country = "US"
* maritalStatus = $v3-MaritalStatus#S "Never Married"
* contact.relationship = $v2-0131#U
* contact.relationship.text = "Friend of family"
* contact.name.text = "Joe Smith"

Instance: DecedentFather-Example1
InstanceOf: RelatedPerson
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-father"
* active = true
* patient = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* relationship = $v3-RoleCode#FTH
* name.use = #official
* name.text = "Decedent Dad"
* name.family = "Smith"
* name.given = "John"
* name.suffix = "Sr"

Instance: DecedentMother-Example1
InstanceOf: RelatedPerson
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-mother"
* active = true
* patient = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* relationship = $v3-RoleCode#MTH
* name.use = #maiden
* name.text = "Decedent Mom"
* name.family = "Suzette"
* name.given = "Jane"

Instance: DecedentSpouse-Example1
InstanceOf: RelatedPerson
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-spouse"
* active = true
* patient = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* relationship = $v3-RoleCode#SPS
* name.use = #maiden
* name.text = "Decedent Spouse"
* name.family = "Gazette"
* name.given = "Samuel"
* name.suffix = "III"

Instance: DecedentAge-Example1
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-age"
* status = #final
* code = $loinc#39016-1
* subject = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* valueQuantity = 29 'a' "years"

Instance: DecedentUsualWork-Example1
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work"
* status = #final
* code = $loinc#21843-8
* subject = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* valueCodeableConcept = $ISCO08#5321 "Health Care Assistants"
* component.code = $loinc#86188-0 "History of Occupation Industry"
* component.valueCodeableConcept = $ISICRev4#871 "Residential nursing care facilities"

Instance: DecedentPregnancyStatus-Example1
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-pregnancy-status"
* status = #final
* code = $loinc#69442-2
* subject = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* valueCodeableConcept = $CodeSystem-death-pregnancy-status#2 "Pregnant at time of death"

Instance: DeathDate-Example2
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-date"
* status = #final
* code = $loinc#81956-5
* subject = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* effectiveDateTime = "2024-06-30T16:39:40-05:00"
* performer = Reference(Pronouncer-Example1)
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
* valueDateTime.extension.url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-partial-date-time-vr"
* component[+].code = $loinc#80616-6
* component[=].valueDateTime = "2024-06-30T16:39:40-05:00"
* component[+].code = $loinc#58332-8
* component[=].valueCodeableConcept = $sct#440081000124100 "Death in home"

Instance: Pronouncer-Example1
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
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

Instance: MannerOfDeath-Example1
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manner-of-death"
* status = #final
* code = $loinc#69449-7
* subject = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* performer = Reference(Certifier-Example1)
* valueCodeableConcept = $sct#38605008 "Natural death"

Instance: Certifier-Example1
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-certifier"
* extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/practitioner-role"
* extension.valueCode = #Certifier
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339100"
* name.use = #official
* name.family = "Black"
* name.given = "Jim"
* address.line = "44 South Street"
* address.city = "Bird in Hand"
* address.state = "PA"
* address.postalCode = "17505"
* address.country = "US"

Instance: DeathCertification-Example1
InstanceOf: Procedure
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certification"
* identifier.value = "180"
* status = #completed
* code = $sct#308646001 "Death certification"
* subject = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* performedDateTime = "2024-01-21T16:39:40-05:00"
* performer.function = $v3-NullFlavor#OTH "Other"
* performer.function.text = "Nurse Practitioner"
* performer.actor = Reference(Certifier-Example1)

Instance: CauseOfDeathPart1-Example1
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* status = #final
* code = $loinc#69453-9
* subject = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* performer = Reference(Certifier-Example1)
* valueCodeableConcept.text = "Covid-19"
* component[+].code = $vrdr-component-cs#lineNumber
* component[=].valueInteger = 1
* component[+].code = $loinc#69440-6
* component[=].valueString = "4 hours"

Instance: CauseOfDeathPart1-Example2
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* status = #final
* code = $loinc#69453-9
* subject = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* performer = Reference(Certifier-Example1)
* valueCodeableConcept.text = "Eclampsia"
* component[+].code = $vrdr-component-cs#lineNumber
* component[=].valueInteger = 2
* component[+].code = $loinc#69440-6
* component[=].valueString = "3 months"

Instance: CauseOfDeathPart2-Example1
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part2"
* status = #final
* code = $loinc#69441-4
* subject = Reference(Ex-Patient-1-for-secondaryUse-pandemnicIPS-stage-1)
* performer = Reference(Certifier-Example1)
* valueCodeableConcept.text = "hypertensive heart disease"

Instance: DispositionLocation-Example1
InstanceOf: Location
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-disposition-location"
* name = "Rosewood Cemetary"
* type = $vrdr-location-type-cs#disposition
* address.line = "303 Rosewood Ave"
* address.city = "Danville"
* address.state = "VA"
* address.postalCode = "24541"
* address.country = "US"
* physicalType = $location-physical-type#si "Site"

Instance: RecordAxisCauseOfDeath-Example1
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-record-axis-cause-of-death"
* status = #final
* code = $loinc#80357-7
* subject.display = "NCHS generated"
* valueCodeableConcept = $ICD10#U07.1 "COVID-19"
* component.code = $vrdr-component-cs#position
* component.valueInteger = 1

Instance: EntityAxisCauseOfDeath-Example1
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-entity-axis-cause-of-death"
* status = #final
* code = $loinc#80356-9
* subject.display = "NCHS generated"
* valueCodeableConcept = $ICD10#U07.1 "COVID-19"
* component[+].code = $vrdr-component-cs#lineNumber
* component[=].valueInteger = 1
* component[+].code = $vrdr-component-cs#position
* component[=].valueInteger = 1