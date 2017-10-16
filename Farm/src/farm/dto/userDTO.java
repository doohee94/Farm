package farm.dto;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class userDTO {

	String userId;
	String userName;
	String userPhone;
	String userEmail;
	String userPhoto;
	String userPhotofake;
	String userPass;
	MultipartFile photo1;
	 
	
	
	public MultipartFile getPhoto1() {
		return photo1;
	}
	public void setPhoto1(MultipartFile photo1) {
		this.photo1 = photo1;
		System.out.println("set>>"+photo1.toString());
		//파일저장부분
	      if( ! photo1.isEmpty() ){
	         //업로드 되는 파일 이름
	         this.userPhoto = photo1.getOriginalFilename();
	         //중복방지 파일명처리
	         String genId = UUID.randomUUID().toString();
	         this.userPhotofake = genId + userPhoto;
	         //파일 저장 경로
	         File f = new File("C:\\Farm\\Farm\\WebContent\\upload\\user\\"+userPhotofake);
	         try {
	            photo1.transferTo(f);
	         } catch (IllegalStateException | IOException e) {
	            System.out.println("파일 저장 실패 : " + e.getMessage());
	         }
	      }
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhoto() {
		return userPhoto;
	}
	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}
	public String getUserPhotofake() {
		return userPhotofake;
	}
	public void setUserPhotofake(String userPhotofake) {
		this.userPhotofake = userPhotofake;
	}
	
}
