# Annex LMT Fragment (informative)

The fragment below shows some fragments of the register's format.

``` {#schema .json .numberLines startFrom="1"}
{
  "Metadata": {
    "controlDocument":"SMPTE STxxxx:2021",
    "registerDate":"2021-05-27",
    "registerStatus":"Experimental",
    "createdBy":"Bruce Devlin"
  },

  "terms": [
    {
      "Name": "Abkhazian",
      "audio_language_display_name_1": "аҧсуа бызшәа",
      "AudioLanguageTag": "ab",
      "Code": "https://smpte-ra.org/register/lmt/code/ab",
      "LongDescription1": "Abkhazian",
      "VisualLanguageDisplayName1": "аҧсуа бызшәа",
      "VisualLanguageTag1": "ab"
    },

    ...

    {
      "Name": "Chinese",
      "audio_language_display_name_1": "繁体中文",
      "audio_language_display_name_2": "简体中文",
      "AudioLanguageTag": "zh",
      "Code": "https://smpte-ra.org/register/lmt/code/zh",
      "LongDescription1": "Chinese",
      "VisualLanguageDisplayName1": "简体中文",
      "VisualLanguageDisplayName2": "繁体中文",
      "VisualLanguageTag1": "zh-Hans",
      "VisualLanguageTag2": "zh-Hant"
    },

    ...

  ],
  "groups": [
    ...
    
    {
      "Name": "Portuguese",
      "Code": "https://smpte-ra.org/register/lmt/code/pt",
      "GroupTag": "pt",
      "members": [
        {
          "relationType": "NT",
          "relationWeight": 100,
          "AudioLanguageTag": "pt-BR"
        },
        {
          "relationType": "NT",
          "relationWeight": 100,
          "AudioLanguageTag": "pt-PT"
        }
      ]
    }
    ... 
  ]
}```

::: {custom-style="smpte-caption"}

Figure B-1 Fragment of the LMT Register
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
