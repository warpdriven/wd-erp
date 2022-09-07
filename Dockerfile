FROM odoo:15
MAINTAINER Cubean <cubean@warp-driven.com>

USER root
COPY ./odoo /usr/lib/python3/dist-packages/odoo
ADD /requirements.txt .
# Set default user when running the container
USER odoo
RUN pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]