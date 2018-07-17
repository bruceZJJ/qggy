package cn.itcast.jk.service;


import cn.itcast.jk.domain.PromoteCourse;
import cn.itcast.jk.domain.Student;
import cn.itcast.jk.vo.PromoteCourseVO;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

public interface PromoteCourseService {
    //查询数据库中所有的发起课程
    public List<PromoteCourse> queryAll();

    //查询数据库中单个发起的课程
    public PromoteCourse query(Integer id);

    //课程发起，添加
    public void addCoursePromote(PromoteCourse promoteCourse);

    //将课程发起的待审核状态改为未审核通过
    public void updatePromoteState(Integer id);

    //将课程发起的待审核状态改为审核通过
    public void updatePromoteStatePass(Integer id);

    //电脑端的查询功能
    public List<PromoteCourse> queryByParams(PromoteCourse promoteCourse);

    //手机端展示发起课程的列表，显示状态为待审核的记录
    public List<PromoteCourse> queryUnChecked();

    //老师对某一课程感兴趣，人数加1
    public void updateTeaNum(PromoteCourse promoteCourse);

    //学生对某一课程感兴趣，人数+1
    public void updateStuNum(PromoteCourse promoteCourse);

    //将学生或教师所感兴趣的课程添加到数据表
    public void addInterestCourse(Map<String,String> map);

    //判断数据表中是否有该用户的openid，如果有，则不能重复添加我想参加
    public String queryInterestCourse(Map<String, String> map);

    //查询数据表中关于某一发起课程的信息，对应的实体是promoteCourseVO
    public List<PromoteCourseVO> queryPromoteCourseVO(Integer id);

    //查询用户的详细信息
    public Student queryOneStudent(String userOpenid);
}
