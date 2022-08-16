FROM pytorch/pytorch:latest
#pytorch/pytorch:1.9.0-cuda10.2-cudnn7-runtime

RUN conda install jupyterlab
RUN --mount=type=cache,id=apt-final,target=/var/cache/apt \
apt-get update && apt-get -y install curl wget libglib2.0-0 libsm6 libxrender1 libxext6 libgl1 git
EXPOSE 8888

ENTRYPOINT [ "jupyter", "lab", "--allow-root", "--no-browser", "--ip=0.0.0.0" ]