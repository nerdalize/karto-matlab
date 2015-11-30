build:
	docker build -t nerdalize/karto-matlab:`cat VERSION` .

push:
	docker push quay.io/nerdalize/karto-matlab:`cat VERSION`
