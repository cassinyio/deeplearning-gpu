# Copyright (c) 2017, Cassiny.io OÜ
# Distributed under the terms of the Modified BSD License.

# https://hub.docker.com/r/cassinyio/notebook-gpu/
FROM cassinyio/notebook-gpu:ceeb3806

LABEL maintainer "wow@cassiny.io"

# installing libraries
COPY environment.yml $HOME/environment.yml
COPY requirements.txt $HOME/requirements.txt
RUN conda install -c pytorch --quiet --yes --file $HOME/environment.yml && conda clean -tipsy
RUN pip install --no-cache-dir -r $HOME/requirements.txt
RUN rm $HOME/environment.yml
RUN rm $HOME/requirements.txt
