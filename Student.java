class Student{

String name;
String branch;
String roll_num;
String phone_num;
String email;

public Student(String name, String roll_num, String branch, String phone_num, String email){
	this.name = name;
	this.roll_num = roll_num;
	this.branch = branch;
	this.phone_num = phone_num;
	this.email = email;
	}

	void setName(String name){
	this.name  = name;
	}
	
	String getName(){
	return name;
	}

	void setRoll_num(String roll_num){
	this.roll_num  = roll_num;
	}
	
	String getRoll_num(){
	return roll_num;
	}

	void setBranch(String branch){
	this.branch  = branch;
	}
	
	String getBranch(){
	return branch;
	}

	void setPhone_num(String phone_num){
	this.phone_num  = phone_num;
	}
	
	String getPhone_num(){
	return phone_num;
	}

	void setEmail(String email){
	this.email  = email;
	}
	
	String getEmail(){
	return email;
	}

	
