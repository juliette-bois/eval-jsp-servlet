package models;

import javax.persistence.*;

@Table(name = "plants")
@Entity
public class Plant {
  @Id
  @GeneratedValue
  private int id;

  @Column(name = "common_name")
  private String commonName;

  @Column(name = "latin_name")
  private String latinName;

  @Column(name = "family")
  private String family;

  @Column(name = "description")
  private String description;

  public Plant() {}

  public Plant(
    String commonName,
    String latinName,
    String family,
    String description
  ) {
    this.commonName = commonName;
    this.latinName = latinName;
    this.family = family;
    this.description = description;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getCommonName() {
    return commonName;
  }

  public void setCommonName(String commonName) {
    this.commonName = commonName;
  }

  public String getLatinName() {
    return latinName;
  }

  public void setLatinName(String latinName) {
    this.latinName = latinName;
  }

  public String getFamily() {
    return family;
  }

  public void setFamily(String family) {
    this.family = family;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }
}
