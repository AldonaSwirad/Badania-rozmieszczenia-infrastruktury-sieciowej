function trafficMap = Map(G, clients, traffic)
%Przypisuje urzadzeniom ruch jaki wystepuje
%   Dane wejsciowe:
%       G - graf skierowany
%       clients - lista z liczba klientow
%       traffic - wartosc uploadu/downloadu od jednego uzytkownika w Mbps
    keySet = transpose(G.Nodes.Name);
    valueSet = clients*traffic;
    trafficMap = containers.Map(keySet,valueSet);
end