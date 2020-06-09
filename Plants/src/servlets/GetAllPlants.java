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
import java.util.List;

@WebServlet("/home")
public class GetAllPlants extends HttpServlet {
  @Inject
  PlantDao plantDao;

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    List<Plant> plantList = this.plantDao.all();
    req.setAttribute("plantList", plantList);

    RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/home.jsp");
    rd.forward(req, resp);
  }
}
