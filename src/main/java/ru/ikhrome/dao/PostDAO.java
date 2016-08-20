package ru.ikhrome.dao;

import ru.ikhrome.model.Post;

import java.util.List;

public interface PostDAO {

    List<Post> list();

    Post get(int id);

    void saveOrUpdate(Post post);

    void delete(int id);
}
