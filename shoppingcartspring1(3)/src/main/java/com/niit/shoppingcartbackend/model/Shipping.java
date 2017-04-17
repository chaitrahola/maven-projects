package com.niit.shoppingcartbackend.model;
import javax.persistence.*;
import javax.validation.constraints.*;

import org.hibernate.validator.constraints.*;

@Entity
public class Shipping {
	
		@Id
	    @GeneratedValue
	    private int userId;
		
		
		@NotEmpty (message = "username first name can not be empty.")
	    private String username;
		
		@NotEmpty (message = "pincode can not be empty.")
	    private String pincode;
		
		
		@NotEmpty (message = "address can not be empty.")
		@Column(unique = true)
	    private String address;
		
		
		@NotEmpty (message = "landmark can not be empty.")
		@Column(unique = true)
	    private String landmark;
		
		
		@NotEmpty (message = " city name can not be empty.")
		@Column(unique = true)
	    private String city;
		
		
		@NotEmpty (message = "state can not be empty.")
		@Column(unique = true)
	    private String state;
	
		@NotEmpty (message = "Phone can not be empty.")
		@Column(unique = true)
		private String userPhone;

		public int getUserId() {
			return userId;
		}

		public void setUserId(int userId) {
			this.userId = userId;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		
		
		public String getPincode() {
			return pincode;
		}

		public void setPincode(String pincode) {
			this.pincode = pincode;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getLandmark() {
			return landmark;
		}

		public void setLandmark(String landmark) {
			this.landmark = landmark;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public String getState() {
			return state;
		}

		public void setState(String state) {
			this.state = state;
		}

		public String getUserPhone() {
			return userPhone;
		}

		public void setUserPhone(String userPhone) {
			this.userPhone = userPhone;
		}

		 	   

			}




