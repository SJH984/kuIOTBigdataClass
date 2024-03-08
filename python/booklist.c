#include <stdio.h>
#include <mysql.h>
#include <string.h>
// sudo apt install libmysql++*

int main() {
    MYSQL *conn;
    MYSQL_RES *res;
    MYSQL_EOW row;
    char *host = "localhost";
    char *user = "root";
    char *passwd = "0000";
    char *db = "madangdb";
    char query[255];
    int port = 3306;

    strcpy(query, "select * from Book");

    conn = mysql_init(NULL);
    mysql_real_connect(conn, host, user, passwd, db, port, NULL, 0);
    mysql_query(conn, "select * from Book");

    res = mysql_store_result(conn);
    while(row = mysql_fetch_row(res)){
        printf("%s\n", row[0]);
    }
    mysql_close(conn);
    return 0;
}