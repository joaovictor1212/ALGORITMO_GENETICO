%pontos iniciais criação das caixas
clc;
clear all;
close all;
%Tamanho das caixas 1x1;2x1;3x2
qntd_caixas_f1 = 8; %seleciona qntd de caixas do formato 1
qntd_caixas_f2 = 15;%15; %seleciona qntd de caixas do formato 2
qntd_caixas_f3 = 40;%40; %seleciona qntd de caixas do formato 3
qntd_caixas = qntd_caixas_f1+qntd_caixas_f2+qntd_caixas_f3; %Determina uma quantidade de caixas a ser plotadas
tam_pop = 3;
area = zeros(tam_pop,1); %Cria variavel para calculo da area total
area_nova = zeros(tam_pop,1); %Cria variavel para calculo da area total
tam_caixa_x=[3 2 1];%Define comprimento em x 
tam_caixa_y=[2 1 1];%Define comprimento em y
pos_inicial_x=-ones(tam_pop,qntd_caixas);%Cria vetor inicial para posi��o inicial em x
pos_inicial_y=-ones(tam_pop,qntd_caixas);%Cria vetor inicial para posi��o inicial em y
formato_caixa=[1:1:qntd_caixas];%Cria vetor inicial para os formatos de caixas
xy_repete=-ones(tam_pop,qntd_caixas);
xy_repete_2=ones(tam_pop,qntd_caixas);
x_ok=1;
y_ok=1;
num_impressas_gde=zeros(tam_pop,1);
num_impressas_md=zeros(tam_pop,1);
num_impressas_pq=zeros(tam_pop,1);

num_impressas_gde_nova=zeros(tam_pop,1);
num_impressas_md_nova=zeros(tam_pop,1);
num_impressas_pq_nova=zeros(tam_pop,1);

v1 = -ones(tam_pop,qntd_caixas);%ponto x1
v2 = -ones(tam_pop,qntd_caixas);%ponto x2
v3 = -ones(tam_pop,qntd_caixas);%ponto y1
v4 = -ones(tam_pop,qntd_caixas);%ponto y2

%Gera pontos iniciais aleat�rios para as caixas
for l=1:tam_pop
     for i=1:qntd_caixas
         if i <= qntd_caixas_f1 
            z=1;
         elseif (i == qntd_caixas_f1+1) && (i <= (qntd_caixas_f2 + qntd_caixas_f1))
            z=2;
         elseif ((i == (qntd_caixas_f2 + qntd_caixas_f1+1)) && (i <= qntd_caixas))
            z=3;
         end
         gerar_pontos;
         chamada_de_verificacao;
         if xy_repete(l,i) == 1
             %imprime_professor;
             v1(l,i) = px1(i);
             v2(l,i) = px2(i);
             v3(l,i) = py1(i);
             v4(l,i) = py2(i);
             Calculo_Area;
         end
     end
end
     