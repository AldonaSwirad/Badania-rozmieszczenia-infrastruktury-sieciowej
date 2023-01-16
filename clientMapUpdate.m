function updatedClientMap = clientMapUpdate(G, clientMap)
%Tworzy zaktualizowana mape klientow
%   Dane wejsciowe:
%       G - graf skierowany
%       clientMap - mapa liczby klientow na urzadzeniach
%       traffic - wartosc uploadu/downloadu od jednego klienta w Mbps
    keySet = transpose(G.Nodes.Name);
    valueSet = zeros(1, length(keySet));
    clientMapKeys = keys(clientMap);

    for i = 1:length(keySet)
        if(any(strcmp(clientMapKeys, keySet{i})))
            valueSet(i) = clientMap(keySet{i});
        end
    end

    updatedClientMap = containers.Map(keySet,valueSet);
end