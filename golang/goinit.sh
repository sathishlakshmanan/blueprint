#! /bin/bash

read -p 'Enter module name: ' directory_name

while [[ $directory_name = "" || $directory_name = "." ]]
do
    echo -e "Please enter a valid module name.\nExample usage:
            'example.com/m' to initialize a v0 or v1 module
            'example.com/m/v2' to initialize a v2 module"
    read -p 'Enter module name: ' directory_name
done

# initialize the go module
go mod init $directory_name

# get the default main.go file
main_go='https://raw.githubusercontent.com/sathishlakshmanan/blueprint/main/golang/main.go'
curl -s "$main_go" -o main.go

echo "Created a default main.go file in the current directory"
