package jakartaEEdataStructureProduct.service;

import java.util.ArrayList;
import java.util.List;

import jakartaEEdataStructureProduct.model.Product;

public class productArrayListService {
	// Empty ArrayList
	List<Product> products = new ArrayList<>();
	// add some data
	private Product product1 = new Product("CODEPRODUCT10012", "LAPTOPS");
	private Product product2 = new Product("CODEPRODUCT1001213", "MOBILS");
	private Product product3 = new Product("CODEPRODUCT1001214", "ELECTRONICS");

	public productArrayListService() {
		this.products.add(product1);
		this.products.add(product2);
		this.products.add(product3);
	}

	// display all product
	public List<Product> listAllProducts() {
		return products;
	}

	// find a product by criteria (code
	public Product findProduct(String code) {
		Product product = new Product();
		boolean found = false ;
		if (code != "" && !code.isEmpty()) {
			for (Product prd : products) {
				if(prd.getCode().equals(code)) {
					
					product.setCode(prd.getCode());
					product.setName(prd.getName());
					found = true;
				}


			}
			if(found == false ) {
				System.out.println("the code not found");
			}
		}
		return product;

	}

}
