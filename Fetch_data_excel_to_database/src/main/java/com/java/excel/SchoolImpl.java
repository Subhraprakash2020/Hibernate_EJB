package com.java.excel;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.FileInputStream;
import java.util.Iterator;

public class SchoolImpl {
	SessionFactory sf;
	Session session;
	
	public void MergeData(School schllo){
//	   String excelFilePath = "C:/Users/subhraprakashs/Downloads/Student_excel1.xlsx";
		   String excelFilePath = schllo.getExcelFile();
		   System.out.println("excelfilepath......"+excelFilePath);


       try {
           long start = System.currentTimeMillis();
           FileInputStream inputStream = new FileInputStream(excelFilePath);
           Workbook workbook = new XSSFWorkbook(inputStream);

           SessionFactory sf = SessionHelper.getConnection();
   		   Session session = sf.openSession();

           Iterator<Row> rowIterator = workbook.getSheetAt(0).iterator();

           Transaction transaction = session.beginTransaction();

           while (rowIterator.hasNext()) {
               Row row = rowIterator.next();

               School school = new School();
               school.setName(row.getCell(0).getStringCellValue());
               school.setSec(row.getCell(1).getStringCellValue());

               session.save(school);
           }

           transaction.commit();
           session.close();
           workbook.close();

           long end = System.currentTimeMillis();
           System.out.printf("Import done in %d ms\n", (end - start));
       } catch (Exception ex) {
           System.out.println("Error reading file");
           ex.printStackTrace();
       }
   }

}
