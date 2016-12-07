package servlet;

import Database.DBWorker;
import model.Status;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Bekzat on 06.12.2016.
 */
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        DBWorker dbWorker = new DBWorker();
        String query = "select * from tazakala_events";
        Statement statement = null;
        try {

            statement = dbWorker.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            List<Status> statuses = new ArrayList<Status>();

            while (resultSet.next()){
                Status status = new Status(resultSet.getLong("id"),
                        resultSet.getString("licensePlate"),
                        resultSet.getInt("camera"),
                        resultSet.getInt("libraWeight"),
                        resultSet.getString("status"),
                        resultSet.getLong("timestamp"),
                        resultSet.getLong("libraIn"),
                        resultSet.getLong("libraOut"));

                statuses.add(status);
            }

            req.setAttribute("statuses", statuses);

            RequestDispatcher dispatcher = req.getRequestDispatcher("/view/users.jsp");
            dispatcher.forward(req, resp);


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
