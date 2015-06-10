
function [mask, data]=plasmaglw_anls(pathname,messungxy,name,format,winkelaufloesung,nn)

tic

N = winkelaufloesung;

[height,length] = size(imread(strcat(pathname,'/',name,num2str(1,'%05i'),format)));

Z = zeros(height, length, 'int32');

    for k = 1:1
        nstr=num2str(k,'%05i');
        fnamein=strcat(pathname,'/',name,nstr,format);
        Size = size(imread(fnamein));
        fprintf('Größe=%d %d\n', Size);
        Z = int32(imread(fnamein));
    end
    
    
    fprintf(1,'Im folgenden Fenster wird die Maske der Intensitätsanalyse erstellt.\n Der erste Punkt definiert die Mitte, der zweite einen Punkt auf dem inneren Kreis \n und der dritte Punkt analog einen auf dem äußeren.\n');
    
    figure
    imagesc(imcomplement(Z));
    title('Erstellen der Maske für die Intensitätsanalyse','FontSize',12);
    [x,y]=ginput(3);

mid = [int32(x(1)),int16(y(1))];
rin = int32(sqrt((x(2)-x(1))^2+(y(1)-y(2))^2));
rout = int32(sqrt((x(3)-x(1))^2+(y(1)-y(3))^2));


fprintf('Mitte=%d %d\n', mid);

fprintf('r_in=%d\n', rin);

fprintf('r_out=%d\n', rout);

delta = zeros(length, height, 'int32');

res_width=2*pi/N;


for i = 1:length
    
    for j = 1:height

        delta(i,j) = int32(sqrt(double((i-mid(1)).^2+(j-mid(2)).^2)));

        winkel(i,j)=(atan2(double(j-mid(2)),double(i-mid(1))));

        ang_bin(i,j)=floor(winkel(i,j)/res_width)+N/2+1;

    end

end

mask=int32(((delta.^2>rin.^2) & (delta.^2<rout.^2)));

data = zeros(N,nn+1, 'double');

intens=zeros(N,2, 'double');

Mean_Image=zeros(length,height);

for k=2:11
    
    nstr=num2str(k-1,'%05d');
    fnamein=strcat(pathname,'/',name,nstr,format);
    I = double(imcomplement(imread(fnamein)));
    Mean_Image=Mean_Image+I';
    
end

Mean_Image=Mean_Image/10;
    

for k = 2:nn

    disp(k)
    nstr=num2str(k-1,'%05d');
    fnamein=strcat(pathname,'/',name,nstr,format);
    I = int32(imcomplement(imread(fnamein)));
    intens=zeros(N,2);

    tmp = I'.*mask;
    
    for i = 1:length
        
        for j = 1:height

            if (tmp(i,j)>0);

                intens(ang_bin(i,j),1)= intens(ang_bin(i,j),1)+ (tmp(i,j)-Mean_Image(i,j));

                intens(ang_bin(i,j),2)=intens(ang_bin(i,j),2)+ 1;

            else

            end
             
        end
        
       
    end
            
    data(:,k) = intens(:,1)./(intens(:,2));
    
end

data(:,nn+1) =360*linspace(0,1,N);

X = linspace(1,nn,nn);

imagesc((Z'.*mask)');

imagesc(X,data(:,nn+1),data(:,1:nn));

save(sprintf('%s//%s_%s_mask.mat',pathname,messungxy,name), 'mask');
save(sprintf('%s//%s_%s_data.mat',pathname,messungxy,name), 'data');

toc

clear

end