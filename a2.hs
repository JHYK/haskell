Assignment #2
=======

--The list formed by calling each function in function list 'fs' on item 'x'
applyAll = \fs -> \x -> foldr ( \f -> \acc -> f x : acc ) [] fs

--The list formed by those components of list 'xs' 
--which do not satisfy predicate 'p'
remove = \p -> foldr ( \x -> \acc -> if not ( p x ) then x : acc else acc ) []

--The number of time that item 'x' occurs in list 'xs'
count = \x -> foldr ( \n -> \acc -> if x==n then 1 + acc else acc) 0

--Dose the boolean list 'bs' contain an odd number of True components?
xor = foldr ( \b -> \acc ->
        if (( b == True && acc == True ) || ( b == False && acc == False)) then
            False 
        else True ) False

--The list formed by joining lists 'xs' and 'ys', in that order
append = \ys -> \xs-> foldr ( \x -> \acc ->  x : acc ) xs ys
