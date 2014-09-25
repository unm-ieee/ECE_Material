<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <port polarity="Output" name="XLXN_7" />
        <port polarity="Input" name="XLXN_10" />
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
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="XLXN_7" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1264" y="1120" name="XLXI_1" orien="R0" />
        <instance x="912" y="1008" name="XLXI_2" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="848" y1="864" y2="976" x1="848" />
            <wire x2="912" y1="976" y2="976" x1="848" />
            <wire x2="1584" y1="864" y2="864" x1="848" />
            <wire x2="1584" y1="864" y2="1024" x1="1584" />
            <wire x2="1840" y1="1024" y2="1024" x1="1584" />
            <wire x2="1840" y1="1024" y2="1040" x1="1840" />
            <wire x2="1584" y1="1024" y2="1024" x1="1520" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1200" y1="976" y2="976" x1="1136" />
            <wire x2="1200" y1="976" y2="992" x1="1200" />
            <wire x2="1264" y1="992" y2="992" x1="1200" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1264" y1="1056" y2="1056" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1232" y="1056" name="XLXN_10" orien="R180" />
        <iomarker fontsize="28" x="1840" y="1040" name="XLXN_7" orien="R90" />
    </sheet>
</drawing>