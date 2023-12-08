package cz.czechitas.java2webapps.ukol7.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import java.time.LocalDate;

@Entity
public class Post {

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
private Long id;

    // TODO: 08.12.2023 doplnit restrikce

    private String slug;
    private String author;
    private String title;
    private String perex;
    private String body;
    private LocalDate published;




}
