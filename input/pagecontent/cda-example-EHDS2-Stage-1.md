



```xml
<ClinicalDocument xmlns:tns="urn:hl7-org:v3" xmlns="urn:hl7-org:v3" xmlns:ns2="urn:hl7-org:sdtc" xmlns:ns3="http://hl7.org/fhir" xmlns:ns4="urn:hl7-org:ips" xmlns:ns5="http://hl7.org/fhir" xmlns:ns6="http://www.w3.org/1999/xhtml" xmlns:ns7="urn:ihe:pharm:medication" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <realmCode code="US" />
  <typeId extension="POCD_HD000040" root="2.16.840.1.113883.1.3" />
  <templateId root="2.16.840.1.113883.10.22.3.2" />
  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.1" />
  <templateId root="1.3.6.1.4.1.19376.1.5.3.1.1.2" />
  <templateId root="2.16.840.1.113883.10.20.1" />
  <templateId root="2.16.840.1.113883.10.20.3" />
  <templateId root="2.16.840.1.113883.3.88.11.32.1" />
  <templateId root="2.16.840.1.113883.10.22.1.1" />
  <id extension="PSid.US202310300000177.cda" root="2.16.840.1.113883.3.9143.3.1.3" />
  <code code="60591-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" codeSystemVersion="2.59" displayName="Patient Summary" />
  <title>Patient Summary (IPS/US)</title>
  <effectiveTime value="20210820111725+0000" />
  <confidentialityCode code="N" codeSystem="2.16.840.1.113883.5.25" codeSystemName="Confidentiality" codeSystemVersion="913-20091020" displayName="normal" />
  <languageCode code="en-GB" />
  <!--      RECORD TARGET       -->
  <recordTarget>
    <patientRole>
      <id root="2.16.840.1.113883.3.9143.1.1" extension="PID-7ac6997e"></id>
      <addr>
        <postalCode>3210</postalCode>
      </addr>
      <telecom nullFlavor="NI" />
      <patient>
        <name>
          <given>PSeudoGiven</given>
          <family>PseudoFamily</family>
        </name>
        <administrativeGenderCode code="F" codeSystem="2.16.840.1.113883.5.1" codeSystemName="AdministrativeGender" displayName="Female" />
        <birthTime value="19960816" />
      </patient>
    </patientRole>
  </recordTarget>
  <author>
    <time value="20240602000000" />
    <assignedAuthor>
      <id extension="10" root="2.16.840.1.113883.3.9143.1.1" />
      <addr>
        <streetAddressLine>15 Chestnut Street, Wallingford, CT 06492</streetAddressLine>
      </addr>
      <telecom use="WP" value="tel:2035551212" />
      <assignedPerson>
        <name>
          <given>NoAssignedDoctorName</given>
          <family>NoAssignedDoctorFamilyName</family>
        </name>
      </assignedPerson>
      <representedOrganization classCode="ORG" determinerCode="INSTANCE">
        <id extension="gov.US" root="2.16.840.1.113883.3.9143.1.1" />
        <name>IPS -IHE - 3AHEALTH</name>
        <telecom use="WP" value="tel:2035551212" />
        <telecom use="WP" value="mailto:pccplan@googlegroups.com" />
        <addr use="WP">
          <streetAddressLine>15 Chestnut Street, Wallingford, CT 06492</streetAddressLine>
          <country>US</country>
        </addr>
      </representedOrganization>
    </assignedAuthor>
  </author>
  <!--        Document CUSTODIAN      -->
  <custodian typeCode="CST">
    <assignedCustodian classCode="ASSIGNED">
      <representedCustodianOrganization classCode="ORG" determinerCode="INSTANCE">
        <id extension="gov.US" root="2.16.840.1.113883.3.9143.1.1" />
        <name>IPS -IHE - PCC</name>
        <telecom use="WP" value="mailto:pccplan@googlegroups.com" />
        <addr use="WP">
          <streetAddressLine>15 Chestnut Street, Wallingford, CT 06492</streetAddressLine>
          <country>US</country>
        </addr>
      </representedCustodianOrganization>
    </assignedCustodian>
  </custodian>
  <!--        LEGAL AUTHENTICATOR      -->
  <legalAuthenticator>
    <time value="20210820000000+0000" />
    <signatureCode code="S" />
    <assignedEntity>
      <id extension="gov.US" root="2.16.840.1.113883.3.9143.1.1" />
      <addr>
        <streetAddressLine>Lefkotheou,20</streetAddressLine>
        <city>Nicosia</city>
        <postalCode>2054</postalCode>
        <country>US</country>
      </addr>
      <telecom nullFlavor="NI" />
      <assignedPerson classCode="PSN" determinerCode="INSTANCE">
        <name>
          <given>NoAssignedDoctorName</given>
          <family>NoAssignedDoctorFamilyName</family>
        </name>
      </assignedPerson>
      <representedOrganization classCode="ORG" determinerCode="INSTANCE">
        <id extension="gov.US" root="2.16.840.1.113883.3.9143.1.1" />
        <name>IPS -IHE - PCC</name>
        <telecom use="WP" value="tel:2035551212" />
        <telecom use="WP" value="mailto:pccplan@googlegroups.com" />
        <addr use="WP">
          <streetAddressLine>15 Chestnut Street, Wallingford, CT 06492</streetAddressLine>
          <country>US</country>
        </addr>
      </representedOrganization>
    </assignedEntity>
  </legalAuthenticator>
  <!--        PARTICIPANT      -->
  <participant typeCode="IND">
    <templateId root="2.16.840.1.113883.10.22.2.5" />
    <functionCode code="PCP" codeSystem="2.16.840.1.113883.5.88" codeSystemName="HL7 ParticipationFunction" displayName="Primary Care Physician" />
    <associatedEntity classCode="PRS">
      <addr use="WP">
        <streetAddressLine>Lefkotheou,20</streetAddressLine>
        <city>Nicosia</city>
        <postalCode>2054</postalCode>
        <country>US</country>
      </addr>
      <telecom use="WP" value="tel:2035551212" />
      <associatedPerson>
        <name>
          <given>NoAssignedDoctorName</given>
          <family>NoAssignedDoctorFamilyName</family>
        </name>
      </associatedPerson>
    </associatedEntity>
  </participant>
  <!--        DOCUMENTATION OF...      -->
  <documentationOf typeCode="DOC">
    <serviceEvent classCode="PCPR" moodCode="EVN">
      <effectiveTime>
        <low value="20240603130233+0000" />
        <high value="20240603130233+0000" />
      </effectiveTime>
    </serviceEvent>
  </documentationOf>
  <!--        RELATED DOCUMENT      -->
  <relatedDocument typeCode="XFRM">
    <parentDocument>
      <id extension="PSid.US202310300000177" root="2.16.840.1.113883.3.9143.3.1.3" />
    </parentDocument>
  </relatedDocument>
  <component>
    <structuredBody classCode="DOCBODY">
      <!--STARTS HERE-->
      <!--    UNKNOWN OR ACTIVE ALLERGIES    -->
      <component>
        <section>
          <templateId root="2.16.840.1.113883.10.20.22.2.6.1"></templateId>
          <templateId root="2.16.840.1.113883.10.20.22.2.6.1" extension="2015-08-01"></templateId>
          <templateId root="2.16.840.1.113883.10.22.3.2"></templateId>
          <!-- IPS -->
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.3.13"></templateId>
          <!-- XDS-MS -->
          <id nullFlavor="NA"></id>
          <code code="48765-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Allergies &amp;or adverse reactions"></code>
          <title>ALLERGIES</title>
          <text>
            <table border="1" width="100%">
              <thead>
                <tr>
                  <th>Substance</th>
                  <th>Reaction</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <content ID="Agy65">Influenza Vaccine Product</content>
                  </td>
                  <td>
                    <content ID="reaction65">Rash</content>
                  </td>
                </tr>
              </tbody>
            </table>
          </text>
          <entry typeCode="DRIV">
            <act classCode="ACT" moodCode="EVN">
              <templateId root="2.16.840.1.113883.10.20.22.4.30"></templateId>
              <templateId root="2.16.840.1.113883.10.20.22.4.30" extension="2015-08-01"></templateId>
              <!-- IPS -->
              <templateId root="2.16.840.1.113883.10.22.4.5"></templateId>
              <!-- ** Allergy problem act ** -->
              <id extension="65" root="1.2.840.114398.1.11999116114111111116.999.24.1"></id>
              <code code="CONC" codeSystem="2.16.840.1.113883.5.6"></code>
              <statusCode code="active"></statusCode>
              <effectiveTime xsi:type="IVL_TS" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                <low nullFlavor="UNK"></low>
                <high nullFlavor="UNK"></high>
              </effectiveTime>
              <entryRelationship typeCode="SUBJ" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- allergy observation template -->
                  <templateId root="2.16.840.1.113883.10.20.22.4.7"></templateId>
                  <templateId root="2.16.840.1.113883.10.20.22.4.7" extension="2014-06-09"></templateId>
                  <!-- IPS -->
                  <templateId root="2.16.840.1.113883.10.22.4.1"></templateId>
                  <id extension="65" root="1.2.840.114398.1.11999116114111111116.999.24.2"></id>
                  <code code="OINT" codeSystem="2.16.840.1.113883.5.4"></code>
                  <text>
                    <reference value="#Agy65"></reference>
                  </text>
                  <statusCode code="completed"></statusCode>
                  <effectiveTime>
                    <low value="20201001" />
                  </effectiveTime>
                  <value xsi:type="CD" code="419511003" displayName="Propensity to adverse reaction" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                    <originalText>
                      <reference value="#reaction65"></reference>
                    </originalText>
                  </value>
                  <!-- Author Participation -->
                  <author>
                    <templateId root="2.16.840.1.113883.10.20.22.4.119"></templateId>
                    <!-- Time was actually written -->
                    <time value="20250205"></time>
                    <assignedAuthor>
                      <id nullFlavor="NA"></id>
                      <assignedPerson>
                        <name>
                          <given>David</given>
                          <family>Carlson</family>
                        </name>
                      </assignedPerson>
                    </assignedAuthor>
                  </author>
                  <participant typeCode="CSM">
                    <participantRole classCode="MANU">
                      <playingEntity classCode="MMAT">
                        <code code="294647003" displayName="Allergy to component of vaccine product containing Influenza virus antigen (finding)" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                          <originalText>
                            <reference value="#Agy65"></reference>
                          </originalText>
                          <translation code="3722" codeSystem="1.2.840.114398.2.0.4.1" codeSystemName="MIE allergy_id"></translation>
                          <translation code="1" codeSystem="1.2.840.114398.2.0.4.2" codeSystemName="MIE agyid_type"></translation>
                          <translation code="0" codeSystem="1.2.840.114398.2.0.4.3" codeSystemName="MIE intolerance"></translation>
                        </code>
                      </playingEntity>
                    </participantRole>
                  </participant>
                  <entryRelationship typeCode="MFST" inversionInd="true">
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="2.16.840.1.113883.10.20.22.4.9"></templateId>
                      <templateId root="2.16.840.1.113883.10.20.22.4.9" extension="2014-06-09"></templateId>
                      <!-- Reaction observation template -->
                      <id extension="65" root="1.2.840.114398.1.11999116114111111116.999.24.1.1"></id>
                      <code nullFlavor="NA"></code>
                      <text>
                        <reference value="#reaction65"></reference>
                      </text>
                      <statusCode code="completed"></statusCode>
                      <effectiveTime>
                        <low nullFlavor="NA"></low>
                      </effectiveTime>
                      <value xsi:type="CD" code="271807003" codeSystem="2.16.840.1.113883.6.96" displayName="Rash" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                        <originalText>Rash</originalText>
                      </value>
                      <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <observation classCode="OBS" moodCode="EVN">
                          <templateId root="2.16.840.1.113883.10.20.22.4.8"></templateId>
                          <templateId root="2.16.840.1.113883.10.20.22.4.8" extension="2014-06-09"></templateId>
                          <id root="1.2.840.114398.1.1199911668746787971181012" extension="30"></id>
                          <code code="SEV" codeSystem="2.16.840.1.113883.5.4" codeSystemName="HL7ActCode" displayName="Moderate"></code>
                          <text>Unknown</text>
                          <statusCode code="completed"></statusCode>
                          <value xsi:type="CD" code="6736007" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="moderate" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"></value>
                        </observation>
                      </entryRelationship>
                    </observation>
                  </entryRelationship>
                </observation>
              </entryRelationship>
            </act>
          </entry>
        </section>
      </component>
      <!--    UNKNOWN OR ACTIVE PROBLEMS    -->
      <component>
        <section>
          <templateId root="2.16.840.1.113883.10.22.3.3" />
          <code code="11450-4" codeSystem="2.16.840.1.113883.6.1" />
          <title>Problem List</title>
          <text>
            <table width="100%">
              <thead>
                <tr>
                  <th>Problem Name</th>
                  <th>Onset Date</th>
                  <th>End Date</th>
                  <th>Severity</th>
                  <th>Description</th>
                </tr>
              </thead>
              <tbody>
                <tr ID="medicalProblem.1">
                  <td>Influenza caused by pandemic influenza virus (disorder)</td>
                  <td>2024-06-15</td>
                  <td />
                  <td>Severe</td>
                  <td></td>
                </tr>
                <tr ID="medicalProblem.2">
                  <td>Severe asthma</td>
                  <td>01/03/2006</td>
                  <td />
                  <td>Severe</td>
                  <td>Severe asthma (disorder)</td>
                </tr>
              </tbody>
            </table>
          </text>
          <entry typeCode="DRIV">
            <act classCode="ACT" moodCode="EVN">
              <templateId root="2.16.840.1.113883.10.22.4.7" />
              <id extension="1" root="1.3.6.1.4.1.21367.2011.2.5.5610" />
              <code code="CONC" codeSystem="2.16.840.1.113883.5.6" />
              <statusCode code="active" />
              <effectiveTime>
                <low value="20130305" />
              </effectiveTime>
              <entryRelationship typeCode="SUBJ">
                <observation classCode="OBS" moodCode="EVN">
                  <templateId root="2.16.840.1.113883.10.22.4.8" />
                  <id extension="1" root="1.3.6.1.4.1.21367.2011.2.5.5610" />
                  <code code="75326-9" codeSystem="2.16.840.1.113883.6.1" displayName="Problem" />
                  <statusCode code="completed" />
                  <effectiveTime>
                    <low value="20240615" />
                  </effectiveTime>
                  <value code="719865001" codeSystem="2.16.840.1.113883.6.96" displayName="Influenza caused by pandemic influenza virus (disorder)" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                  <entryRelationship inversionInd="false" typeCode="REFR">
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="2.16.840.1.113883.10.22.4.20" />
                      <code code="33999-4" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value code="active" codeSystem="2.16.840.1.113883.4.642.3.155" displayName="Active" xsi:type="CE" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                    </observation>
                  </entryRelationship>
                </observation>
              </entryRelationship>
            </act>
          </entry>
          <entry typeCode="DRIV">
            <act classCode="ACT" moodCode="EVN">
              <templateId root="2.16.840.1.113883.10.22.4.7" />
              <id extension="1" root="1.3.6.1.4.1.21367.2011.2.5.5610" />
              <code code="CONC" codeSystem="2.16.840.1.113883.5.6" />
              <statusCode code="active" />
              <effectiveTime>
                <low value="20060103" />
              </effectiveTime>
              <entryRelationship typeCode="SUBJ">
                <observation classCode="OBS" moodCode="EVN">
                  <templateId root="2.16.840.1.113883.10.22.4.8" />
                  <id extension="1" root="1.3.6.1.4.1.21367.2011.2.5.5610" />
                  <code code="75326-9" codeSystem="2.16.840.1.113883.6.1" displayName="Problem" />
                  <statusCode code="completed" />
                  <effectiveTime>
                    <low value="20060103" />
                  </effectiveTime>
                  <value code="370221004" codeSystem="2.16.840.1.113883.6.96" displayName="Severe asthma (disorder)" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                  <entryRelationship inversionInd="false" typeCode="REFR">
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="2.16.840.1.113883.10.22.4.20" />
                      <code code="33999-4" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value code="active" codeSystem="2.16.840.1.113883.4.642.3.155" displayName="Active" xsi:type="CE" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                    </observation>
                  </entryRelationship>
                </observation>
              </entryRelationship>
            </act>
          </entry>
        </section>
      </component>
      <!--    UNKNOWN OR ACTIVE MEDICATION      -->
      <component>
        <section classCode="DOCSECT">
          <templateId root="2.16.840.1.113883.10.22.3.1" />
          <code code="10160-0" codeSystem="2.16.840.1.113883.6.1" />
          <title>Medication Summary</title>
          <text>
            <table width="100%">
              <thead>
                <tr>
                  <th>Product Name</th>
                  <th>Active Ingredient</th>
                  <th>Quantity</th>
                  <th>Quantity Unit</th>
                  <th>Package Description</th>
                  <th>Frequency of Intake Amount</th>
                  <th>Frequency of Intake Unit</th>
                  <th>Route of Administration</th>
                  <th>Duration of Treatment Amount</th>
                  <th>Duration of Treatment Unit</th>
                  <th>Problem/Illness and Disorder</th>
                  <th>Problem/Rare Disease</th>
                  <th>End Date Time</th>
                  <th>Onset Date Time</th>
                  <th>Unit Concept Code</th>
                  <th>ATC Code</th>
                  <th>ATC Description</th>
                  <th>Package Strength</th>
                  <th>Instructions to Patient</th>
                  <th>Advice to Dispenser</th>
                </tr>
              </thead>
              <tbody>
                <tr ID="MedicationName_0">
                  <td>XARELTO TABLET, FILM COATED 20MG</td>
                  <td>Oseltamivir</td>
                  <td>2</td>
                  <td>TABLET</td>
                  <td>TABLET, FILM COATED</td>
                  <td>2</td>
                  <td>Day</td>
                  <td>ORAL USE</td>
                  <td>5</td>
                  <td>Day</td>
                  <td>Influenza</td>
                  <td />
                  <td>2024-06-16T11:00:00Z</td>
                  <td>2024-06-16T11:00:00Z</td>
                  <td>d</td>
                  <td>B01AF01</td>
                  <td>Oseltamivir</td>
                  <td>75MG</td>
                  <td>1 per day for 10 days</td>
                  <td>Oseltamivir phosphate (substance)</td>
                </tr>
              </tbody>
            </table>
          </text>
          <entry typeCode="DRIV">
            <substanceAdministration classCode="SBADM" moodCode="EVN">
              <templateId root="2.16.840.1.113883.10.22.4.4" />
              <id extension="af20f550-f6fa-414d-8eef-bfd4711fe7c0" root="1.3.6.1.4.1.21367.2011.2.5.5610" />
              <code code="DRUG" codeSystem="2.16.840.1.113883.5.4" />
              <statusCode code="completed" />
              <effectiveTime xsi:type="IVL_TS" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                <low value="20240616" />
                <high value="20240621" />
              </effectiveTime>
              <consumable typeCode="CSM">
                <manufacturedProduct classCode="MANU">
                  <templateId root="2.16.840.1.113883.10.22.4.2" />
                  <manufacturedMaterial>
                    <templateId root="2.16.840.1.113883.10.22.4.3" />
                    <code code="116113006" displayName="Oseltamivir phosphate (substance)" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT">
                      <originalText>
                        <reference value="#MedicationName_0" />
                      </originalText>
                      <translation code="23155-0104-10" displayName="METFORMIN HCL 1000MG TAB" codeSystem="2.16.840.1.113883.6.69" codeSystemName="NDC" />
                    </code>
                  </manufacturedMaterial>
                </manufacturedProduct>
              </consumable>
              <entryRelationship typeCode="COMP">
                <substanceAdministration classCode="SBADM" moodCode="EVN">
                  <templateId root="2.16.840.1.113883.10.21.4.6" />
                  <statusCode code="active" />
                  <consumable>
                    <manufacturedProduct>
                      <manufacturedMaterial nullFlavor="NA" />
                    </manufacturedProduct>
                  </consumable>
                </substanceAdministration>
              </entryRelationship>
            </substanceAdministration>
          </entry>
        </section>
      </component>
      <!--    UNKNOWN OR ACTIVE MEDICAL DEVICES      -->
      <component>
        <section classCode="DOCSECT">
          <templateId root="2.16.840.1.113883.10.22.3.6" />
          <code code="46264-8" codeSystem="2.16.840.1.113883.6.1" />
          <title>Medical Devices</title>
          <text>
            <paragraph>No information about known devices found</paragraph>
          </text>
          <entry typeCode="DRIV">
            <supply classCode="SPLY" moodCode="EVN">
              <templateId root="2.16.840.1.113883.10.22.4.26" />
              <statusCode code="completed" />
              <effectiveTime xsi:type="IVL_TS" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                <low value="20240615" />
              </effectiveTime>
              <participant typeCode="DEV">
                <participantRole classCode="MANU">
                  <playingDevice classCode="DEV" determinerCode="INSTANCE">
                    <code code="no-device-info" codeSystem="2.16.840.1.113883.5.1150.1" displayName="No information about device" />
                  </playingDevice>
                  <scopingEntity>
                    <id root="2.16.840.1.113883.3.3719" />
                  </scopingEntity>
                </participantRole>
              </participant>
            </supply>
          </entry>
        </section>
      </component>
      <!--Advance Directives  -->
      <component>
        <section>
          <templateId root="2.16.840.1.113883.10.22.3.12" />
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.3.34" />
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.3.35" />
          <id extension="6" root="1.2.840.114398.1.4156" />
          <code code="42348-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="ADVANCED DIRECTIVES" />
          <title>Advance Directives</title>
          <text>
            <table width="100%">
              <tbody>
                <tr>
                  <td>No Advanced Directives</td>
                </tr>
              </tbody>
            </table>
          </text>
        </section>
      </component>
      <!--Vital Signs -->
      <component>
        <section>
          <templateId root="2.16.840.1.113883.10.22.3.16" />
          <code code="8716-3" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Vital Signs" />
          <title>VITAL SIGNS</title>
          <text>
            <table border="1" width="100%">
              <thead>
                <tr>
                  <th>Date</th>
                  <th>Name</th>
                  <th>Value</th>
                  <th>Unit</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>2024/06/16</td>
                  <td ID="VitalSign1">Height</td>
                  <td>71</td>
                  <td>in</td>
                </tr>
                <tr>
                  <td>2024/06/16</td>
                  <td ID="VitalSign2">Weight</td>
                  <td>230</td>
                  <td>lb</td>
                </tr>
                <tr>
                  <td>2024/06/16</td>
                  <td ID="VitalSign3">BMI</td>
                  <td>32.1 kg/m^2</td>
                  <td>kg/m^2</td>
                </tr>
                <tr>
                  <td>2024/06/16</td>
                  <td ID="VitalSign4">BP Diastolic</td>
                  <td>130</td>
                  <td>mm[Hg]</td>
                </tr>
                <tr>
                  <td>2024/06/16</td>
                  <td ID="VitalSign5">BP Systolic</td>
                  <td>80</td>
                  <td>mm[Hg]</td>
                </tr>
                <tr>
                  <td>2024/06/16</td>
                  <td ID="VitalSign6">Heart Rate</td>
                  <td>80</td>
                  <td>/min</td>
                  <td>pulse rate E&amp;M</td>
                </tr>
                <tr>
                  <td>2024/06/16</td>
                  <td ID="VitalSign7">Heart Rate</td>
                  <td>85</td>
                  <td>%</td>
                  <td>Oxygen saturation in Arterial blood by Pulse oximetry</td>
                </tr>
              </tbody>
            </table>
          </text>
          <entry typeCode="DRIV">
            <organizer classCode="CLUSTER" moodCode="EVN">
              <templateId root="2.16.840.1.113883.10.22.4.44" />
              <id root="C74BEA7B-F028-45A3-BD5D-A59DA6A17C71" />
              <code code="85353-1" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Vital signs, weight, height, head circumference, oxygen saturation and BMI panel" />
              <statusCode code="completed" />
              <effectiveTime>
                <low value="20240615094400-0600" />
                <high value="20240615094400-0600" />
              </effectiveTime>
              <component>
                <observation classCode="OBS" moodCode="EVN" negationInd="true">
                  <templateId root="2.16.840.1.113883.10.22.4.45" />
                  <id extension="53-1418436101000" root="1.2.840.113619.21.1.8899560752578716278.3.7" />
                  <code code="8302-2" codeSystem="2.16.840.1.113883.3.88.12.80.62" codeSystemName="LOINC" displayName="Body height" />
                  <text>
                    <reference value="#VitalSign1" />
                  </text>
                  <statusCode code="completed" />
                  <effectiveTime>
                    <low value="20240615094400-0600" />
                    <high value="20240615094400-0600" />
                  </effectiveTime>
                  <value unit="[in_us]" value="71" xsi:type="PQ" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"></value>
                  <author typeCode="AUT" contextControlCode="OP">
                    <time value="20240529190743+0200" />
                    <assignedAuthor classCode="ASSIGNED">
                      <id root="2.16.724.4.9.400.1" />
                      <addr nullFlavor="NA" />
                      <telecom nullFlavor="NI" />
                      <assignedAuthoringDevice classCode="DEV" determinerCode="INSTANCE">
                        <softwareName>My Software</softwareName>
                      </assignedAuthoringDevice>
                      <representedOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id root="2.16.724.4.9.400.1.12345" />
                        <name>Good Health Clinic</name>
                        <telecom use="WP" value="tel:2035551212" />
                        <addr>
                          <streetAddressLine>123 Main Street</streetAddressLine>
                          <city>Oak Brook</city>
                          <state>IL</state>
                          <postalCode>60523</postalCode>
                          <country>US</country>
                        </addr>
                      </representedOrganization>
                    </assignedAuthor>
                  </author>
                  <entryRelationship typeCode="RSON">
                    <observation classCode="CNOD" moodCode="EVN">
                      <templateId root="2.16.840.1.113762.1.4.1041.1" />
                      <code code="77765009" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Excluded" />
                      <statusCode code="completed" />
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN" negationInd="true">
                  <templateId root="2.16.840.1.113883.10.20.22.4.27" />
                  <id extension="54-1418436101000" root="1.2.840.113619.21.1.8899560752578716278.3.7" />
                  <code code="3141-9" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Body weight Measured" />
                  <text>
                    <reference value="#VitalSign2" />
                  </text>
                  <statusCode code="completed" />
                  <effectiveTime>
                    <low value="20240615094400-0600" />
                    <high value="20240615094400-0600" />
                  </effectiveTime>
                  <value unit="[lb_av]" value="230" xsi:type="PQ" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"></value>
                  <interpretationCode nullFlavor="NA" />
                  <methodCode nullFlavor="NA" />
                  <author typeCode="AUT" contextControlCode="OP">
                    <time value="20240529190743+0200" />
                    <assignedAuthor classCode="ASSIGNED">
                      <id root="2.16.724.4.9.400.1" />
                      <addr nullFlavor="NA" />
                      <telecom nullFlavor="NI" />
                      <assignedAuthoringDevice classCode="DEV" determinerCode="INSTANCE">
                        <softwareName>My Software</softwareName>
                      </assignedAuthoringDevice>
                      <representedOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id root="2.16.724.4.9.400.1.12345" />
                        <name>Good Health Clinic</name>
                        <telecom use="WP" value="tel:2035551212" />
                        <addr>
                          <streetAddressLine>123 Main Street</streetAddressLine>
                          <city>Oak Brook</city>
                          <state>IL</state>
                          <postalCode>60523</postalCode>
                          <country>US</country>
                        </addr>
                      </representedOrganization>
                    </assignedAuthor>
                  </author>
                  <entryRelationship typeCode="RSON">
                    <observation classCode="CNOD" moodCode="EVN">
                      <templateId root="2.16.840.1.113762.1.4.1041.1" />
                      <code code="77765009" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Excluded" />
                      <statusCode code="completed" />
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN" negationInd="true">
                  <templateId root="2.16.840.1.113883.10.20.22.4.27" />
                  <id extension="56-1418436101000" root="1.2.840.113619.21.1.8899560752578716278.3.7" />
                  <code code="39156-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="BMI (Body Mass Index)" />
                  <text>
                    <reference value="#VitalSign3" />
                  </text>
                  <statusCode code="completed" />
                  <effectiveTime>
                    <low value="20240615094400-0600" />
                    <high value="20240615094400-0600" />
                  </effectiveTime>
                  <value unit="kg/m2" value="32.1" xsi:type="PQ" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                  <methodCode nullFlavor="NA" />
                  <author typeCode="AUT" contextControlCode="OP">
                    <time value="20240529190743+0200" />
                    <assignedAuthor classCode="ASSIGNED">
                      <id root="2.16.724.4.9.400.1" />
                      <addr nullFlavor="NA" />
                      <telecom nullFlavor="NI" />
                      <assignedAuthoringDevice classCode="DEV" determinerCode="INSTANCE">
                        <softwareName>My Software</softwareName>
                      </assignedAuthoringDevice>
                      <representedOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id root="2.16.724.4.9.400.1.12345" />
                        <name>Good Health Clinic</name>
                        <telecom use="WP" value="tel:2035551212" />
                        <addr>
                          <streetAddressLine>123 Main Street</streetAddressLine>
                          <city>Oak Brook</city>
                          <state>IL</state>
                          <postalCode>60523</postalCode>
                          <country>US</country>
                        </addr>
                      </representedOrganization>
                    </assignedAuthor>
                  </author>
                  <entryRelationship typeCode="RSON">
                    <observation classCode="CNOD" moodCode="EVN">
                      <templateId root="2.16.840.1.113762.1.4.1041.1" />
                      <code code="77765009" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Excluded" />
                      <statusCode code="completed" />
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN" negationInd="true">
                  <templateId root="2.16.840.1.113883.10.22.4.45" />
                  <id extension="53-1418436101000" root="1.2.840.113619.21.1.8899560752578716278.3.7" />
                  <code code="8462-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="BP Diastolic">
                    <translation code="53" codeSystem="1.2.840.113619.21.3.2527" codeSystemName="GE_HDID_SYSTEM" displayName="blood pressure, diastolic" />
                  </code>
                  <text>
                    <reference value="#VitalSign4" />
                  </text>
                  <statusCode code="completed" />
                  <effectiveTime>
                    <low value="20240615094400-0600" />
                    <high value="20240615094400-0600" />
                  </effectiveTime>
                  <value unit="mm[Hg]" value="130" xsi:type="PQ" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                  <interpretationCode nullFlavor="NA" />
                  <methodCode nullFlavor="NA" />
                  <author typeCode="AUT" contextControlCode="OP">
                    <time value="20240529190743+0200" />
                    <assignedAuthor classCode="ASSIGNED">
                      <id root="2.16.724.4.9.400.1" />
                      <addr nullFlavor="NA" />
                      <telecom nullFlavor="NI" />
                      <assignedAuthoringDevice classCode="DEV" determinerCode="INSTANCE">
                        <softwareName>My Software</softwareName>
                      </assignedAuthoringDevice>
                      <representedOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id root="2.16.724.4.9.400.1.12345" />
                        <name>Good Health Clinic</name>
                        <telecom use="WP" value="tel:2035551212" />
                        <addr>
                          <streetAddressLine>123 Main Street</streetAddressLine>
                          <city>Oak Brook</city>
                          <state>IL</state>
                          <postalCode>60523</postalCode>
                          <country>US</country>
                        </addr>
                      </representedOrganization>
                    </assignedAuthor>
                  </author>
                  <entryRelationship typeCode="RSON">
                    <observation classCode="CNOD" moodCode="EVN">
                      <templateId root="2.16.840.1.113762.1.4.1041.1" />
                      <code code="77765009" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Excluded" />
                      <statusCode code="completed" />
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN" negationInd="true">
                  <templateId root="2.16.840.1.113883.10.20.22.4.27" />
                  <id extension="54-1418436101000" root="1.2.840.113619.21.1.8899560752578716278.3.7" />
                  <code code="8480-6" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="BP Systolic">
                    <translation code="54" codeSystem="1.2.840.113619.21.3.2527" codeSystemName="GE_HDID_SYSTEM" displayName="blood pressure, systolic" />
                  </code>
                  <text>
                    <reference value="#VitalSign5" />
                  </text>
                  <statusCode code="completed" />
                  <effectiveTime>
                    <low value="20240615094400-0600" />
                    <high value="20240615094400-0600" />
                  </effectiveTime>
                  <value unit="mm[Hg]" value="80" xsi:type="PQ" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                  <interpretationCode nullFlavor="NA" />
                  <methodCode nullFlavor="NA" />
                  <author typeCode="AUT" contextControlCode="OP">
                    <time value="20240529190743+0200" />
                    <assignedAuthor classCode="ASSIGNED">
                      <id root="2.16.724.4.9.400.1" />
                      <addr nullFlavor="NA" />
                      <telecom nullFlavor="NI" />
                      <assignedAuthoringDevice classCode="DEV" determinerCode="INSTANCE">
                        <softwareName>My Software</softwareName>
                      </assignedAuthoringDevice>
                      <representedOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id root="2.16.724.4.9.400.1.12345" />
                        <name>Good Health Clinic</name>
                        <telecom use="WP" value="tel:2035551212" />
                        <addr>
                          <streetAddressLine>123 Main Street</streetAddressLine>
                          <city>Oak Brook</city>
                          <state>IL</state>
                          <postalCode>60523</postalCode>
                          <country>US</country>
                        </addr>
                      </representedOrganization>
                    </assignedAuthor>
                  </author>
                  <entryRelationship typeCode="RSON">
                    <observation classCode="CNOD" moodCode="EVN">
                      <templateId root="2.16.840.1.113762.1.4.1041.1" />
                      <code code="77765009" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Excluded" />
                      <statusCode code="completed" />
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN" negationInd="true">
                  <templateId root="2.16.840.1.113883.10.20.22.4.27" />
                  <id extension="56-1418436101000" root="1.2.840.113619.21.1.8899560752578716278.3.7" />
                  <code code="8867-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Heart Rate">
                    <translation code="56" codeSystem="1.2.840.113619.21.3.2527" codeSystemName="GE_HDID_SYSTEM" displayName="pulse rate E&amp;M" />
                  </code>
                  <text>
                    <reference value="#VitalSign6" />
                  </text>
                  <statusCode code="completed" />
                  <effectiveTime>
                    <low value="20240615094400-0600" />
                    <high value="20240615094400-0600" />
                  </effectiveTime>
                  <value unit="/min" value="80" xsi:type="PQ" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"></value>
                  <interpretationCode nullFlavor="NA" />
                  <methodCode nullFlavor="NA" />
                  <author typeCode="AUT" contextControlCode="OP">
                    <time value="20240529190743+0200" />
                    <assignedAuthor classCode="ASSIGNED">
                      <id root="2.16.724.4.9.400.1" />
                      <addr nullFlavor="NA" />
                      <telecom nullFlavor="NI" />
                      <assignedAuthoringDevice classCode="DEV" determinerCode="INSTANCE">
                        <softwareName>My Software</softwareName>
                      </assignedAuthoringDevice>
                      <representedOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id root="2.16.724.4.9.400.1.12345" />
                        <name>Good Health Clinic</name>
                        <telecom use="WP" value="tel:2035551212" />
                        <addr>
                          <streetAddressLine>123 Main Street</streetAddressLine>
                          <city>Oak Brook</city>
                          <state>IL</state>
                          <postalCode>60523</postalCode>
                          <country>US</country>
                        </addr>
                      </representedOrganization>
                    </assignedAuthor>
                  </author>
                  <entryRelationship typeCode="RSON">
                    <observation classCode="CNOD" moodCode="EVN">
                      <templateId root="2.16.840.1.113762.1.4.1041.1" />
                      <code code="77765009" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Excluded" />
                      <statusCode code="completed" />
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
              <component>
                <observation classCode="OBS" moodCode="EVN" negationInd="true">
                  <templateId root="2.16.840.1.113883.10.20.22.4.27" />
                  <id extension="56-1418436101000" root="1.2.840.113619.21.1.8899560752578716278.3.7" />
                  <code code="59408-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Oxygen saturation in Arterial blood by Pulse oximetry"></code>
                  <text>
                    <reference value="#VitalSign7" />
                  </text>
                  <statusCode code="completed" />
                  <effectiveTime>
                    <low value="20240615094400-0600" />
                    <high value="20240615094400-0600" />
                  </effectiveTime>
                  <value unit="%" value="85" xsi:type="PQ" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"></value>
                  <interpretationCode nullFlavor="NA" />
                  <methodCode nullFlavor="NA" />
                  <author typeCode="AUT" contextControlCode="OP">
                    <time value="20240529190743+0200" />
                    <assignedAuthor classCode="ASSIGNED">
                      <id root="2.16.724.4.9.400.1" />
                      <addr nullFlavor="NA" />
                      <telecom nullFlavor="NI" />
                      <assignedAuthoringDevice classCode="DEV" determinerCode="INSTANCE">
                        <softwareName>My Software</softwareName>
                      </assignedAuthoringDevice>
                      <representedOrganization classCode="ORG" determinerCode="INSTANCE">
                        <id root="2.16.724.4.9.400.1.12345" />
                        <name>Good Health Clinic</name>
                        <telecom use="WP" value="tel:2035551212" />
                        <addr>
                          <streetAddressLine>123 Main Street</streetAddressLine>
                          <city>Oak Brook</city>
                          <state>IL</state>
                          <postalCode>60523</postalCode>
                          <country>US</country>
                        </addr>
                      </representedOrganization>
                    </assignedAuthor>
                  </author>
                  <entryRelationship typeCode="RSON">
                    <observation classCode="CNOD" moodCode="EVN">
                      <templateId root="2.16.840.1.113762.1.4.1041.1" />
                      <code code="77765009" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Excluded" />
                      <statusCode code="completed" />
                    </observation>
                  </entryRelationship>
                </observation>
              </component>
            </organizer>
          </entry>
        </section>
      </component>
      <!--Plan of Care-->
      <component>
        <section>
          <templateId root="2.16.840.1.113883.10.22.3.9" />
          <id extension="1" root="1.2.840.114398.1.4156" />
          <code code="18776-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Treatment Plan" />
          <title>PLAN OF CARE</title>
          <text>
            <table width="100%">
              <thead>
                <tr>
                  <th>INSTRUCTION/INTERVENTION</th>
                  <th>FREQUENCY</th>
                  <th>ASSIGNED DATE</th>
                  <th>STARTED DATE</th>
                  <th>ACHIEVED/DISCONTINUED DATE</th>
                  <th>STATUS</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Treat with antiviral medication</td>
                  <td>5</td>
                  <td>2024/06/16</td>
                  <td></td>
                  <td />
                  <td>ACTIVE</td>
                </tr>
                <tr>
                  <td>Provide Assisted Breathing on Ventilator</td>
                  <td>NA</td>
                  <td>2024/06/16</td>
                  <td></td>
                  <td />
                  <td>ACTIVE</td>
                </tr>
              </tbody>
            </table>
          </text>
        </section>
      </component>
      <!--Pregnancy Status-->
      <component>
        <section classCode="DOCSECT">
          <templateId root="2.16.840.1.113883.10.22.3.11" />
          <code code="10162-6" codeSystem="2.16.840.1.113883.6.1" />
          <title>History of pregnancies</title>
          <text>
            <table width="100%">
              <caption>Pregnancy Status Observations</caption>
              <thead>
                <tr>
                  <th>Date Of Observation</th>
                  <th>Status</th>
                  <th>Pregnancy Estimated</th>
                  <th>Estimated Date</th>
                </tr>
              </thead>
              <tbody>
                <tr ID="PregnancyStatus.1">
                  <td>2024-06-16</td>
                  <td>Not pregnant</td>
                  <td>Delivery date Estimated from ovulation date</td>
                  <td>2024-12-01</td>
                </tr>
              </tbody>
            </table>
          </text>
          <!--- - - PREGNANCY STATUS ENTRY- - - -->
          <entry typeCode="DRIV">
            <observation classCode="OBS" moodCode="EVN">
              <templateId root="2.16.840.1.113883.10.22.4.27" />
              <code code="82810-3" codeSystem="2.16.840.1.113883.6.1" />
              <statusCode code="completed" />
              <effectiveTime>
                <low value="20240616" />
              </effectiveTime>
              <value xsi:type="CE" code="82810-3" codeSystem="2.16.840.1.113883.6.1" displayName="Pregnant" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
              <entryRelationship typeCode="COMP">
                <observation classCode="OBS" moodCode="EVN">
                  <templateId root="2.16.840.1.113883.10.22.4.29" />
                  <code code="11780-4" codeSystem="2.16.840.1.113883.6.1" displayName="Delivery date Estimated from ovulation date" />
                  <statusCode code="completed" />
                  <value xsi:type="TS" value="20241201" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                </observation>
              </entryRelationship>
            </observation>
          </entry>
        </section>
      </component>
      <!--    UNKNOWN OR ACTIVE VACCINATION      -->
      <component>
        <section>
          <templateId root="2.16.840.1.113883.10.22.3.5" />
          <id root="88D698F4-B26F-4FDB-8DD7-74A8324AF06F" />
          <code code="11369-6" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="History of immunizations" />
          <title>Immunizations</title>
          <text>
            <table>
              <tbody>
                <tr>
                  <th>
                    <content>Vaccination</content>
                    <br></br>
                    <content>Brand name</content>
                  </th>
                  <th>Vaccination date</th>
                </tr>
                <tr ID="VAC.1.1">
                  <td>
                    <content ID="VAC.1.2">VAC.1.2</content>
                    <br></br>
                    <content>Vaccine product containing only Influenza virus antigen (medicinal product)</content>
                  </td>
                  <td>2024-05-15</td>
                </tr>
              </tbody>
            </table>
          </text>
          <entry typeCode="DRIV">
            <substanceAdministration classCode="SBADM" moodCode="EVN" negationInd="false">
              <templateId root="2.16.840.1.113883.10.22.4.15" />
              <id root="EEB12B36-06FA-403C-8B72-A81F7AF820E9" extension="#VAC.1.1" />
              <code code="IMMUNIZ" codeSystem="2.16.840.1.113883.5.4" codeSystemName="Act Code" displayName="Immunizations">
                <originalText>
                  <reference value="#VAC.1.1" />
                </originalText>
              </code>
              <statusCode code="completed" />
              <effectiveTime value="20240515" />
              <doseQuantity nullFlavor="UNK" />
              <consumable typeCode="CSM">
                <templateId root="2.16.840.1.113883.10.22.4.16" />
                <manufacturedProduct classCode="MANU">
                  <templateId root="2.16.840.1.113883.10.22.4.16" />
                  <manufacturedMaterial classCode="MMAT" determinerCode="KIND">
                    <code code="1181000221105" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Vaccine product containing only Influenza virus antigen (medicinal product)">
                      <originalText>
                        <reference value="#VAC.1.2" />
                      </originalText>
                    </code>
                  </manufacturedMaterial>
                </manufacturedProduct>
              </consumable>
              <entryRelationship typeCode="SUBJ">
                <observation classCode="OBS" moodCode="EVN">
                  <id root="2.16.840.1.113883.10.20.1.46" />
                  <code code="30973-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Dose Number" />
                  <statusCode code="completed" />
                  <value xsi:type="INT" value="1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                </observation>
              </entryRelationship>
            </substanceAdministration>
          </entry>
        </section>
      </component>
      <!--Social History     -->
      <component>
        <section>
          <templateId root="2.16.840.1.113883.10.22.3.10"></templateId>
          <templateId root="2.16.840.1.113883.10.20.1.15" />
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.3.16" />
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.3.16.1" />
          <templateId root="1.3.6.1.4.1.19376.1.7.3.1.3.24.2" />
          <id extension="2" root="1.2.840.114398.1.4156" />
          <code code="29762-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="SOCIAL HISTORY" />
          <title>Social History</title>
          <text>Social History Section Data</text>
          <!-- Sub section for Occupational Data For Health -->
          <component>
            <section>
              <templateId root="1.3.6.1.4.1.19376.1.7.3.1.3.24.3" />
              <!-- ODH SECTION TEMPLATE ID-->
              <code code="74166-0" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" codeSystemVersion="0" displayName="Occupational Data for Health" />
              <title>OCCUPATIONAL DATA FOR HEALTH</title>
              <text>
                <table border="1" width="100%">
                  <caption ID="ES">Past or Present Occupation</caption>
                  <thead>
                    <tr>
                      <th>Date Recorded</th>
                      <th>Start Date</th>
                      <th>Latest Date</th>
                      <th>Occupation</th>
                      <th>Industry</th>
                      <th>Supervisory Level</th>
                      <th>Work Classification</th>
                      <th>Employer Name</th>
                      <th>Employer Address</th>
                      <th>Work Schedule</th>
                      <th>Weekly Work Hours</th>
                      <th>Weekly Work Days</th>
                      <th>Job Duties</th>
                      <th>Occupational Exposures</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr ID="EMP1">
                      <td ID="ODH-EMP1D1">05/18/2024</td>
                      <td ID="ODH-EMP1D2">08/16/2018</td>
                      <td></td>
                      <td>CNA</td>
                      <td>Nursing Nome</td>
                      <td>None</td>
                      <td>Paid work, local government</td>
                      <td ID="ODH-EMP1A1">City of Anytown</td>
                      <td>1234 Main St. Anytown, OH 56789</td>
                      <td ID="ODH-EMP1S2">Rotating Shift</td>
                      <td ID="ODH-EMP1S3">32</td>
                      <td ID="ODH-EMP1DU1">4</td>
                      <td>Patient Care</td>
                      <td>Infectious Disease</td>
                    </tr>
                  </tbody>
                </table>
                <table border="1" width="100%">
                  <caption>Usual Occupation</caption>
                  <thead>
                    <tr>
                      <th>Recorded on (effective time)</th>
                      <th ID="ODH-HUOD1">Date Started</th>
                      <th ID="ODH-HUOD2">Last Date</th>
                      <th ID="ODH-HUO">Usual Occupation</th>
                      <th ID="ODH-HUOID">Usual Industry</th>
                      <th ID="ODH-HUOD">Usual Occupation Duration</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr ID="UOI1">
                      <td>05/18/2024</td>
                      <td ID="ODH-UOBD1">2016</td>
                      <td ID="ODH-UOED1"></td>
                      <td ID="ODH-UO1">Health Care Assistants</td>
                      <td ID="ODH-UI1">Residential nursing care facilities</td>
                      <td ID="ODH-UOD">8 years</td>
                    </tr>
                  </tbody>
                </table>
                <table border="1" width="100%">
                  <caption>Combat Duty Work</caption>
                  <thead>
                    <tr>
                      <th>Recorded on (effective time)</th>
                      <th ID="ODH-HCDBD">Date Started</th>
                      <th ID="ODH-HCDLD">Last Date</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr ID="CD1">
                      <td>02/01/2024</td>
                      <td ID="ODH-CDD1">05/01/2016</td>
                      <td ID="ODH-CDD2">05/01/2018</td>
                    </tr>
                  </tbody>
                </table>
                <table border="1" width="100%">
                  <caption>Retirement Status</caption>
                  <thead>
                    <tr>
                      <th>Recorded on (effective time)</th>
                      <th ID="ODH-HRSBD">Retirement Date</th>
                      <th ID="ODH-HRSLD">Employer Name</th>
                      <th ID="ODH-HRSEA">Employer Address</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr ID="RS1">
                      <td>02/01/2024</td>
                      <td ID="ODH-RSD1">NA</td>
                      <td ID="ODH-RSD2">NA</td>
                      <td ID="ODH-RSA1">NA</td>
                    </tr>
                  </tbody>
                </table>
                <table border="1" width="100%">
                  <caption>Employment Status</caption>
                  <thead>
                    <tr>
                      <th>Recorded on (effective time)</th>
                      <th ID="ODH-HESES">Employment Status</th>
                      <th ID="ODH-HESBD">Date Started</th>
                      <th ID="ODH-HESLD">Date Ended</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr ID="ES1">
                      <td ID="ODH-ESRD1">02/01/2024</td>
                      <td>Employed</td>
                      <td ID="ODH-ESD1">05/01/2016</td>
                      <td ID="ODH-ESD2">NA</td>
                    </tr>
                  </tbody>
                </table>
              </text>
              <languageCode code="en-GB" />
              <entry>
                <!-- An Employment Status entry -->
                <observation classCode="OBS" moodCode="EVN">
                  <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.18" />
                  <id root="76C71B5B-0E6D-47FC-AD56-9AA1B58EFD11" />
                  <code code="74165-2" codeSystem="2.16.840.1.113883.6.1" />
                  <statusCode code="completed" />
                  <effectiveTime value="20160501">
                    <low />
                    <high />
                  </effectiveTime>
                  <value code="224363007" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Employed Paid work, not self-employed" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                  <author>
                    <time value="20180201154714" />
                    <assignedAuthor>
                      <id root="DA29AE71-E8CA-4BD2-91F3-E7D446107ADD" />
                      <id extension="8" root="1.2.840.114398.1.4156" />
                      <id root="2.16.840.1.113883.4.6" />
                      <addr nullFlavor="UNK" />
                      <telecom use="PUB" value="tel:+12065555555" />
                      <telecom use="PUB" value="fax:+12064596271" />
                      <telecom use="PUB" value="mailto:dBolin@chs.net" />
                      <assignedPerson>
                        <name>
                          <family>Bolin</family>
                          <given>Joe</given>
                        </name>
                      </assignedPerson>
                    </assignedAuthor>
                  </author>
                </observation>
              </entry>
              <entry>
                <!-- A Usual Occupation entry -->
                <observation classCode="OBS" moodCode="EVN">
                  <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.20" />
                  <id root="C29906B0-19F9-46CE-8DCB-DCFA95D9F0C9" />
                  <code code="21843-8" codeSystem="2.16.840.1.113883.6.1" />
                  <statusCode code="completed" />
                  <effectiveTime value="2016">
                    <low value="20160501" />
                    <high />
                  </effectiveTime>
                  <value code="5321" codeSystem="1.3.6.1.4.1.19376.1.5.3.1.3.43.48.3" codeSystemName="ISCO-08" displayName="Health Care Assistants" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                  <subject>
                    <relatedSubject classCode="PRS">
                      <code code="PRN" codeSystem="RoleCode" />
                    </relatedSubject>
                  </subject>
                  <author>
                    <time value="20240201154714" />
                    <assignedAuthor>
                      <id root="DA29AE71-E8CA-4BD2-91F3-E7D446107ADD" />
                      <id extension="8" root="1.2.840.114398.1.4156" />
                      <id root="2.16.840.1.113883.4.6" />
                      <addr nullFlavor="UNK" />
                      <telecom use="PUB" value="tel:+12065555555" />
                      <telecom use="PUB" value="fax:+12064596271" />
                      <telecom use="PUB" value="mailto:dBolin@chs.net" />
                      <assignedPerson>
                        <name>
                          <family>Bolin</family>
                          <given>Joe</given>
                        </name>
                      </assignedPerson>
                    </assignedAuthor>
                  </author>
                  <entryRelationship typeCode="REFR">
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.10" />
                      <id root="AF6EC728-D61C-4402-8683-9F3499EFAD95" />
                      <code code="74163-7" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value value="31" unit="a" xsi:type="PQ" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="REFR">
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="2.16.840.1.113883.10.20.22.4.219" extension="2017-11-30" />
                      <id root="6DA60B5A-1447-4685-BB05-8721F25714B2" />
                      <code code="21844-6" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value code="871" codeSystem="1.3.6.1.4.1.19376.1.5.3.1.3.43.16.2" codeSystemName="International Standard Industrial Classification Codes Rev4" displayName="Residential nursing care facilities" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                    </observation>
                  </entryRelationship>
                </observation>
              </entry>
              <entry>
                <!-- A Retirement Status entry -->
                <observation classCode="OBS" moodCode="EVN">
                  <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.21" />
                  <id root="78C46F08-6359-4759-B09B-60666A9F3251" />
                  <code code="87510-4" codeSystem="2.16.840.1.113883.6.1" />
                  <statusCode code="completed" />
                  <effectiveTime>
                    <low nullFlavor="UNK" />
                  </effectiveTime>
                  <value code="N" codeSystem="2.16.840.1.113883.12.136" codeSystemName="Yes/No Indicator (HL7 Table 0136)" displayName="No" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                  <participant typeCode="IND">
                    <participantRole classCode="ROL">
                      <id root="9A5C5314-0571-4A44-B23E-89C527743E9F" />
                      <addr>
                        <state>IL</state>
                        <city>OAK BROOK</city>
                        <postalCode>60523</postalCode>
                      </addr>
                      <playingEntity>
                        <name></name>
                      </playingEntity>
                    </participantRole>
                  </participant>
                </observation>
              </entry>
              <entry>
                <!-- A Combat Duty Work entry -->
                <observation classCode="OBS" moodCode="EVN">
                  <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.22" />
                  <id root="30A7B818-DD49-4388-A181-AE180F6606EF" />
                  <code code="87511-2" codeSystem="2.16.840.1.113883.6.1" />
                  <statusCode code="completed" />
                  <effectiveTime value="20160501">
                    <low value="20160501"></low>
                    <high value="20180501" />
                  </effectiveTime>
                </observation>
              </entry>
              <entry>
                <!-- A Past or Present Work entry (Current)-->
                <observation classCode="OBS" moodCode="EVN">
                  <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.19" />
                  <id root="238F8C32-D59C-4413-8CF9-38A5380DC4E5" />
                  <code code="11341-5" codeSystem="2.16.840.1.113883.6.1" />
                  <statusCode code="completed" />
                  <effectiveTime value="20180501">
                    <low value="20180501" />
                    <high />
                  </effectiveTime>
                  <value code="3850" codeSystem="2.16.840.1.114222.4.11.6036" codeSystemName="Occupation CDC Census 2010" displayName="Police and sheriff's patrol officers" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                  <subject>
                    <relatedSubject classCode="PRS">
                      <code code="PRN" codeSystem="RoleCode" />
                    </relatedSubject>
                  </subject>
                  <author>
                    <time value="20240201" />
                    <assignedAuthor>
                      <id root="DA29AE71-E8CA-4BD2-91F3-E7D446107ADD" />
                      <id extension="8" root="1.2.840.114398.1.4156" />
                      <id root="2.16.840.1.113883.4.6" />
                      <addr nullFlavor="UNK" />
                      <telecom use="PUB" value="tel:+12065555555" />
                      <telecom use="PUB" value="fax:+12064596271" />
                      <telecom use="PUB" value="mailto:dBolin@chs.net" />
                      <assignedPerson>
                        <name>
                          <family>Bolin</family>
                          <given>Joe</given>
                        </name>
                      </assignedPerson>
                    </assignedAuthor>
                  </author>
                  <participant typeCode="IND">
                    <participantRole classCode="ROL">
                      <id root="9A5C5314-0571-4A44-B23E-89C527743E9F" />
                      <addr>
                        <state>OH</state>
                        <city>Anytown</city>
                        <postalCode>56789</postalCode>
                      </addr>
                      <playingEntity>
                        <name>City of Anytown</name>
                      </playingEntity>
                    </participantRole>
                  </participant>
                  <entryRelationship typeCode="REFR">
                    <!-- A Work Schedule -->
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.24" />
                      <id root="EE326532-2B64-4E8F-A996-1084B42E4C41" />
                      <code code="74159-5" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value code="276066008" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED-CT" displayName="Regular Night Shift" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                      <entryRelationship typeCode="REFR">
                        <observation classCode="OBS" moodCode="EVN">
                          <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.6" />
                          <id root="A8F66113-516E-4896-B646-4795944177E4" />
                          <code code="87512-0" codeSystem="2.16.840.1.113883.6.1" />
                          <statusCode code="completed" />
                          <value value="8" unit="h/d" xsi:type="PQ" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                        </observation>
                      </entryRelationship>
                      <entryRelationship typeCode="REFR">
                        <observation classCode="OBS" moodCode="EVN">
                          <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.7" />
                          <id root="7D70FE5C-1719-42E2-BFC8-D8F6503DE1A0" />
                          <code code="74160-3" codeSystem="2.16.840.1.113883.6.1" />
                          <statusCode code="completed" />
                          <value value="5" unit="d" xsi:type="PQ" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                        </observation>
                      </entryRelationship>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="REFR">
                    <!--Job Duty-->
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.14" />
                      <id root="72CC317F-D130-46E5-A26D-4762022ED92F" />
                      <code code="63761-1" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value xsi:type="ST" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Patrol</value>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="REFR">
                    <!--Occupational Hazard-->
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.27" />
                      <id root="93F5B9BF-B9F6-4311-AAB7-FD33478598E8" />
                      <code code="10161-8" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value xsi:type="ST" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">NA</value>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="REFR">
                    <!--Supervisory Level-->
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.16" />
                      <id root="0E4993E7-8A64-461D-BA6D-C9241AABDBD1" />
                      <code code="87707-6" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value code="106333009" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED-CT" displayName="NA" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="REFR">
                    <!--Industry-->
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.3" />
                      <id root="7629541C-E01D-4834-98C7-6D77E79206FD" />
                      <code code="86188-0" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value code="9470" codeSystem="2.16.840.1.114222.4.11.7187" codeSystemName="Industry CDC Census 2010" displayName="Justice, public order, and safety activities" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="REFR">
                    <!--Work Classification Employment type-->
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.4" />
                      <id root="97C81DDF-0187-4C10-9AC1-DEA9EAB979BD" />
                      <code code="85104-8" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value code="452491000124108" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Paid work, local government" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                    </observation>
                  </entryRelationship>
                </observation>
              </entry>
              <entry>
                <!-- A Past or Present Work entry (PAST JOB (1))-->
                <observation classCode="OBS" moodCode="EVN">
                  <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.19" />
                  <id root="238F8C32-D59C-4413-8CF9-38A5380DC4E4" />
                  <code code="11341-5" codeSystem="2.16.840.1.113883.6.1" />
                  <text>Health Care Assistants</text>
                  <statusCode code="completed" />
                  <effectiveTime value="20160501">
                    <low value="20160501" />
                    <high value="20180501" />
                  </effectiveTime>
                  <value code="5321" codeSystem="1.3.6.1.4.1.19376.1.5.3.1.3.43.48.3" codeSystemName="ISCO-08" displayName="Health Care Assistants" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                  <subject>
                    <relatedSubject classCode="PRS">
                      <code code="PRN" codeSystem="RoleCode" />
                    </relatedSubject>
                  </subject>
                  <author>
                    <time value="20240201" />
                    <assignedAuthor>
                      <id root="DA29AE71-E8CA-4BD2-91F3-E7D446107ADD" />
                      <id extension="8" root="1.2.840.114398.1.4156" />
                      <id root="2.16.840.1.113883.4.6" />
                      <addr nullFlavor="UNK" />
                      <telecom use="PUB" value="tel:+12065555555" />
                      <telecom use="PUB" value="fax:+12064596271" />
                      <telecom use="PUB" value="mailto:dBolin@chs.net" />
                      <assignedPerson>
                        <name>
                          <family>Bolin</family>
                          <given>Joe</given>
                        </name>
                      </assignedPerson>
                    </assignedAuthor>
                  </author>
                  <participant typeCode="IND">
                    <participantRole classCode="ROL">
                      <id root="9A5C5314-0571-4A44-B23E-89C527743E9F" />
                      <addr>
                        <state>CA</state>
                        <city>Somewhere</city>
                        <postalCode>55555</postalCode>
                      </addr>
                      <playingEntity>
                        <name>Big County</name>
                      </playingEntity>
                    </participantRole>
                  </participant>
                  <entryRelationship typeCode="REFR">
                    <!-- A Work Schedule -->
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.24" />
                      <id root="EE326532-2B64-4E8F-A996-1084B42E4C41" />
                      <code code="74159-5" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value code="276066008" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED-CT" displayName="Regular Night Shift" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                      <entryRelationship typeCode="REFR">
                        <observation classCode="OBS" moodCode="EVN">
                          <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.6" />
                          <id root="A8F66113-516E-4896-B646-4795944177E4" />
                          <code code="87512-0" codeSystem="2.16.840.1.113883.6.1" />
                          <statusCode code="completed" />
                          <value value="8" unit="h/d" xsi:type="PQ" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                        </observation>
                      </entryRelationship>
                      <entryRelationship typeCode="REFR">
                        <observation classCode="OBS" moodCode="EVN">
                          <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.7" />
                          <id root="7D70FE5C-1719-42E2-BFC8-D8F6503DE1A0" />
                          <code code="74160-3" codeSystem="2.16.840.1.113883.6.1" />
                          <statusCode code="completed" />
                          <value value="5" unit="d" xsi:type="PQ" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                        </observation>
                      </entryRelationship>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="REFR">
                    <!--Job Duty-->
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.14" extension="2017-11-30" />
                      <id root="72CC317F-D130-46E5-A26D-4762022ED92F" />
                      <code code="63761-1" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value xsi:type="ST" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Patient Care</value>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="REFR">
                    <!--Occupational Hazard-->
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.27" />
                      <id root="93F5B9BF-B9F6-4311-AAB7-FD33478598E9" />
                      <code code="10161-8" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value xsi:type="ST" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">NA</value>
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="REFR">
                    <!--Supervisory Level-->
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.16" />
                      <id root="0E4993E7-8A64-461D-BA6D-C9241AABDBD1" />
                      <code code="87707-6" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value code="106333009" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED-CT" displayName="NA" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="REFR">
                    <!--Industry-->
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.3" />
                      <id root="7629541C-E01D-4834-98C7-6D77E70206FD" />
                      <code code="86188-0" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value code="871" codeSystem="1.3.6.1.4.1.19376.1.5.3.1.3.43.16.2" codeSystemName="International Standard Industrial Classification Codes Rev4" displayName="Residential nursing care facilities" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                    </observation>
                  </entryRelationship>
                  <entryRelationship typeCode="REFR">
                    <!--Work Classification Employment type-->
                    <observation classCode="OBS" moodCode="EVN">
                      <templateId root="1.3.6.1.4.1.19376.1.7.3.1.4.24.4" />
                      <id root="97C81DDF-0187-4C10-9AC1-DEA9EAB970BD" />
                      <code code="85104-8" codeSystem="2.16.840.1.113883.6.1" />
                      <statusCode code="completed" />
                      <value code="452491000124108" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Paid work, local government" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                    </observation>
                  </entryRelationship>
                </observation>
              </entry>
            </section>
          </component>
        </section>
      </component>
      <!--
********************************************************
FUNCTIONAL STATUS
********************************************************
-->
      <component>
        <section>
          <templateId root="2.16.840.1.113883.10.20.22.2.14"></templateId>
          <templateId root="2.16.840.1.113883.10.22.3.8"></templateId>
          <!-- IPS -->
          <id nullFlavor="NA"></id>
          <code code="47420-5" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Functional status assessment note"></code>
          <title>FUNCTIONAL STATUS</title>
          <text>
            <table>
              <thead>
                <tr>
                  <th>Type</th>
                  <th>Date</th>
                  <th>Status</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Relies on Walking Stick</td>
                  <td>06-15-2024</td>
                  <td>Active</td>
                </tr>
              </tbody>
            </table>
          </text>
          <entry typeCode="DRIV">
            <observation classCode="OBS" moodCode="EVN">
              <id extension="4912" root="1.2.840.114398.1.11999116114111111116.999.3"></id>
              <code xsi:type="CE" code="409586006" codeSystem="2.16.840.1.113883.6.96" displayName="Complaint" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"></code>
              <text>Relies on Walking Stick</text>
              <statusCode code="completed"></statusCode>
              <effectiveTime xsi:type="IVL_TS" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                <low value="20240206"></low>
                <high nullFlavor="UNK"></high>
              </effectiveTime>
              <value code="365112008" codeSystem="2.16.840.1.113883.6.96" displayName="Finding of walking aid use (finding)" xsi:type="CD" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
            </observation>
          </entry>
        </section>
      </component>
      <!--
********************************************************
CONDITIONS
********************************************************
-->
      <component>
        <section nullFlavor="NA">
          <templateId root="1.3.6.1.4.1.19376.1.5.3.1.3.8"></templateId>
          <!-- IHE -->
          <templateId root="2.16.840.1.113883.10.22.3.7"></templateId>
          <!-- IPS -->
          <code codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" code="11348-0" displayName="HISTORY OF PAST ILLNESS"></code>
          <title>HISTORY OF PAST ILLNESS</title>
          <text>
            <table border="1" width="100%">
              <thead>
                <tr>
                  <th>Condition</th>
                  <th>Status</th>
                  <th>Onset</th>
                  <th>Concluded</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <content ID="condition246">Fracture of femur</content>
                  </td>
                  <td>Resolved</td>
                  <td>11/16/2023</td>
                  <td></td>
                </tr>
                <tr>
                  <td>
                    <content ID="condition248">Pregnancy</content>
                  </td>
                  <td>
Concluded
</td>
                  <td>
01-18-1977
</td>
                  <td>
02-07-2025
</td>
                </tr>
              </tbody>
            </table>
          </text>
          <entry typeCode="COMP">
            <act classCode="ACT" moodCode="EVN">
              <!-- Problem act template -->
              <templateId root="2.16.840.1.113883.10.22.4.7"></templateId>
              <id extension="246" root="1.2.840.114398.1.11999116114111111116.999.1.1"></id>
              <code nullFlavor="NA"></code>
              <statusCode code="completed"></statusCode>
              <effectiveTime xsi:type="IVL_TS" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                <low nullFlavor="20231116"></low>
                <high nullFlavor="UNK"></high>
              </effectiveTime>
              <entryRelationship typeCode="SUBJ" inversionInd="false">
                <observation classCode="OBS" moodCode="EVN">
                  <!-- Problem observation template -->
                  <id extension="246" root="1.2.840.114398.1.11999116114111111116.999.1.2"></id>
                  <code code="409586006" codeSystem="2.16.840.1.113883.6.96" displayName="Complaint"></code>
                  <text>
                    <reference value="#condition246"></reference>
                  </text>
                  <statusCode code="completed"></statusCode>
                  <effectiveTime xsi:type="IVL_TS" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                    <low nullFlavor="20231116"></low>
                    <high nullFlavor="UNK"></high>
                  </effectiveTime>
                  <value xsi:type="CD" code="71620000" codeSystem="2.16.840.1.113883.6.96" displayName="Fracture of femur (disorder)" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                    <translation code="I50.9" codeSystem="2.16.840.1.113883.6.90" codeSystemName="ICD10"></translation>
                  </value>
                  <entryRelationship typeCode="REFR">
                    <observation classCode="OBS" moodCode="EVN">
                      <!-- Status observation template -->
                      <code xsi:type="CE" code="33999-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Status" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"></code>
                      <text>
                        <reference value="#condition246"></reference>
                      </text>
                      <statusCode code="completed"></statusCode>
                      <value xsi:type="CD" code="55561003" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT" displayName="Active" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"></value>
                    </observation>
                  </entryRelationship>
                </observation>
              </entryRelationship>
              <!-- Normal Security-->
            </act>
          </entry>
        </section>
      </component>
      <!--
********************************************************
Procedures
********************************************************
-->
      <component>
        <section>
          <templateId root="2.16.840.1.113883.10.20.22.2.7.1"></templateId>
          <templateId root="2.16.840.1.113883.10.22.3.4"></templateId>
          <!-- IPS -->
          <id nullFlavor="NA"></id>
          <code code="47519-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="History of procedures"></code>
          <title>PROCEDURES</title>
          <text>
            <table border="1" width="100%">
              <thead>
                <tr>
                  <th>Procedure</th>
                  <th>Service Date</th>
                  <th>Performing Physician</th>
                  <th>Notes</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <content ID="Procedure110">Artificial ventilation using ventilator (regime/therapy)</content>
                  </td>
                  <td>2024-06-25</td>
                  <td></td>
                  <td>
                    <content></content>
                  </td>
                </tr>
              </tbody>
            </table>
          </text>
          <entry typeCode="DRIV">
            <procedure classCode="PROC" moodCode="EVN">
              <templateId root="2.16.840.1.113883.10.20.22.4.14"></templateId>
              <templateId root="2.16.840.1.113883.10.22.4.17"></templateId>
              <!-- IPS -->
              <!-- Procedure Activity Observation -->
              <id extension="110" root="1.2.840.114398.1.11999116114111111116.999.13"></id>
              <code code="480571000146108" codeSystem="2.16.840.1.113883.6.96" displayName="Artificial ventilation using ventilator (regime/therapy)" codeSystemName="SNOMED-CT">
                <originalText>
                  <reference value="#Procedure110"></reference>
                </originalText>
              </code>
              <statusCode code="completed"></statusCode>
              <effectiveTime value="20240625"></effectiveTime>
              <methodCode nullFlavor="UNK"></methodCode>
            </procedure>
          </entry>
        </section>
      </component>
      <!--
********************************************************
RESULTS
********************************************************
-->
      <component>
        <section>
          <templateId root="2.16.840.1.113883.10.20.22.2.3" extension="2014-06-09"></templateId>
          <templateId root="2.16.840.1.113883.10.20.22.2.3.1" extension="2014-06-09"></templateId>
          <templateId root="2.16.840.1.113883.10.20.22.2.3.1" extension="2015-08-01"></templateId>
          <templateId root="2.16.840.1.113883.10.22.3.14" extension="2015-08-01"></templateId>
          <id nullFlavor="NA"></id>
          <code code="30954-2" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Relevant diagnostic tests &amp;or laboratory data"></code>
          <title>RESULTS</title>
          <text>
            <table border="1" width="100%">
              <thead>
                <tr>
                  <th>Result Name</th>
                  <th>Value</th>
                  <th>Range</th>
                  <th>Observed Date/Time</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td colspan="4">
Labs recorded @ 20250205171600+0000
<content ID="requestNote2025-02-05171600"></content></td>
                </tr>
                <tr>
                  <td>HgbA1C</td>
                  <td>
                    <content ID="result4902">5.5 %</content>
                  </td>
                  <td></td>
                  <td>02-05-2025 17:16</td>
                </tr>
              </tbody>
            </table>
          </text>
          <entry typeCode="DRIV">
            <organizer classCode="BATTERY" moodCode="EVN">
              <templateId root="2.16.840.1.113883.10.20.22.4.1"></templateId>
              <templateId root="2.16.840.1.113883.10.20.22.4.1" extension="2015-08-01"></templateId>
              <templateId root="2.16.840.1.113883.10.22.4.9"></templateId>
              <!-- IPS -->
              <id extension="2025" root="1.2.840.114398.1.11999116114111111116.999.19"></id>
              <code nullFlavor="NA"></code>
              <statusCode code="completed"></statusCode>
              <effectiveTime xsi:type="IVL_TS" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                <low value="20250205"></low>
                <high value="20250205"></high>
              </effectiveTime>
              <!-- Request-id/datetime: 0/2025-02-05 17:16:00 -->
              <component>
                <observation classCode="OBS" moodCode="EVN">
                  <templateId root="2.16.840.1.113883.10.20.22.4.2"></templateId>
                  <templateId root="2.16.840.1.113883.10.20.22.4.2" extension="2015-08-01"></templateId>
                  <templateId root="2.16.840.1.113883.10.22.4.10"></templateId>
                  <!-- IPS -->
                  <id extension="4902" root="1.2.840.114398.1.11999116114111111116.999.3"></id>
                  <code xsi:type="CE" code="109691-6" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="Influenza virus A Ag [Measurement] in Nasopharynx" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"></code>
                  <text>
                    <reference value="#result4902"></reference>
                  </text>
                  <statusCode code="completed"></statusCode>
                  <effectiveTime value="20240615"></effectiveTime>
                  <value xsi:type="CD" code="10828004" codeSystem="2.16.840.1.113883.6.96" displayName="Positive" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                  <!-- Original unit: % -->
                  <referenceRange>
                    <observationRange>
                      <text>A negative value is a normal result</text>
                      <value xsi:type="CD" code="260385009" codeSystemName="SNOMED-CT" displayName="Negative" codeSystem="2.16.840.1.113883.6.96" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" />
                    </observationRange>
                  </referenceRange>
                  <interpretationCode code="POS" codeSystem="2.16.840.1.113883.5.83" displayName="Positive" />
                </observation>
              </component>
            </organizer>
          </entry>
        </section>
      </component>
      <!--
********************************************************
ALERTS
********************************************************
-->
      <component>
        <section>
          <!-- Alert Section Template ID -->
          <templateId root="2.16.840.1.113883.10.22.2.1" extension="2024-05-01" />
          <!-- IPS Alert Section Code -->
          <code code="10156-4" codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" displayName="History of Alerts" />
          <title>Alerts</title>
          <text>
            <table>
              <thead>
                <tr>
                  <th>Alert Type</th>
                  <th>Description</th>
                  <th>Severity</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Safety Hazard</td>
                  <td>Patient uses oxygen therapy at home</td>
                  <td>High</td>
                </tr>
              </tbody>
            </table>
          </text>
          <!-- Entry: Alert / Flag -->
          <entry>
            <act classCode="ACT" moodCode="EVN">
              <templateId root="2.16.840.1.113883.10.22.4.1" extension="2024-05-01" />
              <code code="ALERT" codeSystem="2.16.840.1.113883.5.4" codeSystemName="ActCode" displayName="Alert" />
              <statusCode code="active" />
              <!-- Severity: High -->
              <priorityCode code="H" codeSystem="2.16.840.1.113883.5.7" displayName="High" />
              <entryRelationship typeCode="SUBJ">
                <observation classCode="OBS" moodCode="EVN">
                  <code code="10156-4" codeSystem="2.16.840.1.113883.6.1" displayName="Alerts" />
                  <value xsi:type="ST" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="urn:hl7-org:v3"> Patient uses CPAP therapy at home</value>
                </observation>
              </entryRelationship>
            </act>
          </entry>
        </section>
      </component>
    </structuredBody>
  </component>
</ClinicalDocument>
```