% ta user input(intervallet)
prompt = 'Start of interval: ';
interval_start = input(prompt);
prompt = 'End of interval: ';
interval_end = input(prompt);

results = [];
Re = interval_start;
while(Re < interval_end)

   x1 = fzero(@(k)g(k, Re),[0.00001, 0.05]);
   results = [results; x1];

    Re = Re+1000;
end

plot(rektvekt);
title('Resultat')   
ylabel('Friktionsfaktor')
xlabel('Reynoldstal')
