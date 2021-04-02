package br.com.phgf.examples.entity;

import javax.persistence.*;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

@Entity(name = "Author")
public class AuthorEntity {

    @Id
    @GeneratedValue(generator = "UUID")
    private UUID id;

    @Column(nullable = false, length = 200)
    private String name;

    @Column
    @Temporal(TemporalType.DATE)
    private Calendar bithdate;

    @ManyToMany(mappedBy = "authors")
    private List<ClassicBookEntity> books;

}
