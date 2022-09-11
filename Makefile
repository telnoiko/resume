image:
	docker-compose -f docker/docker-compose.yml build image-builder

init:
	docker run --rm -it -v $(pwd):/data/ ko7ko/jsonresume init

serve:
	docker-compose -f docker/docker-compose.yml up server

html:
	docker-compose -f docker/docker-compose.yml up html-builder

pdf:
	docker-compose -f docker/docker-compose.yml up --force-recreate --abort-on-container-exit pdf-builder

pdf_v2:
	docker-compose -f docker/docker-compose.yml up --force-recreate --abort-on-container-exit pdf-builder-gotenberg
