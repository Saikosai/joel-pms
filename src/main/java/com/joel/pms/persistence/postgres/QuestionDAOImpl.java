package com.joel.pms.persistence.postgres;

import com.joel.pms.helpers.Helper;
import com.joel.pms.domains.question.QuestionDAO;
import com.joel.pms.domains.question.Question;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import static java.lang.System.out;

public class QuestionDAOImpl implements QuestionDAO {

    private SqlSessionFactory sqlSessionFactory;

    private SqlSessionFactory getFactory() throws IOException {
        if(sqlSessionFactory == null) {
            try {
                String resource = Helper.MYBATIS_CONFIG_PATH;
                InputStream inputStream = Resources.getResourceAsStream(resource);
                sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            } catch(IOException e) {
                e.printStackTrace();
            }
        }
        return sqlSessionFactory;
    }

    private String qualifyStatementName(String name){
        return Helper.QUESTION_MAPPER_PATH + name;
    }

    public void save(Question question) throws IOException {
        SqlSession sqlSession = getFactory().openSession();

        try {
            sqlSession.insert(qualifyStatementName("insert"), question);
            sqlSession.commit();
        } finally {
            sqlSession.close();
        }
    }

//    public int getCount() throws IOException{
//        SqlSession sqlSession = getFactory().openSession();
//
//        try {
//            List<Question> questions = sqlSession.selectList(qualifyStatementName("getCount"));
//            return  questions.size();
//        } finally {
//            sqlSession.close();
//        }
//    }

    public List<Question> getAll() throws IOException{
        SqlSession sqlSession = getFactory().openSession();
        try {
            List<Question> questions = sqlSession.selectList(qualifyStatementName("getAll"));
            return questions;
        } finally {
            sqlSession.close();
        }
    }

}
