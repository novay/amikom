car = imread('./assets/car.jpg');
car = im2double(car);

lpf1 = [1/16 1/8 1/16;1/8 1/4 1/8;1/16 1/8 1/16];
lpf2 = [1/10 1/10 1/10;1/10 1/5 1/10;1/10 1/10 1/10];
lpf3 = [1 1 1;1 1 1;1 1 1]/9;

J1 = uint8(conv2(double(car),lpf1,'same'));
J2 = uint8(conv2(double(car),lpf2,'same'));
J3 = uint8(conv2(double(car),lpf3,'same'));

figure(1),imshow(car);
figure(2),imshow(J1);
figure(3),imshow(J2);
figure(4),imshow(J3);


