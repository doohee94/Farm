package farm.test;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestDAOImpl implements TestDAO {

	@Autowired
	SqlSessionTemplate ss;
	@Override
	public int insert(TestDTO testDto) {
		

		return ss.insert("test.insert",testDto);
	}

}
