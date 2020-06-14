% Przedmiot: Techniki Obliczeniowe 
% Kierunek studiów: Mechatronika 
% Semestr: 2
% Rok akademicki: 2019/2020
% Data (dzieñ-miesi¹c-rok): <<14-06-2020>>
%
% Imiê:             <<Damian>>
% Nazwisko:         <<Dobrowolski>>
% Numer albumu ZUT: <<46743>>



[y, fs] = audioread('mat lab/airplane-landing_daniel_simion.wav');


y = y(:,1);

sound(y, fs);

N = length(y);
Delta = 1 ./ fs; 
x = (0:(N-1))' .* Delta;


subplot(2, 2, 1); 
plot(x,y); 
title('dane'); 
xlabel('t [sekundy]')


f = (-N/2:N/2)' ./ (N .* Delta);


F = fft(y) .* Delta;


if mod(N,2) == 0
  F = fftshift(F); % parzyste N
  F = [F; F(1) ]; 
else
  F = [F; F(1) ];  % nieparzyste N
  F = fftshift(F);
end

p  = 2.0*abs(F).^2;


p  = p(f >= 0);
pf = f(f >= 0);


subplot(2, 2, 2); 
semilogx(pf, p, '-r'); 
title('PSD'); 
xlabel('f [Hz]'); 
xlim([10, 10000]);


[y, fs] = audioread('mat lab/Motorcycle Gang-SoundBible.com-1068731229.wav');


y = y(:,1);

sound(y, fs);

N = length(y);
Delta = 1 ./ fs; 
x = (0:(N-1))' .* Delta;


subplot(2, 2, 3); 
plot(x,y); 
title('dane2'); 
xlabel('t [sekundy]')


f = (-N/2:N/2)' ./ (N .* Delta);


F = fft(y) .* Delta;


if mod(N,2) == 0
  F = fftshift(F); % parzyste N
  F = [F; F(1) ]; 
else
  F = [F; F(1) ];  % nieparzyste N
  F = fftshift(F);
end



p  = 2.0*abs(F).^2;


p  = p(f >= 0);
pf = f(f >= 0);


subplot(2, 2, 4); 
semilogx(pf, p, '-r'); 
title('PSD2'); 
xlabel('f [Hz]'); 
xlim([10, 10000]);