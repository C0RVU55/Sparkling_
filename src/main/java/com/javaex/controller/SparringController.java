package com.javaex.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.SparringService;
import com.javaex.vo.BBuyVo;
import com.javaex.vo.BookingVo;

import com.javaex.vo.GymImgVo;
import com.javaex.vo.GymVo;
import com.javaex.vo.ProfileVo;
import com.javaex.vo.RecordVo;

@Controller
@RequestMapping(value = "/sparring", method = { RequestMethod.GET, RequestMethod.POST })
public class SparringController {

	@Autowired
	SparringService sparringService;

	// 스파링 리스트
	@RequestMapping(value = "/match", method = { RequestMethod.GET, RequestMethod.POST })
	public String match(Model model) {
		System.out.println("[Controller] : match()");
		
		List<BBuyVo> bBuyList = sparringService.match();
		model.addAttribute("bBuyList",bBuyList);
		
		return "matching/sparringList";
	}

	// 스파링매치신청서
	@RequestMapping(value = "/matchdetail", method = { RequestMethod.GET, RequestMethod.POST })
	public String MatchDetail(@RequestParam(value="bbuyno")int bBuyNo,
							  @RequestParam(value="userno")int userNo,
							  @RequestParam(value="sessionuser", required=false, defaultValue="0")int sessionuser,
							  @RequestParam(value="bookingno", required=false, defaultValue="0")int bookingNo,
							  Model model
							 ) {
		System.out.println("[Controller] : sparringMatch()");
		System.out.println("sessionuser :" + sessionuser);
		Map<String,Object>  map = sparringService.MatchDetail(bBuyNo,userNo,sessionuser,bookingNo);
		
		model.addAttribute("map",map);
		
		return "matching/sparringMatch";
	}

	/** 체육관 대관 쪽 **/

	// 체육관 리스트
	@RequestMapping(value = "/rent", method = { RequestMethod.GET, RequestMethod.POST })
	public String rent(Model model,
					  @RequestParam(value = "subnum" , required=false, defaultValue="0") int subnum,
					  @RequestParam(value = "bbuyno" , required=false, defaultValue="0") int bbuyno) {
		System.out.println("[Controller] : rent()");

		List<GymVo> gymList = sparringService.rent();
		System.out.println(gymList);

		model.addAttribute("gymList", gymList);

		return "matching/rent";
	}

	@RequestMapping(value = "/rentdetail", method = { RequestMethod.GET, RequestMethod.POST })
	public String rentDetail(@RequestParam(value = "gymNo") int gymNo, Model model,
							@RequestParam(value = "subnum" , required=false, defaultValue="0") int subnum,
							 @RequestParam(value = "bbuyno" , required=false, defaultValue="0") int bbuyno) {
		System.out.println("[Controller] : rentDetail()");
		GymVo gymVo = sparringService.rentDetail(gymNo);

		model.addAttribute("gAVo", gymVo);

		return "matching/rentdetail";
	}


	/*****************************************************/
	// bookingno == 0 이면 대관x 신청만
	@RequestMapping(value = "/writeForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String profileWriteForm(Model model, 
			@RequestParam(value = "booking_no", required = false, defaultValue = "0") int bookingno,
			@RequestParam(value = "user_no", required = false, defaultValue = "0") int userNo,
			@RequestParam(value ="bbuyno" , required = false, defaultValue="0") int bbuyno,
			@RequestParam(value="subnum",required=false,defaultValue="0")int subNum,
			@RequestParam(value="bbuyuser",required=false,defaultValue="0")int bbuyuser,
			@RequestParam(value="selectbooking_no",required=false,defaultValue="0")int selectbooking_no) {
		System.out.println("[Controller] : profileWriteForm()");
	
		
		// 유저no는 현재 대관하기에서 세션값 으로 쓸 임의의 번호를 보내고 있음 지워야댐
		if (userNo == 0) {
			// 사용자가 없음 잘못된 접근 메인으로
			return "";
		} else {
			List<ProfileVo> profileList = sparringService.profileWriteForm(userNo);
			
			model.addAttribute("profileList", profileList);
			model.addAttribute("bookingno", bookingno);
			model.addAttribute("selectbooking_no",selectbooking_no);
			return "matching/matchinfoForm";
		}
	}

