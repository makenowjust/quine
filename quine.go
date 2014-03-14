package main

import (
	"fmt"
)

func main() {
	s := `package main

import (
	"fmt"
)

func main() {
	s := %s
	fmt.Printf(s, "%c"+s+"%c",
		96, 96)
}
`
	fmt.Printf(s, "`"+s+"`",
		96, 96)
}
