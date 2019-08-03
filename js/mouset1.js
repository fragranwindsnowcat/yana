if (document.all){
<!--在此修改光圈出現的數量-->
amount=15;
<!--在此修改光圈內圈顏色-->
Color='#ffffff';
<!--在此修改光圈外框顏色-->
GlowColor='#FF0000';
ypos=0;
xpos=0;
ybase=15;
xbase=-80;
step=0.7;
currStep=0;
TrigSplit=360/amount;
MY=0;
MX=0;
C=0;
c=0.05
for (i=0; i < amount; i++)
document.write('<div id="ieDiv" style="position:absolute;top:0px;left:0px;height:20;width:20;text-align:center"><B>.</B></div>');
function tsaiannie(){
MY=document.body.scrollTop+document.body.clientHeight/2 + document.body.clientHeight/2.8*Math.cos((C)/3)*Math.cos(C/10);
MX=document.body.scrollLeft+20+document.body.clientWidth/2.2 + document.body.clientWidth/2.4*Math.sin((C)/5)*Math.sin(C/20);
ypos=MY;
xpos=MX;
for (i=0; i < amount; i++){
var d=ieDiv[i].style;
if (d.pixelTop > ypos+2){
 {
  d.fontSize=18;
  d.paddingTop=7;
  d.filter='glow(color='+GlowColor+', strength=7)';
 }
if (d.pixelTop > ypos+10)
 {
  d.fontSize=15;
  d.paddingTop=10;
  d.filter='glow(color='+GlowColor+', strength=6)';
 }}
else
{
 d.fontSize=25;
 d.paddingTop=0;
 d.color=Color;
 d.filter='glow(color='+GlowColor+', strength=8)';
}
d.top=ypos+ybase*Math.sin(currStep+i*TrigSplit*Math.PI/180);
d.left=xpos+xbase*Math.cos(currStep+i*TrigSplit*Math.PI/180);
}
C+=c;
currStep+=step;
setTimeout('tsaiannie()',20);
}
window.onload=tsaiannie;
}
</script>

<script language="JavaScript">
<!--
function gotoURL() {
var Current = document.formName5.selectName5.selectedIndex;
location.href =
document.formName5.selectName5.options[Current].value;
return false;
}
//-->
