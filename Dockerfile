FROM python:3.7-slim

RUN pip install mkdocs
RUN pip install tier-mkdocs-techdocs-core

ENTRYPOINT [ "mkdocs" ]
