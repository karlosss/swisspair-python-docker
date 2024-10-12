FROM archlinux:latest
LABEL authors="karlosss"

WORKDIR /app

RUN pacman -Syu --noconfirm &&  \
    pacman -S --noconfirm python python-pip gcc make cmake git pybind11 && \
    pip install --break-system-packages --root-user-action=ignore --extra-index-url https://test.pypi.org/simple/ swisspair

COPY test.py .

ENTRYPOINT ["python", "test.py"]
