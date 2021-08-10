        formato_caixa(i) = z;
        
        pos_inicial_x(l,i) = randi([0,10]);%Define ponto x inicial
        pos_inicial_y(l,i) = randi([0,10]);%Define ponto y inicial

        %Define os 4 pontos da caixa
        %for i=1:1:3

        px1(i) = pos_inicial_x(l,i); %Define ponto x1
        px2(i) = pos_inicial_x(l,i) + tam_caixa_x(z);%Define ponto x2

        %Limita o espa�o �til para 10
        if px2(i)>10
            dif = px2(i)-10;
            px1(i) = px1(i)-dif;
            px2(i) = px2(i)-dif;
        end

        py1(i) = pos_inicial_y(l,i); %Define ponto y1
        py2(i) = pos_inicial_y(l,i) + tam_caixa_y(z);%Define ponto y2

        %Limita o espa�o �til para 10
        if py2(i)>10
            dif = py2(i)-10;
            py1(i) = py1(i)-dif;
            py2(i) = py2(i)-dif;
        end