package com.java.excel;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExcelToDatabase {
	public static void main(String[] args) throws Exception {
		String jdbcURL = "jdbc:mysql://localhost:3306/quotes_database";
        String username = "root";
        String password = "subhra";
        
        String excelFilePath = "C:/Users/subhraprakashs/Downloads/Student_excel1.xlsx";
        int batchSize = 20;
        
        Connection connection = null;
        
        try {
        	long start = System.currentTimeMillis();
        	FileInputStream inputStrem = new FileInputStream(excelFilePath);
        	
        	Workbook workBook = new XSSFWorkbook(inputStrem);
        	
        	Sheet firstSheet = workBook.getSheetAt(0);
        	Iterator<Row> rowIterator = firstSheet.iterator();
        	
        	connection = DriverManager.getConnection(jdbcURL,username, password);
        	connection.setAutoCommit(false);
        	
        	String sql = "Insert into school(name, sec) values(?,?)";
        	PreparedStatement statement = connection.prepareStatement(sql);
        	int count = 0;
        	rowIterator.next();
        	
        	while(rowIterator.hasNext()) {
        		Row nextRow = rowIterator.next();
        		Iterator<Cell> cellIterator = nextRow.cellIterator();
        		
        		while(cellIterator.hasNext()) {
        			Cell nextCell = cellIterator.next();
        			
        			int columnIndex = nextCell.getColumnIndex();
        			 
        			switch (columnIndex) {
        		    case 0:
        		        String name = nextCell.getStringCellValue();
        		        statement.setString(1, name);
        		        break;
        		    case 1:
    		            String sec = nextCell.getStringCellValue(); // Read the value as string
        		        statement.setString(2, sec); // Set the string value
        		        break; // Add break statement here
        		    
        		}

        		}
        		 statement.addBatch();
        		 
        		 if (++count % batchSize == 0) {
                     statement.executeBatch();
                 }  
        	}

            workBook.close();
            statement.executeBatch();
            
            connection.commit();
            connection.close();
             
            long end = System.currentTimeMillis();
            System.out.printf("Import done in %d ms\n", (end - start));
        	
        }
        catch(Exception ex1) {
        	 System.out.println("Error reading file");
             ex1.printStackTrace();
        }
        
 
	}
}
