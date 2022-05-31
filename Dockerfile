FROM python:3.10-slim

RUN pip install tier-mkdocs-techdocs-core==0.0.9

ENTRYPOINT [ "mkdocs" ]
