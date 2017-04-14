videoObj = VideoReader('VID_20170323_100734.3gp');%读视频文件
nframes = get(videoObj, 'NumberOfFrames');%获取视频文件帧个数
pertime=1/30;

 for k = 1 : nframes% 读取数据
     frame = read(videoObj,k);
   %  imshow(frame);%显示帧
   %  imwrite(frame,strcat(num2str(k),'.jpg'),'jpg');% 保存帧
    B = imresize(frame,[480 640]);
   imwrite(B,strcat(num2str(1305031910.123456+pertime*k),'.png'),'png');% 保存帧
end
