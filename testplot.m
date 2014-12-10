%kan experimentera med dessa grejer inte 100 på hur det funkar
x = linspace(0,0.1,10);
y = 4*log10(10000*sqrt(x))-0.4 -(1./sqrt(x));
plot(y,x);
