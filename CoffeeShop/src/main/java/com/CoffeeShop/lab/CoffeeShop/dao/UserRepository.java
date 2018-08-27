package com.CoffeeShop.lab.CoffeeShop.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.CoffeeShop.lab.CoffeeShop.entity.Users;

@Repository
@Transactional
public interface UserRepository extends JpaRepository<Users, Integer>{

	
}
