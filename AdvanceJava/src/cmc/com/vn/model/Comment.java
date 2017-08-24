package cmc.com.vn.model;

public class Comment {
  private int userId;
  private int productId;
  private String comment;
  public int getUserId() {
    return userId;
  }
  public void setUserId(int userId) {
    this.userId = userId;
  }
  public int getProductId() {
    return productId;
  }
  public void setProductId(int productId) {
    this.productId = productId;
  }
  public String getComment() {
    return comment;
  }
  public void setComment(String comment) {
    this.comment = comment;
  }
  public Comment() {
    super();
    // TODO Auto-generated constructor stub
  }
  public Comment(int userId, int productId, String comment) {
    super();
    this.userId = userId;
    this.productId = productId;
    this.comment = comment;
  }
}
