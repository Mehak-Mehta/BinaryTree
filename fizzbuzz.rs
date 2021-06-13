pub fn fizzbuzz() {
	 for x in 0..100{
		 if x % 15 == 0 {
			println!("fizzbuzz")
		} else if x % 5 == 0 {
			println!("buzz")
		} else if x % 3 == 0 {
			println!("fizz")
		}
		else {
			println!("{}", x)
		}
	}
 
}