function outP = generateTrajectory ()


x=[3.5 3.5 5 5 5 5.0 4.5 4 3.5 3 2.5 2 1.5 1 0.5 0 0 0 0  0 0 0];
y=[-1 0 0 0 0 0.0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5 5 5 5 5 3.5];
z=[0.75 0.75 0.75 0.75 1 1.5 1.5 1.4 1.3 1.2 1.1 1.09 1.02 1 1 0.75 0.75 0.75 0.75 0.75 0.75 0.7];
t=-pi*[5/8 5/8 5/8 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 5/8 5/8];
n=20;

dx=[];  dy=[]; dz=[]; dt=[]; 
for i=1:size(x,2)-1
dx=[dx, linspace(x(i),x(i+1),n)];
dy=[dy, linspace(y(i),y(i+1),n)];
dz=[dz, linspace(z(i),z(i+1),n)];
dt=[dt, linspace(t(i),t(i+1),n)];
end
tt=linspace(0,-pi/4.5,size(dt,2));
p_des_x =0.8*dx;
p_des_y = 0.8*dy;
p_des_z = 1*dz;

% % extra 
xx=[0 -1 -2 -3 -4 -5 ...
    -5 -5 -5 -4.5 -4 ...
    -3.5 -3 -2.5 -2 -1.5 ...
    -1.2 -1.2 -1.2 -1.2 -1.1 ...
    -1 -0.5 0 0 0];

yy=[5 4 3 2 1 ...
    0 0 0 0 0 ...
    0 0 0 0 0 ...
    0.5 1 1.7 2.6 3.1 ...
    3.5 4 4.5  5 5 3.5];

zz=[0.6 0.5 0.3 0.3 0.35 ...
    0.35 0.5 0.8  0.9 0.95 ...
    1 1 1 1  0.9 ...
    0.89 0.88 0.87 0.86 0.85 ...
    0.85 0.82 0.8 0.75 0.75 0.7];
t1=-pi*[5 5 5 5 5 5 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 5 5 ]/8;
var=[0 0 0 0 1 1 2 2 2.5 3 3.5 4 4.5  5 5 5 5 5 5.2 5.5 6 6.5 7 8 9 10]*(-1*pi/45);
dx=[];  dy=[]; dz=[]; dt1=[]; dv=[];

for i=1:size(xx,2)-1
dx=[dx, linspace(xx(i),xx(i+1),n)];
dy=[dy, linspace(yy(i),yy(i+1),n)];
dz=[dz, linspace(zz(i),zz(i+1),n)];
dt1=[dt1, linspace(t1(i),t1(i+1),n)];
dv=[dv,linspace(var(i),var(i+1),n) ] ;
end


p_des_x =[p_des_x, 0.8*dx];
p_des_y = [p_des_y, 0.8*dy];
p_des_z = [p_des_z, dz];
dt=[dt,dt1];
tt=[tt, dv];

time_values =  linspace(0,30,size(dt,2));


outP= {};
outP= {p_des_x ,p_des_y ,p_des_z ,dt,tt,time_values} ;


end

