#!/bin/bash
loopmax=4
. ../common.sh

[[ $silentMode == 0 ]] && set -x 
# table-based test cases
latexindent.pl -s simple.tex -o=+-default.tex
latexindent.pl -s simple-multi-column.tex -o=+-mod1 -y="lookForAlignDelims:tabular:multiColumnGrouping:1"
latexindent.pl -s simple-multi-column.tex -o=+-mod2 -y="lookForAlignDelims:tabular:multiColumnGrouping:1;justification:right"
latexindent.pl -s simple-multi-column.tex -o=+-mod3 -y="lookForAlignDelims:tabular:multiColumnGrouping:1;spacesBeforeAmpersand:3;justification:right"
latexindent.pl -s simple-multi-column.tex -o=+-mod4 -y="lookForAlignDelims:tabular:multiColumnGrouping:1;spacesAfterAmpersand:3;justification:right"
latexindent.pl -s table1.tex -o table1-default.tex
for (( i=$loopmin ; i <= $loopmax ; i++ )) 
do 
    # basic tests
    latexindent.pl -s table1.tex -o=+-mod$i.tex -l=tabular$i.yaml,multiColumnGrouping2.yaml
    latexindent.pl -s table2.tex -o=+-mod$i.tex -l=tabular$i.yaml
    latexindent.pl -s table3.tex -o=+-mod$i.tex -l=tabular$i.yaml
    latexindent.pl -s table4.tex -o=+-mod$i.tex -l=tabular$i.yaml
    latexindent.pl -s table5.tex -o=+-mod$i.tex -l=tabular$i.yaml
    # tests with \\ not aligned
    latexindent.pl -s table1.tex -o table1-mod$((i+4)).tex -l=tabular$i.yaml,tabular5.yaml,multiColumnGrouping2.yaml
    latexindent.pl -s table2.tex -o table2-mod$((i+4)).tex -l=tabular$i.yaml,tabular5.yaml
    # tests with \\ not aligned, and with spaces before \\
    latexindent.pl -s table1.tex -o table1-mod$((i+8)).tex -l=tabular$i.yaml,tabular6.yaml,multiColumnGrouping2.yaml
    latexindent.pl -s table2.tex -o table2-mod$((i+8)).tex -l=tabular$i.yaml,tabular6.yaml
    # alignment inside commented block
    latexindent.pl -s alignmentoutsideEnvironmentsCommands.tex -o=+-mod$i.tex -l tabular$i.yaml
    latexindent.pl -s alignmentoutsideEnvironmentsCommands.tex -o=+-no-Add-1-mod$i.tex -l tabular$i.yaml,noAddtabular1.yaml
    latexindent.pl -s alignmentoutsideEnvironmentsCommands.tex -o=+-no-Add-2-mod$i.tex -l tabular$i.yaml,noAddtabular2.yaml
    latexindent.pl -s alignmentoutsideEnvironmentsCommands.tex -o=+-no-Add-3-mod$i.tex -l tabular$i.yaml,noAddtabular3.yaml
    latexindent.pl -s alignmentoutsideEnvironmentsCommands.tex -o=+-indent-rules-1-mod$i.tex -l tabular$i.yaml,indentRules1.yaml
    latexindent.pl -s alignmentoutsideEnvironmentsCommands.tex -o=+-indent-rules-2-mod$i.tex -l tabular$i.yaml,indentRules2.yaml
    latexindent.pl -s alignmentoutsideEnvironmentsCommands.tex -o=+-indent-rules-3-mod$i.tex -l tabular$i.yaml,indentRules3.yaml
