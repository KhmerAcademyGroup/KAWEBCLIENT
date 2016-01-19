package org.khmeracademy.app.entities;

import org.springframework.security.core.GrantedAuthority;

public class UserRole implements GrantedAuthority{

private static final long serialVersionUID = 1L;
	
	private String roleId;
	private String roleName;
	
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String getAuthority() {
		// TODO Auto-generated method stub
		return roleName;
	}

}
