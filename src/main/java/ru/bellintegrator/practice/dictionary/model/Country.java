package ru.bellintegrator.practice.dictionary.model;

import ru.bellintegrator.practice.user.model.User;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Version;
import java.util.ArrayList;
import java.util.List;


@Entity(name = "Country")
public class Country {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "id")
    private Integer id;

    @Version
    private Integer version;

    @Column(name = "citizenship_name", length = 50, nullable = false)
    private String citizenshipName;

    @Column(name = "citizenship_code", length = 3, nullable = false)
    private String citizenshipCode;

    @OneToMany
    @JoinColumn(name = "country_id")
    private List<User> users;

    public Integer getId() {
        return id;
    }

    public String getCitizenshipName() {
        return citizenshipName;
    }

    public void setCitizenshipName(String citizenshipName) {
        this.citizenshipName = citizenshipName;
    }

    public String getCitizenshipCode() {
        return citizenshipCode;
    }

    public void setCitizenshipCode(String citizenshipCode) {
        this.citizenshipCode = citizenshipCode;
    }

    public List<User> getUser() {
        if(users == null){
            users = new ArrayList<>();
        }
        return users;
    }

    public void setUser(List<User> users) {
        this.users = users;
    }
}
