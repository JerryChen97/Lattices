function all_spin_one_half(array::Array)
    any_spin_not_one_half = any(x->(x!=1 && x!= -1), array)
    !(any_spin_not_one_half)
end
