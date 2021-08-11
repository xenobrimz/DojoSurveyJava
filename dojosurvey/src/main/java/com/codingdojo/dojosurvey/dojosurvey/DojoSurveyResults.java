package com.codingdojo.dojosurvey.dojosurvey;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;

@Controller
public class DojoSurveyResults {
    @RequestMapping("/results")
    public String results(HttpSession session, Model model) {
        String name = (String) session.getAttribute("name");
        String location = (String) session.getAttribute("location");
        String faveLang = (String) session.getAttribute("faveLang");
        String comment = (String) session.getAttribute("comment");
        model.addAttribute("name", name);
        model.addAttribute("location", location);
        model.addAttribute("faveLang", faveLang);
        model.addAttribute("comment", comment);
        return "results.jsp";
    }
}
