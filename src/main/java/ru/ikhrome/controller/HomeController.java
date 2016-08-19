package ru.ikhrome.controller;

import org.springframework.core.SpringVersion;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String getHome(Model model) {
        model.addAttribute("message", "Welcome to Hell!");
        model.addAttribute("springVersion", SpringVersion.getVersion());
        return "welcome";
    }

    @RequestMapping("/about")
    public String getAbout() {
        return "about";
    }


}
