contoh =  imread('./assets/burung.jpg');

# Brighness
cerah = (contoh + 200);

# Contrast
kontras = 2 * contoh;

subplot(2,2,1); imshow(contoh); title('Citra  Asli');
subplot(2,2,2); imshow(cerah); title('Citra Cerah');
subplot(2,2,3); imshow(kontras); title('Citra Kontras');