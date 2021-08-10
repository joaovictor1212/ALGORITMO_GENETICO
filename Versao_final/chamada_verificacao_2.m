xy_repete_2(j,k) = 1;
for z1=1:qntd_caixas_f1   %testa sobreposi��o com todos os retangulos
    %if z ~= 1    
            if (v1(j,z1) ~= -1) && (z1~=k)
                if (v_mut_1(j,k)>=v2(j,z1)) || (v_mut_2(j,k)<=v1(j,z1)) %testa coordenada x
                    x_ok = 1;   %coordenada x ok
                else
                    x_ok = 0;   %coordenada x sobreposta
                end
                if (v_mut_3(j,k)>=v4(j,z1)) || (v_mut_4(j,k)<=v3(j,z1)) %testa coordenada y
                    y_ok = 1;   %coordenada y ok
                else
                    y_ok = 0;   %coordenada y sobreposta
                end

                if (x_ok==0) && (y_ok==0)   %se coordenadas x e y sobreposta
                    xy_repete_2(j,k) = 0;          %ent�o os retangulos est�o sobreposto
                end
            end
    %end
end

cor_r='b';
