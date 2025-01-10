FROM odoo:17
MAINTAINER Cubean <cubean@warp-driven.com>

USER root
#COPY ../odoo /usr/lib/python3/dist-packages/odoo
ADD requirements_extend.txt .
# Set default user when running the container
USER odoo
RUN pip install -r requirements_extend.txt

ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]