FROM jupyter/datascience-notebook:27ba57364579

RUN git clone --branch master --depth 1 https://github.com/jakevdp/PythonDataScienceHandbook.git
RUN git clone --branch 7.1.1 --depth 1 https://github.com/jupyter-widgets/ipywidgets.git
RUN git clone --branch master --depth 1 https://github.com/jupyterlab/jupyterlab-demo.git

RUN jupyter labextension install @jupyterlab/fasta-extension@0.14 --no-build && \
    jupyter labextension install @jupyterlab/geojson-extension@0.14 --no-build && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.33 --no-build && \
    jupyter lab clean && \
    jupyter lab build