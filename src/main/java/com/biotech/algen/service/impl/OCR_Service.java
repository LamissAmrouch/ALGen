package com.biotech.algen.service.impl;

import net.sourceforge.tess4j.Tesseract;
import net.sourceforge.tess4j.TesseractException;
import org.springframework.stereotype.Service;

import java.io.File;

@Service
public class OCR_Service {

    public static final String dataPath =  "src\\main\\resources\\static\\langdata\\";

    private Tesseract getTesseract() {
        Tesseract instance = new Tesseract();
        instance.setDatapath(dataPath);
        instance.setHocr(true);
        return instance;
    }

    public static String fileToString(Tesseract tesseract, File file) {

        try {
            return tesseract.doOCR(file);
        } catch (TesseractException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
            return null;
        }
    }

    public String ocr(String filePath) {
        Tesseract tesseract = getTesseract();
        //tesseract.setLanguage("fra+ara"); // fra (français) , ara (arabe), eng (anglais) ....

        File file = new File(filePath);
        return fileToString(tesseract, file);
    }

}
