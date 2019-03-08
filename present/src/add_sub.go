package main

import "fmt"

//START OMIT
func Add(i, j int) int {
	return i + j
}

func AddAndSub(i, j int) (int, int) {
	return i + j, i - j
}

func main() {
	a, b := AddAndSub(3, 5)
	c, _ := AddAndSub(8, 2)
	fmt.Printf("%d %d\n", a, b)
	fmt.Printf("%d\n", c)
}
