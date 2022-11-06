%rozmieszczenie deterministyczne wezlow

x_co = [10:10:50 , 60*ones(1,5) , [50:-10:10] , 0*ones(1,5)]
y_co = [60*ones(1,5) , 50:-10:10 , 0*ones(1,5) , 10:10:50]
pos = [transpose(x_co) transpose(y_co)]
g = graph(z);
P = plot(g, 'XData', pos(:,1), 'YData', pos(:,2));
x = get(P,'XData');
y = get(P,'YData');
xline(x(1), 'r')
yline(y(1), 'r')

%rozmieszczenie losowe wezlow

rand_co = randi([0,100],20,2)
Z = ones(20)
g = graph(Z);
P = plot(g, 'XData', rand_co(:,1), 'YData', rand_co(:,2));
x = get(P,'XData');
y = get(P,'YData');
xline(x(1), 'r')
yline(y(1), 'r')