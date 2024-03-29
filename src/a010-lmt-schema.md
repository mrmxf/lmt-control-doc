# Annex LMT JSON Schema (informative)

Element-a of this document is a JSON schema document. It is presented as part of
the document below

``` {#schema .json .numberLines startFrom="1"}
{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "$id": "https://mrmxf.com/schema/lmt-schema-r2.json",
    "title": "LMT Schema",
    "description": "The Schmea for the SMPTE interchange JSON of the Language Metadata Table",
    "required": ["terms", "groups"],
    "type": "object",
    "properties": {

        "terms": {
            "type": "array",
            "minItems": 1,
            "items": {
                "type": "object",
                "$ref": "#/$defs/term"
            }
        },

        "groups": {
            "type": "array",
            "minItems": 1,
            "items": {
                "type": "object",
                "$ref": "#/$defs/group"
            }
        },

        "additionalProperties": true

    },
    "$defs": {
        "term": {
            "type": "object",
            "properties": {
                "Name": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 511
                },
                "AudioLanguageTag": {
                    "$ref": "#/$defs/AudioLanguageTag"
                },
                "Code": {
                    "type": "string",
                    "pattern": "https:\\/\\/smpte-ra\\.org\\/register\\/lmt\\/code\\/[a-zA-Z0-9-]{2,5}"
                },
                "audio_language_display_name_1": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 511
                },
                "audio_language_display_name_2": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 511
                },
                "AudioLanguageDisplayName2": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 511
                },
                "LongDescription1": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 511
                },
                "long_description_2": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 511
                },
                "VisualLanguageDisplayName1": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 511
                },
                "VisualLanguageDisplayName2": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 511
                },
                "VisualLanguageTag1": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 511
                },
                "VisualLanguageTag2": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 511
                },
                "notes": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 8191
                }

            },
            "additionalProperties": false
        },
        "group": {
            "properties": {
                "Name": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 511
                },
                "Code": {
                    "type": "string",
                    "pattern": "https:\\/\\/smpte-ra\\.org\\/register\\/lmt\\/code\\/[a-zA-Z0-9-]{2,5}"
                },
                "GroupTag": {
                    "$ref": "#/$defs/AudioLanguageTag"
                },
                "members": {
                    "type": "array",
                    "items":{
                        "$ref": "#/$defs/member"
                    }
                },
                "notes": {
                    "type": "string",
                    "minLength": 2,
                    "maxLength": 8191
                }
            },
            "additionalProperties": false
        },
        "member": {
            "type": "object",
            "properties": {
                "relationType": {
                    "enum": ["EQT", "BT", "NT", "TT"]
                },
                "relationWeight": {
                    "type": "integer",
                    "minimum": 0,
                    "maximum": 100
                },
                "AudioLanguageTag": {
                    "$ref": "#/$defs/AudioLanguageTag"
                }
            }
        },
        "AudioLanguageTag": {
            "type": "string",
            "pattern": "[a-zA-Z0-9-]{2,5}"
        }
    }
}
```

::: {custom-style="smpte-caption"}

Figure A-1 View of the LMT Schema
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

