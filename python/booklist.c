#include <stdio.h>
#include <mysql.h>
#include <string.h>
// sudo apt install libmysql++*
{
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
    
    if(mysql_real_connect(conn, host, user, passwd, db, port, NULL, 0)) {
        orintf("MySQL 연결 성공\n");
    }else{
        printf("MYSQL 연결 실패\n");
    }
    if(mysql_query(conn, query)){
        printf("쿼리 실패\n");
    }
    }
    
    res = mysql_store_result(conn);
    while(row = mysql_fetch_row(res)){
        printf("%s\n", row[0]);
        printf("%s\n", row[1]);
        printf("%s\n", row[2]);
        printf("%s\n", row[3]);
    }
    mysql_close(conn);
    return 0;
}