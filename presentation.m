%Graf sieci - skierowany symetryczny - polaczenia i krawedzie
   s={'RT-1','RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RT-3','RT-3','RT-5','RT-6','OLT-2','OLT-2','RT-6','SW-2','SW-4','SW-2','SW-3','SW-5','SW-3','SW-6','SW-6','RT-6','SW-11','RT-6','SW-13','SW-14','RT-6','SW-16','SW-17','SW-20','SW-16','SW-16','SW-19','SW-19','RT-6','SW-24','SW-25','RT-6','SW-27','SW-27','SW-29','SW-31','SW-27','SW-30','SW-30','RT-6','SW-35','SW-35','SW-35','RT-6','SW-39','SW-39','RADIO-4','SW-39','SW-39','RADIO-6','RT-6','RT-6','SW-41','RT-6','SW-43','SW-43','SW-43','RT-6','SW-44','RT-6','SW-46','SW-46','SW-46','SW-49','RT-3','RT-7','RT-8','OLT-5','OLT-5','SW-51','SW-51','SW-53','SW-53','SW-64','SW-64','RADIO-11','RADIO-11','RADIO-11','SW-53','SW-53','SW-51','SW-54','SW-51','SW-51','SW-51','SW-57','SW-60','SW-57','SW-51','RT-8','SW-69','SW-72','SW-73','SW-69','SW-75','SW-76','RT-8','SW-70','RT-8','RT-8','SW-71','SW-71','RT-3','SW-81','RADIO-15','SW-81','SW-82','SW-82','SW-83','SW-83','SW-83','SW-83','SW-83','SW-83','SW-81','SW-90','OLT-7','SW-81','SW-81','RT-3','SW-93','SW-93','RT-3','RT-3','SW-95','OLT-9','OLT-9','OLT-11','RT-3','SW-97','RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RADIO-2','OLT-1','RT-5','RT-6','OLT-2','OLT-3','OLT-4','SW-2','SW-4','SW-7','SW-3','SW-5','SW-8','SW-6','SW-9','SW-10','SW-11','SW-12','SW-13','SW-14','SW-15','SW-16','SW-17','SW-20','SW-23','SW-18','SW-19','SW-21','SW-22','SW-24','SW-25','SW-26','SW-27','SW-28','SW-29','SW-31','SW-34','SW-30','SW-32','SW-33','SW-35','SW-36','SW-37','SW-38','SW-39','RADIO-3','RADIO-4','RADIO-7','RADIO-5','RADIO-6','RADIO-8','SW-40','SW-41','SW-42','SW-43','SW-99','RADIO-9','RADIO-10','SW-44','SW-45','SW-46','SW-47','SW-48','SW-49','SW-50','RT-7','RT-8','OLT-5','SW-68','SW-51','SW-52','SW-53','SW-63','SW-64','SW-67','RADIO-11','RADIO-12','RADIO-13','RADIO-14','SW-65','SW-66','SW-54','SW-59','SW-55','SW-56','SW-57','SW-60','SW-62','SW-61','SW-58','SW-69','SW-72','SW-73','SW-74','SW-75','SW-76','SW-77','SW-70','SW-78','OLT-6','SW-71','SW-79','SW-80','SW-81','RADIO-15','RADIO-16','SW-82','OLT-12','SW-83','SW-84','SW-85','SW-86','SW-87','SW-88','SW-89','SW-90','OLT-7','OLT-8','SW-91','SW-92','SW-93','RT-9','RT-10','SW-94','SW-95','OLT-9','OLT-10','OLT-11','SW-96','SW-97','SW-98'};
   t={'RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RADIO-2','OLT-1','RT-5','RT-6','OLT-2','OLT-3','OLT-4','SW-2','SW-4','SW-7','SW-3','SW-5','SW-8','SW-6','SW-9','SW-10','SW-11','SW-12','SW-13','SW-14','SW-15','SW-16','SW-17','SW-20','SW-23','SW-18','SW-19','SW-21','SW-22','SW-24','SW-25','SW-26','SW-27','SW-28','SW-29','SW-31','SW-34','SW-30','SW-32','SW-33','SW-35','SW-36','SW-37','SW-38','SW-39','RADIO-3','RADIO-4','RADIO-7','RADIO-5','RADIO-6','RADIO-8','SW-40','SW-41','SW-42','SW-43','SW-99','RADIO-9','RADIO-10','SW-44','SW-45','SW-46','SW-47','SW-48','SW-49','SW-50','RT-7','RT-8','OLT-5','SW-68','SW-51','SW-52','SW-53','SW-63','SW-64','SW-67','RADIO-11','RADIO-12','RADIO-13','RADIO-14','SW-65','SW-66','SW-54','SW-59','SW-55','SW-56','SW-57','SW-60','SW-62','SW-61','SW-58','SW-69','SW-72','SW-73','SW-74','SW-75','SW-76','SW-77','SW-70','SW-78','OLT-6','SW-71','SW-79','SW-80','SW-81','RADIO-15','RADIO-16','SW-82','OLT-12','SW-83','SW-84','SW-85','SW-86','SW-87','SW-88','SW-89','SW-90','OLT-7','OLT-8','SW-91','SW-92','SW-93','RT-9','RT-10','SW-94','SW-95','OLT-9','OLT-10','OLT-11','SW-96','SW-97','SW-98','RT-1','RT-0','RT-2','RT-3','RT-4','SW-1','RADIO-1','RT-3','RT-3','RT-5','RT-6','OLT-2','OLT-2','RT-6','SW-2','SW-4','SW-2','SW-3','SW-5','SW-3','SW-6','SW-6','RT-6','SW-11','RT-6','SW-13','SW-14','RT-6','SW-16','SW-17','SW-20','SW-16','SW-16','SW-19','SW-19','RT-6','SW-24','SW-25','RT-6','SW-27','SW-27','SW-29','SW-31','SW-27','SW-30','SW-30','RT-6','SW-35','SW-35','SW-35','RT-6','SW-39','SW-39','RADIO-4','SW-39','SW-39','RADIO-6','RT-6','RT-6','SW-41','RT-6','SW-43','SW-43','SW-43','RT-6','SW-44','RT-6','SW-46','SW-46','SW-46','SW-49','RT-3','RT-7','RT-8','OLT-5','OLT-5','SW-51','SW-51','SW-53','SW-53','SW-64','SW-64','RADIO-11','RADIO-11','RADIO-11','SW-53','SW-53','SW-51','SW-54','SW-51','SW-51','SW-51','SW-57','SW-60','SW-57','SW-51','RT-8','SW-69','SW-72','SW-73','SW-69','SW-75','SW-76','RT-8','SW-70','RT-8','RT-8','SW-71','SW-71','RT-3','SW-81','RADIO-15','SW-81','SW-82','SW-82','SW-83','SW-83','SW-83','SW-83','SW-83','SW-83','SW-81','SW-90','OLT-7','SW-81','SW-81','RT-3','SW-93','SW-93','RT-3','RT-3','SW-95','OLT-9','OLT-9','OLT-11','RT-3','SW-97'};
   weights=[10,10,10,10,1,0.6,0.6,10,10,10,10,10,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,0.1,0.1,1,1,1,1,1,0.1,0.1,1,1,1,1,1,1,1,10,10,10,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,10,1,1,1,10,1,1,10,10,1,1,1,1,1,1,1,10,10,10,1,1,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,1,0.6,0.6,10,10,10,10,10,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,0.1,0.1,1,1,1,1,1,0.1,0.1,1,1,1,1,1,1,1,10,10,10,1,1,1,1,1,1,1,0.1,0.1,0.1,0.1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,10,1,1,1,10,1,1,10,10,1,1,1,1,1,1,1,10,10,10,1,1,10,10,10,10,10,10,10,10,10,10,10];

