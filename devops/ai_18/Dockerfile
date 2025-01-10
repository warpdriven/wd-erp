FROM odoo:18
MAINTAINER Cubean <cubean@warp-driven.com>

USER odoo
#COPY ../odoo /usr/lib/python3/dist-packages/odoo
ADD requirements_extend.txt .
# Set default user when running the container
RUN python3 -m pip install --break-system-packages -r requirements_extend.txt

ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]