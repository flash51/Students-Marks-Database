class Student{

String roll_num;
String pass;
String first_name;
String last_name;
String branch;
String phone;
String email;

public Student(String roll_num, String first_name, String last_name, String branch, String phone, String email){
	this.first_name = first_name;
        this.last_name = last_name;
	this.roll_num = roll_num;
	this.branch = branch;
	this.phone = phone;
	this.email = email;
	}

	void setfirst_name(String first_name){
	this.first_name  = first_name;
	}
	
	String getfirst_name(){
	return first_name;
	}

	void setlast_name(String last_name){
	this.last_name  = last_name;
	}
	
	String getlast_name(){
	return last_name;
	}

	void setroll_num(String roll_num){
	this.roll_num  = roll_num;
	}
	
	String getroll_num(){
	return roll_num;
	}

	void setbranch(String branch){
	this.branch  = branch;
	}
	
	String getbranch(){
	return branch;
	}

	void setphone(String phone){
	this.phone = phone;
	}
	
	String getphone(){
	return phone;
	}

	void setemail(String email){
	this.email  = email;
	}
	
	String getemail(){
	return email;
	}

}
