/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.base.controller;

import com.base.DAO.CourseDAO;
import com.base.models.Course;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Ohjelmistokehitys
 */
@Controller
public class CourseController {
    @RequestMapping(value="/admin/course", method=RequestMethod.GET)
    public String renderCourse(ModelMap map){
        map.addAttribute("isLogged", true);
        map.addAttribute("course", new Course());
                try {
            map.addAttribute("courses",CourseDAO.getCourse());
        }catch(Exception e){
            e.printStackTrace();
        }
        return "course";
    }
    @RequestMapping(value="/admin/addcourse", method=RequestMethod.POST)
    public String addNewCourse(@ModelAttribute("course") Course enroll, ModelMap map){
        map.addAttribute("isLogged", true);
        try{
            CourseDAO.addCourse(enroll);
            map.addAttribute("save_info", "Course added successfully!");
            map.addAttribute("courses",CourseDAO.getCourse());
        }catch(Exception e){
            map.addAttribute("save_info", "Database error!");
            e.printStackTrace();
        }
        return "course";
    }    
}
