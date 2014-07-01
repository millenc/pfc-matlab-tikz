classdef temperature
    methods (Static)
        function u = low(t)
            u = lineal(0,40,t,'r');
        end
        
        function u = medium(t)
            u = max([lineal(10,50,t),lineal(50,90,t,'r')]);
        end
        
        function u = high(t)
            u = lineal(60,100,t);
        end
    end  
end

