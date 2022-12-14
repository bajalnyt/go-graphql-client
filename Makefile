help: ## list makefile targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

run: ## Runs the app locally
	go run ./cmd/graphqlclient

lint: ## checking cleanup
	golangci-lint run


genclient:
	go run github.com/Khan/genqlient
