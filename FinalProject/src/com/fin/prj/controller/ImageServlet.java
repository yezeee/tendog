package com.fin.prj.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/images/*")
public class ImageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 이미지 경로 설정
        String imagePath = "C:\\git\\tendog\\FinalProject\\WebContent\\images\\";
        String requestedImage = request.getPathInfo().substring(1); // /images/filename.jpg
        File imageFile = new File(imagePath, requestedImage);

        // 이미지가 존재하는지 확인
        if (imageFile.exists()) {
            // 이미지 파일을 읽어서 응답에 쓰기
            response.setContentType(getServletContext().getMimeType(imageFile.getName()));
            response.setContentLength((int) imageFile.length());
            FileInputStream in = new FileInputStream(imageFile);
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = in.read(buffer)) != -1) {
                response.getOutputStream().write(buffer, 0, bytesRead);
            }
            in.close();
        } else {
            // 이미지 파일이 존재하지 않는 경우 404 오류 응답
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
