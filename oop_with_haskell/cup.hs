module Cup where
-- contains definition of Cup object

-- constructor of cup, takes a number i.e quantity applied to a lambda
cup :: t1 -> (t1 -> t2) -> t2
cup quant = \message -> message quant

-- accessor
getQuant :: ((p -> p) -> t) -> t
getQuant aCup = aCup (\x -> x)


-- drinking from cup
drink :: (Ord t1, Num t1) => ((p -> p) -> t1) -> t1 -> (t1 -> t2) -> t2
drink aCup quant = if diff > 0 then cup diff
                   else cup 0
                   where diff = (getQuant aCup) - quant

