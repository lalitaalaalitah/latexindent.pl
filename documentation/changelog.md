# changelog.md

## V3.9.1, March 21, 2021
minor updates to documentation:
- https://github.com/cmhughes/latexindent.pl/issues/255
- https://github.com/cmhughes/latexindent.pl/issues/259
minor updates to fineTuning:
- https://github.com/cmhughes/latexindent.pl/issues/257
- https://github.com/cmhughes/latexindent.pl/issues/258

## V3.9, March 14, 2021
- https://github.com/cmhughes/latexindent.pl/issues/229, Log4Perl module removed, logging is now
  perhaps too simple, but hopefully eases installation

small enhancements:
- https://github.com/cmhughes/latexindent.pl/issues/242, update to -l switch
- https://github.com/cmhughes/latexindent.pl/issues/239, update to commandCodeBlocks 

bug fixes:
- https://github.com/cmhughes/latexindent.pl/issues/243, bug with -y switch
- https://github.com/cmhughes/latexindent.pl/issues/249, bug with item indentation
- https://github.com/cmhughes/latexindent.pl/issues/250, bug with ifElseFi

## V3.8.3, November 6, 2020
a minor release that implements fixes for the following issues:

- #209, EndFinishesWithLineBreak + lookForAlignDelims adds extra blank line
- #217, Spaces Are Converted to Tabs in the Middle of Line
- #223, Formatting TikZ stuff?

## V3.8.2, June 11, 2020
A minor release to address the bug fix relating to Environment.pm reported
at https://github.com/cmhughes/latexindent.pl/issues/207

## V3.8.1, May 6, 2020
A minor release of latexindent.pl, addressing the AlignAtAmpersand bug reported at:
https://github.com/cmhughes/latexindent.pl/issues/201

## V3.8, March 22, 2020
Version 3.8 of latexindent.pl: upgrades to align-at-ampersand routine,
and others:

new features:
- `alignFinalDoubleBackSlash` for align-at-ampersand routine,
https://github.com/cmhughes/latexindent.pl/issues/179
-  `dontMeasure` for align-at-ampersand routine,
https://github.com/cmhughes/latexindent.pl/issues/182
-  `delimiterRegEx` for align-at-ampersand-routine,
https://github.com/cmhughes/latexindent.pl/issues/187

documentation updates:
- update to the `-c` switch,
https://github.com/cmhughes/latexindent.pl/issues/180
- update to `STDIN`,
https://github.com/cmhughes/latexindent.pl/issues/189

bug fixes:
- multicolumn alignment,
https://github.com/cmhughes/latexindent.pl/issues/143
- sentence text wrapping,
https://github.com/cmhughes/latexindent.pl/issues/188

## V3.7.1, September 8, 2019
 This implements a small upgrade to the text wrap routine
 to allow an option not to break words when text wrapping.
 Full details are given at
 https://github.com/cmhughes/latexindent.pl/pull/173

## V3.7, July 14, 2019
This version implements the following:

1. new double-back-slash and comma poly-switches: https://github.com/cmhughes/latexindent.pl/issues/106
2. fine tuning: https://github.com/cmhughes/latexindent.pl/issues/113
3. blank line poly-switch: https://github.com/cmhughes/latexindent.pl/issues/146
4. file extension upgrade: https://github.com/cmhughes/latexindent.pl/issues/154
5. replacement mode switches: https://github.com/cmhughes/latexindent.pl/issues/155

Full details at https://github.com/cmhughes/latexindent.pl/pull/169

## V3.6, May 6, 2019
This implements two new poly-switches for verbatim environments,
 and a small update to the one sentence per line routine.

 Full details are available at https://github.com/cmhughes/latexindent.pl/pull/163

## V3.5.3, October 14, 2018
A minor release that addresses the indentconfig.yaml/.indentconfig.yaml
bug reported at #141

Details at: https://github.com/cmhughes/latexindent.pl/pull/142

## V3.5.2, October 7, 2018
A minor release for a bug fix that addresses verbatim code blocks
with stars in their name. They are now treated appropriately.

 Full details at: https://github.com/cmhughes/latexindent.pl/pull/140

## V3.5.1, September 16, 2018
Version 3.5.1: a couple of bug fixes to the sentence indentation routine;
 full details at https://github.com/cmhughes/latexindent.pl/pull/134

