struct Animal {
mut:
	age  fn (p int) int
	duck Duck
}

struct Duck {
mut:
	age &fn (p int) int
}

fn test_main() {
	mut animal := Animal{
		age: fn (x int) int {
			return 5
		}
	}
	animal.duck = Duck{
		age: &animal.age
	}
	assert animal.duck.age(1) == 5
}
