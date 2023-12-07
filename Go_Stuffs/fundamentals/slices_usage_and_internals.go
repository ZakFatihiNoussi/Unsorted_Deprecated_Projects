package main

import (
	"fmt"
	"strings"
)

func arr() int {
	var a [4]int
	a[0] = 1
	i := a[0]
	return i
}

func arrLiteral() string {
	b := [...]string{"Penn", "Teller"}
	return strings.Join(b[:], " ")
}

func main() {
	fmt.Println(arr(), arrLiteral())
}
