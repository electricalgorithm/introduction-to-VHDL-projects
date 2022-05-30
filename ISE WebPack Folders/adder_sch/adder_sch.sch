<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="Cin" />
        <signal name="B" />
        <signal name="A" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="S" />
        <signal name="Cout" />
        <signal name="XLXN_12" />
        <signal name="XLXN_14" />
        <port polarity="Input" name="Cin" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="S" />
        <port polarity="Output" name="Cout" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="xor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="208" y1="-128" y2="-128" x1="256" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="64" ey="-176" sx="64" sy="-80" r="56" cx="32" cy="-128" />
            <arc ex="128" ey="-176" sx="208" sy="-128" r="88" cx="132" cy="-88" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="64" y1="-80" y2="-80" x1="128" />
            <line x2="64" y1="-176" y2="-176" x1="128" />
            <arc ex="208" ey="-128" sx="128" sy="-80" r="88" cx="132" cy="-168" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="Cin" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="Cout" name="O" />
        </block>
        <block symbolname="xor3" name="XLXI_5">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="Cin" name="I2" />
            <blockpin signalname="S" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1632" y="672" name="XLXI_3" orien="R90" />
        <instance x="1360" y="656" name="XLXI_1" orien="R90" />
        <branch name="Cin">
            <wire x2="1104" y1="512" y2="512" x1="800" />
            <wire x2="1104" y1="512" y2="672" x1="1104" />
            <wire x2="1808" y1="512" y2="512" x1="1104" />
            <wire x2="1808" y1="512" y2="976" x1="1808" />
        </branch>
        <branch name="B">
            <wire x2="1040" y1="560" y2="560" x1="800" />
            <wire x2="1488" y1="560" y2="560" x1="1040" />
            <wire x2="1760" y1="560" y2="560" x1="1488" />
            <wire x2="1760" y1="560" y2="672" x1="1760" />
            <wire x2="1488" y1="560" y2="656" x1="1488" />
            <wire x2="1040" y1="560" y2="672" x1="1040" />
        </branch>
        <branch name="A">
            <wire x2="976" y1="608" y2="608" x1="800" />
            <wire x2="1424" y1="608" y2="608" x1="976" />
            <wire x2="1696" y1="608" y2="608" x1="1424" />
            <wire x2="1696" y1="608" y2="672" x1="1696" />
            <wire x2="1424" y1="608" y2="656" x1="1424" />
            <wire x2="976" y1="608" y2="672" x1="976" />
        </branch>
        <instance x="912" y="672" name="XLXI_5" orien="R90" />
        <branch name="XLXN_7">
            <wire x2="1776" y1="1248" y2="1248" x1="1760" />
            <wire x2="1760" y1="1248" y2="1296" x1="1760" />
            <wire x2="1776" y1="1232" y2="1248" x1="1776" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1456" y1="912" y2="1104" x1="1456" />
            <wire x2="1696" y1="1104" y2="1104" x1="1456" />
            <wire x2="1696" y1="1104" y2="1296" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="800" y="512" name="Cin" orien="R180" />
        <iomarker fontsize="28" x="800" y="560" name="B" orien="R180" />
        <iomarker fontsize="28" x="800" y="608" name="A" orien="R180" />
        <branch name="S">
            <wire x2="1040" y1="928" y2="960" x1="1040" />
        </branch>
        <branch name="Cout">
            <wire x2="1728" y1="1552" y2="1568" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1040" y="960" name="S" orien="R90" />
        <instance x="1680" y="976" name="XLXI_2" orien="R90" />
        <branch name="XLXN_1">
            <wire x2="1728" y1="928" y2="944" x1="1728" />
            <wire x2="1744" y1="944" y2="944" x1="1728" />
            <wire x2="1744" y1="944" y2="976" x1="1744" />
        </branch>
        <instance x="1632" y="1296" name="XLXI_4" orien="R90" />
        <iomarker fontsize="28" x="1728" y="1568" name="Cout" orien="R90" />
    </sheet>
</drawing>