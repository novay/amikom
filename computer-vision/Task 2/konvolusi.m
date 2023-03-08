# Tarik gambar dari aset
car = imread('./assets/car.jpg');

# Konversi Image (Uint8) menjadi Double
x = im2double(car);

# Siapkan Kernel
kernel = [
  1 -1 1; 
  1 -1 1; 
  1 -1 1
];

# Konvulusikan
konvolusix = conv2(x, kernel);

# Konversi ulang menjadi uint8 
back = rescale(konvolusix, 0, 255)
back = uint8(back);

figure(1), imshow(back);