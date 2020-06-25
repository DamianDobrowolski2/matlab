h = 700;
[r, phi] = meshgrid(0:0.1:3, 0:5:360);

k= h-3;       

x = r .* cosd(phi);
y = r .* sind(phi);
z = h - r-k;

surf(x,y,z);
alpha(1); %opcja przeźroczystości
shading flat; %opcja cieniowania
hold on;

patch(x,y,z);
