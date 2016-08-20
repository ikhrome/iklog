package ru.ikhrome.dao;

import ru.ikhrome.model.Category;

import java.util.List;

public interface CategoryDAO {

    List<Category> list();

    Category get(int id);

    void saveOrUpdate(Category category);

    void delete(int id);
}
