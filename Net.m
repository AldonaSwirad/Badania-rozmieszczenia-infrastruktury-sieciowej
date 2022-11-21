classdef Net < handle
    %Klasa definiująca sieć.
    %Zawiera graf, koordynaty węzłów i macierz sąsiedztwa.
    % "< handle" oznacza, że definiuję klasę nie jako value class, 
    % a handle class (patrz: dokumentacja).

    properties
        lat %szerokość geograficzna (S-N)
        lon %długość geograficzna (W-E)
        edges %macierz: kolumna 1 - pierwszy wierzchołek należący do krawędzi
              %kolumna 2 - drugi wierzchołek należący do krawędzi
    end

    methods
        function obj = Net(latitude, longitude)
            %NET konstruktor
            %   Przyjmuje dwie listy: koordynatów x i koordynatów y.
            %   Spodziewa się list takiej samej długości.
            if length(longitude) == length(latitude)
                obj.lat = latitude;
                obj.lon = longitude;
            else
                print("Rozmiary list koordynatow sa rozne!")
            end
        end

        function draw_graph(obj)
            %Rysuje graf sieci.
            geoscatter(obj.lat, obj.lon) %Rysuje same węzły.
            if (~isempty(obj.edges))
                hold on
                for i = 1:length(obj.edges(:, 1))
                    geoplot([obj.lat(obj.edges(i, 1)) obj.lat(obj.edges(i, 2))], [obj.lon(obj.edges(i, 1)) obj.lon(obj.edges(i, 2))])
                end %Rysuje krawędzie.
                hold off
            end
        end

        function add_edge(obj, vertex1, vertex2)
            %Dodaje krawędź między węzłami o numerach vertex1 i vertex2.
            obj.edges = [obj.edges; [vertex1 vertex2]];
        end

        function remove_edge(obj, vertex1, vertex2)
            %Usuwa krawędź między węzłami o numerach vertex1 i vertex2.
            for i = 1:length(obj.edges(:, 1))
                if ((obj.edges(i, 1) == vertex1 && obj.edges(i, 2) == vertex2) || (obj.edges(i, 1) == vertex2 && obj.edges(i, 2) == vertex1))
                    obj.edges(i, :) = [];
                    break
                end
            end
        end

        function add_vertex(obj, latitude, longitude)
            %Dodaje węzeł o podanych koordynatach.
            obj.lat = [obj.lat, latitude];
            obj.lon = [obj.lon, longitude];
        end
    end
end