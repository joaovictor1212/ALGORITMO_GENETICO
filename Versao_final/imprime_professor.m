%impressao e desenho das caixas

for p=1:qntd_caixas
    if v1(count,p) ~= -1
        
        %Desenha os pontos para tra�ar as retas
        p_x(1) = v1(count,p);%px1(i);
        p_y(1) = v3(count,p);%py1(i);
        p_x(2) = v2(count,p);%px2(i);
        p_y(2) = v3(count,p);%py1(i);
        p_x(3) = v2(count,p);%px2(i);
        p_y(3) = v4(count,p);%py2(i);
        p_x(4) = v1(count,p);%px1(i);
        p_y(4) = v4(count,p);%py2(i);
        p_x(5) = v1(count,p);%px1(i);
        p_y(5) = v3(count,p);%py1(i);


        %Plota as caixas
        figure(1);
        hold on;
        plot(p_x,p_y,cor_r);
        xlim([0 10]);
        ylim([0 10]);
       %num_impressas = num_impressas+1;
    end
    
end
