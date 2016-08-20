package ru.ikhrome.dao;

import ru.ikhrome.model.Author;

import java.util.List;

public interface AuthorDAO {

    List<Author> list();

    void saveOrUpdate(Author author);

    void delete(int id);
}
