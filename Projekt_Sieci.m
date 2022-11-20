close all;
close all;
clc;
%//moze byc pomocne, BRUDNOPIS


%{
A = [1 2 3;4 5 6;7 8 9]
A = zeros(20)
G = graph(A)
plot(G)


s=[1,2,3]
t=[3,2,1]

H = graph(s,t)
%}

Z = zeros(20)

G = graph(Z);
P = plot(G);
x = get(P,'XData');
y = get(P,'YData');
set(P, 'YData',y)
fprintf("wspolrzedne dla punktu 1: x = %f y = %f\n", x(1), y(1))

ax = ancestor(h, 'axes');
ax.XTickMode = 'auto';
ax.YTickMode = 'auto';
xticks(-5:30)
yticks(-5:5)

xline(x(1), 'r')
yline(y(1), 'r')


%{
set_x = [1,2,3]
set_y = [1,2,3]
plot(set_x,set_y, "o")
%}

%// przyklad uzycia grafu z narzuconymi wspolrzednymi
%{


t = [1 1 1 1 2 2 3 4 4 5 6];
h = [2 3 4 5 3 6 6 5 7 7 7]; 
pos = [75 25; 115 45; 90 60; 10 5; 45 0; 45 55; 0 25] % coordinates of nodes 1:7


g = graph(t,h);
P = plot(g, 'XData', pos(:,1), 'YData', pos(:,2));
x = get(P,'XData');
y = get(P,'YData');
xline(x(1), 'r')
yline(y(1), 'r')

%}

%// nadawanie losowych wspolrzednych wiezlom


rand_coordinates = randi([0,100],20,2)
