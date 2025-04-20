[audio, fs] = audioread('group_record.wav');  % Load audio
audio = mean(audio, 2);                       % Convert to mono

N = length(audio);                            % Number of samples
t = (0:N-1)/fs;                               % Time vector in seconds

% Plot waveform
figure;
plot(t, audio);
xlabel('Time (s)');
ylabel('Amplitude');
title('Time-Domain Waveform of Recorded Audio');
grid on;

