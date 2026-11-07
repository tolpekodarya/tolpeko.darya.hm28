package com.example._8hm;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/saveRequest")
public class RequestServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String description = request.getParameter("description");

        boolean hasError = false;
        StringBuilder errorMsg = new StringBuilder();

        if (name == null || name.trim().isEmpty()) {
            hasError = true;
            errorMsg.append("Поле 'Имя заявителя' не заполнено. ");
        }
        if (email == null || email.trim().isEmpty()) {
            hasError = true;
            errorMsg.append("Поле 'Email' не заполнено. ");
        }
        if (description == null || description.trim().isEmpty()) {
            hasError = true;
            errorMsg.append("Поле 'Описание заявки' не заполнено. ");
        }

        if (hasError) {
            request.setAttribute("error", errorMsg.toString());
            request.getRequestDispatcher("/save-request.jsp")
                    .forward(request, response);
        } else {
            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("description", description);
            request.getRequestDispatcher("/success.jsp")
                    .forward(request, response);
        }
    }
}