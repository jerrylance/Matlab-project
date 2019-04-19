% Generating and testing complex white Gaussian images
% Zeyu Liu
% 2/19/2019
function homework2

% Generate a 256x256 2-D complex white Gaussian random field.

N = 256;

% Generate real part
w = randn(N);
% Generate imaginary part
v = randn(N);
% Generate a complex image
z = w + i*v;

% Specify gray colormap
colormap(gray(256));
% Display real part
imagesc(real(z));
pause;

% Display imaginary part
imagesc(imag(z));
pause;

% Display magnitude
imagesc(abs(z));
pause;

% Display phase angle
imagesc(angle(z));
pause;

% Apply 2-D FFT
Z = fft2(z);
% Display real part
imagesc(real(Z));
pause;

% Display imaginary part
imagesc(imag(Z));
pause;

% Display magnitude
imagesc(abs(Z));
pause;

% Display phase angle
imagesc(angle(Z));
pause;

% Repeat the experiment in Part 3 with real white Gaussian random field. 
% Display real part
imagesc(w);
pause;

% Apply 2-D FFT
W = fft2(w);
% Display real part
imagesc(real(W));
pause;

% Display imaginary part
imagesc(imag(W));
pause;

% Display magnitude
imagesc(abs(W));
pause;

% Display phase angle
imagesc(angle(W));
pause;

% Apply the FFT of the images you generated in Assignment 1.
% Generate filter
h = filter_gen(N, 10, 1);
image(h);
pause;

H = fft2(h);
imagesc(real(H));
pause;

imagesc(imag(H));
pause;

imagesc(abs(H));
pause;

imagesc(angle(H));
pause;

h = filter_gen(N, 10, 2);
image(h);
pause;

H = fft2(h);
imagesc(real(H));
pause;

imagesc(imag(H));
pause;

imagesc(abs(H));
pause;

imagesc(angle(H));
pause;

h = filter_gen(N, 10, 3);
image(h);
pause;

H = fft2(h);
imagesc(real(H));
pause;

imagesc(imag(H));
pause;

imagesc(abs(H));
pause;

imagesc(angle(H));
pause;

imag(H(1,1));

