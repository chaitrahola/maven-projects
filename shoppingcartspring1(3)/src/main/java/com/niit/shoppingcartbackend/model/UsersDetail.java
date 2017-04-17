package com.niit.shoppingcartbackend.model;

import javax.persistence.*;
import javax.validation.constraints.*;

import org.hibernate.validator.constraints.*;

/**
 * @author admin
 *
 */
@Entity
public class UsersDetail {
	@Id
    @GeneratedValue
    private int userId;

	@Size(min=3,max=30, message = "Size can be between 3 and 30")
	@NotEmpty (message = "User first name can not be empty.")
    private String FirstName;
	
	@Size(min=2,max=30, message = "Size can be between 2 and 30")
	@NotEmpty (message = "User lastName name can not be empty.")
    private String LastName;

	@Size(min=3,max=30, message="Username Size can be between 2 and 30")
	@NotEmpty (message = "Username can not be empty.")
	@Column(unique = true)
    private String username;
	
	@Pattern(regexp=".+@.+\\.[a-z]+", message = "email format abc@xyz.com")
	@NotEmpty (message = "Email can not be empty.")
	@Column(unique = true)
    private String userEmail;
	
	
	@Pattern(regexp="\\d{10}" , message = "Enter 10 digit phone number")
	@NotEmpty (message = "Phone can not be empty.")
	@Column(unique = true)
	private String userPhone;	
	 
	@NotEmpty (message = "Password can not be empty.")
    private String password;

    /*public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	private boolean enabled;
 */
    public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
			return userPhone;
	}

	public void setUserPhone(String userPhone) {
			this.userPhone = userPhone;
	}
	@OneToOne
	@JoinColumn(name = "cartId")
	
	private Cart cart;
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    

   
   
    public int getUserId() {
  		return userId;
  	}

  	public void setUserId(int userId) {
  		this.userId = userId;
  	}

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}
	 
		public Cart getCart() {
			return cart;
		}

		public void setCart(Cart cart) {
			this.cart = cart;
		}

}

