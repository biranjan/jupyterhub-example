FROM jupyterhub/jupyterhub
COPY jupyterhub_config.py .

RUN    /opt/conda/bin/conda clean -tipsy && \
    /opt/conda/bin/pip install --no-cache-dir \
        oauthenticator==0.8.* \
        dockerspawner==0.9.*

# RUN pip install notebook
# RUN pip install jupyterlab
# RUN pip install dockerspawner

ENV USERNAME=admin
ENV PASSWORD=admin

RUN useradd -m -p $(openssl passwd -1 ${PASSWORD}) -s /bin/bash -G sudo ${USERNAME}
USER admin
WORKDIR /home/admin