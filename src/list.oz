declare ShiftLeft ShiftRight AddList Pascal FastPascal


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

% Complexity Théta(2^N)
fun {Pascal N}
    if N == 1 then [1]
    else {AddList
            {ShiftLeft {Pascal N-1}}
            {ShiftRight {Pascal N-1}}}
    end
end

% Complexity Théta(N)
fun {FastPascal N}
    if N == 1 then [1]
    else Tmp in
        Tmp = {FastPascal N-1}
        {Browse Tmp}
        {AddList {ShiftLeft Tmp} {ShiftRight Tmp}}
    end
end

{Browse {FastPascal 15}}