done
latexindent.pl -s table1.tex -o=+-mod3.tex -l=tabular3.yaml
# legacy matrix test case
latexindent.pl -s matrix.tex -o=+-default.tex
# legacy environment test case
latexindent.pl -s environments.tex -o=+-default.tex
latexindent.pl -s environments.tex -o=+-no-align-double-back-slash.tex -l=align-no-double-back-slash.yaml
latexindent.pl -s legacy-align.tex -o=+-default.tex
# alignment inside a mandatory argument
latexindent.pl -s matrix1.tex -o=+-default.tex
latexindent.pl -s matrix1.tex -o=+-no-align.tex -l=noMatrixAlign.yaml
# nested
latexindent.pl nested-align1.tex -s -l=indentPreamble.yaml  -m -o=+-mod0.tex
# using comments
latexindent.pl -s alignmentoutsideEnvironmentsCommands.tex -o=+-default.tex
# end statement not on own line
latexindent.pl -s end-not-on-own-line.tex -o=+-default.tex
latexindent.pl -s end-not-on-own-line1.tex -o=+-default.tex
latexindent.pl -s end-not-on-own-line1.tex -o=+-mod1.tex -m -l=env-mod-lines1.yaml
# pmatrix
latexindent.pl -s pmatrix.tex -outputfile=pmatrix-default.tex -l=noRoundParenthesisInArgs.yaml
latexindent.pl -s pmatrix.tex -o=+-special-mod1.tex -m -l=../specials/special-mod1.yaml,noRoundParenthesisInArgs.yaml
latexindent.pl -s pmatrix.tex -o=+-pmatrix-mod1.tex -m -l=pmatrix-mod1.yaml,noRoundParenthesisInArgs.yaml
latexindent.pl -s pmatrix.tex -o=+-pmatrix-special-mod1.tex -m -l=pmatrix-mod1.yaml,../specials/special-mod1.yaml,noRoundParenthesisInArgs.yaml
# special
latexindent.pl -s special1.tex -o=+-aligned.tex -l special-align.yaml
# uni code
for (( i=1 ; i <= 6 ; i++ )) 
do 
    latexindent.pl -s uni-code1.tex -o=+-mod$i.tex -l=tabular$i.yaml
