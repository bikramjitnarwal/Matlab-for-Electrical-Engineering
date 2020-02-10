[bass, fs] = audioread('bass.wav');
guitar = audioread('guitar.wav');
drums = audioread('drums.wav');

a = length(guitar);

duration = 5;
b = bass(1:fs*duration);
g = guitar(1:fs*duration);
d = drums(1:fs*duration);

sound(d, fs);

%Combines the three instruments together 
comp = b + g + d;
sound(comp, fs);

% Plays with gradual increase in volume 
factor = linspace(0, 2, fs*duration);
comp = b + factor' .* g + d;
sound(comp, fs);