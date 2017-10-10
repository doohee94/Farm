package farm.dto;

public class farmrentDTO {

	int rentNum;
	int regionNum;
	String userId;
	String rentStartdate;
	String rentEnddate;
	int rentState;
	String rentDate;
	
	public String getRentDate() {
		return rentDate;
	}
	public void setRentDate(String rentDate) {
		this.rentDate = rentDate;
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
	
}
