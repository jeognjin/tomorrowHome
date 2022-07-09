package com.tomorrowHome.common.util;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tomorrowHome.community.dto.CommunityBoardImageDTO;

import net.coobird.thumbnailator.Thumbnailator;

public class HomeUtil {

	// 저장경로 지정
	private static final String CURR_IMAGE_REPO_PATH = "C:\\tomorrowHome_images\\";

	// imageFileList < HomeUtil.upload(multipartRequest);
	public static List<String> upload(MultipartHttpServletRequest multipartRequest) throws Exception {
		//
		List<String> fileList = new ArrayList<>();

		Iterator<String> fileNames = multipartRequest.getFileNames();
		while (fileNames.hasNext()) {
			String fileName = fileNames.next();
			System.out.println("fileName  >>>> " + fileName);
			MultipartFile mFile = multipartRequest.getFile(fileName);
			if (mFile != null && mFile.getSize() > 0) {
				String originalFileName = mFile.getOriginalFilename();
				System.out.println("originalFileName  >>>> " + originalFileName);
				UUID uuid = UUID.randomUUID();
				String imageFileName = uuid + "_" + originalFileName;

				fileList.add(imageFileName);

				mFile.transferTo(new File(CURR_IMAGE_REPO_PATH + "\\" + "temp" + "\\" + imageFileName)); // 임시로 저장된
																											// multipartFile을
																											// 실제 파일로 전송
				System.out.println(
						"경로 >>>>>>>>>>>>> " + new File(CURR_IMAGE_REPO_PATH + "\\" + "temp" + "\\" + imageFileName));

				if (fileName.equals("main_image")) {
					imageFileName = "s_" + imageFileName;
					FileOutputStream thumbnail = new FileOutputStream(
							new File(CURR_IMAGE_REPO_PATH + "\\" + "temp\\" + imageFileName));
					Thumbnailator.createThumbnail(mFile.getInputStream(), thumbnail, 100, 100);
					thumbnail.close();
					fileList.add(imageFileName);
				}
			}
		}
		return fileList;
	}

	private void deleteFile(String fileName) {
		File file = new File(CURR_IMAGE_REPO_PATH + "\\" + fileName);
		try {
			file.delete();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
