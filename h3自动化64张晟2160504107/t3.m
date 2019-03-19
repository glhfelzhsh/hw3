[imgc{1} map1]=imread('citywall.bmp');
[imgc{2} map2]=imread('citywall1.bmp');
[imgc{3} map3]=imread('citywall2.bmp');
imgc{1}=ind2gray(imgc{1},map1);
imgc{2}=ind2gray(imgc{2},map2);
imgc{3}=ind2gray(imgc{3},map3);
[imge{1} map1]=imread('elain.bmp');
[imge{2} map2]=imread('elain1.bmp');
[imge{3} map3]=imread('elain2.bmp');
[imge{4} map4]=imread('elain3.bmp');
imge{1}=ind2gray(imge{1},map1);
imge{2}=ind2gray(imge{2},map2);
imge{3}=ind2gray(imge{3},map3);
imge{4}=ind2gray(imge{4},map4);
[imgl{1} map1]=imread('lena.bmp');
[imgl{2} map2]=imread('lena1.bmp');
[imgl{3} map3]=imread('lena2.bmp');
[imgl{4} map4]=imread('lena4.bmp');
imgl{1}=ind2gray(imgl{1},map1);
imgl{2}=ind2gray(imgl{2},map2);
imgl{3}=ind2gray(imgl{3},map3);
imgl{4}=ind2gray(imgl{4},map4);
[imgw{1} map1]=imread('woman.bmp');
[imgw{2} map2]=imread('woman1.bmp');
[imgw{3} map3]=imread('woman2.bmp');
imgw{1}=ind2gray(imgw{1},map1);
imgw{2}=ind2gray(imgw{2},map2);
imgw{3}=ind2gray(imgw{3},map3);
for i=2:3
subplot(2,3,1)
imshow(imgc{1});
subplot(2,3,2)
imshow(imgc{i});
subplot(2,3,3)
[c,list]=imhist(imgc{1});
imgc0=histeq(imgc{i},c);
imshow(imgc0);
subplot(2,3,4)
imhist(imgc{1});
subplot(2,3,5)
imhist(imgc{i});
subplot(2,3,6)
imhist(imgc0);
p=getframe(gcf);
imwrite(p.cdata,['t3citywall' num2str(i-1) '.jpg'])
end
for i=2:4
subplot(2,3,1)
imshow(imge{1});
subplot(2,3,2)
imshow(imge{i});
subplot(2,3,3)
[c,list]=imhist(imge{1});
imge0=histeq(imge{i},c);
imshow(imge0);
subplot(2,3,4)
imhist(imge{1});
subplot(2,3,5)
imhist(imge{i});
subplot(2,3,6)
imhist(imge0);
p=getframe(gcf);
imwrite(p.cdata,['t3elain' num2str(i-1) '.jpg'])
end
for i=2:4
subplot(2,3,1)
imshow(imgl{1});
subplot(2,3,2)
imshow(imgl{i});
subplot(2,3,3)
[c,list]=imhist(imgl{1});
imgl0=histeq(imgl{i},c);
imshow(imgl0);
subplot(2,3,4)
imhist(imgl{1});
subplot(2,3,5)
imhist(imgl{i});
subplot(2,3,6)
imhist(imgl0);
p=getframe(gcf);
imwrite(p.cdata,['t3lena' num2str(i-1) '.jpg'])
end
for i=2:3
subplot(2,3,1)
imshow(imgw{1});
subplot(2,3,2)
imshow(imgw{i});
subplot(2,3,3)
[c,list]=imhist(imgw{1});
imgw0=histeq(imgw{i},c);
imshow(imgw0);
subplot(2,3,4)
imhist(imgw{1});
subplot(2,3,5)
imhist(imgw{i});
subplot(2,3,6)
imhist(imgw0);
p=getframe(gcf);
imwrite(p.cdata,['t3woman' num2str(i-1) '.jpg'])
end