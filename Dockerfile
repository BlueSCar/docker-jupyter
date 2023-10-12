FROM jupyter/datascience-notebook

RUN pip install psycopg2-binary
RUN pip install fastai
RUN pip install jupyterlab
RUN pip install ipywidgets
RUN export NODE_OPTIONS=--max-old-space-size=2048
RUN pip install jupyterlab_widgets

RUN pip install cfbd
RUN pip install xgboost
RUN pip install lightgbm

RUN unset NODE_OPTIONS
