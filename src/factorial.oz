declare Factorial FastFactorial
    fun {Factorial X}
        if X < 2 then 1 else X * {Factorial X - 1} end
    end

    % Faster because it's tail call optimized
    fun {FastFactorial X}
        local FactorialSlave in
            fun {FactorialSlave N Acc}
                if N < 2 then Acc else {FactorialSlave N-1 N*Acc} end
            end
            {FactorialSlave X 1}
        end
    end

Order = 6
{Browse {Factorial Order}}
{Browse {FastFactorial Order}}