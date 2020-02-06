% lazy evaluation -> calculation is done only when the result is needed
declare Ints ThreeSum

fun lazy {Ints N}
    N|{Ints N+1}
end

% Starts the sum from X to X + 3
fun {ThreeSum X}
    case {Ints X} of A|B|C|_ then A+B+C end
end

X = {Ints 0}
{Browse {ThreeSum 8}}