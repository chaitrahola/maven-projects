/*package com.niit.shoppingcartbackend.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import com.niit.shoppingcartbackend.model.Category;
import com.niit.shoppingcartbackend.model.Product;
import com.niit.shoppingcartbackend.model.Supplier;
import com.niit.shoppingcartbackend.model.Users;

@Configuration
@ComponentScan("com.niit.shoppingcartbackend")
@EnableTransactionManagement
public class ApplicationContextconfig {
	@Bean(name = "dataSource")
			public DataSource getDataSource() {
			DriverManagerDataSource dataSource = new DriverManagerDataSource();

			dataSource.setDriverClassName("org.h2.Driver");

			dataSource.setUrl("jdbc:h2:tcp://localhost/~/new");

			dataSource.setUsername("sa");
			dataSource.setPassword(""); // wait
			return dataSource;
			}
	
	private Properties getHibernateProperties() {
	    Properties properties = new Properties();
	    properties.put("hibernate.show_sql", "true");
	   properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");   
	   properties.put("hbm2ddl","update");
	    return properties;
	    }

	@Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {

    LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    sessionBuilder.addProperties(getHibernateProperties());
    sessionBuilder.addAnnotatedClasses(Category.class); // Other domains
    sessionBuilder.addAnnotatedClasses(Product.class);
    sessionBuilder.addAnnotatedClasses(Supplier.class);
    sessionBuilder.addAnnotatedClasses(Users.class);
return sessionBuilder.buildSessionFactory();
    }
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
	SessionFactory sessionFactory) {
	HibernateTransactionManager transactionManager = new HibernateTransactionManager(
	sessionFactory);

	return transactionManager;
	}


}

*/