package PresentationLayer;

import DBAccess.Connector;
import FunctionLayer.LoginSampleException;
import com.sun.xml.internal.ws.api.model.wsdl.WSDLOutput;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Oversigt extends Command {





    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException, SQLException, ClassNotFoundException {
        Connection connector = Connector.connection();
        Statement s = connector.createStatement();
        ResultSet resultSet;
        List<String> customerList = new ArrayList<>();
        request.setAttribute("customerList", customerList);


        resultSet = s.executeQuery("select * from users where role = 'customer'");

        while(resultSet.next()){
            customerList.add("Kundenummer: " + (resultSet.getInt("id")) +
                    "\nEmail: " + (resultSet.getString("email")) + "\nPassword: " + (resultSet.getString("password"))+
                    "\nRole: " + (resultSet.getString("role")) + "\n");
            System.out.println();



        }
        return "oversigtpage";
    }
}
