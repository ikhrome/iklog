package ru.ikhrome.dao;

import ru.ikhrome.model.Post;

import java.util.List;

public interface PostDAO {

    List<Post> list();

    void saveOrUpdate(Post post);

    void delete(int id);
}
