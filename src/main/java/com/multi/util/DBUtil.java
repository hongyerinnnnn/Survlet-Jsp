package com.multi.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// 1. JDBC 연결하는 드라이브 코드 설정
// 2. MVC 구조를 이해하는 코드로 진행
// 3. Java 부분, JSP 부분 구분해서 프로그램 구현
// 3. el-jstl을 이용하는 목록을 출력
public class DBUtil {
    private static final String URL = "jdbc:mysql://localhost:3306/spring";
    private static final String USER = "root";
    private static final String PASSWORD = "1234";

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}

