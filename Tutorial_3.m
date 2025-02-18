
%Code for table1
%Generate simple sinusoid waveform
%Sound = A*cos(wt + phase)
%sound parameters!
Amplitude = 0.5;
Frequency = 440;
W = Frequency*2*pi;
 
%Time! 
Fs = 11025;
Ts = 1/Fs;
Time = 0:Ts:2;

%Ok let us create sound
signal = Amplitude*cos(W*Time);
 
%Plot one cycle signal
%If we want to plot only one cycle, how many samples are there?
%roughly 26 samples why?
%Time (1:26) signal (1:26)
figure(1);
plot(Time(1:26), signal(1:26));
xlabel('Time (Sec)');
ylabel('Amplitude (V)');
grid on;
 
%output to wav file
audiowrite('A4.wav',signal, Fs);

function noteX = note(A, keynum, dur)
%function note() will create a note with sampling frequency 11025 by given
%any key and any time duration.
Fs = 11025;
Ts = 1/Fs;
A4=440;
ref_key=49;     %A4 is the 49th Key in piano keyboard 
n = keynum-ref_key;  %Calculate the difference between ref_key and input Key
freq = A4*2^(n/12); %Calculate the frequency of input Key
Time = 0:Ts:dur;

noteX=A*sin(2*pi*freq*Time);
end
