classdef SignalData < event.EventData

    properties
        Time = [];
        value = [];
    end

    methods
        function obj = SignalData(time, value)
            obj.Time = time;
            obj.value = value;
        end
    end


end