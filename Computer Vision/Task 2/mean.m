II=imread('./assets/wajahcw.jpg');
IN=imnoise(II,'salt &amp;amp; pepper',0.02);
J1=medfilt2(IN,[3 3]);
J2=medfilt2(IN,[5 5]);
figure,imshow(II);
figure,imshow(IN);
figure,imshow(J1);
figure,imshow(J2);