prompt = 'Start of interval';
interval_start = input(prompt);
prompt = 'End of interval';
interval_end = input(prompt);

rektvekt = [];
Re = interval_start;
while(Re < interval_end)

   x1 = fzero(@(k)g(k, Re),[0.00001, 0.05]);
   rektvekt = [rektvekt; x1];

    Re = Re+1000;
end
disp(rektvekt);
plot(rektvekt);
%x2 = fzero(@(k)(4*log10(10000*sqrt(k))-0.4 -(1/sqrt(k))),[0.0001 0.05])