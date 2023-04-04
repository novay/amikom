car =  imread('./assets/car.jpg');
lumba = imread('./assets/lumba.jpg');

rerata = (car+lumba)/2;

figure(3)
imshow(rerata);