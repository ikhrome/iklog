package ru.ikhrome.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.ikhrome.dao.PostDAO;
import ru.ikhrome.model.Post;

import java.util.List;

@Controller
public class BlogController {

    @Autowired
    private PostDAO postDAO;

    @RequestMapping("/blog")
    public String getBlogHome(Model model) {
        // TODO: add pagination
        List<Post> postList = postDAO.list();
        model.addAttribute("posts", postList);
        return "blog/home";
    }

    @RequestMapping(value = "/blog/post/{id}", method = RequestMethod.GET)
    public String getBlogPost(@PathVariable("id") int id, Model model) {
        Post post = postDAO.get(id);
        model.addAttribute("post", post);
        return "blog/post";
    }
}
