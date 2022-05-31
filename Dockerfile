FROM python:3.7-slim

RUN pip install mkdocs
RUN pip install tier-mkdocs-techdocs-core==0.0.9

ENTRYPOINT [ "mkdocs" ]