## V3.5,  August 14, 2018
Version 3.5:
- improvements to text wrap
- specialBeginEnd verbatim

Full details at: https://github.com/cmhughes/latexindent.pl/pull/127

## V3.4.3, June 9, 2018
A minor release that has some internal optimizations, and an information 
prompt for STDIN mode. Full details at
https://github.com/cmhughes/latexindent.pl/pull/117

## V3.4.2, April 28, 2018 
- enhancements to specialBeginEnd: https://github.com/cmhughes/latexindent.pl/issues/100
- enhancements to commandCodeBlocks: https://github.com/cmhughes/latexindent.pl/issues/105
- better support for forrest syntax: https://github.com/cmhughes/latexindent.pl/issues/107

## V3.4.1, January 20, 2018
This represents a bug fix for the Windows executable file. 

(The YAML::Tiny module errors if the file it is trying to read does not 
exist -- this wasn't true previously. This was reported at
https://github.com/cmhughes/latexindent.pl/issues/97)

## V3.4, January 14, 2018
Version 3.4 introduces:
  - enhancements to alignment at ampersand routine
  - a more robust logging method using log4Perl module
  - a new feature: one sentence per line
  - a new feature: STDIN allowed

  A couple of bug fixes are addressed:
      textwrap bug
      polyswitch bug

  Full details are at: https://github.com/cmhughes/latexindent.pl/pull/96

## V3.3, August 22, 2017
This represents Version 3.3, the full details are given at
https://github.com/cmhughes/latexindent.pl/pull/83.

New features:

    maximum indentation: #50
    blank line poly-switch: #57
    ifnextchar issue: #73
    the -y/yaml switch: #79
    absolute paths for the -l switch: #82

Bug fixes:

    an ifelsefi bug: #76
    empty environment bug: #78
    a command/special bug: #80

## V3.2.2, June 29, 2017
A very small tweak to account for the issue raised at https://github.com/Glavin001/atom-beautify/issues/1564

Users can specify removeTrailingWhitespace as a scalar, for example `removeTrailingWhitespace: 0`

## V3.2.1, June 26, 2017
includes an upgrade to the `-o` and `-l` switches.

 Full details are available at https://github.com/cmhughes/latexindent.pl/pull/71, and highlighted in the documentation.

## V3.2, June 20, 2017
implements a new feature called 'multiColumnGrouping' which gives a new option for the alignment-at-ampersands routine. 

More details are given at https://github.com/cmhughes/latexindent.pl/pull/67, and the documentation contains demonstrations of this new feature.

## V3.1, May 29, 2017
 including options for text wrapping and paragraph line break removal. Full details at https://github.com/cmhughes/latexindent.pl/pull/64

## V3.0.2, May 15, 2017
A minor release to fix a small bug related to indentPreamble; details given here: https://github.com/cmhughes/latexindent.pl/pull/62

## V3.0.1, April 30, 2017
provides support for the alignment at ampersands routine for code that contains unicode characters; see https://github.com/cmhughes/latexindent.pl/pull/61 for more details.
 
## V3.0, February 24, 2017
latexindent.pl version 3.0: this represents a complete re-build of the script;full details are given at https://github.com/cmhughes/latexindent.pl/pull/56 and also within the documentation.

## V2.2, October 28, 2016
addresses a regexp issue, and adds a few enhancements; full details are here: https://github.com/cmhughes/latexindent.pl/pull/49
 
## V2.1R, April 20, 2015
indentconfig.yaml can now be a 'hidden' file, .indentconfig.yaml The Windows executable file, latexindent.exe, should now work much better with Windows TeXLive.

## V2.0R, December 6, 2014
- indentation after \item commands
- alignment of delimitered environments in commands, such as \matrix
- indentation of \if...\else...\fi statements
- maximum number of backups can cycle through backups
- better support for .cls and .sty files
- and a few other bug fixes

## V1.11R, November 26, 2013
This release updates the script to use $FindBin::RealBin which should
help in the TeXLive implementation

## V1.1R, November 13, 2013
 Changed Bin to RealBin so that I hope the script can get
 bundled into TeXLive 2013. Some other updates, too, detailed in
 the documentation. 

