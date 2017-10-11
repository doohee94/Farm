package farm.dto;

public class ownerrentDTO {

	int rentNum;
	int regionNum;
	String userId;
	String rentStartdate;
	String rentEnddate;
	int rentState;
	String rentDate;
	String farmName;
	String ownerId;
	String regionName;
	
	public String getRegionName() {
		return regionName;
	}
	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}
	public int getRentNum() {
		return rentNum;
	}
	public void setRentNum(int rentNum) {
		this.rentNum = rentNum;
	}
	public int getRegionNum() {
		return regionNum;
	}
	public void setRegionNum(int regionNum) {
		this.regionNum = regionNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRentStartdate() {
		return rentStartdate;
	}
	public void setRentStartdate(String rentStartdate) {
		this.rentStartdate = rentStartdate;
	}
	public String getRentEnddate() {
		return rentEnddate;
	}
	public void setRentEnddate(String rentEnddate) {
		this.rentEnddate = rentEnddate;
	}
	public int getRentState() {
		return rentState;
	}
	public void setRentState(int rentState) {
		this.rentState = rentState;
	}
	public String getRentDate() {
		return rentDate;
	}
	public void setRentDate(String rentDate) {
		this.rentDate = rentDate;
	}
	public String getFarmName() {
		return farmName;
	}
	public void setFarmName(String farmName) {
		this.farmName = farmName;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	
}
