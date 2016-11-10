package com.joel.pms.domains.question;

import java.io.IOException;
import java.util.List;

public interface QuestionDAO {
    void save(Question question) throws IOException;
    List<Question> getAll() throws  IOException;
    //int getCount() throws  IOException;
}
