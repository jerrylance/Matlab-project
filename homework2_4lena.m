function homework2_4lena
% 1.for lena
f = imread('lena.dib');
colormap(gray(256));

imagesc(f);
pause;

imagesc(real(f));
pause;

imagesc(imag(f));
pause;

imagesc(abs(f));
pause;

% FFT of lena
F = fft2shift(f);

imagesc(real(F));
pause;

imagesc(imag(F));
pause;

imagesc(abs(F));
pause;

imagesc(angle(F));
pause;