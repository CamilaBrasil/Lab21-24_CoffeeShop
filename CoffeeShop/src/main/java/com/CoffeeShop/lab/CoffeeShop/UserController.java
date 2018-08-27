package com.CoffeeShop.lab.CoffeeShop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.CoffeeShop.lab.CoffeeShop.dao.StoreRepository;
import com.CoffeeShop.lab.CoffeeShop.dao.UserRepository;
import com.CoffeeShop.lab.CoffeeShop.entity.Products;
import com.CoffeeShop.lab.CoffeeShop.entity.Users;

@Controller
public class UserController {

	@Autowired
	UserRepository userDao;
	
	@Autowired
	StoreRepository storeDao;
	
	@RequestMapping("/")
	public ModelAndView home() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("register");
	}
	
	//Create User - Call insertUser
	@RequestMapping("/insertUser")
	public ModelAndView createUser (@RequestParam("userName") String userName, @RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, @RequestParam("gender") String gender, 
			@RequestParam("email") String email, @RequestParam("phoneNumber") String phoneNumber,
			@RequestParam("password") String password) {
		
		Users user = new Users(userName, firstName, lastName, gender, email, phoneNumber, password);
		userDao.save(user);
		List<Products> prodList = storeDao.findAll();
		ModelAndView mv = new ModelAndView("store", "products", prodList);
		mv.addObject(firstName); //Does Not Work
		
		return mv;
	}
	
	//Create Product - Call insertProduct
	@RequestMapping("/insertProducts")
	public ModelAndView createProduct (@RequestParam("name") String name, @RequestParam("description") String description,
			@RequestParam("quantity") int quantity, @RequestParam("price") String price) {
		
		Products prod = new Products(name, description, quantity, price);
		storeDao.save(prod);
		List<Products> productsList = storeDao.findAll();
		
		return new ModelAndView("store", "users", productsList);
	}
	
	//Read Users - Call users
	@RequestMapping("/admin")
	public ModelAndView findAllUsers() {
		
		List<Users> usersList = userDao.findAll();
		List<Products> productsList = storeDao.findAll();
		ModelAndView mv = new ModelAndView("admin", "users", usersList);
		mv.addObject("products", productsList);
		
		return mv;
	}
	
	//Read Products - Call products
	@RequestMapping("/store")
	public ModelAndView findAllProducts() {
		
		List<Products> productsList = storeDao.findAll();
		
		return new ModelAndView("store", "products", productsList);
	}

	//Update Users - 
	@RequestMapping("/admin/{id}/userUpdate")
	public ModelAndView showEditFormUsers (@PathVariable("id") int id) {
		
		ModelAndView mv = new ModelAndView("users_form");
		mv.addObject("update", userDao.findById(id));
		
		return mv;
		
	}
	
	//Save Update Users
	@PostMapping("/admin/{id}/userUpdate")
	public ModelAndView submitEditFormUsers (Users user, @PathVariable("id") int id) {
		
		user.setId(id);
		userDao.save(user);
		List<Users> usersList = userDao.findAll();
		List<Products> productsList = storeDao.findAll();
		ModelAndView mv = new ModelAndView("admin", "users", usersList);
		mv.addObject("products", productsList);
		
		return mv;
	}
	
	//Update Products - 
		@RequestMapping("/admin/{id}/prodUpdate")
		public ModelAndView showEditFormProducts (@PathVariable("id") int id) {
			
			ModelAndView mv = new ModelAndView("products_form");
			mv.addObject("update", storeDao.findById(id));
			
			return mv;
			
		}
		
		//Save Update Products
		@PostMapping("/admin/{id}/prodUpdate")
		public ModelAndView submitEditFormProducts (Products prod, @PathVariable("id") int id) {
			
			prod.setId(id);
			storeDao.save(prod);
			List<Users> usersList = userDao.findAll();
			List<Products> productsList = storeDao.findAll();
			ModelAndView mv = new ModelAndView("admin", "users", usersList);
			mv.addObject("products", productsList);
			
			return mv;
		}
	
	//Delete User
	@GetMapping("/admin/{id}/userDelete")
	public ModelAndView deleteUser (@PathVariable("id") int id) {
		
		userDao.deleteById(id);
		List<Users> usersList = userDao.findAll();
		List<Products> productsList = storeDao.findAll();
		ModelAndView mv = new ModelAndView("admin", "users", usersList);
		mv.addObject("products", productsList);
		
		return mv;
	}
	
	//Delete Product
	@GetMapping("/admin/{id}/prodDelete")
	public ModelAndView deleteProduct (@PathVariable("id") int id) {
		
		storeDao.deleteById(id);
		List<Users> usersList = userDao.findAll();
		List<Products> productsList = storeDao.findAll();
		ModelAndView mv = new ModelAndView("admin", "users", usersList);
		mv.addObject("products", productsList);
		
		return mv;
	}
	

	
}
