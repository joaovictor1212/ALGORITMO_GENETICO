xy_repete(l,i) = 1;

if i > 1    %se primeiro retangulo n�o tem como estar sobreposto
    for j=1:(i-1)   %testa sobreposi��o com todos os retangulos
        if (px1(i)>=px2(j)) || (px2(i)<=px1(j)) %testa coordenada x
            x_ok = 1;   %coordenada x ok
        else
            x_ok = 0;   %coordenada x sobreposta
        end
        if (py1(i)>=py2(j)) || (py2(i)<=py1(j)) %testa coordenada y
            y_ok = 1;   %coordenada y ok
        else
            y_ok = 0;   %coordenada y sobreposta
        end

        if (x_ok==0) && (y_ok==0)   %se coordenadas x e y sobreposta
            %cor_r='r';      %muda cor do retangulo para vermelho
            %imprime_professor;        %imprime retangulo vermelho somente para demonstra��o
            xy_repete(l,i) = 0;          %ent�o os retangulos est�o sobreposto
        end
    end
end
cor_r='b';
    