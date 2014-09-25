<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Z" />
        <signal name="XLXN_2" />
        <signal name="X" />
        <port polarity="Output" name="Z" />
        <port polarity="Input" name="X" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="X" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="Z" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="Z" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="880" y="944" name="XLXI_1" orien="R0" />
        <instance x="544" y="848" name="XLXI_2" orien="R0" />
        <branch name="Z">
            <wire x2="544" y1="816" y2="816" x1="464" />
            <wire x2="464" y1="816" y2="976" x1="464" />
            <wire x2="1216" y1="976" y2="976" x1="464" />
            <wire x2="1216" y1="848" y2="848" x1="1136" />
            <wire x2="1216" y1="848" y2="976" x1="1216" />
            <wire x2="1472" y1="848" y2="848" x1="1216" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="880" y1="816" y2="816" x1="768" />
        </branch>
        <branch name="X">
            <wire x2="880" y1="880" y2="880" x1="848" />
        </branch>
        <iomarker fontsize="28" x="848" y="880" name="X" orien="R180" />
        <iomarker fontsize="28" x="1472" y="848" name="Z" orien="R0" />
    </sheet>
</drawing>