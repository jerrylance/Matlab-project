function filter_test

N = 256;
%R = 50;

colormap(gray(256));

for R=10:10:100,
    %generate Eucledian disk
    h = filter_gen(N, R, 1);
    image(h);
    pause;

    %generate City-block disk
    h = filter_gen(N, R, 2);
    image(h);
    pause;

    %generate Checkboard disk
    h = filter_gen(N, R, 3);
    image(h);
pause;
end;