	/*
	 * 
	 * 1. 프로필 테이블의 userNo는 세션값으로 받고
	 * 
	 * 2. 만들어진 프로필테이블의 profileNo를 selectKey로 추가한뒤에
	 * 
	 * 3. 주종목 테이블, 공식기록 테이블에 뿌려준다
	 * 
	 */
	/*
	 * 1 방법 : 체크박스는 list로 받고
	 * 
	 * @RequestParam(value="eventName",required =false)List eventList x 2방법 : vo를
	 * 배열로 받기 x 3방법 리퀘스트로 값을 불러와 배열에 넣어받기 o
	 * 
	 * 1. 복싱 2.킥복싱 3.종합격투기 4.주짓수
	 */

	/*
	 * record는 여러개의 select를 받아와야하는데 수가 늘어날수있기 때문에 1번 vo안에 리스트를 만들었다
	 */
	@RequestMapping(value = "/write", method = { RequestMethod.GET, RequestMethod.POST })
	public String profileWrite(@ModelAttribute ProfileVo profileVo, HttpServletRequest request, @ModelAttribute RecordVo recordVo,
							   @RequestParam(value="bookingno",required=false,defaultValue="0")int bookingNo,
							   @RequestParam(value="userNo",required=false,defaultValue="0")int userNo,
							   @RequestParam(value="subnum",required=false,defaultValue="0")int subnum,
							   @RequestParam(value="bbuyno",required=false,defaultValue="0")int bbuyno,
							   @RequestParam(value="bbuyuser",required=false,defaultValue="0")int bbuyuser,
							   @RequestParam(value="selectbooking_no",required=false,defaultValue="0")int selectbooking_no) {
		System.out.println("[Controller] : profileWrite");

		String[] eventName = request.getParameterValues("eventName");

		//셀렉트키로 바로 profileNo 사용가능
		sparringService.profileWrite(profileVo, eventName, recordVo);
		
		if(bookingNo == 0 &&selectbooking_no == 0 &&subnum ==0) {
			System.out.println("대관 x 시합등록자");//0
			BBuyVo bBuyVo = sparringService.insertBBuy(bookingNo,subnum,userNo,profileVo);
			
			int bbNo = bBuyVo.getB_buy_no();
			
			return "redirect:/sparring/matchdetail?bbuyno="+bbNo+"&userno="+userNo+"&sessionuser="+userNo;
		
		
		}else if(bookingNo != 0 &&selectbooking_no == 0 && subnum == 1) { 
			System.out.println("대관 o 시합등록자 글의 신청자");
			
			//bbuyuser로 신청자에게 알람
			
			sparringService.insertBBuy2(userNo,profileVo.getProfileNo(),bookingNo);
			
			//bbuyno 통한  bookingno로 등록
			return "redirect:/sparring/matchdetail?bbuyno="+bbuyno+"&userno="+bbuyuser+"&sessionuser="+userNo;
			
			
			
		}else if (bookingNo == 0 &&selectbooking_no != 0 && subnum ==0){
			System.out.println("대관 o 시합등록자");//0
			return "redirect:/sparring/payment?bookingno="+selectbooking_no+"&userno="+userNo+"&profileno="+profileVo.getProfileNo()+"&subnum="+subnum;
		
			
			
		}else if(bookingNo == 0&&selectbooking_no !=0 && subnum==1) {
			System.out.println("대관 x 시합등록자 글의  신청자");
			
			return "redirect:/sparring/payment?bookingno="+selectbooking_no+"&userno="+userNo+"&profileno="+profileVo.getProfileNo()+"&subnum="+subnum+"&bbuyno="+bbuyno;
		
		}else {
			System.out.println("잘못된 페이지");
			return "";
		}
	}
	/** 결제하기 **/
	@RequestMapping(value = "/payment", method = { RequestMethod.GET, RequestMethod.POST })
	public String payment(@RequestParam(value="partneruserno", required = false, defaultValue = "0")int partneruserno,
			@RequestParam(value = "bookingno", required = false, defaultValue = "0") int bookingNo,
			@RequestParam(value = "userno", required = false, defaultValue = "0") int userNo,
			@RequestParam(value = "profileno", required = false, defaultValue = "0") int profileno,
			@RequestParam(value="subnum",required=false,defaultValue="0")int subnum,
			@RequestParam(value="bbuyno",required=false,defaultValue="0")int bbuyno,
			@RequestParam(value="mainnum",required=false, defaultValue="0")int mainnum,
			Model model) {
		System.out.println(bookingNo);
		System.out.println(userNo);
		System.out.println("시합등록자 0 신청자 1 : " + subnum);
		System.out.println("profileno ="+ profileno);
		/*임의로 설정한 userNo 지워야함*/
		userNo = 2;
		
		Map<String,Object> map = sparringService.payment(bookingNo,userNo,subnum);
		
		model.addAttribute("map",map);
		return "matching/payment";
	}
	/**결제**/
	@RequestMapping(value = "/pay", method = { RequestMethod.GET, RequestMethod.POST })
	public String pay(@ModelAttribute BBuyVo bBuyVo,
			@RequestParam(value="partneruserno", required = false, defaultValue = "0")int partneruserno,
			@RequestParam(value="booking_no", required = false, defaultValue = "0") int bookingNo,
			@RequestParam(value="subnum",required=false,defaultValue="0")int subnum,
			@RequestParam(value="bbuyno",required=false,defaultValue="0")int bbuyno,
			@RequestParam(value="mainnum",required=false, defaultValue="0")int mainnum,
			@RequestParam(value = "mybbuyno", required = false, defaultValue = "0") int mybbuyno
						) {
		System.out.println("[Controller] : pay()");
		
		System.out.println(bBuyVo);
		if(mainnum == 1) {
			sparringService.accept(partneruserno,bookingNo);
			sparringService.acceptpay(bBuyVo, bbuyno,bookingNo);
			
			return "store/paymentCp";
		}else if(mainnum == 2){
			
			sparringService.acceptPartner(partneruserno,bookingNo,bBuyVo, bbuyno,bookingNo,mybbuyno);
			return "store/paymentCp";
		}else {
			sparringService.pay(bBuyVo,subnum,bbuyno);
		
			return "store/paymentCp";
		}
	}
	
