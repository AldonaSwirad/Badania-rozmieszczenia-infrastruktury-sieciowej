%Nieskierowany do czesci teoretycznej
    s={'RT0','RT0','RT2','RT3','RT3','RT4','SW1','RADIO1','RT5','RT6','SW2','SW3','SW5','SW3','SW6','SW6','SW2','SW4'};
    t={'RT1','RT2','RT3','RT4','RT5','SW1','RADIO1','RADIO2','RT6','SW2','SW3','SW5','SW8','SW6','SW9','SW10','SW4','SW7'};
    weights=[10,10,10,10,10,1,0.6,0.6,10,1,1,1,1,1,1,1,1,1];

    length(s)
    
   
unikalne = unique([s,t]);
msize= length(unikalne);

   %macierz

%  macierz o wymiarach liczby elementow unikalnych - liczby urzadzen w
%  sieci
    MS = zeros(msize,msize)

% graf na podstawie podanych list polaczen razem z wagami polaczen oraz
% stopnie wezlow - ile polaczen wychodzi z kazdego

    G = graph(s,t,weights)

    deg = degree(G)

   
   % podglad grafu dla danej sieci
   % plot(G,'EdgeLabel',G.Edges.Weight)


   % elementy wierszy i kolumn w kolejnosci wyniku funkcji unique
   % A,B - macierze sasiedztw generowane przez matlab w nieoperacyjnej
   % strukturze - nie sa kwadratowe
   % AS jest kwadratowa macierza sasiedztw ale zawiera tylko wartosci [0,1]
   % - informuje tylko o istnieniu polaczen
   % BS jest macierza sasiedztw uwzgledniajaca wagi polaczen

   A = adjacency(G)

   AS = MS + A

   B = adjacency( G ,'weighted')

   BS = MS + B



