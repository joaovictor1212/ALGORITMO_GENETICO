melhor_indv = area(1,1);
count = 1;
for h=1:tam_pop
    if h > 1
        if area(h,1) > melhor_indv
           melhor_indv = area(h,1);
           count = h;
           count
        end
    end
end