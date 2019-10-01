package com.biotech.algen.service.impl;

import org.apache.commons.io.FilenameUtils;
import org.apache.poi.extractor.POITextExtractor;
import org.apache.poi.ooxml.extractor.ExtractorFactory;
import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
public class MicrosoftFormatFiles_Service {
    public String wordFileToString(String filePath)  {
        File fileWord=  new File(filePath);
        FileInputStream iss = null;
        String result = null;
        try{
            POITextExtractor textExtractor = ExtractorFactory.createExtractor(fileWord);
            XWPFWordExtractor wordExtractor = (XWPFWordExtractor) textExtractor;
            result = wordExtractor.getText();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            if (iss != null) {
                try {
                    iss.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            return result;
        }
    }

    public boolean isWordFile(String filePath){

        String extension = FilenameUtils.getExtension(filePath);
        List<String> wordExtensions = new ArrayList<String>();
        wordExtensions.add("doc");wordExtensions.add("docx");wordExtensions.add("docm");wordExtensions.add("dotx");
        return wordExtensions.contains(extension);

    }
}
