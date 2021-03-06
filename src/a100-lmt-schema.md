# Annex LMT XML Schema (normative)

This specification is accompanied element-a, which is an XML schema document as specified in XML Schema Part 1: Structures.

The schema is presented informatively in the table below

```xml
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <!-- for restricting the termNote Attributes-->
  <xs:simpleType name="LMTtermNoteLabelType">
    <xs:restriction base="xs:string">
      <xs:enumeration value="Language Group Name" />
      <xs:enumeration value="Language Group Tag" />
      <xs:enumeration value="Language Group Code" />
      <xs:enumeration value="Audio Language Tag" />
      <xs:enumeration value="Long Description 1" />
      <xs:enumeration value="Long Description 2" />
      <xs:enumeration value="Audio Language Display Name 1" />
      <xs:enumeration value="Audio Language Display Name 2" />
      <xs:enumeration value="Visual Language Tag 1" />
      <xs:enumeration value="Visual Language Tag 2" />
      <xs:enumeration value="Visual Language Display Name 1" />
      <xs:enumeration value="Visual Language Display Name 2" />
      <xs:enumeration value="Code" />
      <xs:enumeration value="Notes" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="relationTypeType">
    <xs:restriction base="xs:string">
      <xs:enumeration value="EQT" />
      <!-- Equivalent To -->
      <xs:enumeration value="BT" />
      <!-- Broad Type -->
      <xs:enumeration value="NT" />
      <!-- Narrow Type -->
      <xs:enumeration value="TT" />
      <!-- Top Type -->
    </xs:restriction>
  </xs:simpleType>
  <xs:element name="Synaptica-ZThes">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="LMTMetadata" maxOccurs="1" minOccurs="1">
          <xs:complexType>
            <xs:sequence>
              <xs:element type="xs:string" name="version" maxOccurs="1" minOccurs="1"/>
              <xs:element type="xs:string" name="maintainer" maxOccurs="1" minOccurs="1"/>
              <xs:element name="DatesISO8601" maxOccurs="1" minOccurs="1">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="release" type="xs:date" maxOccurs="1" minOccurs="1"/>
                    <xs:element name="publish" type="xs:date" maxOccurs="1" minOccurs="0"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="term" maxOccurs="unbounded" minOccurs="0">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="termID" type="xs:int" maxOccurs="1" minOccurs="1"/>
              <!-- <xs:element name="termUpdate" type="xs:string" maxOccurs="1" minOccurs="1"/> -->
              <xs:element name="termName" type="xs:string" maxOccurs="1" minOccurs="1"/>
              <xs:element name="termVocabulary" type="xs:string" maxOccurs="1" minOccurs="1"/>
              <xs:element name="termNote" maxOccurs="unbounded" minOccurs="1">
                <xs:complexType>
                  <xs:simpleContent>
                    <xs:extension base="xs:string">
                      <xs:attribute name="label" type="LMTtermNoteLabelType" use="required"/>
                    </xs:extension>
                  </xs:simpleContent>
                </xs:complexType>
              </xs:element>
              <xs:element name="relation" maxOccurs="unbounded" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element type="relationTypeType" name="relationType"/>
                    <xs:element type="xs:int" name="relationWeight"/>
                    <xs:element type="xs:int" name="termID"/>
                    <xs:element type="xs:string" name="termName"/>
                    <xs:element type="xs:string" name="termVocabulary"/>
                    <xs:element name="termNote" maxOccurs="unbounded" minOccurs="1" />
                  </xs:sequence>
                  <xs:attribute type="xs:byte" name="weight" use="optional"/>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>
```

![Figure A-1 Pictorial View of LMT Schma (Informative)](src/fig01-lmt-schema.png)
