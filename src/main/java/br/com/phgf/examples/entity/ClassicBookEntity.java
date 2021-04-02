package br.com.phgf.examples.entity;

import javax.persistence.*;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

@Entity(name = "ClassicBook")
public class ClassicBookEntity {

    @Id
    @GeneratedValue(generator = "UUID")
    private UUID id;

    @Column(nullable = false, length = 100)
    private String title;

    @Column(nullable = false, length = 50)
    @Enumerated(EnumType.STRING)
    private EnumBookCategory category;

    @Column(nullable = false)
    @Temporal(TemporalType.DATE)
    private Calendar publicationDate;

    @ManyToOne
    private PublishingCompanyEntity publishingCompany;

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(name = "book_authors",
            joinColumns = @JoinColumn(name = "book_id"),
            inverseJoinColumns = @JoinColumn(name = "author_id")
    )
    private List<AuthorEntity> authors;

}
