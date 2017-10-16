package farm.dto;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class farmDTO {

	int farmNum;
	String farmName;
	String farmAddr;
	String farmPhone;
	int farmSize;
	String farmInfo;
	String farmPhoto;
	String farmPhotofake;
	String ownerId;
	
	MultipartFile photo1;
	
	public MultipartFile getPhoto1() {
		return photo1;
	}
	public void setPhoto1(MultipartFile photo1) {
		this.photo1 = photo1;
		
		//파일저장부분
	      if( ! photo1.isEmpty() ){
	         //업로드 되는 파일 이름
	         this.farmPhoto = photo1.getOriginalFilename();
	         //중복방지 파일명처리
	         String genId = UUID.randomUUID().toString();
	         this.farmPhotofake = genId + farmPhoto;
	         //파일 저장 경로
	         File f = new File("\\home\\doohee94\\Farm\\Farm\\WebContent\\upload\\farm\\"+farmPhotofake);
	         try {
	            photo1.transferTo(f);
	         } catch (IllegalStateException | IOException e) {
	            System.out.println("파일 저장 실패 : " + e.getMessage());
	         }
	      }
		
		
		
		
		
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	public int getFarmNum() {
		return farmNum;
	}
	public void setFarmNum(int farmNum) {
		this.farmNum = farmNum;
	}
	public String getFarmName() {
		return farmName;
	}
	public void setFarmName(String farmName) {
		this.farmName = farmName;
	}
	public String getFarmAddr() {
		return farmAddr;
	}
	public void setFarmAddr(String farmAddr) {
		this.farmAddr = farmAddr;
	}
	public String getFarmPhone() {
		return farmPhone;
	}
	public void setFarmPhone(String farmPhone) {
		this.farmPhone = farmPhone;
	}
	public int getFarmSize() {
		return farmSize;
	}
	public void setFarmSize(int farmSize) {
		this.farmSize = farmSize;
	}
	public String getFarmInfo() {
		return farmInfo;
	}
	public void setFarmInfo(String farmInfo) {
		this.farmInfo = farmInfo;
	}
	public String getFarmPhoto() {
		return farmPhoto;
	}
	public void setFarmPhoto(String farmPhoto) {
		this.farmPhoto = farmPhoto;
	}
	public String getFarmPhotofake() {
		return farmPhotofake;
	}
	public void setFarmPhotofake(String farmPhotofake) {
		this.farmPhotofake = farmPhotofake;
	}
	
	
}
