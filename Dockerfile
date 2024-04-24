FROM jupyter/datascience-notebook
WORKDIR /app
COPY books.csv /app
COPY bookanalysis.ipynb /app
EXPOSE 7060


CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=7060", "--no-browser", "--allow-root"]