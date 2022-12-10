close all;

%imp_net - implementation network
imp_net = Net([15, 3, 5], [-9, 1, -3]); %przyłączanie deterministyczne
imp_net.add_edge(1,3)
imp_net.draw_graph()