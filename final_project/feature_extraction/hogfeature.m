clc;
clear all;
close all;

for i= 1:222
   str1='C:\Users\DSP_18\Desktop\final_images\';
   num=num2str(i);
   md = mod(i,10);
   
   if (i<101 && md ~= 0)
        str2=' .jpg';
   
   else
       if i>100
           str2='.jpg';

       else
           if md == 0
               str2='.jpg';
           end
        end
   end
    str3=strcat(str1,num,str2);
   a= imread(str3);
   
   a= imresize(a, [180 180]);
   
   a=rgb2gray(a); %if needed

 [featureVector(i,:), hogVisualization(i,:)] = extractHOGFeatures(a);
 
 % features(i,:) = extractHOGFeatures(a); // for getting only feature 
 
% figure(i);
 %imshow(a); 
% hold on; % to hold image then imprint the hogVisualization on it
% plot(hogVisualization(i,:));

  
   i
end    

csvwrite('C:\Users\DSP_18\Desktop\final_features\final_hog_feature.csv',featureVector);
 