package com.scottmarden.teamroster.models;

import java.util.ArrayList;

public class Team {
	protected String name;
	protected ArrayList<Player> players = new ArrayList<Player>();
	protected static ArrayList<Team> teams = new ArrayList<Team>();
	
	public Team(){
	}
	
	public Team(String n) {
		name = n;
		teams.add(this);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ArrayList<Player> getPlayers() {
		return players;
	}

	public void setPlayers(Player player) {
		players.add(player);
	}

	public static ArrayList<Team> getTeams() {
		return teams;
	}

	public static void setTeams(Team team) {
		teams.add(team);
	}
	
	public static Team findTeam(String teamName) {
		Team foundTeam = new Team();
		for(int i = 0; i < teams.size(); i++) {
			if(teams.get(i).getName().equalsIgnoreCase(teamName)) {
				System.out.println("Method findTeam: Found team: " + teams.get(i));
				System.out.println("Method findTeam: Found team name: " + teams.get(i).getName());
				foundTeam = teams.get(i);
				return teams.get(i);
			}
		}
		return foundTeam;
	}
		
}


