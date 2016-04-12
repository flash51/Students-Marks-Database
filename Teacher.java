class Teacher {

	String subject_code;
	String uname;
	String pass;
	String teacher_name;
	String branch;


	public Teacher(	String subject_code;
                        String uname, 
			String pass, 
			String teacher_name,
			String branch) { 
		this.uname = uname;
		this.pass = pass;
		this.teacher_name = teacher_name;
		this.branch = branch;
		this.subject_code = subject_code;
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

	void setsubject_code(String subject_code){
	this.subject_code  =  subject_code;
	}
	
	String getsubject_code(){
	return subject_code;
	}
	
}

