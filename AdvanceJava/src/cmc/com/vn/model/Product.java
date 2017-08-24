package cmc.com.vn.model;

public class Product {
  private int productId;
  private int caterogyId;
  private String productName;
  private float price;
  private String image;
  private String description;

  public int getProductId() {
    return productId;
  }

  public void setProductId(int productId) {
    this.productId = productId;
  }

  public int getCaterogyId() {
    return caterogyId;
  }

  public void setCaterogyId(int caterogyId) {
    this.caterogyId = caterogyId;
  }

  public String getProductName() {
    return productName;
  }

  public void setProductName(String productName) {
    this.productName = productName;
  }

  public float getPrice() {
    return price;
  }

  public void setPrice(float price) {
    this.price = price;
  }

  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Product() {
    super();
    // TODO Auto-generated constructor stub
  }

  public Product(int productId, int caterogyId, String productName,
      float price, String image, String description) {
    super();
    this.productId = productId;
    this.caterogyId = caterogyId;
    this.productName = productName;
    this.price = price;
    this.image = image;
    this.description = description;
  }
}
