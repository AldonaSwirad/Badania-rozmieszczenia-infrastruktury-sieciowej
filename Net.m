classdef Net
    %Klasa definiująca sieć
    %Zawiera graf, koordynaty węzłów i macierz sąsiedztwa

    properties
        Graph
        x_coordinates
        y_coordinates
        adjacency_mat
    end

    methods
        function obj = Net(x_coords,y_coords)
            %NET konstruktor
            %   Przyjmuje dwie listy: koordynatów x i koordynatów y.
            %   Spodziewa się list takiej samej długości.
            %   Wykrywa liczbę węzłów na podstawie długości list.
            if length(x_coords) == length(y_coords)
                obj.x_coordinates = x_coords;
                obj.y_coordinates = y_coords;
                obj.net_update()
            else
                print("rozmiary list koordynatow sa rozne!")
            end
        end

        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
        function net_update()
            %Aktualizacja grafu sieci
            if isempty(obj.x_coordinates) || isempty(obj.y_coordinates)
                print("rozmiary koordynatow sa rozne!")
            else
                if length(obj.x_coordinates) ~= length(obj.y_coordinates)
                    print("nierowne listy koordynatow!")
                else
                    if

        end
    end
end