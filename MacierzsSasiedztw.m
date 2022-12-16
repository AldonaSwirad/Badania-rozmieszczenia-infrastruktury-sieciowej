%Nieskierowany do czesci teoretycznej
    s={'RT0','RT0','RT2','RT3','RT3','RT4','SW1','RADIO1','RT5','RT6','SW2','SW3','SW5','SW3','SW6','SW6','SW2','SW4'};
    t={'RT1','RT2','RT3','RT4','RT5','SW1','RADIO1','RADIO2','RT6','SW2','SW3','SW5','SW8','SW6','SW9','SW10','SW4','SW7'};
    weights=[10,10,10,10,10,1,0.6,0.6,10,1,1,1,1,1,1,1,1,1];

    length(s)
    
   
unikalne = unique([s,t]);
msize= length(unikalne);

   %macierz


    MS = zeros(msize,msize)
       
    G = graph(s,t,weights)

    plot(G,'EdgeLabel',G.Edges.Weight)

    A = adjacency(G)

   % nodeIDs = unique([s,t])

   % Deg = outdegree(G,nodeIDs)

   AS = MS+A
B = zeros(msize,msize)
for i=1:msize
    for j=1:msize
        B(i,j)=AS(j,i)
    end
end

  % for i = 1:length(unikalne)
   %    for j = 1:length(unikalne)
           
        

    %   end
   %end 