<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="solpad">
<description>&lt;b&gt;Solder Pads/Test Points&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SE14">
<description>&lt;b&gt;SOLDER PAD&lt;/b&gt;&lt;p&gt;
drill 1.4 mm</description>
<wire x1="-1.524" y1="0.635" x2="-1.524" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.524" x2="1.524" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.524" x2="1.524" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.635" x2="1.524" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0.635" x2="-0.635" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.524" x2="0.635" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.524" x2="-1.524" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.524" x2="-0.635" y2="-1.524" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.381" width="0.254" layer="51"/>
<pad name="MP" x="0" y="0" drill="1.397" diameter="2.54" shape="octagon"/>
<text x="-1.397" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.381" size="0.0254" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="LSP">
<wire x1="-1.016" y1="2.032" x2="1.016" y2="0" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0" x2="1.016" y2="2.032" width="0.254" layer="94"/>
<circle x="0" y="1.016" radius="1.016" width="0.4064" layer="94"/>
<text x="-1.27" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<pin name="MP" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SE14" prefix="LSP">
<description>&lt;b&gt;SOLDER PAD&lt;/b&gt;&lt;p&gt; E1553,  drill 1,4mm, distributor Buerklin, 07F820</description>
<gates>
<gate name="1" symbol="LSP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SE14">
<connects>
<connect gate="1" pin="MP" pad="MP"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="E1" library="solpad" deviceset="SE14" device=""/>
<part name="E2" library="solpad" deviceset="SE14" device=""/>
<part name="E3" library="solpad" deviceset="SE14" device=""/>
<part name="E4" library="solpad" deviceset="SE14" device=""/>
<part name="7" library="solpad" deviceset="SE14" device=""/>
<part name="8" library="solpad" deviceset="SE14" device=""/>
<part name="5" library="solpad" deviceset="SE14" device=""/>
<part name="6" library="solpad" deviceset="SE14" device=""/>
<part name="3" library="solpad" deviceset="SE14" device=""/>
<part name="4" library="solpad" deviceset="SE14" device=""/>
<part name="1" library="solpad" deviceset="SE14" device=""/>
<part name="2" library="solpad" deviceset="SE14" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="E1" gate="1" x="63.5" y="33.02" rot="R180"/>
<instance part="E2" gate="1" x="68.58" y="33.02" rot="R180"/>
<instance part="E3" gate="1" x="76.2" y="33.02" rot="R180"/>
<instance part="E4" gate="1" x="81.28" y="33.02" rot="R180"/>
<instance part="7" gate="1" x="93.98" y="33.02" rot="R180"/>
<instance part="8" gate="1" x="101.6" y="33.02" rot="R180"/>
<instance part="5" gate="1" x="111.76" y="33.02" rot="R180"/>
<instance part="6" gate="1" x="121.92" y="33.02" rot="R180"/>
<instance part="3" gate="1" x="132.08" y="33.02" rot="R180"/>
<instance part="4" gate="1" x="142.24" y="33.02" rot="R180"/>
<instance part="1" gate="1" x="152.4" y="33.02" rot="R180"/>
<instance part="2" gate="1" x="165.1" y="33.02" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="E1" class="0">
<segment>
<pinref part="E1" gate="1" pin="MP"/>
<wire x1="63.5" y1="35.56" x2="63.5" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="E2" class="0">
<segment>
<pinref part="E2" gate="1" pin="MP"/>
<wire x1="68.58" y1="35.56" x2="68.58" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="E3" class="0">
<segment>
<pinref part="E3" gate="1" pin="MP"/>
<wire x1="76.2" y1="35.56" x2="76.2" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="E4" class="0">
<segment>
<pinref part="E4" gate="1" pin="MP"/>
<wire x1="81.28" y1="35.56" x2="81.28" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="7" class="0">
<segment>
<pinref part="7" gate="1" pin="MP"/>
<wire x1="93.98" y1="35.56" x2="93.98" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="8" class="0">
<segment>
<pinref part="8" gate="1" pin="MP"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5" class="0">
<segment>
<pinref part="5" gate="1" pin="MP"/>
<wire x1="111.76" y1="35.56" x2="111.76" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="6" class="0">
<segment>
<pinref part="6" gate="1" pin="MP"/>
<wire x1="121.92" y1="35.56" x2="121.92" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3" class="0">
<segment>
<pinref part="3" gate="1" pin="MP"/>
<wire x1="132.08" y1="35.56" x2="132.08" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="4" class="0">
<segment>
<pinref part="4" gate="1" pin="MP"/>
<wire x1="142.24" y1="35.56" x2="142.24" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="1" class="0">
<segment>
<pinref part="1" gate="1" pin="MP"/>
<wire x1="152.4" y1="35.56" x2="152.4" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="2" class="0">
<segment>
<pinref part="2" gate="1" pin="MP"/>
<wire x1="165.1" y1="35.56" x2="165.1" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
