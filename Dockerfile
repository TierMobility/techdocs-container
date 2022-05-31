FROM python:3.7-slim

RUN pip install tier-mkdocs-techdocs-core==0.0.10

ENTRYPOINT [ "mkdocs" ]
