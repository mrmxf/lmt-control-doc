# zmprc

This is the resource folder for zmp. This is checked into your repo. The core
subfolder is refreshed every time you run `zmp Update` so don't put your
stuff in it. Common scripts and snippets should go into zmprc and checked in so
that you can find them across projects.

Some useful stuff distributed in the core:

* `zmpr/core/filter` - pandoc filters e.g. SMPTE numbering
* `zmpr/core/inc`  - includes for organisation templates (SMPTE)
* `zmpr/core/template` - some pandoc templates - mostly pandoc defaults
* `zmpr/core/sample` - some sample scripts and metadata files

For your own projects, the recommendataion is to put common elements in the
root of `zmprc`

* `zmpr/filter` - your custom pandoc filters
* `zmpr/inc`  - custom markdown snippets & metadata
* `zmpr/template` - custome html & epub templates
* `zmpr/scripts` - custom scripts to appear in the zmp menu
