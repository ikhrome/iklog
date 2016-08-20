package ru.ikhrome.dao;

import ru.ikhrome.model.Author;

import java.util.List;

public interface AuthorDAO {

    List<Author> list();

    Author get(int id);

    void saveOrUpdate(Author author);

    void delete(int id);
}
