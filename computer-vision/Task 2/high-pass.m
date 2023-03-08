III = imread('./assets/wajahcw.jpg');

hpf1 = [-1 -1 -1;-1 8 -1;-1 -1 -1];
hpf2 = [ 0 -1 0;-1 5 -1; 0 -1 0];
hpf3 = [ 1 -2 1;-2 5 -2; 1 -2 1];

J1 = uint8(conv2(double(III),hpf1,'same'));
J2 = uint8(conv2(double(III),hpf2,'same'));
J3 = uint8(conv2(double(III),hpf3,'same'));

figure,imshow(III);
figure,imshow(J1);
figure,imshow(J2);
figure,imshow(J3);