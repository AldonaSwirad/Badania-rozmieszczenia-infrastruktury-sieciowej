classdef Net < handle
    %Klasa definiująca sieć.
    %Zawiera graf, koordynaty węzłów i macierz sąsiedztwa.
    % "< handle" oznacza, że definiuję klasę nie jako value class, 
    % a handle class (patrz: dokumentacja).

    properties
        nodes Node %lista węzłów (obiektów klasy Node)
        edges %macierz: kolumna 1 - pierwszy wierzchołek należący do krawędzi
              %kolumna 2 - drugi wierzchołek należący do krawędzi
    end

    methods
        function obj = Net(nodelist, edgeslist)
            %NET konstruktor
            %   Przyjmuje dwie listy: węzłów i krawędzi.
            obj.nodes = nodelist;
            obj.edges = edgeslist;
        end

        function draw_graph(obj)
            %Rysuje graf sieci.
            node_coords = zeros(length(obj.nodes), 2);
            for i = 1:length(node_coords(:, 1))
                node_coords(i, :) = [coords(obj.nodes(i), 'deg')];
            end
            geoscatter(node_coords(:, 1), node_coords(:, 2)); %Rysuje same węzły.
            labels = [obj.nodes.id];
            dx = 1; dy = 1; %Przesunięcie, żeby etykiety nie zasłaniały punktów.
            text(node_coords(:, 1)+dx, node_coords(:, 2)+dy, labels); %Dodanie etykiet.
            if (~isempty(obj.edges))
                hold on
                for i = 1:length(obj.edges(:, 1))
                    node1_co = coords(obj.edges(i, 1), 'deg');
                    node2_co = coords(obj.edges(i, 2), 'deg');
                    geoplot([node1_co(1), node2_co(1)], [node1_co(2), node2_co(2)]);
                end %Rysuje krawędzie.
                hold off
            end
        end
        function add_edge(obj, new_edges_list)
            %Dodaje nowe krawędzie.
            %   Przyjmuje macierz krawędzi.
            obj.edges = [obj.edges; new_edges_list];
        end

        function remove_edge(obj, node1, node2)
            %Usuwa krawędź między węzłami node1 i node2.
            for i = 1:length(obj.edges(:, 1))
                if ((obj.edges(i, 1) == node1 && obj.edges(i, 2) == node2) || (obj.edges(i, 1) == node2 && obj.edges(i, 2) == node1))
                    obj.edges(i, :) = [];
                    break
                end
            end
        end

        function add_node(obj, new_node)
            %Dodaje węzeł.
            obj.nodes = [obj.nodes, new_node];
        end

        function remove_node(obj, del_node)
            %Usuwa węzeł i krawędzie, które go łączyły.
            for i = 1:length(obj.nodes)
                if (obj.nodes(i) == del_node)
                    obj.nodes(i) = [];
                    break
                end
            end
            found_edges = zeros(1, length(obj.edges(:, 1)));
            no_of_edges = 0;
            for i = 1:length(obj.edges(:, 1))
                if (obj.edges(i, 1) == del_node || obj.edges(i, 2) == del_node)
                    found_edges(i) = i;
                    no_of_edges = no_of_edges+1;
                end
            end
            found_edges = found_edges(1:no_of_edges);
            for i = 1:length(found_edges)
                obj.edges(i, :) = [];
                found_edges = found_edges - 1;
            end
        end
    end
end