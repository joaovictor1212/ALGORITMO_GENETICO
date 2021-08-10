melhor_indv_novo = area_nova(1,1);
count_novo = 1;
for h=1:tam_pop
    if h > 1
        if area_nova(h,1) > melhor_indv_novo
           melhor_indv_novo = area_nova(h,1);
           count_novo = h;
        end
    end
end