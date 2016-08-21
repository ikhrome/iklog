package ru.ikhrome.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.SpringVersion;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.ikhrome.dao.PostDAO;

@Controller
public class HomeController {

    @Autowired
    private PostDAO postDAO;

    @RequestMapping("/")
    public String getHome(Model model) {
        model.addAttribute("latestPost", postDAO.getLatestPost());
        return "welcome";
    }

    @RequestMapping("/about")
    public String getAbout() {
        return "about";
    }


}
