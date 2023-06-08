import cv2

foto = cv2.imread('./wajah.jpg')
faceDetektor = cv2.CascadeClassifier('./Haarcascade/haarcascade_frontalface_default.xml')

rgbfoto = cv2.cvtColor(foto, cv2.COLOR_BGR2RGB)
abufoto = cv2.cvtColor(foto, cv2.COLOR_BGR2GRAY)

while True:
    muka = faceDetektor.detectMultiScale(abufoto, 1.3, 1)
    for (x, y, w, h) in muka:
        fotook = cv2.rectangle(rgbfoto, (x, y), (x+w, y+h), (0, 0, 255), 1)
        cv2.imshow('Foto Cek', rgbfoto)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cv2.destroyAllWindows()