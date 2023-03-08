car =  imread('./assets/car.jpg');
lumba = imread('./assets/lumba.jpg');

rerata_1 = car/2;
rerata_2 = lumba/2;

result = rerata_1+rerata_2;

figure(1)
imshow(result);

rerata = (car+lumba)/2;

figure(2)
imshow(rerata);