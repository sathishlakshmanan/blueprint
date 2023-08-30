#! /bin/bash

directory_name=$1
DEFAULT_MAIN_GO='https://raw.githubusercontent.com/sathishlakshmanan/blueprint/main/golang/main.go'

while getopts ":n" flag; do
    case $flag in
        n)
            # get the default main.go file
            curl -s "$DEFAULT_MAIN_GO" -o main.go

            echo "Created a default main.go file in the current directory"
            echo -e "\n--- main.go ---"
            cat main.go
            exit 0
            ;;
    esac
done

if [[ $directory_name = "" && $flag = "?" ]]
then
    echo -e "Usage: goinit [module_name] | [-n]\n\nExample:
    goinit example.com/m : creates a module named \"example.com/m\" with a default main.go file
    goinit -n : creates only a default main.go file without the module"
    exit 0
fi

# initialize the go module
go mod init $directory_name

# get the default main.go file
curl -s "$DEFAULT_MAIN_GO" -o main.go

echo "Created a default main.go file in the current directory"

echo -e "\n--- go.mod ---"
cat go.mod

echo -e "\n--- main.go ---"
cat main.go
