package kr.co.gdu.lms.vo;

import lombok.Data;

@Data
public class Manager {
	private String loginId;
	private String managerName;
	private String managerBirth;
	private String managerGender;
	private String address;
	private String detailAddr;
	private String managerEmail;
	private String managerPhone;
	private String lastLoginDate;
	private int deptNo;
	private int positionNo;
	private String createDate;
	private String updateDate;
}
