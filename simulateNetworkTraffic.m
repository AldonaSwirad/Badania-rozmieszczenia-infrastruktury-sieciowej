function trafficAmount = simulateNetworkTraffic(G, root_node, current_node , trafficValueMap)
%Liczy ilosc ruchu, ktora przychodzi do wezla.
%   Dane wejsciowe:
%       G - graf skierowany(musza znajdowac sie w nim polaczenia od wezla root_node)
%       root_node - wezel, na ktorym chcemy policzyc ruch
%       trafficValueMap - mapa hashowa zawierajaca pary wezel: ilosc ruchu
%       https://www.mathworks.com/help/matlab/ref/containers.map.html
if trafficValueMap(current_node) ~= 0
    trafficAmount = trafficValueMap(current_node); % przypadek liscia - mamy ilosc ruchu, zwracamy ja
else %jesli nie, liczymy sume z ruchu wezlow-dzieci
    childNodes = findChildren(G, root_node, current_node, successors(G, current_node));
    tAm = 0; % zmienna podreczna - zmienna trafficAmount w petli nie dzialala poprawnie
    for i = 1 : length(childNodes)
        tAm = tAm + simulateNetworkTraffic(G, root_node, childNodes{i}, trafficValueMap);
    end
    trafficAmount = tAm;
end