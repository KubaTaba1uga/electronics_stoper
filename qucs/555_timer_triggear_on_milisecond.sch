<Qucs Schematic 24.2.1>
<Properties>
  <View=0,-14,1581,1710,1.21,136,0>
  <Grid=10,10,1>
  <DataSet=555_timer_triggear_on_milisecond.dat>
  <DataDisplay=555_timer_triggear_on_milisecond.dpl>
  <OpenDisplay=0>
  <Script=555_timer_triggear_on_milisecond.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.PortSym 40 20 1 0>
  <.PortSym -90 60 2 0>
</Symbol>
<Components>
  <XSPICE_A 555MilisercondsTimer 1 720 610 -26 -135 0 0 "GND, PWR, trigger, discharge, output, thresh, reset, controlVoltage" 0 "generic_model" 0>
  <GND * 1 620 520 0 0 0 3>
  <Port StoperPower 1 270 240 -23 12 0 0 "1" 0 "analog" 0 "v" 0 "" 0>
  <R R1 1 950 290 15 -26 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 1070 410 15 -26 0 1 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Port TimerPulse 1 510 640 -23 12 0 0 "2" 0 "analog" 0 "v" 0 "" 0>
  <C C1 1 760 820 -100 -26 0 3 "1 nF" 1 "" 0 "neutral" 0>
  <C C2 1 1070 820 17 -26 0 1 "1000 nF" 1 "" 0 "neutral" 0>
  <GND * 1 760 850 0 0 0 0>
  <GND * 1 1070 850 0 0 0 0>
</Components>
<Wires>
  <620 520 680 520 "" 0 0 0 "">
  <570 580 680 580 "" 0 0 0 "">
  <760 580 950 580 "" 0 0 0 "">
  <760 240 760 520 "" 0 0 0 "">
  <760 640 1070 640 "" 0 0 0 "">
  <1070 440 1070 460 "" 0 0 0 "">
  <270 240 430 240 "" 0 0 0 "">
  <950 240 950 260 "" 0 0 0 "">
  <760 240 950 240 "" 0 0 0 "">
  <950 320 950 340 "" 0 0 0 "">
  <950 340 950 580 "" 0 0 0 "">
  <950 340 1070 340 "" 0 0 0 "">
  <1070 340 1070 380 "" 0 0 0 "">
  <570 460 570 580 "" 0 0 0 "">
  <1070 460 1070 640 "" 0 0 0 "">
  <570 460 1070 460 "" 0 0 0 "">
  <430 240 760 240 "" 0 0 0 "">
  <430 240 430 700 "" 0 0 0 "">
  <430 700 680 700 "" 0 0 0 "">
  <510 640 680 640 "" 0 0 0 "">
  <760 700 760 790 "" 0 0 0 "">
  <1070 640 1070 790 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Rectangle 200 130 1050 1350 #000000 3 1 #c0c0c0 1 0>
  <Rectangle 920 1420 330 60 #000000 3 1 #c0c0c0 1 0>
  <Text 940 1430 20 #000000 0 "Stoper part 2">
</Paintings>
