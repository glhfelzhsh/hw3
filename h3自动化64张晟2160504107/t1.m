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
for i=1:3
    subplot(3,1,i)
    imhist(imgc{1,i})
end
title('citywall')
p=getframe(gcf);
imwrite(p.cdata,['t1citywall.jpg']);
for i=1:4
    subplot(4,1,i)
    imhist(imge{1,i})
end
title('elain')
p=getframe(gcf);
imwrite(p.cdata,['t1elain.jpg']);
for i=1:4
    subplot(4,1,i)
    imhist(imgl{1,i})
end
title('lena')
p=getframe(gcf);
imwrite(p.cdata,['t1lena.jpg']);
for i=1:3
    subplot(3,1,i)
    imhist(imgw{1,i})
end
title('woman')
p=getframe(gcf);
imwrite(p.cdata,['t1woman.jpg']);
