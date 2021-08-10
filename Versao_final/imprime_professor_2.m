%impressao e desenho das caixas

for p=1:qntd_caixas
    if vf_mut_1(count_novo,p) ~= -1
        
        %Desenha os pontos para tra�ar as retas
        p_x(1) = vf_mut_1(count_novo,p);%px1(i);
        p_y(1) = vf_mut_3(count_novo,p);%py1(i);
        p_x(2) = vf_mut_2(count_novo,p);%px2(i);
        p_y(2) = vf_mut_3(count_novo,p);%py1(i);
        p_x(3) = vf_mut_2(count_novo,p);%px2(i);
        p_y(3) = vf_mut_4(count_novo,p);%py2(i);
        p_x(4) = vf_mut_1(count_novo,p);%px1(i);
        p_y(4) = vf_mut_4(count_novo,p);%py2(i);
        p_x(5) = vf_mut_1(count_novo,p);%px1(i);
        p_y(5) = vf_mut_3(count_novo,p);%py1(i);


        %Plota as caixas
        figure(2);
        hold on;
        plot(p_x,p_y,cor_r);
        xlim([0 10]);
        ylim([0 10]);
       %num_impressas = num_impressas+1;
    end
    
end