
//Five Main Variables:

var phrase = "娜娜伺服器"; //¤å¦r
var bouncespeed = 10;      //²¾°Ê±j«×
var speed = 1;             //²¾°Ê³t«×
var Xoffset = 15;          //±q·Æ¹«ªº¶ZÂ÷ªºx¶b
var Yoffset = 15;          //±q·Æ¹«ªº¶ZÂ÷ªºy¶b¡C
var color = "white";       //¦rÅéÃC¦â


//Variables that don't need to be changed:

var letters = new Array();
letters = phrase.split('');
var object;
var theta = 0;
var MouseX = 0;
var MouseY = 0;

//The rest of the code, change at your own risk:

document.onmousemove=mouse;

function mouse(e) {
MouseX = event.x + Xoffset;
MouseY = event.y + Yoffset;
window.status = "(" + MouseX + ", " + MouseY + ")";
}

function createobjects() {
for (i=0; i < letters.length; i++) {
document.write('<div id="letterwave" style="position:absolute;"><font color='+color+'>'+letters[i]+'</font></div>');
}
object = document.all('letterwave');
objectmove();
}

function objectmove() {
theta += 4;
for (i=0; i<letters.length; i++) {
object[i].style.top = MouseY;
var leftnum = MouseX + i * 10 + (Math.sin(theta * Math.PI / 180 + (2 * Math.PI / object.length * i))) * bouncespeed;
if (leftnum < 0) {
leftnum *= -1;
}
object[i].style.left = leftnum;
}
if (theta > 360) {
theta = 0;
}
setTimeout("objectmove();", speed);
}
