package ru.ikhrome.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import ru.ikhrome.model.Category;

import java.util.List;

public class CategoryDaoImpl implements CategoryDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public CategoryDaoImpl() {
    }

    public CategoryDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Category> list() {
        return null;
    }

    @Override
    public Category get(int id) {
        return null;
    }

    @Override
    public void saveOrUpdate(Category category) {

    }

    @Override
    public void delete(int id) {

    }
}
