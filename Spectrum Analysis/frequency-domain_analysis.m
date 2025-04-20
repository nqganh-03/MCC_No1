[audio, fs] = audioread('group_record.wav');
audio = mean(audio, 2);         
N = length(audio);
f = (0:N-1) * (fs/N);             % Accurate frequency axis
Y = fft(audio);
magnitude = abs(Y) / N;           % Normalize magnitude

half_N = floor(N/2);              % First half (positive frequencies)
f_plot = f(1:half_N);
magnitude_plot = magnitude(1:half_N);

plot(f_plot, 20*log10(magnitude_plot + eps));
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Frequency-Domain Spectrum of Recorded Audio');
grid on;
xlim([0 fs/2]);
