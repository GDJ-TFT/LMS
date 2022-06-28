package kr.co.gdu.lms.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.gdu.lms.log.CF;
import kr.co.gdu.lms.service.CommunityService;
import kr.co.gdu.lms.vo.*;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CommunityController {
	@Autowired private CommunityService communityService;
	
	// 희원- addCommunity 액션
	@PostMapping("/loginCheck/addCommunity")
	public String addCommunity(HttpServletRequest request
							, CommunityForm communityForm) {
		String path = request.getServletContext().getRealPath("/file/communityFile/");
		log.debug(CF.PHW+"CommunityController.addCommunity.post path : "+path+CF.RS );
		log.debug(CF.PHW+"CommunityController.addCommunity.post communityForm : "+communityForm+CF.RS );
		
		List<MultipartFile> communityFileList = communityForm.getCommunityFileList();
		if(communityFileList != null && communityFileList.get(0).getSize() > 0) {
			for(MultipartFile mf : communityFileList) {
				log.debug(CF.PHW+"CommunityController.addCommunity.post mf.getOriginalFilename() : "+mf.getOriginalFilename()+CF.RS );
			}
		}
		communityService.addCommunity(communityForm, path);
		return "redirect:/loginCheck/getCommunityListByPage";
	}
	
	
	
	// 희원 - addCommunity 폼
	@GetMapping("/loginCheck/addCommunity")
	public String addCommunity() {
		return "community/addCommunity";
	}
	
	// 희원 - get방식 communityOne 호출
	@GetMapping("/loginCheck/getCommunityOne")
	public String getCommunityOne(Model model
								, @RequestParam (name="communityNo") int communityNo) {
		
		log.debug(CF.PHW+"CommunityController.getCommunityOne.get communityNo : "+communityNo+CF.RS );
		
		Map<String, Object> map = new HashMap<>();
		map.put("communityNo", communityNo);
		
		Map<String, Object> returnMap = communityService.getCommunityOne(map);
		log.debug(CF.PHW+"CommunityController.getCommunityOne.get communityNo : "+returnMap.get("communityNo")+CF.RS );
		log.debug(CF.PHW+"CommunityController.getCommunityOne.get communityFileList : "+returnMap.get("communityFileList")+CF.RS );
		log.debug(CF.PHW+"CommunityController.getCommunityOne.get community : "+returnMap.get("community")+CF.RS );
		
		model.addAttribute("communityNo", returnMap.get("communityNo"));
		model.addAttribute("communityFileList", returnMap.get("communityFileList"));
		model.addAttribute("community", returnMap.get("community"));
		
		return "community/getCommunityOne";
				
	}
	
	// 희원 - getCommunityListByPage 폼
	@GetMapping("/loginCheck/getCommunityListByPage")
	public String getCommunityList(Model model
								, @RequestParam (name="currentPage", defaultValue = "1") int currentPage
								, @RequestParam (name="rowPerPage", defaultValue = "10") int rowPerPage) {
		log.debug(CF.PHW+"CommunityController.getCommunityList.get currentPage : "+currentPage+CF.RS );
		log.debug(CF.PHW+"CommunityController.getCommunityList.get rowPerPage : "+rowPerPage+CF.RS );
		
		Map<String, Object> map = communityService.getCommunityList(currentPage, rowPerPage);
		
		log.debug(CF.PHW+"CommunityController.getCommunityList.get communityList : "+map.get("communityList")+CF.RS );
		log.debug(CF.PHW+"CommunityController.getCommunityList.get lastPage : "+map.get("lastPage")+CF.RS );

		model.addAttribute("communityList", map.get("communityList"));
		model.addAttribute("lastPage", map.get("lastPage"));
		model.addAttribute("currentPage", currentPage);
		
		return "community/getCommunityListByPage";
	}
	
	
	// 영인 - get방식 qnaList호출
	@GetMapping("/loginCheck/getQnaListByPage")
	public String getQnaList(Model model) {
		List<Qna> qnaList = communityService.getQnaList();
		
		log.debug(CF.JYI+"CommunityController.qnaList.get qnaList : "+qnaList+CF.RS);
		
		model.addAttribute("qnaList", qnaList);
		return "community/getQnaListByPage";
	}
}
