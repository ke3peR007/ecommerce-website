package com.mit.dao;

import java.util.List;

import com.mit.models.CartItem;
import com.mit.models.CustomerOrder;
import com.mit.models.User;

public interface CartItemDao {
void addToCart(CartItem cartItem);
User getUser(String email);
List<CartItem> getCartItems(String email);
void removeCartItem(int cartItemId);
void updateCartItem(int cartItemId, int requestedQuantity);
CustomerOrder createCustomerOrder(CustomerOrder customerOrder);
}