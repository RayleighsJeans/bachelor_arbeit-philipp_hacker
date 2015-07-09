function [] = eigenvectors_plot(modenumber);
N = modenumber;
  
 load('result_finiyukawa.mat')


    for i=N
        figure
        clear VX VY VZ

        %scale = 0;        
        VX = result_finiyukawa.sort_V_x(:,i);
        VY = result_finiyukawa.sort_V_y(:,i);
        VZ = result_finiyukawa.sort_V_z(:,i);
        x = result_finiyukawa.x';
        y = result_finiyukawa.y';
        z = result_finiyukawa.z';

% VX,VY,VZ are the projections of each eigenvector onto the x-,y-, and z
% axes
        quiver3(x,y,z,VX,VY,VZ); 
        xlabel('x / mm');
        ylabel('y / mm');
        zlabel('z / mm')
 % The title  is the corresponding eigenvalue
        title(num2str(i));
        
        clear VX VY VZ
    end
