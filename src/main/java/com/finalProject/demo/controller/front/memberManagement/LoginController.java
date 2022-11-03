package com.finalProject.demo.controller.front.memberManagement;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finalProject.demo.util.JwtUtil;
import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.service.member.MemberService;

@Controller
public class LoginController {

	@Autowired
	private MemberService mService;
	
	
	// ============================================== 登入頁面 ==========================================
	@GetMapping("/member/login") 								
	public String login(HttpServletRequest request) {   
//		HttpSession session = request.getSession();
//		Object email = session.getAttribute("email");
//		if (email != null) { 						// 如果已有登入未登入
//			 return "redirect:index";
//		} else {
			return "front/member/login"; 			// 找 /login.jsp 顯示畫面：登入畫面
//		}
	}
	
	// ================================== 登出頁面(jwt token 沒有Logout方式) ==================================

//		@GetMapping("/member/logout")
//		public String logout(HttpServletRequest request) { // 進入方法(login)
//			HttpSession session = request.getSession();    // 使用 session
////			session.removeAttribute("email"); 		       // 刪掉
////			session.removeAttribute("password");
//			return "redirect:index";
//		}
		
	// ================================== 使用者登入：判斷帳密是否正確 =========================================
		@PostMapping("/member/login")
		public String loginsubmit(HttpServletRequest request, HttpServletResponse response, @ModelAttribute(name = "loginsubmit") Member member,
								  RedirectAttributes re,Model model) {
	// ---- 資料傳到SQL ------
//			List<Member> resultList = mService.findLogin(member);
			Member hasMember = mService.findEmail(member.getEmail());
				if (hasMember!=null) {
//					================================== SESSION 方式 ============================================
					// 若資料庫沒有的帳密則登入失敗
					// 如果登入成功帳密存到Session
					// 第一步：獲取session
//					HttpSession session = request.getSession();
					// 第二步：將想要保存到數據存入session中
//					session.setAttribute("email", resultList.get(0).getEmail()); // 取得那欄位的帳號,從0(陣列)開始,放入session
//					session.setAttribute("memberName", resultList.get(0).getMemberName());

//					==================================jwt token 方式 ============================================
					String hasMemberPassword = hasMember.getPassword();
					boolean check = BCrypt.checkpw(member.getPassword(), hasMemberPassword);//確認pwd是否正確
					if (check){
						String jwtToken = JwtUtil.getJwtToken(hasMember.getEmail(), hasMember.getMemberName(),hasMember.getMemberId());
						response.setHeader("Authorization", jwtToken);
						Cookie cookie = new Cookie("token", jwtToken);
						cookie.setMaxAge(3600*12);//有效期限12小時:3600*12
						cookie.setPath("/Chezmoi"); //設置Domain(重要!!!!)
						response.addCookie(cookie);
						return "redirect:/";
					}

				} else {
					model.addAttribute("Msg", "'帳號或密碼輸入錯誤!"); // 畫面顯示：登入失敗!
				}
			return "front/member/login";// 返回登入畫面
		}


}
