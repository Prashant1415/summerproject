package com.Manage.util;

public class StringUtility {

	public static String toCommaSeperetedString(Object[] items) {
		StringBuilder sb=new StringBuilder();
		for(Object item : items) {
			sb.append(item).append(",");
			
		}
		
		if(sb.length()>0) {
			sb.deleteCharAt(sb.length()-1);
		}
		return sb.toString();
	}

}
