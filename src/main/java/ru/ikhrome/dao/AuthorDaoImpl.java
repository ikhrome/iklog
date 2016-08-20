package ru.ikhrome.dao;

import org.hibernate.SessionFactory;
import ru.ikhrome.model.Author;

import java.util.List;

public class AuthorDaoImpl implements AuthorDAO {

    private SessionFactory sessionFactory;

    public AuthorDaoImpl() {
    }

    public AuthorDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Author> list() {
        return null;
    }

    @Override
    public void saveOrUpdate(Author author) {

    }

    @Override
    public void delete(int id) {

    }
}
