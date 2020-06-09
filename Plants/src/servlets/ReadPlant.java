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

@WebServlet("/plant")
public class ReadPlant extends HttpServlet {
  @Inject
  PlantDao plantDao;

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String plantId = req.getParameter("id");

    if (plantId == null) {
      resp.sendRedirect(req.getContextPath() + "/home");
    }
    int id = Integer.parseInt(plantId);
    Plant plantItem = this.plantDao.find(id);

    if (plantItem == null) {
      resp.sendRedirect(req.getContextPath() + "/home");
    }

    req.setAttribute("plantItem", plantItem);

    RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/read.jsp");
    rd.forward(req, resp);
  }
}
