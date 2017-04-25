package org.lanqiao.tools;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

/**
 * 
 * TODO :通用上传工具类
 */
public class FileUploadUtils {
    /**
     * 通用上传方法
     * @param request   
     * @param file 上传的文件
     * @return 返回文件名（包括文件在tomcat服务器上保存的路径）
     */
    public static String uploadFile(HttpServletRequest request, MultipartFile file){
    	String key = "images/goods";
//    	String key = "picture";
        String path = "";
        try {
            //获取上传文件的去路径文件名称
            //String realFileName = file.getOriginalFilename();
            //文件上传的存储路径
            String ctxPath = request.getSession().getServletContext().getRealPath("/")+key;
            // 创建文件
            File dirPath = new File(ctxPath);
            /*
             * 问题解析：创建父目录不存在的子路径
             */
            if (!dirPath.exists()) {
                dirPath.mkdirs();
            }
            
            //上传后的文件名称前拼接年月日时分秒微秒来防止重复
            /**
             * 
             * 问题描述：linux系统中文件路径错误，文件找不到
             * 问题解析：路径“\\”，与Windows路径模式不同
             * 20151123 更改路径“\\”，改为File.separator
             */
            String dateString = (new SimpleDateFormat("yyyyMMddHHmmssSSS")).format(new Date());
            //获取文件扩展名
            String ext = "."+FilenameUtils.getExtension(file.getOriginalFilename());
            String real =ctxPath + File.separator + dateString+ext;
            
            File uploadFile = new File(real);
            System.out.println(file.getOriginalFilename());
            //保存在数据库中的路径
            path = key+File.separator +dateString+ext;
            //复制，上传文件
            FileCopyUtils.copy(file.getBytes(), uploadFile);
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("上传文件出现异常",e);
        }
        return path.replaceAll("\\\\", "/");
    }
    
    /**
     * 图片上传
     * @param request   
     * @param file   上传的文件
     * @return 返回文件名（包括文件在tomcat服务器上保存的路径）
     */
     public static String uploadImgFile(HttpServletRequest request, MultipartFile file){
        //获取上传文件的mime类型
        String fileType = file.getContentType();
        if (fileType.contains("image")) {
            return FileUploadUtils.uploadFile(request, file);  
        }
        return "fail";
    }
     /**
      * excel上传
      * @param request   
      * @param file   上传的文件
      * @return 能上传则返回文件名（包括文件在tomcat服务器上保存的路径）,上传
      */
      public static String uploadExcelFile(String key,HttpServletRequest request,
              MultipartFile file){
         //获取上传文件的去路径文件名称
         String fileName = file.getOriginalFilename();
         //xls的mime类型是application/vnd.ms-excel,xlsx的mime类型是application/octet-stream,exe的mime类型是application/octet-stream
         if (fileName.contains(".xls")||fileName.contains(".xlsx")){
             return FileUploadUtils.uploadFile(request, file);
         }
         return "fail";
     }
    
}
