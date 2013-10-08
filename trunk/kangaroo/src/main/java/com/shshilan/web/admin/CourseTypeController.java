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
import com.shshilan.entity.CourseType;
import com.shshilan.service.course.CourseTypeService;


/** 
 * @author lanbz 
 * @date 2013-9-16 下午6:22:24 
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/admin/course/type")
public class CourseTypeController{

	private static final int PAGE_SIZE = 1000;
	@Autowired
	private CourseTypeService courseTypeService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String home() {
		return "redirect:/admin/course/category/index.do";
	}
	
	@RequestMapping(value = "index",method = RequestMethod.GET)
	public String index(Model model) {
		String sortType="indexs";
		int pageNumber=1;
		Page<CourseType> lists =courseTypeService.getPageCourseType(pageNumber, PAGE_SIZE, sortType);
		model.addAttribute("lists", lists);
		return "admin/course/type/index";
	}
	
	
	
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(@Valid CourseType entity, RedirectAttributes redirectAttributes) {
		String msg=Constant.ACTION_ADD_SUCCESS;
		if(null!=entity.getId() && !"".equals(entity.getId()))msg=Constant.ACTION_UPDATE_SUCCESS;
		courseTypeService.save(entity);
		redirectAttributes.addFlashAttribute("message",msg);
		return "redirect:/admin/course/type/index.do";
	}
	
	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable("id") String id, RedirectAttributes redirectAttributes) {
		courseTypeService.delete(id);
		redirectAttributes.addFlashAttribute("message",Constant.ACTION_DELETE_SUCCESS);
		return "redirect:/admin/course/type/index.do";
	}
	
	@RequestMapping(value = "get/{id}")
	@ResponseBody
	public String get(@PathVariable("id") String id) {
		
		CourseType entity=courseTypeService.get(id);
		return JSON.toJSONString(entity);
	}
	
	
}
