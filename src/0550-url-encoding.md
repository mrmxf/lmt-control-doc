#### url encoding of `termNote` element with `label` attribute of `Code`

Each `term` element shall have a `termNote` child element with a `label` attribute of the value `Code`.

The value of the `termNote` child elememt is coded as follows:

```abnf
<CODE> ::= "https://smpte-ra.org/register/lmt/code" ":" <TERM-AUDIO-LANGUAGE-TAG>
```

The `<TERM-AUDIO-LANGUAGE-TAG>` field shall take the value of the `termNote` child element with the `label` attribute of `Audio Language Tag`

::: {custom-style="smpte-indent"}
EXAMPLE:  The termNote XML element:

```xml
<termNote label="Audio Language Tag">es-419</termNote>
```

Will be encoded as

```xml
<termNote label="Code">https://smpte-ra.org/register/lmt/code/es-419</termNote>
```
:::
