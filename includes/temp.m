classdef temp
    methods (Static)
        function u = low(temp)
            u = lineal(0,40,temp,'r');
        end
        
        function u = medium(temp)
            u = max([lineal(10,50,temp),lineal(50,90,temp,'r')]);
        end
        
        function u = high(temp)
            u = lineal(60,100,temp);
        end
    end  
end

