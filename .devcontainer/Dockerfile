# 1. TITAN RTX 호환을 위해 CUDA 10.2 베이스 이미지 사용 (Ubuntu 18.04)
FROM nvidia/cuda:10.2-cudnn7-devel-ubuntu18.04

# 2. apt 환경 변수 설정 (설치 중 멈춤 방지)
ENV DEBIAN_FRONTEND=noninteractive

# 3. Python 3.7 및 필수 도구 설치
RUN apt-get update && apt-get install -y \
    python3.7 \
    python3.7-distutils \
    curl \
    && rm -rf /var/lib/apt/lists/*

# 4. pip 설치
RUN curl -sS https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3.7 get-pip.py && \
    rm get-pip.py

# 5. 기본 python 명령어를 python3.7로 연결
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1

# 6. PyTorch 1.5.1 및 Torchvision 0.6.1 (CUDA 10.2 버전 - cu102) 설치
RUN pip install torch==1.5.1+cu102 torchvision==0.6.1+cu102 -f https://download.pytorch.org/whl/torch_stable.html
RUN pip install -r requirements.txt
