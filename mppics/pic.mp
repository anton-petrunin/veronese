input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-en}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";




beginfig(10) 
save u,p;
u:=1.4cm;
path p[];

z.p=(-1,0)*u;
z.q=z.p xscaled -1;
z.s= (0,.7)*u;
z.z=(.6,-1)*u;
z.ss=(0,-.4)*u;

p1=z.p{1,2}..z.s..{1,-1}z.q;
p2=z.p..z.ss{down}..z.z;

draw p1;
draw p2;
draw subpath (0,1) of p2 xscaled -1 dashed evenly;

draw (0,-2)*u--(0,1.5)*u;
draw circle((.05,-.2)*u,1.15*u);

dOt z.p,z.q,z.s,z.z;





label.bot(btex $x$ etex, z.p);
label.bot(btex $y$ etex, z.q);
label.lrt(btex $s$ etex, z.s);
label.rt(btex $z$ etex, z.z);
label.lrt(btex $\Pi$ etex, (0,1.5)*u);
label(btex $H_x$ etex, (-.8,-1.5)*u);
label(btex $H_y$ etex, (.8,-1.5)*u);
label.bot(btex $\gamma$ etex, point .7 of p1);
label.bot(btex $\gamma_u$ etex, point .5 of p2);
label.bot(btex $\hat\gamma_u$ etex, point .5 of p2 xscaled -1);
endfig;


end
