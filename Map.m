function trafficMap = Map(G, clientMap, traffic)
%Przypisuje urzadzeniom ruch jaki wystepuje
%   Dane wejsciowe:
%       G - graf skierowany
%       clientMap - mapa liczby klientow na urzadzeniach
%       traffic - wartosc uploadu/downloadu od jednego klienta w Mbps
    keySet = transpose(G.Nodes.Name);
    valueSet = zeros(1, length(keySet));
    clientMapKeys = keys(clientMap);

    for i = 1:length(keySet)
        if(any(strcmp(clientMapKeys, keySet{i})))
            valueSet(i) = clientMap(keySet{i})*traffic;
        end
    end

    trafficMap = containers.Map(keySet,valueSet);
end