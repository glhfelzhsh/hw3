namelist=dir('*.bmp');
for i=1:length(namelist)
    [img map]=imread(namelist(i).name);
    img=ind2gray(img,map);
    graphs{i}.name=namelist(i).name;
    graphs{i}.img=img;
    title(namelist(i).name);
    subplot(2,2,1)
    imshow(img);
    subplot(2,2,2)
    img=histeq(img);
    imshow(img);
    subplot(2,2,3)
    imhist(graphs{i}.img);
    subplot(2,2,4)
    imhist(img);
    p=getframe(gcf);
    imwrite(p.cdata,['t2' namelist(i).name(1:end-3) 'jpg'])
end