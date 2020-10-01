### `relation`

#### Presence of a `relation` element

This element indicates that there are one or more related terms to this LMT code value. 

If the `termVocabulary` child of a term element is set to Language Metadata Table LMT then the relation will link to a term with its `termVocabulary` child set to Language Grouping LMT.

If the `termVocabulary` child of a term element is set to Language Grouping LMT then there will be on or more relation elements that link to term elements with `termVocabulary` child set to Language Metadata Table LMT.

#### `relationType`

The schema allows for language relationships through the use of Language Grouping.

There is no requirement a specific term to be part of a Language Group. The use of IETF BCP 47 “Macrolanguage” and “Language Family” designations allow for alphabetical sorting by grouping, keeping languages like Chinese together. If not, languages like Mandarin and Cantonese would separate. A simple hierarchy allows for the maximum flexibility. Some language grouping examples are:

* Greek: to account for ancient vs modern
* English: British, Canadian, Australian, American, etc
* Spanish: Latin American vs European, Mexican vs Argentinian
* Special: for codes such as “und” (undetermined)

The following enumerations of the relationType element are permitted.

| Value  | Meaning       | Notes
|:-----  |:------------- |:-------------------
| `EQT`  | Equivalent to | This term is equivalent to the related term
| `BT`   | Broad Term    | The related term is a broader term than this term. EXAMPLE: the relation element for en-AU (Australian English) has a BT relation to en (Generic English)
| `NT`   | Narrow Term   | The related term is a narrower term than this term. EXAMPLE: the relation element for en (Generic English) has a NT relation to en-au (Australian English)
| `TT`   | Top Term      | The related term is the Top Most Broad Term.

#### `termId`

Required. Shall be set to the `termId` value of the related element in the LMT XML document

#### `termName`

Required. Shall be an identical copy of the termName value of the related term referenced by termId.

#### `termVocabulary`

Required. Shall be an identical copy of the `termVocabulary` value of the related term referenced by termId.
