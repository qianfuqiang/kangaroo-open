package com.shshilan.web.admin;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



import com.alibaba.fastjson.JSON;
import com.shshilan.entity.CourseCategory;
import com.shshilan.service.course.CourseCategorySevice;

/** 
 * @author lanbz 
 * @date 2013-9-16 上午10:12:23 
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/admin/course/category")
public class CourseCategoryController{

	private static final int PAGE_SIZE = 1000;
	@Autowired
	private CourseCategorySevice courseCategorySevice;
	
	@RequestMapping(method = RequestMethod.GET)
	public String home() {
		return "redirect:/admin/course/category/index.do";
	}
	
	@RequestMapping(value = "index",method = RequestMethod.GET)
	public String index(Model model) {
		String sortType="indexs";
		int pageNumber=1;
		Page<CourseCategory> categorys =courseCategorySevice.getPageCourseCategory(pageNumber, PAGE_SIZE, sortType);
		model.addAttribute("lists", categorys);
		return "admin/course/category/index";
	}
	
	
	
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(@Valid CourseCategory category, RedirectAttributes redirectAttributes) {
		String msg=Constant.ACTION_ADD_SUCCESS;
		if(null==category.getId() || "".equals(category.getId()))msg=Constant.ACTION_UPDATE_SUCCESS;
		courseCategorySevice.saveCourseCategory(category);
		redirectAttributes.addFlashAttribute("message",msg);
		return "redirect:/admin/course/category/index.do";
	}
	
	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable("id") String id, RedirectAttributes redirectAttributes) {
		courseCategorySevice.deleteCourseCategory(id);
		redirectAttributes.addFlashAttribute("message",Constant.ACTION_DELETE_SUCCESS);
		return "redirect:/admin/course/category/index.do";
	}
	
	@RequestMapping(value = "get/{id}")
	@ResponseBody
	public String get(@PathVariable("id") String id) {
		CourseCategory entity=courseCategorySevice.getCourseCategory(id);
		return JSON.toJSONString(entity);
	}
	
	
}
