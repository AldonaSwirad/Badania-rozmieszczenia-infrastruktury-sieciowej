function [P] = add_co(P, wezel, x, y)
x_co = get(P,'XData');
y_co = get(P,'YData');
x_co(wezel) = x;
y_co(wezel) = y;
pos = [transpose(x_co) transpose(y_co)];
Z = ones(length(pos(:,1)));
g = graph(Z);
P = plot(g, 'XData', pos(:,1), 'YData', pos(:,2));
xline(x_co(1), 'r');
yline(y_co(1), 'r');
end