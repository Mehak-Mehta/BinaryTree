public class main {
	public static void main(String[] arg) {
		
		for(int i = 1; i < 100; i++) {
			if(i % 5 == 0 && i % 7 == 0)
				System.out.println("FizzBuzz");
			else if(i % 5 == 0)
				System.out.println("Fizz");
			else if(i % 7 == 0)
				System.out.println("Buzz");
			else
				System.out.println(i);
		}
	}
}
