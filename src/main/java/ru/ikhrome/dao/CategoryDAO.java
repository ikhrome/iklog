package ru.ikhrome.dao;

import ru.ikhrome.model.Category;

import java.util.List;

public interface CategoryDAO {

    List<Category> list();

    void saveOrUpdate(Category category);

    void delete(int id);
}
