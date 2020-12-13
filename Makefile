# deps: 
#	go mod download
#	go mod tidy

generate-server:
	swagger generate server -a factory -A factory -t server/gen f ../swagger.yml

run-server:
	go run server/gen/cmd/factory-server/main.go --host 0.0.0.0 --port 3000