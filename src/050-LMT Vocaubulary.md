# The LMT Controlled Vocabulary Register and its Terms

## General (Informative)

The register is represented as an XML Document complying with the XML Schema defined in Annex A. Several views of this data will be presented on the SMPTE registers website along with the XML document. One or more maintainers are responsible for providing updates to SMPTE.

## Schema

The schema for the published data is given in Annex A. The semantics of the schema elements and attributes are defined in section 5.3. The hierarchy and number of occurrences of each element are defined in the schema. Attributes that are required are defined in the schema.

## Elements and Attributes in the Register

### `term`

The term element defines a term in the register.

### `termId`

A unique numerical identifier required for every term.

### `termUpdate`

Indicates the status of the term. It shall have the value add or deprecate or delete?????.

### `termName`

Shall be a valid IETF BCP-47 langtag value

### `termVocabulary`

Shall take one of the enumerated values from the  LMTtermVocabularyType in the Schema.

* `Language Metadata Table LMT` shall be used for individual LMT Language Codes
* `Language Groupings LMT` shall be used to define a Language Group.
