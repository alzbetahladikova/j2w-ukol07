package cz.czechitas.java2webapps.ukol7.service;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class PostService {

    private final PostRepository postRepository;

    @Autowired

    public  PostService (PostRepository postRepository) {this.postRepository = postRepository;}

    public Page <Post> seznamPostu (Pageable pageable) { return  postRepository.findAll(pageable);}

    public Page <Post> singlePost(String slug, Pageable pageable) { return postRepository.findBySlugStartingWithIgnoreCase (slug,pageable);}


}
