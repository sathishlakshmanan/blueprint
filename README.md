# Blueprint

## Golang

Download the file and move it to /usr/local/bin to execute the command from any directory<br>
```
sudo curl https://raw.githubusercontent.com/sathishlakshmanan/blueprint/main/golang/goinit.sh -o /usr/local/bin/goinit
```


Make the file an executable<br>
```
sudo chmod +x /usr/local/bin/goinit
```

Now, you can run `goinit` from any directory.

### Example
```
> goinit github.com/sathishlakshmanan/blueprint
go: creating new go.mod: module github.com/sathishlakshmanan/blueprint
go: to add module requirements and sums:
        go mod tidy
Created a default main.go file in the current directory

--- go.mod ---
module github.com/sathishlakshmanan/blueprint

go 1.20

--- main.go ---
package main

import (
        "fmt"
)

func main() {
        fmt.Println("Hello, World")
}
```
