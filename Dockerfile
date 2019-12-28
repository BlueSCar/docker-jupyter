FROM jupyter/datascience-notebook

RUN pip install psycopg2-binary
RUN pip install fastai
