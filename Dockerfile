FROM python:3.9.2-alpine3.13
COPY ./docs/ /site/docs/
COPY ./mkdocs.yml /site/
WORKDIR /site/
RUN pip install mkdocs
RUN pip install mkdocs-windmill-dark
EXPOSE 8080
CMD ["mkdocs", "serve"]
