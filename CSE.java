class CSE {

	String subject_name;
	String subject_code;
	String theory;
	String practical;

	public CSE(String subject_name, 
		        String subject_code, 
		        String theory,
			String practical) {
		this.subject_name = subject_name;
		this.subject_code = subject_code;
		this.theory = theory;
		this.practical = practical;
	} 

	void setsubject_name(String subject_name){
	this.subject_name  = subject_name;
	}
	
	String getsubject_name(){
	return subject_name;
	}

	void setsubject_code(String subject_code){
	this.subject_code  = subject_code;
	}
	
	String getsubject_code(){
	return subject_code;
	}
	
	void settheory(String theory){
	this.theory = theory;
	}
	
	String gettheory(){
	return theory;
	}

	void setpractical(String practical){
	this.practical  =  practical;
	}
	
	String getpractical(){
	return practical;
	}

}

