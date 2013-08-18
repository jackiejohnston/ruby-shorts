def pow (base, integer) 
    result = base
    (integer-1).times {result = result * base}
    return result
end
