### `termNote`

Each term element shall have the required termNote child elements defined in Table 1. The label attribute contains the name of the termNote field, ex:  Language Group Name, Language Group Tag, Language Group Code. 

#### `label` attribute

The `label` attribute shall take one of the enumerated values from the `LMTtermNoteLabelType` as defined in the schema.
Table 1 `LMTtermNoteLabelType` semantics

1. `Language Group Name`
   * The Group name is equivalent to the generic language name.
     Language dialects are subordinate to their language grouping.
   * EXAMPLE: Armenian - Western falls under Armenian Family.
   * Required when `termVocabulary` is `Language Groupings LMT`
   * Forbidden when `termVocabulary` is `Language Metadata Table LMT`
2. `Language Group Tag`
   * IETF BCP 47 tag.
   * Required when `termVocabulary` is `Language Groupings LMT`
   * Forbidden when `termVocabulary` is `Language Metadata Table LMT`
3. `Language Group Code`
   * URN or URI for the language group term. See [urn encoding of termNote values]
   * Required when `termVocabulary` is `Language Groupings LMT`
   * Forbidden when termVocabulary is `Language Metadata Table LMT`
4. `Audio Language Tag`
   * IETF BCP 47 language tag. Typically spoken/audio language.
   * Forbidden when `termVocabulary` is `Language Groupings LMT`
   * Required when `termVocabulary` is `Language Metadata Table LMT`
5. `Long Description 1`
   * Description of language name in Latin script following IETF BCP 47 standard
   * Forbidden when `termVocabulary` is `Language Groupings LMT`
   * Required when `termVocabulary` is `Language Metadata Table LMT`
6. `Long Description 2`
   * Alternate description of language name in Latin script following IETF BCP 47 standard
   * Forbidden when `termVocabulary` is `Language Groupings LMT`
   * Optional when `termVocabulary` is `Language Metadata Table LMT`
7. `Audio Language Display Name 1`
   * Endonym of audio language. Typically, the same as Visual Language Display Name 1 but not always.
   * Forbidden when `termVocabulary` is `Language Groupings LMT`
   * Optional when `termVocabulary` is `Language Metadata Table LMT`
8. `Audio Language Display Name 2`
   * Alternate endonym of audio language. Typically, the same as Visual Language Display Name 2 but not always. 
   * Forbidden when termVocabulary is Language Groupings LMT
   * Optional when termVocabulary is Language Metadata Table LMT
9. `Visual Language Tag 1`
   * Script in which language is written following IETF BCP 47 standard (which calls for the tags to be presented in Latin Script).
   * Forbidden when termVocabulary is Language Groupings LMT
   * Optional when termVocabulary is Language Metadata Table LMT
1. `Visual Language Tag 2`
   * Alternate script in which language is written following IETF BCP 47 standard (which calls for the tags to be presented in Latin Script).
   * Forbidden when termVocabulary is Language Groupings LMT
   * Optional when termVocabulary is Language Metadata Table LMT
1. `Visual Language Display Name 1`
   * Endonym of written language. Typically the same as Audio Language Display Name 1 but not always.
   * Forbidden when termVocabulary is Language Groupings LMT
   * Optional when termVocabulary is Language Metadata Table LMT
1. `Visual Language Display Name 2`
   * Alternate written endonym. Typically, the same as Audio Language Display Name 1 but not always.
   * Forbidden when termVocabulary is Language Groupings LMT
   * Optional when termVocabulary is Language Metadata Table LMT
1. `Code`
   * URN or URI for each language tag term.  See 5.3.6.2
   * Forbidden when termVocabulary is Language Groupings LMT
   * Required when termVocabulary is Language Metadata Table LMT
1. `Scopes`
   * A list of comma separated values to restrict the scope of the usage of the tag. If not specified the scope is global
   * Optional
   * EXAMPLE: “ISDCF, MovieLabs”
