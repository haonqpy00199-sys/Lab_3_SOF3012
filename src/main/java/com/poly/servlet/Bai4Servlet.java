package com.poly.servlet;

import com.poly.dao.FavoriteDAO;
import com.poly.entity.Favorite;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/lab3/bai4")
public class Bai4Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Gọi DAO để lấy tất cả danh sách yêu thích
        FavoriteDAO dao = new FavoriteDAO();
        List<Favorite> list = dao.findAll();

        // Đẩy danh sách sang JSP
        req.setAttribute("items", list);
        req.getRequestDispatcher("/pages/bai4.jsp").forward(req, resp);
    }
}