	//수락하기버튼
	@RequestMapping(value = "/accept", method = { RequestMethod.GET, RequestMethod.POST })
	public String accept(@RequestParam(value="partneruserno")int partnerUserNo,
						 @RequestParam(value="bookingNo")int bookingNo,
						 @RequestParam(value="userNo")int userNo,
						 @RequestParam(value="bbuyno")int bbuyNo,
						 @RequestParam(value="mainnum",required=false, defaultValue="0")int mainnum,
						 @RequestParam(value = "profileno", required = false, defaultValue = "0") int profileno,
						 @RequestParam(value = "mybbuyno", required = false, defaultValue = "0") int mybbuyno) {
		System.out.println("[Controller] : accept()");
		System.out.println("파트너의userNo :"+partnerUserNo);
		System.out.println("bookingNo = " + bookingNo);
		System.out.println("profileno= "+profileno);
		//선택한 파트너는 선택자로 나머지는 탈락자로 바꾸기
		
		if(mainnum ==1) {
			//대관 x 시합등록자가 상대를 결정했을경우
			
			return "redirect:/sparring/payment?mainnum="+mainnum+"&bookingno="+bookingNo+"&userno="+userNo+"&bbuyno="+bbuyNo+"&partneruserno="+partnerUserNo+"&profileno="+profileno;
		}else if(mainnum==2){
			//대관 o 시합등록자가 상대를 결정하고 그 상대가 결제버튼을 눌렀을경우
			
			return "redirect:/sparring/payment?mainnum="+mainnum+"&bookingno="+bookingNo+"&userno="+userNo+"&bbuyno="+bbuyNo+"&partneruserno="+partnerUserNo+"&profileno="+profileno+"&mybbuyno="+mybbuyno;
		}else {
			//대관 o시합등록자가 상대를 결정했을경우
			
			sparringService.accept(partnerUserNo,bookingNo);
			return "redirect:/sparring/matchdetail?bookingno="+bookingNo+"&userno="+userNo+"&bbuyno="+bbuyNo;
		}
	}
	
