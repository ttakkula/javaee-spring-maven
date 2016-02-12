
package com.base.controller;

import com.base.DAO.TeacherDAO;
import com.base.models.Teachers;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DefaultController {
    
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String index(ModelMap map){
        //Define attributes you want to use in your template index.jsp
        map.addAttribute("name", "Crash Test Dummy");
        return "index";
    }
    @RequestMapping(value="/second", method=RequestMethod.GET)
    public String second(ModelMap map){
        map.addAttribute("teacher", new Teachers());
        try {
            map.addAttribute("teachers",TeacherDAO.getTeachers());
        }catch(Exception e){
            e.printStackTrace();
        }
        //Render second.jsp
        return "second";
    }
    @RequestMapping(value="/teacher", method=RequestMethod.POST)
    public String addNewTeacher(@ModelAttribute("teacher") Teachers teach, ModelMap map){
        try{
            TeacherDAO.addTeacher(teach);
            map.addAttribute("save_info", "Teacher added successfully!");
            map.addAttribute("teachers",TeacherDAO.getTeachers());
        }catch(Exception e){
            map.addAttribute("save_info", "Database error!");
            e.printStackTrace();
        }
        return "second";
    }
}
