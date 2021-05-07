server:
	npx nodos server

test:
	npm -s test

run-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

run-prod:
	docker-compose up -d
