[imge map]=imread('elain.bmp');
imge=ind2gray(imge,map);
[imgl map]=imread('lena.bmp');
imgl=ind2gray(imgl,map);

subplot(2,2,1)
imshow(imge);
subplot(2,2,2)
imge0=adapthisteq(imge, 'NumTiles', [7 7]);
imshow(imge0);
subplot(2,2,3)
imhist(imge);
subplot(2,2,4)
imhist(imge0);
p=getframe(gcf);
imwrite(p.cdata,['t4elain.jpg'])

subplot(2,2,1)
imshow(imgl);
subplot(2,2,2)
imgl0=adapthisteq(imgl, 'NumTiles', [7 7]);
imshow(imgl0);
subplot(2,2,3)
imhist(imgl);
subplot(2,2,4)
imhist(imgl0);
p=getframe(gcf);
imwrite(p.cdata,['t4lena.jpg'])