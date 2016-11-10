package com.joel.pms.domains.question;

import java.io.IOException;
import java.util.List;

public class QuestionService {
    private QuestionDAO repository;

    public QuestionService(QuestionDAO repository) {
        this.repository = repository;
    }

    public void save(Question question) throws IOException {
        repository.save(question);
    }

//    public int getCount() throws IOException {
//        return repository.getCount();
//    }

    public List<Question> getAll() throws IOException {
        return repository.getAll();
    }

}
