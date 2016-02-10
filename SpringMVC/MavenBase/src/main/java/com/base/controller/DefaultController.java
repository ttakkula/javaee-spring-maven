
package com.base.controller;

import com.base.DAO.TeacherDAO;
import com.base.models.Teachers;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
        Teachers s = new Teachers();
        s.setTName("Olli Opettaja");
        s.setTSubject("Programming");
        s.setEmail("olli.opettaja@koulu.fi");
        s.setPhone("020202424");
        try{
            TeacherDAO.addTeacher(s);
        }catch(Exception e){
            e.printStackTrace();
        }
        //Render second.jsp
        return "second";
    } 
}
