import cv2

cam = cv2.VideoCapture(0)
cam.set(3, 640)
cam.set(4, 480)

faceDetektor = cv2.CascadeClassifier('./Haarcascade/haarcascade_frontalface_default.xml')
# faceDetektor = cv2.CascadeClassifier('./Haarcascade/haarcascade_frontalface_eye.xml')
# faceDetektor = cv2.CascadeClassifier('./Haarcascade/haarcascade_frontalface_smile.xml')

while True:
    retV, frame = cam.read()
    abu = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    muka = faceDetektor.detectMultiScale(abu, 1.3, 3)

    for (x, y, w, h) in muka:
        frame = cv2.rectangle(frame, (x, y), (x+w, y+h), (0, 255, 0), 2)
        cv2.imshow('Kamera', frame)
    
    if cv2.waitKey(1) & 0xFF == ord('g'):
        break

cam.release()
cv2.destroyAllWindows()