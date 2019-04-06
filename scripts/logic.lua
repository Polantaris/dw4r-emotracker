--Chapter 1 Exclusive
function ch1Accessible()
    if Tracker:ProviderCountForCode("ch1complete") > 0 && Tracker:ProvideCountForCode("ch4complete") > 0 then
        return 1
    else if Tracker:ProviderCountCode("ch1complete") <= 0 then
        return 1
    else
        return 0
    end
end

function ch2Accessible()
    if Tracker:ProviderCountForCode("ch2complete") > 0 && Tracker:ProvideCountForCode("ch4complete") > 0 then
        return 1
    else if Tracker:ProviderCountCode("ch2complete") <= 0 && Tracker:ProvideCountForCode("ch1complete") > 0 then
        return 1
    else
        return 0
    end
end

function endorAccessible()
    if Tracker:ProviderCountForCode("ch2complete") > 0 && Tracker:ProvideCountForCode("ch4complete") > 0 then
        return 1
    else if Tracker:ProviderCountCode("ch2complete") > 0 && Tracker:ProvideCountForCode("ch3complete") <= 0 then
        return 1
    else if Tracker:ProviderCountCode("ch2complete") <= 0 && Tracker:ProvideCountForCode("ch1complete") > 0 then
        return 1
    else
        return 0
    end
end

function ch3Accessible()
    if Tracker:ProviderCountForCode("ch3complete") > 0 && Tracker:ProvideCountForCode("ch4complete") > 0 then
        return 1
    else if Tracker:ProviderCountCode("ch3complete") <= 0 && Tracker:ProvideCountForCode("ch2complete") > 0 then
        return 1
    else
        return 0
    end
end

function ch4Accessible()
    if Tracker:ProviderCountForCode("ch4complete") > 0 then
        return 1
    else if Tracker:ProviderCountCode("ch4complete") <= 0 && Tracker:ProvideCountForCode("ch3complete") > 0 then
        return 1
    else
        return 0
    end
end

function ch5Accessible()
    if Tracker:ProvideCountForCode("ch1complete") > 0 && Tracker:ProvideCountForCode("ch2complete") > 0 && Tracker:ProvideCountForCode("ch3complete") > 0 && Tracker:ProvideCountForCode("ch4complete") > 0 then
        return 1
    else
        return 0
    end
end