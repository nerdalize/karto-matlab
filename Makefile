build:
	docker build -t nerdalize/karto-matlab:latest .

clean: 
	sudo rm -fr jobs/single_thread/panelfind_NP_mcr/
	sudo rm -fr jobs/multi_thread/panelfindPar_mcr/

test: build clean
	docker run --rm -it  -v `pwd`/jobs/single_thread:/job nerdalize/karto-matlab /job/ 90000_462000.tif 

test-multi: build clean
	docker run --rm -it -v `pwd`/jobs/multi_thread:/job nerdalize/karto-matlab /job/ 90000_462000.tif

push:
	docker tag nerdalize/karto-matlab:latest quay.io/nerdalize/karto-matlab
	docker push quay.io/nerdalize/karto-matlab
