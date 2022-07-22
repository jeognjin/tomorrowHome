package com.tomorrowHome.community.controller;

import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
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
import com.tomorrowHome.member.dto.AuthUserDTO;
import com.tomorrowHome.member.dto.MemberDTO;
import com.tomorrowHome.member.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/community/*")
public class CommunityBoardController {

	@Autowired
	private CommunityBoardService boardService;
	
	@Autowired
	private MemberService memberService;

	@GetMapping("/follow")
	public String follow(Model model, HttpSession session) {
		AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
		if (authUser == null) {
			List<CommunityBoardDTO> boardList = boardService.listfollowBoard();

			model.addAttribute("boardList", boardList);
			System.out.println("boardList>>>" + boardList);
			
			return "community/feedBoard";
		} else {
			List<CommunityBoardDTO> boardList = boardService.listFollwingBoard(authUser.getMemberId());

			model.addAttribute("boardList", boardList);
			System.out.println("boardList>>>" + boardList);
			
			return "community/feedBoard";
		}
		
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
		
//		List<MemberDTO> memberList = memberService.imageBoardProfile(map);
//		System.out.println("memberList>>>" + memberList);
		return boardList;
	}

	@RequestMapping(value = "/imageView", method = RequestMethod.GET)
	public String imageView(Model model, int boardId) {
		
		boardService.readCount(boardId);
		
		CommunityBoardDTO boardListView = boardService.imageView(boardId);
		model.addAttribute("boardListView", boardListView);
		System.out.println("boardListView>>>" + boardListView);
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


	/* 湲��벐湲�_�궗吏� �럹�씠吏� From�쑝濡� �씠�룞 */
	@RequestMapping(value = "/imagewrite", method = RequestMethod.GET)
	@Auth
	public String imagewriteForm(@ModelAttribute("CommunityBoardDTO") CommunityBoardDTO CommunityBoardDTO, Model model,
			HttpSession session) {

		return "community/imagewriteForm";
	}

	@PostMapping(value = "/imagewrite")
	public String uploadSummernoteImageFile(MultipartHttpServletRequest multipartRequest, HttpSession session) {
		
		String image_path = "C:\\tomorrowHome_images\\";
		
		List<String> imageFileList  = new ArrayList<>();
		
		List<CommunityBoardImageDTO> boardImageDTOs = new ArrayList<>();
		
		// �뤌�뿉�꽌 �꽆�뼱�삩 �씪諛� �슂�냼(�궡�슜/�룊�닔/二쇳깮�삎�떇/怨듦컙 : �씠誘몄� �젣�쇅)�뱾�쓽 媛믪쓣 鍮쇱꽌 map�뿉 �꽔�뼱以�
		Map newBoardMap = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			newBoardMap.put(name, value);
		}
		// �뤌�뿉�꽌 �꽆�뼱�삩 �궗吏꾩쓣 ���옣�븯怨� 寃쎈줈瑜� 諛쏆븘�샂
		try {
			//HomeUtil�뿉 �엳�뒗 upload(multipartRequest)瑜� imageFileList�뿉 諛쏆븘�샂
			imageFileList = HomeUtil.upload(multipartRequest);
			//ArrayList<CommunityBoardImageDTO>瑜� boardImageDTO�뿉 �꽔�뼱以� > �긽�꽭 �씠誘몄�
			boardImageDTOs = new ArrayList<CommunityBoardImageDTO>();
			//imageFileList�뿉�꽌 imageFileName(string)�쓣 �븯�굹�뵫 鍮쇱꽌
			for (String imageFileName : imageFileList) {
				//留뚯빟 imageFileName�쓽 泥� 湲��옄媛� s濡� �떆�옉�븷 寃쎌슦 
				if (imageFileName.startsWith("s")) {
					//newBoardMap(�씪諛� �슂�냼 �뜲�씠�꽣 map)�쓽 boardThumbnail�뿉 imageFileName�쓣 �꽔�뼱以��떎.
					newBoardMap.put("board_thumbnail", imageFileName);
					System.out.println("newBoardMap >>>>>>>>>>>> " + newBoardMap);
				} 
				//留뚯빟 imageFileName�쓽 泥� 湲��옄媛� s濡� �떆�옉�릺吏� �븡�뒗 寃쎌슦 
				else {
					//CommunityBoardImageDTO�뿉 imageFileName�쓣 �꽔�뼱二쇨퀬 List<CommunityBoardImageDTO> boardImageDTO�뿉 異붽��븳�떎.
					CommunityBoardImageDTO boardImageDTO = new CommunityBoardImageDTO();
					boardImageDTO.setImageFileName(imageFileName);
					boardImageDTOs.add(boardImageDTO);
				}
			}
			//db�뿉 異붽� (addNewBoard): service > serviceimpl > mapper.java > mapper.xml
			newBoardMap.put("board_id", 0);
			
			AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
			
			newBoardMap.put("member_id", authUser.getMemberId());
			
			
			int result = boardService.addNewBoard(newBoardMap);
			int boardId = (int) newBoardMap.get("board_id");
			System.out.println("boardId >>>>>>>>>>>>>>>>>>> "+ boardId);
			//CommunityBoardImageDTO�쓽 boardImageDTOs�뿉�꽌 boardImageDTO瑜� �븯�굹�뵫 戮묒븘�꽌
			for(CommunityBoardImageDTO boardImageDTO : boardImageDTOs) {
				//boardId瑜� �꽔�뼱以�
				boardImageDTO.setBoardId(boardId);
			}
			//db�뿉 異붽� (addBoardImages): service > serviceimpl > mapper.java > mapper.xml
			boardService.addBoardImages(boardImageDTOs);
			//留뚯빟 
			if (imageFileList != null && imageFileList.size() != 0) {
				for (String imageFileName : imageFileList) {
					
					File srcFile = new File(image_path + "\\" + "temp" + "\\" + imageFileName);
					File destDir = new File(image_path + "\\"+"community"+"\\" + boardId);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
					System.out.println("寃쎈줈"+ destDir);
				}
			}
		
		}
		//(imageFileList媛� null, size媛� 0�씠 �븘�땺 寃쎌슦)源뚯� �솕�쓣 寃쎌슦 : > delete : temp�뿉 �엳�뒗 �씠誘몄� + s_�씠誘몄�源뚯� �쟾遺�
		catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (String imageFileName : imageFileList) {
					File srcFile = new File(image_path + "\\" + "temp" + "\\" + imageFileName);
					srcFile.delete();
				}
			}
			e.printStackTrace();
		}
		//controller > community/image濡� 諛섑솚(: imageBoard.jsp濡� �씠�룞�빐�꽌 �뾽濡쒕뱶 �솗�씤)
		return "redirect: /community/image";
	}

	/* 湲��벐湲�_吏묐뱾�씠 */
	@GetMapping("/housewarmingwrite")
	@Auth
	public String housewarmingwrite(Model model) {

		return "community/housewarmingwriteForm";
	}
	
	// �궗吏� �빐�떦 寃쎈줈�뿉 ���옣�븯怨� ���옣�맂 �궗吏� 寃쎈줈瑜� 諛섑솚 (method: post)
		@PostMapping(value = "/housewarmingwrite")
		public String uploadSummernotehousewarmingFile(MultipartHttpServletRequest multipartRequest) {
			//���옣寃쎈줈 吏��젙
			String image_path = "C:\\tomorrowHome_images\\";
			//imageFileList(Springd�쓣 list濡� 諛쏆븘�샂)
			List<String> imageFileList  = new ArrayList<>();
			//boardImageDTOs(CommunityBoardImageDTO濡� list 諛쏆븘�샂)
			List<CommunityBoardImageDTO> boardImageDTOs = new ArrayList<>();
			
			// �뤌�뿉�꽌 �꽆�뼱�삩 �씪諛� �슂�냼(�궡�슜/�룊�닔/二쇳깮�삎�떇/怨듦컙 : �씠誘몄� �젣�쇅)�뱾�쓽 媛믪쓣 鍮쇱꽌 map�뿉 �꽔�뼱以�
			Map newBoardMap = new HashMap();
			Enumeration enu = multipartRequest.getParameterNames();
			while (enu.hasMoreElements()) {
				String name = (String) enu.nextElement();
				String value = multipartRequest.getParameter(name);
				newBoardMap.put(name, value);
			}
			// �뤌�뿉�꽌 �꽆�뼱�삩 �궗吏꾩쓣 ���옣�븯怨� 寃쎈줈瑜� 諛쏆븘�샂
			try {
				//HomeUtil�뿉 �엳�뒗 upload(multipartRequest)瑜� imageFileList�뿉 諛쏆븘�샂
				imageFileList = HomeUtil.upload(multipartRequest);
				//ArrayList<CommunityBoardImageDTO>瑜� boardImageDTO�뿉 �꽔�뼱以� > �긽�꽭 �씠誘몄�
				boardImageDTOs = new ArrayList<CommunityBoardImageDTO>();
				//imageFileList�뿉�꽌 imageFileName(string)�쓣 �븯�굹�뵫 鍮쇱꽌
				for (String imageFileName : imageFileList) {
					//留뚯빟 imageFileName�쓽 泥� 湲��옄媛� s濡� �떆�옉�븷 寃쎌슦 
					if (imageFileName.startsWith("s")) {
						//newBoardMap(�씪諛� �슂�냼 �뜲�씠�꽣 map)�쓽 boardThumbnail�뿉 imageFileName�쓣 �꽔�뼱以��떎.
						newBoardMap.put("board_thumbnail", imageFileName);
						System.out.println("newBoardMap >>>>>>>>>>>> " + newBoardMap);
					} 
					//留뚯빟 imageFileName�쓽 泥� 湲��옄媛� s濡� �떆�옉�릺吏� �븡�뒗 寃쎌슦 
					else {
						//CommunityBoardImageDTO�뿉 imageFileName�쓣 �꽔�뼱二쇨퀬 List<CommunityBoardImageDTO> boardImageDTO�뿉 異붽��븳�떎.
						CommunityBoardImageDTO boardImageDTO = new CommunityBoardImageDTO();
						boardImageDTO.setImageFileName(imageFileName);
						boardImageDTOs.add(boardImageDTO);
					}
				}
				//db�뿉 異붽� (addNewBoard): service > serviceimpl > mapper.java > mapper.xml
				newBoardMap.put("board_id", 0);
				int result = boardService.insertNewhouseBoard(newBoardMap);
				int boardId = (int) newBoardMap.get("board_id");
				System.out.println("boardId >>>>>>>>>>>>>>>>>>> "+ boardId);
				//CommunityBoardImageDTO�쓽 boardImageDTOs�뿉�꽌 boardImageDTO瑜� �븯�굹�뵫 戮묒븘�꽌
				for(CommunityBoardImageDTO boardImageDTO : boardImageDTOs) {
					//boardId瑜� �꽔�뼱以�
					boardImageDTO.setBoardId(boardId);
				}
				//db�뿉 異붽� (addBoardImages): service > serviceimpl > mapper.java > mapper.xml
				boardService.addBoardImages(boardImageDTOs);
				//留뚯빟 
				if (imageFileList != null && imageFileList.size() != 0) {
					for (String imageFileName : imageFileList) {
						
						File srcFile = new File(image_path + "\\" + "temp" + "\\" + imageFileName);
						File destDir = new File(image_path + "\\"+"community"+"\\" + boardId);
						FileUtils.moveFileToDirectory(srcFile, destDir, true);
						System.out.println("destDir"+ destDir);
					}
				}
			
			}
			//(imageFileList媛� null, size媛� 0�씠 �븘�땺 寃쎌슦)源뚯� �솕�쓣 寃쎌슦 : > delete : temp�뿉 �엳�뒗 �씠誘몄� + s_�씠誘몄�源뚯� �쟾遺�
			catch (Exception e) {
				if (imageFileList != null && imageFileList.size() != 0) {
					for (String imageFileName : imageFileList) {
						File srcFile = new File(image_path + "\\" + "temp" + "\\" + imageFileName);
						srcFile.delete();
					}
				}
				e.printStackTrace();
			}
			//controller > community/image濡� 諛섑솚(: imageBoard.jsp濡� �씠�룞�빐�꽌 �뾽濡쒕뱶 �솗�씤)
			return "redirect: /community/housewarming";
		}
}
