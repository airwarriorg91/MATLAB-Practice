%surface plot..
x = linspace(-10,10,100);
y = linspace(-10,10,100);
z = linspace(-10,10,100);
t = linspace(0,2,40);
[X,Y,Z] = meshgrid(x,y,z);
%v = VideoWriter("3D_plot4.mp4", "MPEG-4");
clf; set(gcf, 'position', [0, 0, 600, 500]);
%open(v);
for i = 1:2
    isosurface(X,Y,Z,(X.^2+Y.^2+Z.^2));
    T = num2str(round(i/20,1));
    title("Plot of function f (x,y,z) = x^2+y^2+z^2");
    xlabel("X-Axis");
    ylabel("Y-Axis");
    zlabel("Z-Axis");
    zlim([-15, 15]);
    xlim([-15, 15]);
    ylim([-15, 15]);
    hold("off");
    %f = getframe(gcf);
    %writeVideo(v,f);
end
%v.close();
disp("end");