package com.cbb;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Test19SpringBoot3ApplicationTests {

    Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    DataSource dataSource;
    @Autowired
    Person p;
	@Test
	public void contextLoads() throws SQLException {
        Connection connection = dataSource.getConnection();
        System.out.println(dataSource.getClass());
        System.out.println(connection);
        connection.close();

		System.out.print(p);

		System.out.println("少时诵诗书所所所所所所所所所所所所所所所");
	//System.out.print(person);

	//日志测试
     logger.trace("trace-------日志");
     logger.debug("debug-------日志");
     logger.info("info--------日志");
     logger.warn("warning-------------日志");
     logger.error("error----------日志");
	}

}
