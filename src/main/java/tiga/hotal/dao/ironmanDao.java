package tiga.hotal.dao;

import java.util.List;

import tiga.hotal.pojo.ironman;

//接口不配注解，spring配置文件第四点自动扫描
public interface ironmanDao {

	// 添加新的信息
	void insert_ironman(ironman man);

	// 删除信息By stuNo
	void deleteByStuNo(int stuNo);

	// 查找信息By stuNo
	ironman selectByStuNo(int stuNo);

	// 更新信息By stuNo
	void updateByStuNo(ironman man);

	// 加载全部信息
	List<ironman> loadAll();

}
