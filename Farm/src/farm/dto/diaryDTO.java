package farm.dto;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class diaryDTO {

	int diaryNum;
	String diaryTitle;
	String diaryDate;
	String diaryContent;
	String diaryPhoto1;
	String diaryPhoto1fake;
	String diaryPhoto2;
	String diaryPhoto2fake;
	String diaryPhoto3;
	String diaryPhoto3fake;
	String diaryPhoto4;
	String diaryPhoto4fake;
	String userId;
	
	
	MultipartFile  photo1,photo2,photo3,photo4;
	
	
	public MultipartFile getPhoto1() {
		return photo1;
	}
	public void setPhoto1(MultipartFile photo1) {
		this.photo1 = photo1;
		
		//파일저장부분
	      if( ! photo1.isEmpty() ){
	         //업로드 되는 파일 이름
	         this.diaryPhoto1 = photo1.getOriginalFilename();
	         //중복방지 파일명처리
	         String genId = UUID.randomUUID().toString();
	         this.diaryPhoto1fake = genId + diaryPhoto1;
	         //파일 저장 경로
	         File f = new File("C:\\Farm\\Farm\\WebContent\\upload\\diary\\"+diaryPhoto1fake);
	         try {
	            photo1.transferTo(f);
	         } catch (IllegalStateException | IOException e) {
	            System.out.println("파일 저장 실패 : " + e.getMessage());
	         }
	      }
		
	}
	public MultipartFile getPhoto2() {
		return photo2;
	}
	public void setPhoto2(MultipartFile photo2) {
		this.photo2 = photo2;
		//파일저장부분
	      if( ! photo2.isEmpty() ){
	         //업로드 되는 파일 이름
	         this.diaryPhoto2 = photo2.getOriginalFilename();
	         //중복방지 파일명처리
	         String genId = UUID.randomUUID().toString();
	         this.diaryPhoto2fake = genId + diaryPhoto2;
	         //파일 저장 경로
	         File f = new File("C:\\Farm\\Farm\\WebContent\\upload\\diary\\"+diaryPhoto2fake);
	         try {
	            photo2.transferTo(f);
	         } catch (IllegalStateException | IOException e) {
	            System.out.println("파일 저장 실패 : " + e.getMessage());
	         }
	      }
	}
	public MultipartFile getPhoto3() {
		return photo3;
	}
	public void setPhoto3(MultipartFile photo3) {
		this.photo3 = photo3;
		
		//파일저장부분
	      if( ! photo3.isEmpty() ){
	         //업로드 되는 파일 이름
	         this.diaryPhoto3 = photo3.getOriginalFilename();
	         //중복방지 파일명처리
	         String genId = UUID.randomUUID().toString();
	         this.diaryPhoto3fake = genId + diaryPhoto3;
	         //파일 저장 경로
	         File f = new File("C:\\Farm\\Farm\\WebContent\\upload\\diary\\"+diaryPhoto3fake);
	         try {
	            photo3.transferTo(f);
	         } catch (IllegalStateException | IOException e) {
	            System.out.println("파일 저장 실패 : " + e.getMessage());
	         }
	      }
	}
	public MultipartFile getPhoto4() {
		return photo4;
	}
	public void setPhoto4(MultipartFile photo4) {
		this.photo4 = photo4;
		
		//파일저장부분
	      if( ! photo4.isEmpty() ){
	         //업로드 되는 파일 이름
	         this.diaryPhoto4 = photo4.getOriginalFilename();
	         //중복방지 파일명처리
	         String genId = UUID.randomUUID().toString();
	         this.diaryPhoto4fake = genId + diaryPhoto4;
	         //파일 저장 경로
	         File f = new File("C:\\Farm\\Farm\\WebContent\\upload\\diary\\"+diaryPhoto4fake);
	         try {
	            photo4.transferTo(f);
	         } catch (IllegalStateException | IOException e) {
	            System.out.println("파일 저장 실패 : " + e.getMessage());
	         }
	      }
	}
	public int getDiaryNum() {
		return diaryNum;
	}
	public void setDiaryNum(int diaryNum) {
		this.diaryNum = diaryNum;
	}
	public String getDiaryTitle() {
		return diaryTitle;
	}
	public void setDiaryTitle(String diaryTitle) {
		this.diaryTitle = diaryTitle;
	}
	public String getDiaryDate() {
		return diaryDate;
	}
	public void setDiaryDate(String diaryDate) {
		this.diaryDate = diaryDate;
	}
	public String getDiaryContent() {
		return diaryContent;
	}
	public void setDiaryContent(String diaryContent) {
		this.diaryContent = diaryContent;
	}
	public String getDiaryPhoto1() {
		return diaryPhoto1;
	}
	public void setDiaryPhoto1(String diaryPhoto1) {
		this.diaryPhoto1 = diaryPhoto1;
	}
	public String getDiaryPhoto1fake() {
		return diaryPhoto1fake;
	}
	public void setDiaryPhoto1fake(String diaryPhoto1fake) {
		this.diaryPhoto1fake = diaryPhoto1fake;
	}
	public String getDiaryPhoto2() {
		return diaryPhoto2;
	}
	public void setDiaryPhoto2(String diaryPhoto2) {
		this.diaryPhoto2 = diaryPhoto2;
	}
	public String getDiaryPhoto2fake() {
		return diaryPhoto2fake;
	}
	public void setDiaryPhoto2fake(String diaryPhoto2fake) {
		this.diaryPhoto2fake = diaryPhoto2fake;
	}
	public String getDiaryPhoto3() {
		return diaryPhoto3;
	}
	public void setDiaryPhoto3(String diaryPhoto3) {
		this.diaryPhoto3 = diaryPhoto3;
	}
	public String getDiaryPhoto3fake() {
		return diaryPhoto3fake;
	}
	public void setDiaryPhoto3fake(String diaryPhoto3fake) {
		this.diaryPhoto3fake = diaryPhoto3fake;
	}
	public String getDiaryPhoto4() {
		return diaryPhoto4;
	}
	public void setDiaryPhoto4(String diaryPhoto4) {
		this.diaryPhoto4 = diaryPhoto4;
	}
	public String getDiaryPhoto4fake() {
		return diaryPhoto4fake;
	}
	public void setDiaryPhoto4fake(String diaryPhoto4fake) {
		this.diaryPhoto4fake = diaryPhoto4fake;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
}
