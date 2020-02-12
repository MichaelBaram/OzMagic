declare Lenght Concat Take Drop

fun {Length L}
    local LenghtSlave in
        fun {LenghtSlave K X}
            case K of H|T then {LenghtSlave T X + 1} else X end
        end
        {LenghtSlave L 0}
    end
end

Test = [1 2 3 5 6 7 8 9 10]
{Browse {Length Test}}

% Recursive terminal
fun {Concat A B}
    case A of HA|TA then HA|{Concat TA B} else B end
end

C = [r a p h]
D = [f l o]
{Browse {Concat C D}}

fun {Take Xs N}
    if N > 0 then
        case Xs of HXs|TXs then HXs|{Take TXs N-1} else nil end
    else nil end
end

Taken = [1 2 3 4 5 6 7]
{Browse {Take Taken 5}}

fun {Drop Xs N}
    case Xs of HXs|TXs then
        if N > 0 then
            {Drop TXs N - 1} else nil end
        else
            HXs|{Drop TXs N - 1}
        end
    else nil end
end

Todrop = [1 2 3 4 5 6 7]
{Browse {Drop Todrop 5}}