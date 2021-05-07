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
	docker run -e NODOS_HOST=0.0.0.0 -p 8080:8080 greenfrontend/project1

run-dev:
	docker-compose up --build
