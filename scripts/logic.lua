function inCh1()
    if Tracker:ProviderCountForCode("ch1complete") <= 0 then
        return 1
    else
        return 0
    end
end

function inCh2()
    if Tracker:ProviderCountForCode("ch1complete") > 0 and Tracker:ProviderCountForCode("ch2complete") <= 0 then
        return 1
    else
        return 0
    end
end

function inCh3()
    if Tracker:ProviderCountForCode("ch2complete") > 0 and Tracker:ProviderCountForCode("ch3complete") <= 0 then
        return 1
    else
        return 0
    end
end

function inCh4()
    if Tracker:ProviderCountForCode("ch3complete") > 0 and Tracker:ProviderCountForCode("ch4complete") <= 0 then
        return 1
    else
        return 0
    end
end

function inCh5()
    if Tracker:ProviderCountForCode("ch4complete") > 0 then
        return 1
    else
        return 0
    end
end

function canAccessEndor()
    if Tracker:ProviderCountForCode("ch2complete") <= 0 and Tracker:ProviderCountForCode("birdsongnectar") > 0 then
        return 1
    elseif Tracker:ProviderCountForCode("ch3complete") <= 0 and Tracker:ProviderCountForCode("bridgesbuilt") > 0 then
        return 1
    elseif Tracker:ProviderCountForCode("ch4complete") > 0 then
        return 1
    else
        return 0
    end
end

function ifNoStaffOfTransform()
    if Tracker:ProviderCountForCode("staffoftransform") > 0 then
        return 0
    else
        return 1
    end
end

function noBoat()
    if Tracker:ProviderCountForCode("boat") > 0 then
        return 0
    else
        return 1
    end
end