FROM jupyter/datascience-notebook:27ba57364579

RUN git clone --branch master --depth 1 https://github.com/jakevdp/PythonDataScienceHandbook.git
RUN git clone --branch 7.1.1 --depth 1 https://github.com/jupyter-widgets/ipywidgets.git
RUN git clone --branch master --depth 1 https://github.com/jupyterlab/jupyterlab-demo.git