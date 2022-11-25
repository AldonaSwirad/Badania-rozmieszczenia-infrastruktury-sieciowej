classdef Node < handle
    %Klasa węzła sieci.
    %Posiada współrzędne długości i szerokości geograficznej
    %oraz opcjonalnie ID.

    properties
        lat (1,3) double {mustBeReal}
        lon (1,3) double {mustBeReal}
        id (1,1) string = ""
    end

    methods
        function obj = Node(lat, lon)
            %Konstruktor klasy.
            %parametry:
            %lat - szerokośc geograficzna
            %lon - długość geograficzna
            %parametry lat i lon spodziewają się
            %współrzędnych w formacie DMS,
            %czyli [stopień minuta sekunda].
            %przykład:
            %Node([50 01 06], [21 59 20])
            if isempty(lat) || isempty(lon)
                disp("Brakujące dane.")
            else
                if lat(1, 2) > 60 || lat(1, 3) > 60 || lon(1, 2) > 60 || lon(1, 3) > 60
                    print("Wartości bezwzględne z minut i sekund powinny zawierać się w przedziale [0,60]")
                else
                    obj.lat = lat;
                    obj.lon = lon;
                end
            end
        end

        function outputCoords = coords(obj, mode)
            %Zwraca współrzędne węzła.
            %Parametry:
            %mode - format zwracanych koordynatów.
            %"rad" - konwersja kąta z formatu DMS na radiany.
            %"deg" - konwersja kąta z formatu DMS na kąt dziesiętny.
            if (mode == "rad")
                outputCoords = deg2rad(dms2degrees([obj.lat; obj.lon]));
            else
                if mode=="deg"
                outputCoords = dms2degrees([obj.lat; obj.lon]);
                end
            end
        end

        function [] = setId(obj, id)
            if(~isempty(id))
                obj.id = id;
            else
                disp("Nie podano ID do przypisania.")
            end
        end
        function id = getid(obj)
            id = obj.id;
        end
    end
end