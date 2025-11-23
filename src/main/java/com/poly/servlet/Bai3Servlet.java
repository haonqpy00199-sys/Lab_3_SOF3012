package com.poly.servlet;

import com.poly.entity.User;
import com.poly.utils.XJPA;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/lab3/bai3")
public class Bai3Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EntityManager em = XJPA.getEntityManager();

        // Chúng ta sẽ tìm video yêu thích của user có id là "sa"
        // (Vì trong SQL lúc nãy mình đã thêm dữ liệu mẫu cho ông "sa" rồi)
        String userId = "sa";

        try {
            User user = em.find(User.class, userId);

            // Gửi đối tượng user (kèm danh sách favorites bên trong) sang JSP
            req.setAttribute("user", user);

            req.getRequestDispatcher("/pages/bai3.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}