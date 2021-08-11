package com.codingdojo.dojosurvey.dojosurvey;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;

@Controller
public class DojoSurveyController {
    @RequestMapping("/")
    public String index(HttpSession session, Model model) {
        return "index.jsp";
    }


    @RequestMapping( value="/submitSurvey", method=RequestMethod.POST)
    public String login(HttpSession session, @RequestParam(value="name") String name, @RequestParam(value="location") String location, @RequestParam(value="faveLang") String faveLang, @RequestParam(value="comment") String comment) {
        session.setAttribute("name", name);
        session.setAttribute("location", location);
        session.setAttribute("faveLang", faveLang);
        session.setAttribute("comment", comment);
        return "redirect:/results";
    }

}
