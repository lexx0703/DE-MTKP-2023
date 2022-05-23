package application;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;
import javafx.scene.text.Text;

public class SampleController {
    
      @FXML
      private Text LoginOnDBlabel;
	
	  @FXML
	  private TextField passText;

	  @FXML
	  private TextField userText;

	  @FXML
	  void login(ActionEvent event) {
		  
		  DBcon connectNow = new DBcon();
		  Connection connectDB = connectNow.getConnection();
		  
		  try {
		  String connectQuery ="Select UserName FROM user";
		  Statement statement = connectDB.createStatement();
		  ResultSet queryOut = statement.executeQuery(connectQuery);
		  
		  
		  while (queryOut.next()){
			  
			  
			  LoginOnDBlabel.setText(queryOut.getString("UserName"));
			  
			  
		  }
		  
		  
		  
		  
		  } catch (Exception e) {
				
				e.printStackTrace();
			}

	    }

	
}
