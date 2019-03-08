package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
)

func main() {
	// say hello
	fmt.Println("Hello from goprogram")

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		fmt.Println("Line:", scanner.Text())
		if strings.HasPrefix(scanner.Text(), "READ") {
			os.Exit(1)
		}
	}
	if err := scanner.Err(); err != nil {
		log.Fatal("Error scanning:", err)
	}
	os.Exit(0)
}
