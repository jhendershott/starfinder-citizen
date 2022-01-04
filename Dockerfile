FROM python:3.9.2-alpine3.13
COPY ./docs/ /site/docs/
COPY ./mkdocs.yml /site/
WORKDIR /site/
RUN pip install mkdocs
EXPOSE 8080
CMD ["mkdocs", "serve"]
