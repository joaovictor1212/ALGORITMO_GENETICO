vf_mut_1 = -ones(tam_pop,qntd_caixas);
vf_mut_2 = -ones(tam_pop,qntd_caixas);
vf_mut_3 = -ones(tam_pop,qntd_caixas);
vf_mut_4 = -ones(tam_pop,qntd_caixas);

v_mut_1 = v1;
v_mut_2 = v2;
v_mut_3 = v3;
v_mut_4 = v4;


%Mutação caixas grandes
for j=1:tam_pop %varredura de todos os indivíduos da população (linhas)
    %if num_impressas_gde(j,1) ~= qntd_caixas_f1
        for k=1:qntd_caixas_f1 %varredura de todas as caixas do individuo 'j' (colunas)
            if v_mut_1(j,k) ~= -1
                vf_mut_1(j,k) = v_mut_1(j,k);
                vf_mut_2(j,k) = v_mut_2(j,k);
                vf_mut_3(j,k) = v_mut_3(j,k);
                vf_mut_4(j,k) = v_mut_4(j,k);
            end
            if v_mut_1(j,k) == -1
                   v_mut_1(j,k) = randi([0,10]);
                   v_mut_3(j,k) = randi([0,10]);
                   v_mut_2(j,k) = v_mut_1(j,k) + 3;
                   if v_mut_2(j,k)>10
                        dif = v_mut_2(j,k)-10;
                        v_mut_1(j,k) = v_mut_1(j,k)-dif;
                        v_mut_2(j,k) = v_mut_2(j,k)-dif;
                   end

                   v_mut_4(j,k) = v_mut_3(j,k) + 2;

                   if v_mut_4(j,k)>10
                        dif = v_mut_4(j,k)-10;
                        v_mut_3(j,k) = v_mut_3(j,k)-dif;
                        v_mut_4(j,k) = v_mut_4(j,k)-dif;
                   end
                   chamada_verificacao_2;
                   if xy_repete_2(j,k) == 1
                        vf_mut_1(j,k)=v_mut_1(j,k);
                        vf_mut_2(j,k)=v_mut_2(j,k);
                        vf_mut_3(j,k)=v_mut_3(j,k);
                        vf_mut_4(j,k)=v_mut_4(j,k);
                        z = 1;
                        Calculo_Area_2;

                   end
            end
        end
end
%Verifica_melhor_indv_2;

%Mutação caixas médias
for j=1:tam_pop %varredura de todos os indivíduos da população (linhas)
    %if num_impressas_gde(j,1) ~= qntd_caixas_f1
        for k=6:20 %varredura de todas as caixas do individuo 'j' (colunas)
            if v_mut_1(j,k) ~= -1
                vf_mut_1(j,k) = v_mut_1(j,k);
                vf_mut_2(j,k) = v_mut_2(j,k);
                vf_mut_3(j,k) = v_mut_3(j,k);
                vf_mut_4(j,k) = v_mut_4(j,k);
            end
            if v_mut_1(j,k) == -1
                   v_mut_1(j,k) = randi([0,10]);
                   v_mut_3(j,k) = randi([0,10]);
                   v_mut_2(j,k) = v_mut_1(j,k) + 3;
                   if v_mut_2(j,k)>10
                        dif = v_mut_2(j,k)-10;
                        v_mut_1(j,k) = v_mut_1(j,k)-dif;
                        v_mut_2(j,k) = v_mut_2(j,k)-dif;
                   end

                   v_mut_4(j,k) = v_mut_3(j,k) + 2;

                   if v_mut_4(j,k)>10
                        dif = v_mut_4(j,k)-10;
                        v_mut_3(j,k) = v_mut_3(j,k)-dif;
                        v_mut_4(j,k) = v_mut_4(j,k)-dif;
                   end
                   chamada_verificacao_2;
                   if xy_repete_2(j,k) == 1
                        vf_mut_1(j,k)=v_mut_1(j,k);
                        vf_mut_2(j,k)=v_mut_2(j,k);
                        vf_mut_3(j,k)=v_mut_3(j,k);
                        vf_mut_4(j,k)=v_mut_4(j,k);
                        z = 1;
                        Calculo_Area_2;

                   end
            end
        end
end
%Verifica_melhor_indv_2;

%Mutação caixas pequenas
%/
for j=1:tam_pop %varredura de todos os indivíduos da população (linhas)
    %if num_impressas_gde(j,1) ~= qntd_caixas_f1
        for k=21:60 %varredura de todas as caixas do individuo 'j' (colunas)
            if v_mut_1(j,k) ~= -1
                vf_mut_1(j,k) = v_mut_1(j,k);
                vf_mut_2(j,k) = v_mut_2(j,k);
                vf_mut_3(j,k) = v_mut_3(j,k);
                vf_mut_4(j,k) = v_mut_4(j,k);
            end
            if v_mut_1(j,k) == -1
                   v_mut_1(j,k) = randi([0,10]);
                   v_mut_3(j,k) = randi([0,10]);
                   v_mut_2(j,k) = v_mut_1(j,k) + 3;
                   if v_mut_2(j,k)>10
                        dif = v_mut_2(j,k)-10;
                        v_mut_1(j,k) = v_mut_1(j,k)-dif;
                        v_mut_2(j,k) = v_mut_2(j,k)-dif;
                   end

                   v_mut_4(j,k) = v_mut_3(j,k) + 2;

                   if v_mut_4(j,k)>10
                        dif = v_mut_4(j,k)-10;
                        v_mut_3(j,k) = v_mut_3(j,k)-dif;
                        v_mut_4(j,k) = v_mut_4(j,k)-dif;
                   end
                   chamada_verificacao_2;
                   if xy_repete_2(j,k) == 1
                        vf_mut_1(j,k)=v_mut_1(j,k);
                        vf_mut_2(j,k)=v_mut_2(j,k);
                        vf_mut_3(j,k)=v_mut_3(j,k);
                        vf_mut_4(j,k)=v_mut_4(j,k);
                        z = 1;
                        Calculo_Area_2;

                   end
            end
        end
end

Verifica_melhor_indv_2;
    
    