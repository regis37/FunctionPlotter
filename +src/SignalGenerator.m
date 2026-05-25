classdef SignalGenerator < handle

    properties
        frequency = 1
        funcType = 'sin'
    end

    events
        NewDataGenerated
    end

    methods
        function generate(obj)
            t= linspace(o, 1, 1000)

            if strcmp(obj.funcType, 'sin')
                y= sin(2*pi*obj.funcType * t);
            else
                y= cos(2*pi*obj.funcType * t);
            end

            data = src.SignalData(t, y);
            notify (obj, 'NewDataReady', data);
        end
    end

end