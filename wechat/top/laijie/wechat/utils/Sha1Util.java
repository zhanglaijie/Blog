package top.laijie.wechat.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Sha1Util {
	public static String Encrypt(String strSrc) {
	    MessageDigest md=null;
	    String strDes=null;
	 
	    byte[] bt=strSrc.getBytes();
	    try {
	 
	                 md=MessageDigest.getInstance("SHA-1");
	                 md.update(bt);
	                strDes=bytes2Hex(md.digest());  //to HexString
	                }catch (NoSuchAlgorithmException e) {
	                        System.out.println("Invalid algorithm.");
	                        return null;
	                        }
	        return strDes;
	         }
	 
	        public static String bytes2Hex(byte[]bts) {
	         String des="";
	         String tmp=null;
	         for (int i=0;i<bts.length;i++) {
	                    tmp=(Integer.toHexString(bts[i] & 0xFF));
	                    if (tmp.length()==1) {
	                        des+="0";
	                    }
	                    des+=tmp;
	                }
	                return des;
	        }
	 
	public static void main(String[] args) {
		
	    String strSrc="可以加密汉字.Oh,and english";
	    System.out.println("Source String:"+strSrc);
	    System.out.println("Encrypted String:");
	    System.out.println("Use SHA:"+Sha1Util.Encrypt(strSrc).toUpperCase());
	}
}
