% 
%ÿ�ε�����Ҫ�޸ĵı���ΪM, M��������������
% FFT
clear
clc
load cl1.dat
t = cl1(end/2:end,1);
S = cl1(end/2:end,2);
fs = 1.0 / ( t(2) - t(1) ); % ����Ƶ��( Sample Frequency)
M = 2*log2( ceil( fs / 1024 ) * 1024 );
N = 2^M; % ��������( Sample Points number )
plot( t,S );
title('Original Signal!')
% 
Y = fft( S, N ); % N/2 points number FFT for signal S
Y1 = abs( Y ); % FFT ģֵ
Y2 = Y1 / ( N/2 ); % FFT��ʵ�źŷ�ֵ
% 
f = ( 0:N ) * fs / N; % ȡ����Ƶ�ʷ�Χ�� fs/N����ÿ���������Ӧ��Ƶ�ʼ���� (0:N)ʹ��Ƶ�ʴ�ֱ����������������ʼ%
%
Flag = find( Y2 == max(Y2(2:end)) );
plot( f(1:(2*Flag)),Y2(1:(2*Flag)),'linewidth',1.5 );
%
set(gcf,'color','w');box off
