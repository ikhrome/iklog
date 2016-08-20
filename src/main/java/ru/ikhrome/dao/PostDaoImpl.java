package ru.ikhrome.dao;

import javafx.geometry.Pos;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.CriteriaSpecification;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
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

    // TODO: this deprecated method needs to be replaced with JPA
    @Override
    @Transactional
    @SuppressWarnings({"unchecked", "deprecation"})
    public List<Post> list() {
        List<Post> postList = (List<Post>) sessionFactory.getCurrentSession()
                .createCriteria(Post.class)
                .setResultTransformer(CriteriaSpecification.DISTINCT_ROOT_ENTITY).list();

        return postList;
    }

    @Override
    @Transactional
    public void saveOrUpdate(Post post) {
        sessionFactory.getCurrentSession().saveOrUpdate(post);
    }

    @Override
    public void delete(int id) {
        Post postToRemove = new Post();
        postToRemove.setId(id);
        sessionFactory.getCurrentSession().delete(postToRemove);
    }

    @SuppressWarnings({"deprecation", "unchecked"})
    @Transactional
    public Post get(int id) {
        String hql = "from Post where id=" + id;
        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        List<Post> postList = (List<Post>) query.list();

        if(postList != null && !postList.isEmpty()) {
            return  postList.get(0);
        }

        return null;
    }
}
