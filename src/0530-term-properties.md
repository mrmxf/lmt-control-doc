## `terms`

An array of `term` objects. The order of `term` objects within the a `terms`
array in an LMT JSON document has no meaning.

### `term`

A collection of key value pairs defining the properties of a unique Language
Metadata `term` element. Note that the object key `term` does not appear in the
JSON because the parent `terms` object is an array of individual `term`
elements. In JSON the elements of an array do not have keys.

The remaining definitions in this section are children of a `term` object.

### `AudioLanguageTag`

Required. Shall be a valid IETF BCP-47 langtag value. Every `term` object in the
`terms` array shall have a unique value of `AudioLanguageTag`.

### `Name`

Required. [Should correspond to the `Description` field of the IANA SubTag
 registry entry whose subtag matches the object's `AudioLanguageTag`
 property]{custom-style="smpte-ch-review-highlight"}

### `Code`

Required. Shall be a url encoded form of the language identified by
`AudioLanguageTag` that uniquely identtifies the `term` in the register. Used to
disambiguate `term` and `group` objects as well as to  disambiguate `GroupTag`
from other non-SMPTE applications.

The url encoding is described in clause §5.5

::: {custom-style="smpte-note"}
NOTE: SMPTE might provide an endpoint for the url to help users of this register
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

### `AudioLanguageDisplayName1`

Optional. Shall be an endonym for the spoken form of `AudioLanguageTag`. Used
when there are alternate spellings or scripts for writing `Name`. Typically, the
same as `VisualLanguageDisplayName1`.

### `AudioLanguageDisplayName2`

Optional. Shall be an alternative endonym of `AudioLanguageDisplayName1`. Used
when there alternate spellings or scripts for writing `Name`.

### `LongDescription1`

Required. [Shall be a Description of `AudioLanguageDisplayName1` in English
following IETF BCP 47 standard]{custom-style="smpte-ch-review-highlight"}

[This seems to always be the same as `Name` - what's it
for?]{custom-style="smpte-ch-review-highlight"}

### `LongDescription2`

Optional. [Alternate description of language name in Latin script following IETF
BCP 47 standard]{custom-style="smpte-ch-review-highlight"}

### `VisualLanguageTag1`

Conditional. Shall be a valid IETF BCP-47 langtag value for a written form of the
language identified by `AudioLanguageTag`. Multiple `term` objects  in the
`terms` array may have have the same value of `AudioLanguageTag`.

A `VisualLanguageTag1` value shall be present if a `term` has a value for
`VisualLanguageDisplayName1`.

### `VisualLanguageTag2`

Optional. Shall be a valid IETF BCP-47 langtag value for an alternate written
form of the language identified by `AudioLanguageTag`. Multiple `term` objects
in the `terms` array may have have the same value of `AudioLanguageTag`.

### `VisualLanguageDisplayName1`

Conditional. Shall be an endonym of the written form of the language identified
by `VisualLanguageTag1`. Typically the same as `AudioLanguageDisplayName1`.

A `VisualLanguageDisplayName1` value shall be present if a `term` has a value
 for `VisualLanguageTag1`.

### `VisualLanguageDisplayName2`

Optional. Shall be an endonym of the written form of the language identified by
`VisualLanguageDisplayName1`.
