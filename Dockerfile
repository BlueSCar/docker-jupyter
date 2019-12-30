FROM jupyter/datascience-notebook

RUN pip install psycopg2-binary
RUN pip install fastai
RUN pip install plotly
RUN pip install jupyterlab==1.2 "ipywidgets>=7.5"
RUN export NODE_OPTIONS=--max-old-space-size=2048
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager@1.1 --no-build
RUN jupyter labextension install jupyterlab-plotly@1.4.0 --no-build
RUN jupyter labextension install plotlywidget@1.4.0 --no-build
RUN jupyter lab build
RUN unset NODE_OPTIONS