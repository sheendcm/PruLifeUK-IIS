package claim_update;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

import db.Conn;
/**
 * Servlet implementation class updatereqstatus
 */
@WebServlet("/proceedtolegal")
public class UpdateStatusInLegal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStatusInLegal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		String cls_id = request.getParameter("cls_id");
		String sud_id = request.getParameter("sud_id");
		
		Date date = new Date();
		String modifiedDate= new SimpleDateFormat("yyyy-MM-dd HH:mm").format(date);

		
		
		Conn databases = new Conn(); 
		Connection conn = databases.getConnection();
        
        
		try
		{		
						PreparedStatement reqstatusupdate2 = (PreparedStatement) conn.prepareStatement("update r_claim_legal_status_details \r\n" + 
								"set cls_dateproceededinlegal = '"+modifiedDate+"', cls_completion ='In Legal Department' where cls_id ="+cls_id+" ");
								reqstatusupdate2.executeUpdate();				
				
								PreparedStatement atdetails = (PreparedStatement) conn.prepareStatement("INSERT INTO r_audit_trail_details(at_activity, at_ref_sud_id) VALUES ('Proceeded a claim in Legal Department',"+sud_id+")");
								atdetails.executeUpdate();
				
			
		} 
		catch (Exception e)
		{
			out.print(e);
		} 
	
	}

}
