package ru.ikhrome.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import ru.ikhrome.model.Post;

import java.util.List;

public class PostDaoImpl implements PostDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public PostDaoImpl() {
    }

    public PostDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Post> list() {
        return null;
    }

    @Override
    public void saveOrUpdate(Post post) {

    }

    @Override
    public void delete(int id) {

    }
}
