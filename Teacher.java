class Teacher {

	String uname;
	String pass;
	String teacher_name;
	String branch;
	String subject;

	public Teacher(String uname, 
			String pass, 
			String teacher_name,
			String branch, 
			String subject) {
		this.uname = uname;
		this.pass = pass;
		this.teacher_name = teacher_name;
		this.branch = branch;
		this.subject = subject;
	} 

	void setuname(String uname){
	this.uname  = uname;
	}
	
	String getuname(){
	return uname;
	}

	void setpass(String pass){
	this.pass  = pass;
	}
	
	String getpass(){
	return pass;
	}
	
	void setteacher_name(String teacher_name){
	this.teacher_name = teacher_name;
	}
	
	String getteacher_name(){
	return teacher_name;
	}

	void setbranch(String branch){
	this.branch  =  branch;
	}
	
	String getbranch(){
	return branch;
	}

	void setsubject(String subject){
	this.subject  =  subject;
	}
	
	String getsubject(){
	return subject;
	}

		
}

