package com.tomorrowHome.community.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tomorrowHome.common.util.Auth;
import com.tomorrowHome.common.util.HomeUtil;
import com.tomorrowHome.community.dto.CommunityBoardDTO;
import com.tomorrowHome.community.dto.CommunityBoardImageDTO;
import com.tomorrowHome.community.service.CommunityBoardService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/community/*")
public class CommunityBoardController {

	@Autowired
	private CommunityBoardService boardService;

	@GetMapping("/follow")
	public String follow(Model model) {
		List<CommunityBoardDTO> boardList = boardService.listBoard();

		model.addAttribute("boardList", boardList);
		System.out.println("boardList>>>" + boardList);

		return "community/feedBoard";
	}

	@GetMapping("/image")
	public String image(Model model) {

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", 1);
		map.put("end", 8);

		List<CommunityBoardDTO> boardList = boardService.imagelistBoard(map);
		model.addAttribute("boardList", boardList);
		System.out.println("boardList>>>" + boardList);

		return "community/imageBoard";
	}

	@GetMapping("/imageScroll")
	@ResponseBody
	public List<CommunityBoardDTO> imageScroll(@Nullable @RequestParam("begin") String begin) {
		System.out.println("begin >>>>>>>>>>>>>>>> " + begin);

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", Integer.parseInt(begin));
		map.put("end", Integer.parseInt(begin) + 7);
		List<CommunityBoardDTO> boardList = boardService.imagelistBoard(map);

		System.out.println("boardList>>>" + boardList);
		return boardList;
	}

	// 사진 : 이미지 상세 페이지 >Service
	@RequestMapping(value = "/imageView", method = RequestMethod.GET)
	public String imageView(@ModelAttribute("CommunityBoardDTO") CommunityBoardDTO CommunityBoardDTO,
			@RequestParam("n") int boardId, Model model) {

		/*
		 * Map<String, Integer> map = new HashMap<String, Integer>();
		 * 
		 * List<CommunityBoardDTO> boardList = boardService.imageViewBoard(map);
		 * 
		 * model.addAttribute("boardList", boardList); System.out.println("boardList>>>"
		 * + boardList);
		 */
		/*
		 * List<CommunityBoardDTO> boardList = boardService.imageViewBoard();
		 * 
		 * model.addAttribute("boardList", boardList);
		 * 
		 * System.out.println("boardList>>>" + boardList);
		 */

		return "community/imageView";
	}


	@GetMapping("/housewarming")
	public String housewarming(Model model) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", 1);
		map.put("end", 9);

		List<CommunityBoardDTO> boardList = boardService.housewarminglistBoard(map);
		int total = boardService.housewarmingBoardTotal();
		model.addAttribute("boardList", boardList);
		model.addAttribute("total", total);
		System.out.println("boardList>>>" + boardList);
		System.out.println("total>>>" + total);

		return "community/housewarmingBoard";
	}

	@GetMapping("/housewarmingScroll")
	@ResponseBody
	public List<CommunityBoardDTO> housewarmingScroll(@Nullable @RequestParam("begin") String begin) {
		System.out.println("begin >>>>>>>>>>>>>>>> " + begin);

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", Integer.parseInt(begin));
		map.put("end", Integer.parseInt(begin) + 8);
		List<CommunityBoardDTO> boardList = boardService.housewarminglistBoard(map);

		System.out.println("boardList>>>" + boardList);
		return boardList;
	}


	/* 글쓰기_사진 페이지 From으로 이동 */
	@RequestMapping(value = "/imagewrite", method = RequestMethod.GET)
	@Auth
	public String imagewriteForm(@ModelAttribute("CommunityBoardDTO") CommunityBoardDTO CommunityBoardDTO, Model model,
			HttpSession session) {

		return "community/imagewriteForm";
	}

	// 사진 해당 경로에 저장하고 저장된 사진 경로를 반환 (method: post)
	@PostMapping(value = "/imagewrite")
	public String uploadSummernoteImageFile(MultipartHttpServletRequest multipartRequest) {
		//저장경로 지정
		String image_path = "C:\\tomorrowHome_images\\";
		//imageFileList(Springd을 list로 받아옴)
		List<String> imageFileList  = new ArrayList<>();
		//boardImageDTOs(CommunityBoardImageDTO로 list 받아옴)
		List<CommunityBoardImageDTO> boardImageDTOs = new ArrayList<>();
		
		// 폼에서 넘어온 일반 요소(내용/평수/주택형식/공간 : 이미지 제외)들의 값을 빼서 map에 넣어줌
		Map newBoardMap = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			newBoardMap.put(name, value);
		}
		// 폼에서 넘어온 사진을 저장하고 경로를 받아옴
		try {
			//HomeUtil에 있는 upload(multipartRequest)를 imageFileList에 받아옴
			imageFileList = HomeUtil.upload(multipartRequest);
			//ArrayList<CommunityBoardImageDTO>를 boardImageDTO에 넣어줌 > 상세 이미지
			boardImageDTOs = new ArrayList<CommunityBoardImageDTO>();
			//imageFileList에서 imageFileName(string)을 하나씩 빼서
			for (String imageFileName : imageFileList) {
				//만약 imageFileName의 첫 글자가 s로 시작할 경우 
				if (imageFileName.startsWith("s")) {
					//newBoardMap(일반 요소 데이터 map)의 boardThumbnail에 imageFileName을 넣어준다.
					newBoardMap.put("board_thumbnail", imageFileName);
					System.out.println("newBoardMap >>>>>>>>>>>> " + newBoardMap);
				} 
				//만약 imageFileName의 첫 글자가 s로 시작되지 않는 경우 
				else {
					//CommunityBoardImageDTO에 imageFileName을 넣어주고 List<CommunityBoardImageDTO> boardImageDTO에 추가한다.
					CommunityBoardImageDTO boardImageDTO = new CommunityBoardImageDTO();
					boardImageDTO.setImageFileName(imageFileName);
					boardImageDTOs.add(boardImageDTO);
				}
			}
			//db에 추가 (addNewBoard): service > serviceimpl > mapper.java > mapper.xml
			newBoardMap.put("board_id", 0);
			int result = boardService.addNewBoard(newBoardMap);
			int boardId = (int) newBoardMap.get("board_id");
			System.out.println("boardId >>>>>>>>>>>>>>>>>>> "+ boardId);
			//CommunityBoardImageDTO의 boardImageDTOs에서 boardImageDTO를 하나씩 뽑아서
			for(CommunityBoardImageDTO boardImageDTO : boardImageDTOs) {
				//boardId를 넣어줌
				boardImageDTO.setBoardId(boardId);
			}
			//db에 추가 (addBoardImages): service > serviceimpl > mapper.java > mapper.xml
			boardService.addBoardImages(boardImageDTOs);
			//만약 
			if (imageFileList != null && imageFileList.size() != 0) {
				for (String imageFileName : imageFileList) {
					
					File srcFile = new File(image_path + "\\" + "temp" + "\\" + imageFileName);
					File destDir = new File(image_path + "\\"+"community"+"\\" + boardId);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
					System.out.println("경로"+ destDir);
				}
			}
		
		}
		//(imageFileList가 null, size가 0이 아닐 경우)까지 왔을 경우 : > delete : temp에 있는 이미지 + s_이미지까지 전부
		catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (String imageFileName : imageFileList) {
					File srcFile = new File(image_path + "\\" + "temp" + "\\" + imageFileName);
					srcFile.delete();
				}
			}
			e.printStackTrace();
		}
		//controller > community/image로 반환(: imageBoard.jsp로 이동해서 업로드 확인)
		return "redirect: /community/image";
	}

	/* 글쓰기_집들이 */
	@GetMapping("/housewarmingwrite")
	@Auth
	public String housewarmingwrite(Model model) {

		return "community/housewarmingwriteForm";
	}
}
