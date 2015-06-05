
function plasmaglw_anls(pathname,name,format,nn)

I_2 = zeros(768, 1024, 'uint8');

    for k = 1:1
        nstr=num2str(k,'%05i');
        fnamein=strcat(pathname,'\',name,nstr,format);
        fnameout=strcat(pathname,'\',name,'_',nstr,'_mmf.xy');
        I = imread(fnamein);
        I_2 = imadd(I_2,I(:,:,1));
    end
    
    fprintf(1,'Im folgenden Fenster wird die Maske der Intensitätsanalyse erstellt.\n der erste Punkt definiert die Mitte, der zweite einen Punkt auf dem inneren Kreis \n und der dritte Punkt analog einen auf dem äußeren.');
    
    figure
    imshow(imcomplement(I_2));
    title('erstellen der Maske für die Intensitätsanalyse','FontSize',16)
    [val1,val2]=ginput(3);
    close gcf;
    clear I_2
    
mid = [int16(x(1)),int16(y(1))];
rin = in16(sqrt((x(2)-x(1))^2+(y(1)-y(2))^2));
rout = int16(sqrt((x(3)-x(1))^2+(y(1)-y(3))^2));


keyboard