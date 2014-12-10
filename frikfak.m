prompt = 'Start of interval';
interval_start = input(prompt);
prompt = 'End of interval';
interval_end = input(prompt);

%[0.0001 0.05]
Re = 10^4;
while(Re < 10^5)

    fzero(@(k)g(k, 10000),[interval_start interval_end])
    
    Re = Re+1000;
end

%x2 = fzero(@(k)(4*log10(10000*sqrt(k))-0.4 -(1/sqrt(k))),[0.0001 0.05])