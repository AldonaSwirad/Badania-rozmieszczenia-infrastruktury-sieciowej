function [P] = create_graph(pos)
Z = ones(length(pos(:,1)));
g = graph(Z);
P = plot(g, 'XData', pos(:,1), 'YData', pos(:,2));
x = get(P,'XData');
y = get(P,'YData');
xline(x(1), 'r')
yline(y(1), 'r')
end