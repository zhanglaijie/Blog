package top.laijie.wechat.ctrl;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import top.laijie.wechat.utils.CheckUtil;
@Controller
@RequestMapping("/wechat")
public class ConnCtrl {
	Logger logger = Logger.getLogger(getClass());
	@RequestMapping("/conn")
	public void Conn(HttpServletRequest request,HttpServletResponse response){
		logger.info("conn");
		String signature = request.getParameter("signature");	//微信加密签名，signature结合了开发者填写的token参数和请求中的timestamp参数、nonce参数。
		String timestamp = request.getParameter("timestamp");	//时间戳
		String nonce = request.getParameter("nonce");	//随机数
		String echostr = request.getParameter("echostr");
		try {
			PrintWriter writer = response.getWriter();
			if(CheckUtil.CheckSignature(signature, timestamp, nonce)){
				writer.print(echostr);
			}
		} catch (IOException e) {
			logger.error(e);
		}

	}
}
