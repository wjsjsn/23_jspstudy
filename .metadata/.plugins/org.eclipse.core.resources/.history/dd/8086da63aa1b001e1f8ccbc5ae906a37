package mybatis.com.ict.edu;

import java.io.InputStream;

import javax.naming.InsufficientResourcesException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DBService {
// MyBatis를 사용하기 위해서 SqlSession 클래스가 필요함
	// SqlSessionFactory클래스를 가지고 SqlSession 클래스를 만듦
	private static SqlSessionFactory factory;
	static String resource = "mybatis/com/ict/edu/config.xml";
	
	// static 초기화
	static {
		try {
			InputStream inputStream = Resources.getResourceAsStream(resource);
			factory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
		}
	}
	// DAO에서 factory를 호출할 메서드
	public static SqlSessionFactory getFactory() {
		return factory;
	}
}
