#!/bin/sh

KSY_FILE=dwg_ac1_2.ksy
OUTPUT_PM_FILE=AC1_2.pm

ksc -t perl $KSY_FILE
mv Dwg0120.pm $OUTPUT_PM_FILE
sed -i s/Dwg0120/CAD::Format::DWG::AC1_2/g $OUTPUT_PM_FILE
