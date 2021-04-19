package ru.bellintegrator.practice.dictionary.model;

import ru.bellintegrator.practice.user.model.Doc;

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


@Entity(name = "Doc_type")
public class DocType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Version
    private Integer version;

    @Column(name = "doc_name", length = 50, nullable = false)
    private String docName;

    @Column(name = "doc_code", length = 2, nullable = false)
    private String docCode;

    @OneToMany
    @JoinColumn(name = "doc_type_id")
    private List<Doc> docs;

    public Integer getId() {
        return id;
    }

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public String getDocCode() {
        return docCode;
    }

    public void setDocCode(String docCode) {
        this.docCode = docCode;
    }

    public List<Doc> getDocs() {
        if(docs == null){
            docs = new ArrayList<>();
        }
        return docs;
    }

    public void setDocs(List<Doc> docs) {
        this.docs = docs;
    }
}
