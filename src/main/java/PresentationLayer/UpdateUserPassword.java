package PresentationLayer;

import DBAccess.UserMapper;
import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

public class UpdateUserPassword extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException, SQLException, ClassNotFoundException {
        int id = Integer.parseInt(request.getParameter("id"));
        String passWord = request.getParameter("password");
        UserMapper.updatePassword(id, passWord);

        return "employeepage";
    }
}