done
# multiColumnGrouping
latexindent.pl -s tabular-karl.tex -o=+-default.tex
latexindent.pl -s tabular-karl.tex -o=+-out.tex -l multiColumnGrouping.yaml
latexindent.pl -s tabular-karl.tex -o=+-out1.tex -l multiColumnGrouping1.yaml
latexindent.pl -s tabular-karl.tex -o=+-out2.tex -l multiColumnGrouping2.yaml
latexindent.pl -s tabular-karl.tex -o=+-out3.tex -l multiColumnGrouping3.yaml
latexindent.pl -s tabular-karl.tex -o=+-out5.tex -l multiColumnGrouping.yaml,tabular5.yaml
latexindent.pl -s tabular-karl.tex -o=+-out6.tex -l multiColumnGrouping.yaml,tabular6.yaml
latexindent.pl -s multicol.tex -o=+-out.tex -l multiColumnGrouping.yaml
latexindent.pl -s unicode-multicol.tex -o=+-out.tex -l multiColumnGrouping.yaml
latexindent.pl -s table3.tex -o=+-out.tex -l multiColumnGrouping.yaml
latexindent.pl -s tabular-multiple-multicol -o=+-out.tex -l multiColumnGrouping.yaml
latexindent.pl -s multicol-no-ampersands -o=+-default.tex
latexindent.pl -s multicol-no-ampersands.tex -o=+-out.tex -l multiColumnGrouping.yaml
latexindent.pl -s multicol-no-ampersands.tex -o=+-out5.tex -l multiColumnGrouping.yaml,tabular5.yaml
latexindent.pl -s multicol-no-ampersands.tex -o=+-out6.tex -l multiColumnGrouping.yaml,tabular6.yaml
latexindent.pl -s longcells.tex -o=+-default.tex
latexindent.pl -s longcells.tex -o=+-multicol.tex -l multiColumnGrouping.yaml
# spaces before and after ampersands
latexindent.pl -s table5.tex -o=+-mod7 -l=tabular7
latexindent.pl -s table5.tex -o=+-mod8 -l=tabular8
latexindent.pl -s table5.tex -o=+-mod9 -l=tabular9
latexindent.pl -s table5.tex -o=+-mod10 -l=tabular10
latexindent.pl -s tabular-karl.tex -o=+-out9.tex -l multiColumnGrouping.yaml,tabular9.yaml
latexindent.pl -s tabular-karl.tex -o=+-out10.tex -l multiColumnGrouping.yaml,tabular10.yaml
latexindent.pl -s matrix1.tex -o=+-mod1 -l=matrix1
latexindent.pl -s matrix1.tex -o=+-mod2 -l=matrix2
# left/right justification
latexindent.pl -s table5.tex -o=+-mod11 -l=tabular11
latexindent.pl -s table5.tex -o=+-mod12 -l=tabular11,tabular7,tabular8
latexindent.pl -s table5.tex -o=+-mod13 -l=tabular11,tabular9
latexindent.pl -s tabular-karl.tex -o=+-out11.tex -l multiColumnGrouping.yaml,tabular11.yaml
# issue 95 demo
latexindent.pl -s issue-95 -o=+-mod0
latexindent.pl -s issue-95 -o=+-mod1 -l=noMaxDelims.yaml
# double back slash polyswitch, https://github.com/cmhughes/latexindent.pl/issues/106
for (( i=-1 ; i <= 3 ; i++ )) 
do 
    [[ $silentMode == 0 ]] && set -x 
    # DBSStartsOnOwnLine
    latexindent.pl -s -m pmatrix1.tex -o=+-mod$i -l=double-back-slash$i.yaml
    # DBSOrFinishesWithLineBreak
    latexindent.pl -s -m pmatrix1.tex -o=+-finish-mod$i -l=double-back-slash-finish$i.yaml
    # per-name testing
    latexindent.pl -s -m pmatrix1.tex -o=+-mod-per-name$i -l=double-back-slash-per-name$i.yaml
    # commands
    latexindent.pl -s -m command-align.tex -o=+-opt-mod$i -l=command-dbs-optional$i.yaml,mycommand.yaml
    latexindent.pl -s -m command-align.tex -o=+-mand-mod$i -l=command-dbs-mandatory$i.yaml,mycommand.yaml
    latexindent.pl -s -m command-align.tex -o=+-opt-finish-mod$i -l=mycommand.yaml -y="modifyLineBreaks:optionalArguments:DBSFinishesWithLineBreak:$i"
    latexindent.pl -s -m command-align.tex -o=+-mand-finish-mod$i -l=mycommand.yaml -y="modifyLineBreaks:mandatoryArguments:DBSFinishesWithLineBreak:$i"
    # special
    latexindent.pl -s -m special-align.tex -o=+-mod$i -l=special-align1.yaml -y="modifyLineBreaks:specialBeginEnd:DBSStartsOnOwnLine:$i"
    latexindent.pl -s -m special-align.tex -o=+-finish-mod$i -l=special-align1.yaml -y="modifyLineBreaks:specialBeginEnd:DBSFinishesWithLineBreak:$i"
    latexindent.pl -s -m special-align1.tex -o=+-mod$i -l=special-align1.yaml -y="modifyLineBreaks:specialBeginEnd:DBSStartsOnOwnLine:$i"
    latexindent.pl -s -m special-align1.tex -o=+-finish-mod$i -l=special-align1.yaml -y="modifyLineBreaks:specialBeginEnd:DBSFinishesWithLineBreak:$i"
    [[ $silentMode == 0 ]] && set +x 
