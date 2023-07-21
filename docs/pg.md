Instrucciones
=============

Las instrucciones dadas a continuación sirven para las distribuciones que usan el package manager APT—i.e. el que usan Debian y derivados. Si usan otra distro, el procedimiento es similar, aunque puede diferir ligeramente.

PostgreSQL y demás
------------------

Todo debe hacerse como root:

```
$ sudo su -
```

Para instalar el software necesario es derecho viejo:

```
# apt install git git-gui postgresql
```

Por último, suponiendo que la versión instalada es la 9.6, asegurense que el final del archivo `/etc/postgresql/9.6/main/pg_hba.conf` tenga la pinta:

```
local all postgres trust
local all all trust
host all all 127.0.0.1/32 trust
host all all ::1/128 trust
```

Luego de modificar el archivo `/etc/postgresql/9.6/main/pg_hba.conf`, rebootear el servicio de postgresql con:

```
# systemctl restart postgresql.service
```

Listo!
