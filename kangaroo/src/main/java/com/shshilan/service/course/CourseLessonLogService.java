package com.shshilan.service.course;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/** 
 * @author lanbz 
 * @date 2013-9-24 上午10:24:32 
 * @version 1.0 
 */
@Component
//默认将类中的所有public函数纳入事务管理.
@Transactional(readOnly = true)
public class CourseLessonLogService {

}
