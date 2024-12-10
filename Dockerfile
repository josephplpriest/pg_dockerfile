FROM bitnami/postgresql:latest

# list port for documentation purposes
EXPOSE 5432

# volume mount for local storage
VOLUME pgdata

# copy init script into container
COPY ./init.sql /docker-entrypoint-initdb.d/init.sql

# default entrypoint
ENTRYPOINT ["/opt/bitnami/scripts/postgresql/entrypoint.sh"]

# start postgres server
CMD ["/opt/bitnami/scripts/postgresql/run.sh"]