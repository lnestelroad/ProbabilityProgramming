# Almond if primarly used for Scala.
# FROM almondsh/almond

FROM jupyter/scipy-notebook

COPY --chown=jovyan:users 00-startup.py /home/jovyan/.ipython/profile_default/startup/00-startup.py
RUN conda install -c conda-forge arviz pymc3
RUN pip3 install jupyterthemes jupyter_contrib_nbextensions autopep8 yapf
RUN jt -t onedork -fs 95 -tfs 11 -nfs 115 -cellw 88% -T
RUN jupyter contrib nbextension install --user
