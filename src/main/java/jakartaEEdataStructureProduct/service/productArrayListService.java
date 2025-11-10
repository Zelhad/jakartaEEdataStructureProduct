package jakartaEEdataStructureProduct.service;

import java.util.ArrayList;
import java.util.List;

import jakartaEEdataStructureProduct.model.Product;

public class ProductArrayListService {
	// Empty ArrayList
	List<Product> products = new ArrayList<>();
	// add some data
	private Product product1 = new Product("CODEPRODUCT1", "LAPTOPS");
	private Product product2 = new Product("CODEPRODUCT1", "MOBILS");
	private Product product3 = new Product("CODEPRODUCT3", "ELECTRONICS");
	private Product product4 = new Product("CODEPRODUCT4", "tOYS");
	private Product product5 = new Product("CODEPRODUCT5", "CARS");
	private Product product6 = new Product("CODEPRODUCT6", "MOTOS");
	private Product product7 = new Product("CODEPRODUCT7", "MONITORS");
	private Product product8 = new Product("CODEPRODUCT8", "HEALTY");
	private Product product9 = new Product("CODEPRODUCT9", "MACHINES");
	private Product product10 = new Product("CODEPRODUCT10", "GARDEN");

	public ProductArrayListService() {
		this.products.add(product1);
		this.products.add(product2);
		this.products.add(product3);
		this.products.add(product4);
		this.products.add(product5);
		this.products.add(product6);
		this.products.add(product7);
		this.products.add(product8);
		this.products.add(product9);
		this.products.add(product10);
	}

	// display all product
	public List<Product> listAllProducts() {
		return products;
	}

	// find a product by criteria (code
	public Product findProduct(String code) {
		Product product = new Product();
		boolean found = false;
		if (code != "" && !code.isEmpty()) {
			for (Product prd : products) {
				if (prd.getCode().equals(code)) {

					product.setCode(prd.getCode());
					product.setName(prd.getName());
					found = true;
				}

			}
			if (found == false) {
				System.out.println("the code not found");
			}
		}
		return product;

	}

}
