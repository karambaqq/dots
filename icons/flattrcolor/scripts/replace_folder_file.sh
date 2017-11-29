#!/bin/bash
#	default color: 178984
glyphColorOriginal=524954
glyphColorNew=010101

#	Front
#	default color: 36d7b7
frontColorOriginal=9b8aa0
frontColorNew=0f191b

#	Back
#	default color: 1ba39c
backColorOriginal=716475
backColorNew=080e0f

#	Paper
#	default color: ffffff
paperColorOriginal=ffffff
paperColorNew=ffffff

sed -i "s/#$glyphColorOriginal;/#$glyphColorNew;/g" $1
sed -i "s/#$frontColorOriginal;/#$frontColorNew;/g" $1
sed -i "s/#$backColorOriginal;/#$backColorNew;/g" $1
sed -i "s/#$paperColorOriginal;/#$paperColorNew;/g" $1
