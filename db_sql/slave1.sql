stop slave;
CHANGE MASTER TO MASTER_HOST='192.168.56.2', MASTER_USER='repl', MASTER_PASSWORD='secret', GET_MASTER_PUBLIC_KEY=1;
start slave;
stop slave;
reset slave;
reset master;
start slave;