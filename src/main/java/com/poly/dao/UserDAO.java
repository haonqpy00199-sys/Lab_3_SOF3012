package com.poly.dao;

import com.poly.entity.User;
import com.poly.utils.XJPA;
import jakarta.persistence.EntityManager;

public class UserDAO {
    // Gọi EntityManager từ XJPA để kết nối
    EntityManager em = XJPA.getEntityManager();

    // Hàm tìm User theo ID
    public User findById(String id) {
        return em.find(User.class, id);
    }
}