done
latexindent.pl -s -m pmatrix2.tex -o=+-mod1 -l=double-back-slash-finish1.yaml,pmatrix.yaml
latexindent.pl -s -m pmatrix3.tex -o=+-mod1 -l=double-back-slash-finish1.yaml,pmatrix.yaml
# multicolumn grouping issue from douglasrizzo, https://github.com/cmhughes/latexindent.pl/issues/143
latexindent.pl -s douglasrizzo.tex -o=+-mod1 -l=multiColumnGrouping.yaml
latexindent.pl -s douglasrizzo1.tex -o=+-mod1 -l=multiColumnGrouping.yaml
latexindent.pl -s douglasrizzo2.tex -o=+-mod1 -l=multiColumnGrouping.yaml
# alignFinalDoubleBackSlash, as in https://github.com/cmhughes/latexindent.pl/issues/179
latexindent.pl -s hudcap.tex -o=+-default
latexindent.pl -s hudcap.tex -o=+-mod1 -l=alignFinalDoubleBackSlash.yaml
latexindent.pl -s hudcap1.tex -o=+-default
latexindent.pl -s hudcap1.tex -o=+-mod1 -l=alignFinalDoubleBackSlash.yaml
latexindent.pl -s hudcap1.tex -o=+-mod2 -l=alignFinalDoubleBackSlash.yaml -y="lookForAlignDelims:tabular:spacesBeforeDoubleBackSlash:5"
latexindent.pl -s hudcap1.tex -o=+-mod3 -l=alignFinalDoubleBackSlash.yaml -y="lookForAlignDelims:tabular:spacesBeforeDoubleBackSlash:5;alignDoubleBackSlash:0"
# dontMeasure, https://github.com/cmhughes/latexindent.pl/issues/182
latexindent.pl -s yangmw.tex -o=+-default -y="lookForAlignDelims:tabular:dontMeasure:0"
latexindent.pl -s yangmw.tex -o=+-mod1 -l=dontMeasure.yaml
latexindent.pl -s yangmw.tex -o=+-mod2 -l=dontMeasure2.yaml
latexindent.pl -s yangmw.tex -o=+-mod3 -l=dontMeasure3.yaml
latexindent.pl -s yangmw.tex -o=+-mod4 -l=dontMeasure4.yaml
latexindent.pl -s yangmw.tex -o=+-mod5 -l=dontMeasure5.yaml
latexindent.pl -s yangmw.tex -o=+-mod6 -l=dontMeasure6.yaml
latexindent.pl -s yangmw.tex -o=+-mod7 -l=dontMeasure7.yaml
latexindent.pl -s yangmw.tex -o=+-mod8 -l=dontMeasure8.yaml
latexindent.pl -s yangmw.tex -o=+-mod9 -l=dontMeasure9.yaml
latexindent.pl -s yangmw.tex -o=+-just-right -l=dontMeasure.yaml -y="lookForAlignDelims:tabular:spacesBeforeAmpersand:3;justification:right"
latexindent.pl -s swaroopguggilam.tex -o=+-mod1 -l=dontMeasure1.yaml
# delimiterRegex feature: https://github.com/cmhughes/latexindent.pl/issues/187
latexindent.pl -s tabbing.tex -o=+-default
latexindent.pl -s tabbing.tex -o=+-mod1 -l=delimiterRegEx1.yaml
latexindent.pl -s tabbing.tex -o=+-mod2 -l=delimiterRegEx2.yaml
latexindent.pl -s tabbing1.tex -o=+-mod3 -l=delimiterRegEx3.yaml

latexindent.pl -s tabbing2.tex -o=+-mod5 -l=delimiterRegEx5.yaml
latexindent.pl -s tabbing2.tex -o=+-mod6 -l=delimiterRegEx6.yaml
latexindent.pl -s tabbing2.tex -o=+-mod7 -l=delimiterRegEx7.yaml
latexindent.pl -s tabbing2.tex -o=+-mod8 -l=delimiterRegEx8.yaml

latexindent.pl -s mixed.tex -o=+-out -l=mixed.yaml
[[ $silentMode == 0 ]] && set -x 
git status
[[ $noisyMode == 1 ]] && makenoise