%Tworzenie grafu
UD_G1= digraph(s,t,weights);

plot(UD_G1,'Layout','layered','Direction','down','Sources',[2],'EdgeLabel',UD_G1.Edges.Weight);

%zakladamy, ze 'RT-2' jest brama glowna

%Mapa liczby klientow:
keySet = {'RT-1' 'RT-0' 'RT-2' 'RT-3' 'RT-4' 'SW-1' 'RADIO-1' 'RADIO-2' 'OLT-1' 'RT-5' 'RT-6' 'OLT-2' 'OLT-3' 'OLT-4' 'SW-2' 'SW-4' 'SW-7' 'SW-3' 'SW-5' 'SW-8' 'SW-6' 'SW-9' 'SW-10' 'SW-11' 'SW-12' 'SW-13' 'SW-14' 'SW-15' 'SW-16' 'SW-17' 'SW-20' 'SW-23' 'SW-18' 'SW-19' 'SW-21' 'SW-22' 'SW-24' 'SW-25' 'SW-26' 'SW-27' 'SW-28' 'SW-29' 'SW-31' 'SW-34' 'SW-30' 'SW-32' 'SW-33' 'SW-35' 'SW-36' 'SW-37' 'SW-38' 'SW-39' 'RADIO-3' 'RADIO-4' 'RADIO-7' 'RADIO-5' 'RADIO-6' 'RADIO-8' 'SW-40' 'SW-41' 'SW-42' 'SW-43' 'RADIO-9' 'RADIO-10' 'SW-44' 'SW-45' 'SW-46' 'SW-47' 'SW-48' 'SW-49' 'SW-50' 'RT-7' 'RT-8' 'OLT-5' 'SW-68' 'SW-51' 'SW-52' 'SW-53' 'SW-63' 'SW-64' 'SW-67' 'RADIO-11' 'RADIO-12' 'RADIO-13' 'RADIO-14' 'SW-65' 'SW-66' 'SW-54' 'SW-59' 'SW-55' 'SW-56' 'SW-57' 'SW-60' 'SW-62' 'SW-61' 'SW-58' 'SW-69' 'SW-72' 'SW-73' 'SW-74' 'SW-75' 'SW-76' 'SW-77' 'SW-70' 'SW-78' 'OLT-6' 'SW-71' 'SW-79' 'SW-80' 'SW-81' 'RADIO-15' 'RADIO-16' 'SW-82' 'SW-83' 'SW-84' 'SW-85' 'SW-86' 'SW-87' 'SW-88' 'SW-89' 'SW-90' 'OLT-7' 'OLT-8' 'SW-91' 'SW-92' 'SW-93' 'RT-9' 'RT-10' 'SW-94' 'SW-95' 'OLT-9' 'OLT-10' 'OLT-11' 'SW-96' 'SW-97' 'SW-98' };
valueSet = [0 0 0 0 0 6 0 2 740 0 0 445 545 420 43 20 12 41 21 32 20 5 9 15 12 28 11 7 21 15 21 12 4 36 16 18 17 42 21 5 37 29 35 17 33 7 27 21 5 21 18 7 2 0 3 7 0 2 25 13 32 23 2 1 11 6 29 7 12 5 8 0 0 235 24 12 4 12 6 9 10 0 4 1 5 38 5 4 1 15 11 12 1 4 5 15 8 26 8 4 15 5 11 19 14 110 35 41 28 16 0 3 6 14 17 3 7 9 14 31 6 42 32 10 25 17 8 11 26 28 432 274 195 46 26 44 ];
clientAmount = containers.Map(keySet, valueSet);

%Informacje o ruchu na kazdym wezle
avgUpload =   0.0000878906*10; %wartosc przeliczona z Mbps na Gbps
avgDownload = 0.0015429688*3; %wartosc przeliczona z Mbps na Gbps



upload = Map(UD_G1, clientAmount, avgUpload); 
clear Map
download = Map(UD_G1, clientAmount, avgDownload); 
clear Map
[u, d] = simulateNetworkStress(UD_G1, 'RT-2', download, upload);
clear simulateNetworkStress

% przeciazenie - download
errorNodesDownload = findOverloadedNodes(d);
errorNodesUpload = findOverloadedNodes(u);





p = plot(UD_G1,'Layout','layered','Direction','down','Sources',2,'EdgeLabel',UD_G1.Edges.Weight);
highlight(p, errorNodesDownload,'MarkerSize', 6, 'NodeColor', 'red')
highlight(p, errorNodesUpload,'MarkerSize', 2, 'NodeColor', 'yellow')