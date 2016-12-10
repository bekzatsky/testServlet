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
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class TestServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/view/users.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        long unixtimeFrom;
        long unixtimeTo;
        String timestampFrom = req.getParameter("timestampFrom");
        String timestampTo = req.getParameter("timestampTo");
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Long sdfFrom = null;
        Long sdfTo = null;
        try {
            sdfFrom = df.parse(timestampFrom).getTime();
            sdfTo = df.parse(timestampTo).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        unixtimeFrom = sdfFrom/1000;
        unixtimeTo = sdfTo/1000;
        System.out.println(req.getParameter("timestampFrom"));


        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        DBWorker dbWorker = new DBWorker();
        String query = "select * from tazakala_events t\n" +
                       "where t.timestamp between '"+unixtimeFrom+"' and '"+unixtimeTo+"'";
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
