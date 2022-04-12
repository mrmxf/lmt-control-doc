## url encoding of `Code` values

Each `term` object and each `group` object has a `Code` property whos value shall
be encoded as shown below in the modified ABNF syntax.

In the example below `<AudioLanguageTag>` is a placeholder for a term's
`AudioLanguageTag` and `<GroupTag>` is a placeholder for a term's `GroupTag`.

```abnf
ROOT    = "https://smpte-ra.org/register/lmt/"
TTAG    = "term/code/" <AudioLanguageTag>
GTAG    = "group/code/" <GroupTag>
TAG     = TTAG / GTAG
CODE    = ROOT TAG
```

::: {custom-style="smpte-indent"}
EXAMPLE:  The `Code` property:

```json
   "AudioLanguageTag":"es-419"
```

Will be encoded as

```json
  "Code": "https://smpte-ra.org/register/lmt/term/code/es-419"
```
:::
