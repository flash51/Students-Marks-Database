class Teacher {

	String uname;
	String pass;
	String teacher_name;
	String branch;
	String subject_name;

	public Teacher(String uname, 
			String pass, 
			String teacher_name,
			String branch, 
			String subject_name) {
		this.uname = uname;
		this.pass = pass;
		this.teacher_name = teacher_name;
		this.branch = branch;
		this.subject_name = subject_name;
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

	void setsubject_name(String subject_name){
	this.subject_name  =  subject_name;
	}
	
	String getsubject_name(){
	return subject_name;
	}
	
}

