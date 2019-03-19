[imge map]=imread('elain.bmp');
imge=ind2gray(imge,map);
[imgl map]=imread('lena.bmp');
imgl=ind2gray(imgl,map);

subplot(2,2,1)
imshow(imge);
subplot(2,2,2)
T = graythresh(imge);
imge0 = im2bw(imge,T);
imshow(imge0);
subplot(2,2,3)
imhist(imge);
subplot(2,2,4)
imhist(imge0);
p=getframe(gcf);
imwrite(p.cdata,['t5elain.jpg'])

subplot(2,2,1)
imshow(imgl);
subplot(2,2,2)
T = graythresh(img);
imgl0 = im2bw(imgl,T);
imshow(imgl0);
subplot(2,2,3)
imhist(imgl);
subplot(2,2,4)
imhist(imgl0);
p=getframe(gcf);
imwrite(p.cdata,['t5lena.jpg'])