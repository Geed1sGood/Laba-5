clear
clc
close all

disp('����������� ������ #5')
disp('������ֲ���� ���˲� ��������˲�')
disp('�������:  , ����� ... �Ͳ���')

%=== �������� #1.1 ===
% ����������� ������������� ����������� �������
fs = 20;
f0 = 5 ;
A = 0.5;
D = 0.25; 
n = 512; 
p=3.1416
t = [0:0.02:5];		% ������ ����
h=t*2*p*f0;
s =sin(h);
v = D*randn(1,length(t));  
x=s+v;  
% ������� ��������� �������
figure(1)
subplot (3, 1, 1); plot(t, v), grid on;
title ('������ x(t)');
ylabel('��������');
xlabel('³����');
subplot (3, 1, 2); plot (t, s); grid on;
title ('������ s(t)');
ylabel('��������');
xlabel('³����');
subplot (3, 1, 3); plot (t, x); grid on;
title ('������ y(t)');
ylabel('��������');
xlabel('³����');
%=== �������� #1.2 ===
% ���������� ������ ������� ����, ������� ������� �� ��������� ���/������
disp(var(v));
disp(var(x));
l=snr(s,v);
%=== �������� #1.3 ===
% ���������� �������� ������ ��� �������������� �������
t1=-5:0.02:5
maxlag1=1;
maxlag2=2;
maxlag3=3;
ran = xcorr(x,x,'unbiased');
rlag12=xcorr(x,x,maxlag1, 'unbiased');
rlag13=xcorr(x,x,maxlag2, 'unbiased');
rlag14=xcorr(x,x,maxlag3, 'unbiased');
figure(3)
subplot (3, 1, 1); plot (rlag12); grid on;
subplot (3, 1, 2); plot (rlag13); grid on;
subplot (3, 1, 3); plot (rlag14); grid on;
figure(4)
rlag15=xcorr(x,x,maxlag1+6, 'biased');
rlag16=xcorr(x,x,maxlag2+6, 'biased');
rlag17=xcorr(x,x,maxlag3+6, 'biased');
subplot (3, 1, 1); plot (rlag15); grid on;
subplot (3, 1, 2); plot (rlag16); grid on;
subplot (3, 1, 3); plot (rlag17); grid on;

fs = 202;
f0 = 5 ;
A = 0.5;
D = 0.25; 
n = 512; 
p=3.1416
t = [0:0.02:5];		% ������ ����
h=t*2*p*f0;
s =sin(h);
v = D*randn(1,length(t));  
x=s+v;  
% ������� ��������� �������
figure()
subplot (3, 1, 1); plot(t, v), grid on;
title ('������ x(t)');
ylabel('��������');
xlabel('³����');
subplot (3, 1, 2); plot (t, s); grid on;
title ('������ s(t)');
ylabel('��������');
xlabel('³����');
subplot (3, 1, 3); plot (t, x); grid on;
title ('������ y(t)');
ylabel('��������');
xlabel('³����');
%=== �������� #1.2 ===

maxlag1=1;
maxlag2=2;
maxlag3=3;
ran = xcorr(x,x,'unbiased');
rlag12=xcorr(x,x,maxlag1, 'unbiased');
rlag13=xcorr(x,x,maxlag2, 'unbiased');
rlag14=xcorr(x,x,maxlag3, 'unbiased');
figure(5)
subplot (3, 1, 1); plot (rlag12); grid on;
subplot (3, 1, 2); plot (rlag13); grid on;
subplot (3, 1, 3); plot (rlag14); grid on;
max(rlag15);
figure(6)
rlag15=xcorr(x,x,maxlag1+6, 'biased');
rlag16=xcorr(x,x,maxlag2+6, 'biased');
rlag17=xcorr(x,x,maxlag3+6, 'biased');
subplot (3, 1, 1); plot (rlag15); grid on;
subplot (3, 1, 2); plot (rlag16); grid on;
subplot (3, 1, 3); plot (rlag17); grid on;

%=== �������� #2.1 ===
% ������������ ������� ��� ���� (eeg1-p4.dat)
fs =100; 
eeg =load('eeg1-p4.dat'); % ������ EEU
eeg1 = detrend(eeg);
figure(7)   
plot(eeg1);
%=== �������� #2.2 ===
% �������� ����� ������� ��� �� t1 = 4,7 � �� t2 = 5,8 �
fs=100;
t1 =4.7; 
t2 =5.8;
t = (0:length(eeg1)-1)/fs;
n1 = (t1*fs) + 1; 
n2 = (t2*fs) + 1;
figure(8)
plot(t(n1:n2),eeg1(n1:n2));
