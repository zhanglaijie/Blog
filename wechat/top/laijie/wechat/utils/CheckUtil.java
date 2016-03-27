package top.laijie.wechat.utils;

import java.util.Arrays;

public class CheckUtil {
	private static final String token ="oneblogs";
	public static Boolean CheckSignature(String signature,String timestamp,String nonce){
		String[] array = new String[] {token,timestamp,nonce};
		Arrays.sort(array);
		StringBuffer sb = new StringBuffer();
		for(String a:array){
			sb.append(a);
		}
		if(Sha1Util.Encrypt(sb.toString()).equals(signature))
		return true;
		else return false;
	}
}
