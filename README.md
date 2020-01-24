# XtraBackup 2.4 Dockerfile

## Usage

### Backup

```
$ docker container run --rm \
		--volume=/path/to/target-dir:/target-dir \
		--volume=/path/to/mysql/data-dir:/mysql-data-dir \
		ebc2in2crc/xtrabackup24 \
		--backup \
		--target-dir=/target-dir \
		--datadir=/mysql-data-dir \
		--user=mysqlusername \
		--password=mysqlpassword \
		--host=host
		--port=port
```

### Restore

```
$ docker container run --rm \
		--volume=/path/to/target-dir:/target-dir \
		--volume=/path/to/mysql/data-dir:/mysql-data-dir \
		ebc2in2crc/xtrabackup24 \
		--copy-back \
		--target-dir=/target-dir \
		--datadir=/mysql-data-dir
```
