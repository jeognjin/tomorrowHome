package com.tomorrowHome.common.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tomorrowHome.community.dto.CommunityBoardDTO;
import com.tomorrowHome.community.dto.CommunityBoardImageDTO;
import com.tomorrowHome.store.product.dto.ProductImageDTO;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;
import net.coobird.thumbnailator.Thumbnails;


@Controller
@Log4j
public class FileController {

	
	@GetMapping("/communityDownload")
	protected void communityDownload(String fileName, String boardId,
			                 HttpServletResponse response) throws Exception {		
		String CURR_IMAGE_REPO_PATH = "C:\\tomorrowHome_images\\community";
		Download(fileName, boardId, response, CURR_IMAGE_REPO_PATH);
	}
	
	@GetMapping("/productDownload")
	protected void productDownload(String fileName, String goodsId,
			                 HttpServletResponse response) throws Exception {	
		String CURR_IMAGE_REPO_PATH = "C:\\tomorrowHome_images\\goods";
		Download(fileName, goodsId, response, CURR_IMAGE_REPO_PATH);
	}
	
	@GetMapping("/profileDownload")
	protected void profileDownload(String fileName, String memberId,
			                 HttpServletResponse response) throws Exception {		
		String CURR_IMAGE_REPO_PATH = "C:\\tomorrowHome_images\\profile";
		
		Download(fileName, memberId, response, CURR_IMAGE_REPO_PATH);
	}
	

	protected void Download(String fileName, String boardId,
            HttpServletResponse response, String CURR_IMAGE_REPO_PATH) throws IOException {
		OutputStream out = response.getOutputStream();
		String filePath=CURR_IMAGE_REPO_PATH+"\\"+boardId+"\\"+fileName;
		File image=new File(filePath);
		
		response.setHeader("Cache-Control","no-cache");
		response.addHeader("Content-disposition", "attachment; fileName="+fileName);
		FileInputStream in=new FileInputStream(image); 
		byte[] buffer=new byte[1024*8];
		while(true){
			int count=in.read(buffer); 
			if(count==-1)  
				break;
			out.write(buffer,0,count);
		}
		in.close();
		out.close();
	}
	
	
	
//	@PostMapping(value = "/communityUpload", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
//	@ResponseBody
//	public ResponseEntity<List<CommunityBoardImageDTO>> communityUploadPost(MultipartFile[] uploadFile, CommunityBoardDTO boardDTO ) {
//		String uploadFolder = "C:\\tomorrowHome_images\\community";
//		List<CommunityBoardImageDTO> list = new ArrayList<>();
//		String boardId = String.valueOf(boardDTO.getBoardId());
//
//		// make folder --------
//		File uploadPath = new File(uploadFolder, boardId);
//		if (uploadPath.exists() == false) {
//			uploadPath.mkdirs();
//		}
//		for (MultipartFile multipartFile : uploadFile) {
//			CommunityBoardImageDTO boardImageDTO = new CommunityBoardImageDTO();
//			String uploadFileName = multipartFile.getOriginalFilename();
//
//			// IE has file path
//			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
//			log.info("only file name: " + uploadFileName);
//			boardImageDTO.setImagePath(uploadFileName);
//
//			try {
//				File saveFile = new File(uploadPath, uploadFileName);
//				multipartFile.transferTo(saveFile);
//
//				// add to List
//				list.add(boardImageDTO);
//
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//
//		} // end for
//		return new ResponseEntity<>(list, HttpStatus.OK);
//	}
//	
	
//	protected void thumbnails(String fileName, String goods_id,
//			                 HttpServletResponse response) throws Exception {
//		OutputStream out = response.getOutputStream();
//		String filePath=CURR_IMAGE_REPO_PATH+"\\"+goods_id+"\\"+fileName;
//		File image=new File(filePath);
//		fileName = "thumbnail_"+fileName;
//		int lastIndex = fileName.lastIndexOf(".");
//		String imageFileName = fileName.substring(0,lastIndex);
//		if (image.exists()) { 
//			Thumbnails.of(image).size(121,154).outputFormat("png").toOutputStream(out);
//		}
//		byte[] buffer = new byte[1024 * 8];
//		out.write(buffer);
//		out.close();
//	}
}
