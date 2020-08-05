#### urn encoding of `termNote` values

IETF RFC 2141 defines the general syntax of URNs as:

```abnf
<URN> ::= "urn:" <NID> ":" <NSS>
```

SMPTE URNs use the NID smpte, which was defined by IETF RFC 5119 for registration in the IANA registry of URN NIDs.
The first part of the Namespace Specific String for SMPTE Registers is defined in SMPTE ST 2029:

```abnf
<NSS> ::= "ra" ":" <REGISTER_IDENTIFIER> “:” <REGISTER_VALUE>
```

The register specific identifier for this document shall be

```abnf
<REGISTER_IDENTIFIER> ::= "lmt"
```

The register specific value for this document shall be the value of the termNote XML element with the attribute Audio Language Tag.

```abnf
<REGISTER_VALUE> ::= "lmt"
```

::: {custom-style="smpte-indent"}
EXAMPLE:  The termNote XML element:

```abnf
<termNote label="Audio Language Tag">es-419</termNote>
```

Will be urn encoded as `urn:x-smpte:ra:lmt:es-419`
:::
