<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="XLXN_17(7:0)" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(7:0)" />
        <signal name="XLXN_22(3:0)" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25(7:0)" />
        <signal name="Clk" />
        <signal name="DATA_OUT(7:0)" />
        <port polarity="BiDirectional" name="SDA" />
        <port polarity="BiDirectional" name="SCL" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="DATA_OUT(7:0)" />
        <blockdef name="I2C_Master">
            <timestamp>2015-11-24T12:12:50</timestamp>
            <rect width="336" x="64" y="-512" height="572" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="464" y1="-256" y2="-256" x1="400" />
            <line x2="464" y1="-192" y2="-192" x1="400" />
            <rect width="64" x="400" y="-140" height="24" />
            <line x2="464" y1="-128" y2="-128" x1="400" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <line x2="464" y1="32" y2="32" x1="400" />
        </blockdef>
        <blockdef name="I2C_Driver">
            <timestamp>2020-4-17T9:16:56</timestamp>
            <rect width="64" x="368" y="20" height="24" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="304" x="64" y="-384" height="448" />
        </blockdef>
        <block symbolname="I2C_Master" name="XLXI_1">
            <blockpin signalname="XLXN_18" name="Go" />
            <blockpin signalname="XLXN_21(7:0)" name="Address(7:0)" />
            <blockpin signalname="XLXN_22(3:0)" name="ReadCnt(3:0)" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="XLXN_20" name="FIFO_Pop" />
            <blockpin signalname="XLXN_19" name="FIFO_Push" />
            <blockpin signalname="XLXN_17(7:0)" name="FIFO_DI(7:0)" />
            <blockpin name="FIFO_Empty" />
            <blockpin name="FIFO_Full" />
            <blockpin signalname="XLXN_25(7:0)" name="FIFO_DO(7:0)" />
            <blockpin name="Reset" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_24" name="Busy" />
            <blockpin name="NACK" />
        </block>
        <block symbolname="I2C_Driver" name="XLXI_2">
            <blockpin signalname="XLXN_24" name="Busy" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_25(7:0)" name="FIFO_DO(7:0)" />
            <blockpin signalname="XLXN_19" name="FIFO_PUSH" />
            <blockpin signalname="XLXN_20" name="FIFO_POP" />
            <blockpin signalname="XLXN_18" name="Go" />
            <blockpin signalname="XLXN_17(7:0)" name="FIFO_DI(7:0)" />
            <blockpin signalname="XLXN_22(3:0)" name="ReadCnt(3:0)" />
            <blockpin signalname="XLXN_21(7:0)" name="Address(7:0)" />
            <blockpin signalname="DATA_OUT(7:0)" name="DATA_OUT(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1520" y="1248" name="XLXI_1" orien="R0">
        </instance>
        <branch name="SDA">
            <wire x2="2000" y1="768" y2="768" x1="1984" />
            <wire x2="2144" y1="768" y2="768" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2144" y="768" name="SDA" orien="R0" />
        <branch name="SCL">
            <wire x2="2000" y1="832" y2="832" x1="1984" />
            <wire x2="2144" y1="832" y2="832" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2144" y="832" name="SCL" orien="R0" />
        <branch name="XLXN_17(7:0)">
            <wire x2="1520" y1="1120" y2="1120" x1="800" />
        </branch>
        <instance x="368" y="1280" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_18">
            <wire x2="1152" y1="1056" y2="1056" x1="800" />
            <wire x2="1152" y1="768" y2="1056" x1="1152" />
            <wire x2="1520" y1="768" y2="768" x1="1152" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1168" y1="928" y2="928" x1="800" />
            <wire x2="1168" y1="928" y2="1056" x1="1168" />
            <wire x2="1520" y1="1056" y2="1056" x1="1168" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1520" y1="992" y2="992" x1="800" />
        </branch>
        <branch name="XLXN_21(7:0)">
            <wire x2="1408" y1="1248" y2="1248" x1="800" />
            <wire x2="1408" y1="832" y2="1248" x1="1408" />
            <wire x2="1520" y1="832" y2="832" x1="1408" />
        </branch>
        <branch name="XLXN_22(3:0)">
            <wire x2="1456" y1="1184" y2="1184" x1="800" />
            <wire x2="1456" y1="896" y2="1184" x1="1456" />
            <wire x2="1520" y1="896" y2="896" x1="1456" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="176" y1="928" y2="928" x1="160" />
            <wire x2="368" y1="928" y2="928" x1="176" />
            <wire x2="160" y1="928" y2="1408" x1="160" />
            <wire x2="2160" y1="1408" y2="1408" x1="160" />
            <wire x2="2160" y1="1216" y2="1216" x1="1984" />
            <wire x2="2160" y1="1216" y2="1408" x1="2160" />
        </branch>
        <branch name="XLXN_25(7:0)">
            <wire x2="352" y1="1248" y2="1360" x1="352" />
            <wire x2="2048" y1="1360" y2="1360" x1="352" />
            <wire x2="368" y1="1248" y2="1248" x1="352" />
            <wire x2="2048" y1="1120" y2="1120" x1="1984" />
            <wire x2="2048" y1="1120" y2="1360" x1="2048" />
        </branch>
        <branch name="Clk">
            <wire x2="368" y1="1088" y2="1088" x1="272" />
            <wire x2="272" y1="1088" y2="1488" x1="272" />
            <wire x2="896" y1="1488" y2="1488" x1="272" />
            <wire x2="1072" y1="1488" y2="1488" x1="896" />
            <wire x2="1520" y1="1488" y2="1488" x1="1072" />
            <wire x2="896" y1="1488" y2="1616" x1="896" />
            <wire x2="896" y1="1616" y2="1616" x1="816" />
            <wire x2="1520" y1="1280" y2="1280" x1="1456" />
            <wire x2="1456" y1="1280" y2="1376" x1="1456" />
            <wire x2="1520" y1="1376" y2="1376" x1="1456" />
            <wire x2="1520" y1="1376" y2="1488" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="816" y="1616" name="Clk" orien="R180" />
        <branch name="DATA_OUT(7:0)">
            <wire x2="992" y1="1312" y2="1312" x1="800" />
        </branch>
        <iomarker fontsize="28" x="992" y="1312" name="DATA_OUT(7:0)" orien="R0" />
    </sheet>
</drawing>