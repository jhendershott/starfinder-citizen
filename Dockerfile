FROM python:3.9.2-alpine3.13
COPY ./docs/ /docs/
WORKDIR /docs/
RUN pip install mkdocs
EXPOSE 8080
CMD ["mkdocs", "serve"]

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
