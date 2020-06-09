package servlets;

import dao.PlantDao;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/plant/delete")
public class DeletePlant extends HttpServlet {
  @Inject
  PlantDao plantDao;

  @Override
  protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String plantId = req.getParameter("id");

    if (plantId != null) {
      int id = Integer.parseInt(plantId);
      this.plantDao.delete(id);
      resp.setStatus(200);
    } else {
      resp.setStatus(400);
    }
  }
}
