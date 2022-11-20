FROM python:3.11-slim

RUN pip install tier-mkdocs-techdocs-core==0.0.10

ENTRYPOINT [ "mkdocs" ]
