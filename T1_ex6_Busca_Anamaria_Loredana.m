N = 0.5 * 12;

n = randi([0 1],1,N);

subplot(2,1,1),plot(n),title('plot(n)'),xlabel('Timp [ms]'),grid


subplot(2,1,2),stem(n),title('stem(n)'),xlabel('Timp [ms]'),grid