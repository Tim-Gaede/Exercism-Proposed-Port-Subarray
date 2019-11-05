SUBARRAY   = 1
SUPERARRAY = 2
EQUAL      = 3
UNEQUAL    = 4


function subarray(a1::Array, a2::Array)
    if a1 == a2;    return EQUAL;     end

    if length(a1) < length(a2)
        match_fnd = false
        i₂_beg = 1
        i₂_beg_max = length(a2) - length(a1) + 1
        while !match_fnd  &&  i₂_beg ≤ i₂_beg_max
            miss_fnd = false # value in candidate subarray is missing
            i₁ = 1
            while !miss_fnd  &&  i₁ ≤ length(a1)
                a2[i₂_beg + i₁-1] ≠ a1[i₁]    ?    miss_fnd = true    :    i₁+=1
            end

            !miss_fnd    ?    match_fnd = true    :    i₂_beg += 1
        end

        if match_fnd;    return SUBARRAY;    end

    elseif length(a1) > length(a2)
        match_fnd = false
        i₁_beg = 1
        i₁_beg_max = length(a1) - length(a2) + 1
        while !match_fnd   &&   i₁_beg ≤ i₁_beg_max
            miss_fnd = false # missing found
            i₂ = 1
            while !miss_fnd  &&  i₂ ≤ length(a2)
                a1[i₁_beg + i₂-1] ≠ a2[i₂]    ?    miss_fnd = true    :    i₂+=1
            end
            !miss_fnd    ?    match_fnd = true    :    i₁_beg+=1
        end

        if match_fnd;    return SUPERARRAY;    end
    end


    UNEQUAL
end
