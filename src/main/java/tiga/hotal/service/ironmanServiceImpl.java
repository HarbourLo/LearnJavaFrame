package tiga.hotal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tiga.hotal.dao.ironmanDao;
import tiga.hotal.pojo.ironman;

//能够告诉spring，需要把这个类缓存到spring的容器中，是spring容器中的一个bean
//或者简单粗暴直接使用@Component注解
@Service
public class ironmanServiceImpl implements ironmanService {
	
	// 自动装配 从spring配置文件的部件扫描所配置区域扫描
	// spring会到spring上下文容器中，搜索一个textService的类或（textService接口的实现类），传入这个控制器，过程是自动的
	@Autowired
	private ironmanDao dao = null;

	@Override
	public void insert_ironman(ironman man) {
		dao.insert_ironman(man);
	}

	@Override
	public void deleteByStuNo(int stuNo) {
		dao.deleteByStuNo(stuNo);
	}

	@Override
	public ironman selectByStuNo(int stuNo) {
		return dao.selectByStuNo(stuNo);
	}

	@Override
	public void updateByStuNo(ironman man) {
		dao.updateByStuNo(man);
	}

	@Override
	public List<ironman> loadAll() {
		return dao.loadAll();
	}

}
