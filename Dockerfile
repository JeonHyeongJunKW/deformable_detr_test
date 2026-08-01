FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-devel

ENV DEBIAN_FRONTEND=noninteractive
ENV TORCH_CUDA_ARCH_LIST=7.5

WORKDIR /workspace

RUN rm -f \
      /etc/apt/sources.list.d/cuda.list \
      /etc/apt/sources.list.d/nvidia-ml.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
      build-essential \
      ninja-build \
      git \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt ./

RUN python -m pip install --no-cache-dir \
      "numpy<1.24" \
      "cython<3" \
    && python -m pip install --no-cache-dir -r requirements.txt

CMD ["/bin/bash"]
