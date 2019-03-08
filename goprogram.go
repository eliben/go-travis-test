package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
)

func main() {
	fmt.Println("Hello from goprogram")

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		fmt.Println("Line:", scanner.Text())
	}
	if err := scanner.Err(); err != nil {
		log.Fatal("Error scanning:", err)
	}
	os.Exit(0)
}
