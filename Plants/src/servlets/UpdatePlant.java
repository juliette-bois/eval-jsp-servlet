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

@WebServlet("/plant/update")
public class UpdatePlant extends HttpServlet {
  @Inject
  PlantDao plantDao;

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String plantId = req.getParameter("id");

    if (plantId != null) {
      int id = Integer.parseInt(plantId);
      Plant plant = this.plantDao.find(id);

      if (plant == null) {
        resp.sendRedirect(req.getContextPath() + "/home");
      }

      req.setAttribute("plantItem", plant);

      RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/update.jsp");
      rd.forward(req, resp);
    } else {
      resp.sendRedirect(req.getContextPath() + "/home");
    }
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.setCharacterEncoding("UTF-8");

    String plantId = req.getParameter("id");

    if (plantId == null) {
      resp.sendRedirect(req.getContextPath() + "/home");
    }

    int id = Integer.parseInt(plantId);

    Plant plantItem = this.plantDao.find(id);

    if (plantItem == null) {
      resp.sendRedirect(req.getContextPath() + "/home");
    }

    plantItem.setCommonName(req.getParameter("common-name"));
    plantItem.setLatinName(req.getParameter("latin-name"));
    plantItem.setFamily(req.getParameter("family"));
    plantItem.setDescription(req.getParameter("description"));

    try {
      this.plantDao.update(plantItem);
    } catch (Exception e) {
      resp.sendRedirect(req.getContextPath() + "/plant/update" + "?id=" + plantId);
    }

    resp.sendRedirect(req.getContextPath() + "/home");
  }
}
