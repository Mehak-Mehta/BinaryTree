fizzbuzz :: [Integer] -> [String]
fizzbuzz [] = []
fizzbuzz xs = [
	let fz = if mod x 3 == 0 then "fizz" else [] in
	let bz = if mod x 5 == 0 then "buzz" else [] in
	let fzbz = fz ++ bz in
	if null fzbz then show x else fzbz |
		x <- xs
	]
