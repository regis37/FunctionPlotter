classdef SignalGenerator < handle
    properties
        frequency = 1      % Hz
        funcType  = 'sin' 
    end

    events
        NewDataReady    
    end

    methods
        function generate(obj)
            t = linspace(0, 1, 1000); 

            if strcmp(obj.funcType, 'sin')
                y = sin(2 * pi * obj.frequency * t); 
            else
                y = cos(2 * pi * obj.frequency * t); 
            end

            data = src.SignalData(t, y);
            notify(obj, 'NewDataReady', data);
        end
    end
end