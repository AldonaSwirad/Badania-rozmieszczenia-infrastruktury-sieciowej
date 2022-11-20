classdef Net2 < handle
    %Klasa definiująca sieć.
    %Zawiera graf, koordynaty węzłów i macierz sąsiedztwa.
    % "< handle" oznacza, że definiuję klasę nie jako value class, 
    % a handle class (patrz: dokumentacja).

    properties
        x_coordinates
        y_coordinates
        edges
    end

    methods
        function obj = Net2(x_coords,y_coords)
            %NET konstruktor
            %   Przyjmuje dwie listy: koordynatów x i koordynatów y.
            %   Spodziewa się list takiej samej długości.
            if length(x_coords) == length(y_coords)
                obj.x_coordinates = x_coords;
                obj.y_coordinates = y_coords;
                %obj.net_update
            else
                print("Rozmiary list koordynatow sa rozne!")
            end
        end

        function draw_graph(obj)
            %Rysuje graf sieci.
            geoscatter(obj.y_coordinates, obj.x_coordinates) %Rysuje same węzły.
            if (~isempty(obj.edges))
                hold on
                for i = 1:length(obj.edges(:, 1))
                    geoplot([obj.y_coordinates(obj.edges(i, 1)) obj.y_coordinates(obj.edges(i, 2))], [obj.x_coordinates(obj.edges(i, 1)) obj.x_coordinates(obj.edges(i, 2))])
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

        function add_vertex(obj, x_coords, y_coords)
            %Dodaje węzeł o podanych koordynatach.
            obj.x_coordinates = [obj.x_coordinates, x_coords];
            obj.y_coordinates = [obj.y_coordinates, y_coords];
        end

        %{
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
        %}
    end
end