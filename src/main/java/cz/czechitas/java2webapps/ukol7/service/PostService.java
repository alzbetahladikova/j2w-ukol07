package cz.czechitas.java2webapps.ukol7.service;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostService {

    private final PostRepository postRepository;

    @Autowired

    public  PostService (PostRepository postRepository) {this.postRepository = postRepository;}

    public List<Post> seznamPostu () { return postRepository.findAll();}

    public List <Post> singlePost(String slug) { return postRepository.findBySlugStartingWithIgnoreCase (slug);}


}
