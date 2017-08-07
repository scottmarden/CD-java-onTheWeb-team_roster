package com.scottmarden.teamroster.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.scottmarden.teamroster.models.Player;
import com.scottmarden.teamroster.models.Team;

/**
 * Servlet implementation class PlayerCtrl
 */
@WebServlet("/player")
public class PlayerCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlayerCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher getView = request.getRequestDispatcher("WEB-INF/views/AddPlayer.jsp");
		HttpSession session = request.getSession();
		System.out.println("Team Name: " + session.getAttribute("teamName"));
		ArrayList<Team> teams = Team.getTeams();
		System.out.println(teams);
		getView.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String age = request.getParameter("age");  
		String teamName = (String) session.getAttribute("teamName");
		new Player(firstName, lastName, age, teamName);
		RequestDispatcher postView = request.getRequestDispatcher("/team?name="+teamName);
		postView.forward(request, response);
	}

}
