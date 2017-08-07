package com.scottmarden.teamroster.models;

public class Player {
	private String firstName;
	private String lastName;
	private String age;
	
	public Player() {	
	}
	
	public Player(String fN, String lN, String a, String teamName) {
		firstName = fN;
		lastName = lN;
		age = a;
		Team team = Team.findTeam(teamName);
		team.setPlayers(this);
		System.out.println("Added Player! Players on " + team + ": " + team.getPlayers());
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
	
	
}


