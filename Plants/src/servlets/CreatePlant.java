package servlets;

import dao.PlantDao;
import models.Plant;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/plant/add")
public class CreatePlant extends HttpServlet {
  @Inject
  PlantDao plantDao;

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/create.jsp");
    rd.forward(req, resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.setCharacterEncoding("UTF-8");
    String commonName = req.getParameter("common-name");
    String latinName = req.getParameter("latin-name");
    String family = req.getParameter("family");
    String description = req.getParameter("description");

    Plant plant = new Plant(
      commonName,
      latinName,
      family,
      description
    );
    try {
      this.plantDao.save(plant);
    } catch (Exception e) {
      resp.sendRedirect(req.getContextPath() + "/plant/create");
    }

    resp.sendRedirect(req.getContextPath() + "/home");
  }
}
