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
        <signal name="XLXN_27" />
        <signal name="XLXN_32(7:0)" />
        <signal name="XLXN_33(3:0)" />
        <signal name="XLXN_34(7:0)" />
        <signal name="XLXN_36" />
        <signal name="XLXN_41(7:0)" />
        <signal name="XLXN_42(3:0)" />
        <signal name="XLXN_43(7:0)" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="Reset" />
        <port polarity="BiDirectional" name="SDA" />
        <port polarity="BiDirectional" name="SCL" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="DATA_OUT(7:0)" />
        <port polarity="Input" name="Reset" />
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
            <timestamp>2020-5-24T21:34:52</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
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
            <rect width="304" x="64" y="-384" height="640" />
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
            <blockpin signalname="XLXN_44" name="FIFO_Empty" />
            <blockpin name="FIFO_Full" />
            <blockpin signalname="XLXN_25(7:0)" name="FIFO_DO(7:0)" />
            <blockpin signalname="Reset" name="Reset" />
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
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_44" name="FIFO_Empty" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1520" y="1248" name="XLXI_1" orien="R0">
        </instance>
        <branch name="SDA">
            <wire x2="2144" y1="768" y2="768" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2144" y="768" name="SDA" orien="R0" />
        <branch name="SCL">
            <wire x2="2144" y1="832" y2="832" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2144" y="832" name="SCL" orien="R0" />
        <iomarker fontsize="28" x="816" y="1616" name="Clk" orien="R180" />
        <branch name="DATA_OUT(7:0)">
            <wire x2="976" y1="1152" y2="1152" x1="816" />
            <wire x2="976" y1="1152" y2="1312" x1="976" />
            <wire x2="992" y1="1312" y2="1312" x1="976" />
        </branch>
        <iomarker fontsize="28" x="992" y="1312" name="DATA_OUT(7:0)" orien="R0" />
        <branch name="XLXN_17(7:0)">
            <wire x2="1120" y1="960" y2="960" x1="816" />
            <wire x2="1120" y1="960" y2="1120" x1="1120" />
            <wire x2="1520" y1="1120" y2="1120" x1="1120" />
        </branch>
        <branch name="XLXN_21(7:0)">
            <wire x2="1200" y1="1088" y2="1088" x1="816" />
            <wire x2="1200" y1="832" y2="1088" x1="1200" />
            <wire x2="1520" y1="832" y2="832" x1="1200" />
        </branch>
        <branch name="XLXN_22(3:0)">
            <wire x2="1184" y1="1024" y2="1024" x1="816" />
            <wire x2="1184" y1="896" y2="1024" x1="1184" />
            <wire x2="1520" y1="896" y2="896" x1="1184" />
        </branch>
        <branch name="Clk">
            <wire x2="384" y1="928" y2="928" x1="352" />
            <wire x2="352" y1="928" y2="1488" x1="352" />
            <wire x2="896" y1="1488" y2="1488" x1="352" />
            <wire x2="896" y1="1488" y2="1616" x1="896" />
            <wire x2="1520" y1="1488" y2="1488" x1="896" />
            <wire x2="896" y1="1616" y2="1616" x1="816" />
            <wire x2="1520" y1="1280" y2="1280" x1="1456" />
            <wire x2="1456" y1="1280" y2="1376" x1="1456" />
            <wire x2="1520" y1="1376" y2="1376" x1="1456" />
            <wire x2="1520" y1="1376" y2="1488" x1="1520" />
        </branch>
        <instance x="384" y="1120" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_24">
            <wire x2="384" y1="768" y2="768" x1="320" />
            <wire x2="320" y1="768" y2="1456" x1="320" />
            <wire x2="2000" y1="1456" y2="1456" x1="320" />
            <wire x2="2000" y1="1216" y2="1216" x1="1984" />
            <wire x2="2000" y1="1216" y2="1456" x1="2000" />
        </branch>
        <branch name="XLXN_25(7:0)">
            <wire x2="384" y1="1088" y2="1088" x1="368" />
            <wire x2="368" y1="1088" y2="1408" x1="368" />
            <wire x2="2096" y1="1408" y2="1408" x1="368" />
            <wire x2="2096" y1="1120" y2="1120" x1="1984" />
            <wire x2="2096" y1="1120" y2="1408" x1="2096" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1152" y1="768" y2="768" x1="816" />
            <wire x2="1152" y1="768" y2="1056" x1="1152" />
            <wire x2="1520" y1="1056" y2="1056" x1="1152" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1136" y1="832" y2="832" x1="816" />
            <wire x2="1136" y1="832" y2="992" x1="1136" />
            <wire x2="1520" y1="992" y2="992" x1="1136" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1168" y1="896" y2="896" x1="816" />
            <wire x2="1168" y1="768" y2="896" x1="1168" />
            <wire x2="1520" y1="768" y2="768" x1="1168" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="240" y1="1280" y2="1712" x1="240" />
            <wire x2="2256" y1="1712" y2="1712" x1="240" />
            <wire x2="384" y1="1280" y2="1280" x1="240" />
            <wire x2="2256" y1="992" y2="992" x1="1984" />
            <wire x2="2256" y1="992" y2="1712" x1="2256" />
        </branch>
        <branch name="Reset">
            <wire x2="384" y1="1216" y2="1216" x1="336" />
            <wire x2="336" y1="1216" y2="1552" x1="336" />
            <wire x2="384" y1="1552" y2="1552" x1="336" />
            <wire x2="1200" y1="1552" y2="1552" x1="384" />
            <wire x2="1200" y1="1552" y2="1584" x1="1200" />
            <wire x2="1312" y1="1584" y2="1584" x1="1200" />
            <wire x2="1200" y1="1584" y2="1648" x1="1200" />
            <wire x2="1200" y1="1648" y2="1648" x1="1120" />
            <wire x2="1520" y1="1216" y2="1216" x1="1312" />
            <wire x2="1312" y1="1216" y2="1584" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1120" y="1648" name="Reset" orien="R180" />
    </sheet>
</drawing>