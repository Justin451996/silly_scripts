# Creamos carpeta con la fecha del backup
mkdir <dir>/backups/$(date +%d-%m-%Y)
# con mysqldump hacemos el backup de la base de datos
# la base de datos tendra de nombre la misma fecha del backup
mysqldump -h <host> -u <user> -C -Q -e --create-options <db> > <dir>/backups/$(date +%d-%m-%Y)/$(date +%d-%m-%Y).sql
# hacemos backups de carpetas
cp -R <dir_original> <dir>/backups/$(date +%d-%m-%Y)/
cp -R <dir_original> <dir>/backups/$(date +%d-%m-%Y)/
# Borramos alguna carpeta que no deseamos hacer backup
rm -rf <dir>/backups/$(date +%d-%m-%Y)/<carpeta_eliminar>
# Con rclone copiamos nuestros backups de la maquina Virtual a una capeta en la nube
rclone copy <dir>/backups/ <nombre_rclone_backups>:<nombre_carpeta_backups>
