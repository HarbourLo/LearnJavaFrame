package tiga.hotal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import tiga.hotal.pojo.ironman;
import tiga.hotal.service.ironmanService;

//在spring上下文容器中注冊该容器
@Controller
public class ironmanController extends baseController {
	// 自动装配 从spring配置文件的部件扫描所配置区域扫描
	// spring会到spring上下文容器中，搜索一个textService的类或（textService接口的实现类），传入这个控制器，过程是自动的
	@Autowired
	private ironmanService service = null;

	/**
	 * Restful API
	 * 
	 * GET 用于页面跳转 /xxx/页面方法名 GET 用于获取后台数据 /xxx POST 用于向后台提交数据 /xxx PUT 用于提交修改数据
	 * /xxx/id DELETE 用于提交删除数据 /xxx/id
	 * 
	 * @return
	 */

	// 跳转到首页
	@GetMapping("/ironman/skipMain")
	public String skipMain() {
		return "main";
	}

	// 跳转到添加界面
	@GetMapping("/ironman/skipInsert")
	public String skipInsert() {
		return "insert";
	}

	// 添加数据
	@PostMapping("/ironman")
	public String insert_ironman(ironman man) {
		service.insert_ironman(man);

		return "redirect:/ironman/loadAll";// 添加完重定向到所有信息界面
	}

	// 加载全部数据
	@GetMapping("/ironman/loadAll")
	public String loadAll(Model model) {
		model.addAttribute("list", service.loadAll());
		return "loadAll";
	}

	// 点击修改，根据获取的ID，向数据库获取信息，传回更改界面并显示
	@GetMapping("/ironman/{stuNo}")
	public String skipUpdate(@PathVariable int stuNo, Model model) {
		model.addAttribute("ironman", service.selectByStuNo(stuNo));
		return "update";
	}

	// 更新界面提交修改，获取更新信息，以及需要更改的stuNo
	@PutMapping("/ironman/{stuNo}") // 如果@PathVariable的变量名与获取的地址的变量名不同就需要加("stuNo")指定,然后赋值给新的变量名 id
	public String update(ironman man, @PathVariable("stuNo") int id) {
		service.updateByStuNo(man);
		return "redirect:/ironman/loadAll";
	}

	// loadAll界面删除按钮确定点击提交事件
	@DeleteMapping("/ironman/{stuNo}")
	public String delete(@PathVariable int stuNo) {
		service.deleteByStuNo(stuNo);
		return "redirect:/ironman/loadAll";
	}
}
