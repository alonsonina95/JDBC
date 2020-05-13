import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBEngine  {
	private String mURL;
	private String mUser;
	private String mPassword;
	private Connection mConnection;
	
	public DBEngine(String URL, String Username, String Password){
		this.mURL = URL;
		this.mUser = Username;
		this.mPassword = Password;
	}
	
	public void EstablishConnection() throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		mConnection = (Connection) DriverManager.getConnection(this.mURL, this.mUser, this.mPassword);
	}
	
	public void CloseConnection() throws SQLException{
		mConnection.close();
	}
	
	public Connection getConnection(){
		return this.mConnection;
	}

}