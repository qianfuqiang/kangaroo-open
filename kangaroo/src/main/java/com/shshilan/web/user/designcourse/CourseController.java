package com.shshilan.web.user.designcourse;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;
import  sun.misc.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shshilan.entity.Course;
import com.shshilan.service.account.AccountService;
import com.shshilan.service.course.CourseService;
import com.shshilan.system.Constants;
import com.shshilan.system.utils.CommonUtils;
import com.shshilan.web.user.UserBaseController;

/** 
 * @author lanbz 
 * @date 2013-9-18 下午3:08:12 
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/user/designcourse/course/")
public class CourseController extends UserBaseController {

	@Autowired
	private CourseService courseService;
	
	@Autowired
	private AccountService accountService;

	
	
	@RequestMapping(value = "save",method = RequestMethod.POST)
	public String save(@Valid Course entity,Model model){
		
		entity.setCreateTime(CommonUtils.date2String(new Date()));
		entity.setCreateUserId(getCurrentUserId()+"");
		entity.setPayOrNot(Constants.PAY_NOT);
		entity.setPrice(0.0f);
		entity.setState(Constants.STATE_ABLE);
		entity.setWatchTimes(0);
		entity.setLogo("logo");//???????????
		entity.setReviewed(Constants.REVIEWE_DISABLE);
		
		
		Course newCourse=courseService.save(entity);
		
		return "redirect:/user/designcourse/modify.do?id="+newCourse.getId();
	}
	
	@RequestMapping(value = "saveModify",method = RequestMethod.POST)
	public String saveModify(@Valid Course entity,Model model){
		entity.setState(Constants.STATE_ABLE);
		entity.setReviewed(Constants.REVIEWE_DISABLE);
		courseService.save(entity);
		return "redirect:/user/center/my.do";
	}
	
	
	@RequestMapping(value = "delete")
	public String deleteCourse(String id){
		String result="redirect:/user/center/my.do";
		Course delCourse=courseService.findOne(id);
		if(null!=delCourse){
			if(delCourse.getCreateUserId().equals(this.getCurrentUserId()+"")){
				if(delCourse.getReviewed().equals(Constants.REVIEWE_ABLE)){
					delCourse.setState(Constants.STATE_DISABLE);
					courseService.save(delCourse);
				}else{
					courseService.delete(id);
				}
			}
		}
		
		return result;
	}
	
	
	
	@SuppressWarnings("restriction")
	@RequestMapping(value = "modifyLogo/{id}")
	public void modifyLogo(@PathVariable("id")String id,HttpServletRequest request,
			HttpServletResponse response){
		//String pic=request.getParameter("pic");
		String pic1=request.getParameter("pic1");
		//String pic2=request.getParameter("pic2");
		//String pic3=request.getParameter("pic3");
		
		String absolutepath = request.getSession().getServletContext().getRealPath("/");
		absolutepath=absolutepath+Constants.PIC_UPLOAD_PATH+File.separator;
		
		String totayStr=CommonUtils.getTotayString();
		String fileName=CommonUtils.getUUID()+".png";
		
		String absolutepath_date=absolutepath+totayStr+File.separator;
		String filePath=absolutepath_date+File.separator+fileName;
		String relatively_file=totayStr+"/"+fileName;
		try{
		
		File dir=new File(absolutepath_date);
		if(!dir.exists()){
			dir.mkdir();
		}
		
		File file = new File(filePath);
		FileOutputStream fout = null;
		fout = new FileOutputStream(file);
		fout.write(new BASE64Decoder().decodeBuffer(pic1));
		fout.close();

		///
		Course course=courseService.findOne(id);
		course.setLogo(relatively_file);
		courseService.save(course);
		response.getWriter().println("{\"status\":1}");
		
		}catch(Exception ex){
			ex.printStackTrace();
		}
	
	}
	
}
