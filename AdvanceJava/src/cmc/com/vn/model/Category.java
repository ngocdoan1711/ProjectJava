package cmc.com.vn.model;

public class Category {
  private int categoryId;
  private String categoryName;
  public int getCategoryId() {
    return categoryId;
  }
  public void setCategoryId(int categoryId) {
    this.categoryId = categoryId;
  }
  public String getCategoryName() {
    return categoryName;
  }
  public void setCategoryName(String categoryName) {
    this.categoryName = categoryName;
  }
  public Category() {
    super();
    // TODO Auto-generated constructor stub
  }
  public Category(int categoryId, String categoryName) {
    super();
    this.categoryId = categoryId;
    this.categoryName = categoryName;
  }
}
