package project6;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class DirCreate {

	public void createDir(File dir) {
		// 建立目錄
		// 建立檔案
		// 查詢檔案資訊
		// 刪除檔案
		Boolean flag = dir.mkdir();
		if (flag == true) {

			System.out.println("建立成功");

		} else {
			System.out.println("建立失敗");
		}
	}

	public void createFile(File file) {
		if (!file.exists()) {
			try {
				file.createNewFile();
				System.out.println("文件已创建！");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	public void showFileInfo(File file) {
		if (file.exists()) { // 判断文件是否存在
			if (file.isFile()) { // 如果是文件
				System.out.println("名称:" + file.getName());
				System.out.println("相对路径: " + file.getPath());
				System.out.println("绝对路径: " + file.getAbsolutePath());
				System.out.println("文件大小:" + file.length());
			}
			if (file.isDirectory()) {
				System.out.println("此文件是目录");
			}
		} else
			System.out.println("文件不存在");
	}

	public void delete(File file) {
		if (file.exists()) {
			file.delete();
			System.out.println("文件已删除！");
		}
	}

	public static void main(String[] args) {
		String randomUUIDString = UUID.randomUUID().toString();
		DirCreate dirCreate = new DirCreate();
		File dir = new File("D:/" + randomUUIDString);
		dirCreate.createDir(dir);

		File file = new File("D:/" + randomUUIDString + "/test.txt");
		dirCreate.createFile(file);

		dirCreate.showFileInfo(file);
		dirCreate.showFileInfo(dir);

		// dirCreate.delete(file);
		// dirCreate.delete(dir); //刪除空目錄
	}
}
