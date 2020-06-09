package dao;

import models.Plant;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Stateless
public class PlantDao {
  @PersistenceContext(unitName = "crud")
  EntityManager entityManager;

  public void save(Plant plant) {
    entityManager.persist(plant);
  }

  public List<Plant> all() {
    Query query =  entityManager.createQuery("Select q from Plant q", Plant.class);

    return (List<Plant>) query.getResultList();
  }

  public Plant find(int id) {
    return entityManager.find(Plant.class, id);
  }

  public void delete(int id) {
    Plant plant = this.find(id);
    if (plant != null) {
      entityManager.remove(plant);
    }
  }

  public void update(Plant plant) {
    entityManager.merge(plant);
  }
}
