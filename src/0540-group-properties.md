## `groups`

A array of `group` objects. The order of `group` objects within the a
`groups` array in an LMT JSON document has no meaning.

::: {custom-style="smpte-note"}
NOTE: There is no requirement that a `term` must be part of a Language Group.
The use of IETF BCP 47 _Macrolanguage_ and _Language Family_ designations allow
for alphabetical sorting by grouping, keeping languages like Chinese together.
If not, languages like Mandarin and Cantonese would separate. A simple hierarchy
allows for the maximum flexibility. Some language grouping examples are:

* **Greek**: to account for ancient vs modern
* **English**: British, Canadian, Australian, American, etc
* **Spanish**: Latin American vs European, Mexican vs Argentinian
* **Special**: for codes such as “und” (undetermined)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

### `group`

A collection of key value pairs defining the properties of a unique Language
Metadata `group` element. Note that the object key `group` does not appear in the
JSON because the parent `groups` object is an array of individual `group`
elements

The remaining definitions in this section are children of a `group` object.

### `GroupTag`

Required. Shall be a valid IETF BCP-47 langtag value. Every `group` object in the
`groups` array shall have a unique value of `GroupTag`.

::: {custom-style="smpte-note"}
NOTE: Some applications need to differentiate a `term` object that has an
`AudioLanguageTag` value equal to the `GroupTag` value of a `group` object. This
can be done by inspecting the `Code` propererty of the objects. See §5.5.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

### `Name`

Required. [Should correspond to the `Description` field of the IANA SubTag
 registry entry whose subtag matches the object's `GroupTag`
 property]{custom-style="smpte-ch-review-highlight"}

### `Code`

Required. Shall be a url encoded form of the language identified by `GroupTag`
that uniquely identtifies the `group` in the register. Used to disambiguate
`term` and `group` objects as well as to  disambiguate `GroupTag` from other
non-SMPTE applications.

The url encoding is described in clause §5.5

::: {custom-style="smpte-note"}
NOTE: SMPTE might provide an endpoint for the url to help users of this register
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

### `members`

Required. Array of member objects that describe `term` object which are members
of the language group described by `GroupTag`. Note that the array shall be
present. The array may be empty.

#### `member`

A collection of key value pairs defining the properties of a `member` object.
Note that the object key `member` does not appear in the JSON because the parent
`members` object is an array of individual `member` elements

The remaining definitions in this section are children of a `member` object.

#### `relationType`

The following enumerations of the relationType element are permitted.

| Value  | Meaning       | Notes
|:-----  |:------------- |:-------------------
| `EQT`  | Equivalent to | This term is equivalent to the related term
| `BT`   | Broad Term    | The related term is a broader term than this term. EXAMPLE: the relation element for en-AU (Australian English) has a BT relation to en (Generic English)
| `NT`   | Narrow Term   | The related term is a narrower term than this term. EXAMPLE: the relation element for en (Generic English) has a NT relation to en-au (Australian English)
| `TT`   | Top Term      | The related term is the Top Most Broad Term.

#### `relationWeight`

Required. An integer between 0 and 100 indicating the strength of `relationType`

[Note that all values are always 100 - is this alwyas the
case???]{custom-style="smpte-ch-review-highlight"}

#### `AudioLanguageTag`

Required. Shall be either:

* the `AudioLanguageTag` of an entry in the `terms` array e.g. `arq`

or

* [a dialect of an `AudioLanguageTag` of an entry in the `terms` array e.g.
 `ar-TN`]{custom-style="smpte-ch-review-highlight"}

[Note that `ar-TN` does not appear in the `terms`
array]{custom-style="smpte-ch-review-highlight"}

[Note that **Norwegian** is missing `AudioLanguageTag`
values]{custom-style="smpte-ch-review-highlight"}
