# Require docker login: https://novobi.atlassian.net/wiki/x/RwBtDw
FROM novobidevops/docker-base:odoo-18-v0.1.0

USER root

COPY requirements.txt /etc/requirements.txt

RUN pip install --break-system-packages --no-cache-dir -r /etc/requirements.txt

USER odoo