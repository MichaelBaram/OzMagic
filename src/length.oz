declare Length

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