syms u v
x=cos(u)*sin(v);
y=sin(u)*sin(v);
z=cos(v)*sin(v);

%fsurf(x,y,z);
%axis equal

syms t

Rx=[1 0 0; 0 cos(t) -sin(t); 0 sin(t) cos(t)]
Ry=[cos(t) 0 sin(t); 0 1 0; -sin(t) 0 cos(t)]
Rz=[cos(t) -sin(t) 0; sin(t) cos(t) 0; 0 0 1] 

%S=[1,0,0;0,1,0;0,0,3]
%xyzscaled=S*[x;y;z]
%fsurf(xyzscaled(1),xyzscaled(2),xyzscaled(3))
xyzRx=Rx*[x;y;z];
Rx45=subs(xyzRx,t,pi/4)
%fsurf(Rx45(1),Rx45(2),Rx45(3))
xyzRz=Rz*Rx45;
Rz90Rx45=subs(xyzRz,t,-pi/2)
%fsurf(Rz90Rx45(1),Rz90Rx45(2),Rz90Rx45(3))
%axis equal

xyzRy=Ry*xyzRz;
Ry45Rz90Rx45=subs(xyzRy,t,pi/4)
fsurf(Ry45Rz90Rx45(1),Ry45Rz90Rx45(2),Ry45Rz90Rx45(3))
axis equal