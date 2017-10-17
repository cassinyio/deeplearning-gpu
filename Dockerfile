# Copyright (c) 2017, Cassiny.io OÜ
# Distributed under the terms of the Modified BSD License.

# https://hub.docker.com/r/cassinyio/notebook-gpu/
FROM cassinyio/notebook-gpu:9eed8657

LABEL maintainer "wow@cassiny.io"

# Install PyTorch, TensorFlow and Keras
RUN conda install --quiet --yes \
    'pytorch' \
    'torchvision' \
    'cuda80' \
    -c soumith \
    && \
    pip install tensorflow-gpu \
    && \
    pip install keras \
    && \
    conda clean -tipsy
