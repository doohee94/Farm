package farm.test.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import farm.test.dto.testDTO;


@Service
public class testDAOImpl implements TestDAO {
	
	@Autowired
	SqlSessionTemplate ss;
	
	private String namespace = "test";

	@Override
	public int insertUser(testDTO testDTO) {
		// TODO Auto-generated method stub
		
		int res = ss.insert(namespace+".insert", testDTO);
		
		return res;
	}

}
