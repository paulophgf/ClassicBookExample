package br.com.phgf.examples.entity;

import javax.persistence.*;
import java.util.List;
import java.util.UUID;

@Entity(name = "PublishingCompany")
public class PublishingCompanyEntity {

    @Id
    @GeneratedValue(generator = "UUID")
    private UUID id;

    @Column(nullable = false, length = 100)
    private String name;

    @OneToMany(mappedBy = "publishingCompany")
    private List<ClassicBookEntity> books;

}
