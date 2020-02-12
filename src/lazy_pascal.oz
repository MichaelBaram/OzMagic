declare ShiftLeft ShiftRight AddList LazyPascal FromPascal


fun {ShiftRight List} 0|List end

fun {ShiftLeft List}
    case List of H|T then H|{ShiftLeft T} else [0] end
end

fun {AddList LA LB}
    case LA of HA|TA then
        case LB of HB|TB then
            HA + HB|{AddList TA TB}
        end
    else nil end
end

% Do Start where it left off
fun lazy {LazyPascal Row}
    Row|{LazyPascal
            {AddList  
                {ShiftLeft Row}
                {ShiftRight Row}}}
end

% Do Start from the Nth Row
fun {FromPascal N Row}
    if N==1 then [Row]
    else Row|{FromPascal N-1
                {AddList 
                    {ShiftLeft Row}
                    {ShiftRight Row}}}
    end
end

L = {LazyPascal [1]}
{Browse L} % Displayed because of pre-processing
{Browse L.2.1}
{Browse L}