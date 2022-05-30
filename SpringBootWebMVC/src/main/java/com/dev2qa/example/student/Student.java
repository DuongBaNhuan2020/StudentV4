package com.dev2qa.example.student;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;
@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@NotBlank(message = "User name may not be null")
	private String name;
	private boolean male;
	@NotNull(message = "Birth day may not be null")
	@Past(message = "Birth day may be less than present")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Calendar birthday;
	@NotBlank(message = "Place of birth may not be null")
	private String placeOfBirth;
	@NotBlank(message = "Address may not be null")
	private String address;
	@NotBlank(message = "Department name may not be null")
	private String depName;
	public Student(long id, String name, boolean male, Calendar birthday, String placeOfBirth, String address,
			String depName) {
		super();
		this.id = id;
		this.name = name;
		this.male = male;
		this.birthday = birthday;
		this.placeOfBirth = placeOfBirth;
		this.address = address;
		this.depName = depName;
	}
	public Student() {
		super();
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isMale() {
		return male;
	}
	public void setMale(boolean male) {
		this.male = male;
	}
	public Calendar getBirthday() {
		return birthday;
	}
	public void setBirthday(Calendar birthday) {
		this.birthday = birthday;
	}
	public String getPlaceOfBirth() {
		return placeOfBirth;
	}
	public void setPlaceOfBirth(String placeOfBirth) {
		this.placeOfBirth = placeOfBirth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDepName() {
		return depName;
	}
	public void setDepName(String depName) {
		this.depName = depName;
	}
	
}