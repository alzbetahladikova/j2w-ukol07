package cz.czechitas.java2webapps.ukol7.controller;

import cz.czechitas.java2webapps.ukol7.service.PostService;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PostController {


    private final PostService service;

    public PostController(PostService service) {
        this.service = service;
    }

    @GetMapping("/")
    public ModelAndView zakladniSeznam() {
        return new ModelAndView("index")
                .addObject("posty", service.seznamPostu());
    }

    @GetMapping("/post/{slug}")
    public ModelAndView singlePost(@PathVariable String slug) {
        return new ModelAndView("post")
                .addObject("posty", service.singlePost(slug));
    }

}