	//선택자가 거절
	@RequestMapping(value = "/cancel", method = { RequestMethod.GET, RequestMethod.POST })
	public String cancel(@RequestParam(value = "bbuyno", required = false, defaultValue = "0") int bbuyno,
						@RequestParam(value = "bookingno", required = false, defaultValue = "0") int bookingno	) {
		System.out.println("[Controller] : cancel()");
		
		sparringService.cancel(bbuyno,bookingno);
		
		return "redirect:/";
	}
	
	
	//신청자를  거절
	@RequestMapping(value = "/refuse", method = { RequestMethod.GET, RequestMethod.POST })
	public String refuse(@RequestParam(value="partneruserno")int partnerUserNo,
			 @RequestParam(value="bookingNo")int bookingNo,
			 @RequestParam(value="userNo")int userNo,
			 @RequestParam(value="bbuyno")int bbuyNo,
			 @RequestParam(value="mybbuyno")int mybbuyNo,
			 @RequestParam(value="mainnum",required=false, defaultValue="0")int mainnum,
			 @RequestParam(value = "profileno", required = false, defaultValue = "0") int profileno,
			 @RequestParam(value = "mybbuyno", required = false, defaultValue = "0") int mybbuyno,
			 @RequestParam(value = "sessionuserno", required = false, defaultValue = "0") int sessionuserno) {
		System.out.println("[Controller] : refuse()");
		
		sparringService.refuse(mybbuyNo);
		
		return "redirect:/sparring/matchdetail?bookingno="+bookingNo+"&userno="+userNo+"&bbuyno="+bbuyNo+"&sessionuser="+sessionuserno;
	}
	
	/*********************** api *****************/
	@ResponseBody
	@RequestMapping(value = "/api/selectdate", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> selectDate(@RequestParam(value = "rownum") int rownum, @RequestParam(value = "userNo") int userNo) {
		System.out.println("[Api Controller] : selectDate");

		return sparringService.selectDate(rownum, userNo);
	}

	// 체육관상세페이지 메인사진 바꾸기
	@ResponseBody
	@RequestMapping(value = "/api/gymimgone", method = { RequestMethod.GET, RequestMethod.POST })
	public GymImgVo gymImgOne(@RequestParam(value = "gymImgNo") int gymImgNo) {
		System.out.println("[Api Controller] :");
		System.out.println(gymImgNo);

		GymImgVo gIVo = sparringService.gymImgOne(gymImgNo);

		System.out.println("gIVo = " + gIVo);
		return gIVo;
	}

	// 체육관 booking 리스트 바꾸기
	@ResponseBody
	@RequestMapping(value = "/api/bookinglist", method = { RequestMethod.GET, RequestMethod.POST })
	public List<BookingVo> bookingList(@RequestParam(value = "date") String date, @RequestParam(value = "gymNo") int gymNo) {
		System.out.println("[Controller] : bookingList");

		List<BookingVo> bookingList = sparringService.bookingList(date, gymNo);
		System.out.println(bookingList);
		return bookingList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/api/bbuyone", method = { RequestMethod.GET, RequestMethod.POST })
	public BBuyVo  bbuyOne(@RequestParam(value= "bbuyNo") int  bbuyNo,
						   @RequestParam(value= "userNo") int  userNo) {
		System.out.println("[Controller] : bbuyOne()");
		System.out.println( bbuyNo);
		
		BBuyVo bbuyVo = sparringService.bbuyOne( bbuyNo,userNo);
		
		return bbuyVo;
	}
	@RequestMapping(value = "/arl", method = { RequestMethod.GET, RequestMethod.POST })
	public void arl() {
		System.out.println("arl 테스트입니다");
		
	}
}
