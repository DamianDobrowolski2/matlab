

h = 7;
[x, y] = meshgrid(-3:0.1:3, -3:0.1:3);

[r, phi] = meshgrid(0:0.1:3, 0:5:360);


x = r .* cosd(phi);
y = r .* sind(phi);
z = h - r;
figure(1)
surf(x,y,z);
alpha(1); %opcja przeźroczystości
shading flat; %opcja cieniowania
hold on;

patch(x,y,z,'red');
alpha(0.4); %opcja przeźroczystości



 