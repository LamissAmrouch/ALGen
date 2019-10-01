package com.biotech.algen.service.impl;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

@Service
public class FilesStorage_Service {
    public static final String savingPath =  "src\\main\\resources\\static\\documents\\";
    public static final String savingFolrerName = "documents";

    public void saveFile(MultipartFile file, String savedFileName){
        if (!file.isEmpty()) {
            try {
                Files.copy(file.getInputStream(), Paths.get(savingPath + savedFileName),
                        StandardCopyOption.REPLACE_EXISTING);
            } catch (IOException e) {

            }
        }
    }

    public void deleteFile(String fileName) {
        try {
            Files.deleteIfExists(Paths.get(savingPath + fileName));
        }catch (IOException e) {

        }

    }

    public String getFileExtention(String filePath){

        return  FilenameUtils.getExtension(filePath);
    }

}
