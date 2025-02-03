FROM python:3.11

ARG PYTHON_VERSION=3.11

RUN pip install poetry 

# Install pyenv
## Must set the $HOME environment variable to /root manually
ENV HOME=/root 

## Added git config setting bc BAH Windows machines cannot use the curl command when only logged into F5
RUN git config --global http.sslVerify false
RUN git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
RUN $HOME/.pyenv/bin/pyenv install ${PYTHON_VERSION}
RUN $HOME/.pyenv/bin/pyenv global ${PYTHON_VERSION}
ENV PATH="/venv/pyenv/shims:/venv/pyenv/bin:${PATH}"

# Specifies where pyenv's virtual environments will get created
ENV PYENV_ROOT="/venv/pyenv"

WORKDIR /workspace

COPY ../../pyproject.toml .

RUN poetry sync --no-root

COPY ../../src/aissemble_lite_example/ .

CMD ["poetry", "run", "python", "driver.py"]