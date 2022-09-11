buildImage:
	docker-compose -f docker/docker-compose.yml build image-builder

init:
	docker run --rm -it -v $(pwd):/data/ ko7ko/jsonresume init

serve:
	docker-compose -f docker/docker-compose.yml up server

buildHtml:
	docker-compose -f docker/docker-compose.yml up html-builder

buildPdf:
	docker-compose -f docker/docker-compose.yml up --force-recreate --abort-on-container-exit pdf-builder

buildPdfV2:
	docker-compose -f docker/docker-compose.yml up --force-recreate --abort-on-container-exit pdf-builder-gotenberg
