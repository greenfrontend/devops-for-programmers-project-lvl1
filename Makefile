server:
	npx nodos server

test:
	npm -s test

run-test:
	docker-compose --file docker-compose.yml up --abort-on-container-exit --build

build-image:
	docker build --tag greenfrontend/project1 --file Dockerfile.production .

push-image:
	docker push greenfrontend/project1

run-prod:
	docker-compose --file docker-compose.prod.yml up

run-dev:
	docker-compose up --build
