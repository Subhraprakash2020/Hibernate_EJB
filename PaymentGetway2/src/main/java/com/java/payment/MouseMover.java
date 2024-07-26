package com.java.payment;

import java.awt.AWTException;
import java.awt.Dimension;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.Toolkit;
import java.util.Random;

public class MouseMover {
	public static void main(String[] args) throws InterruptedException {
        Robot robot;
        try {
            robot = new Robot();
            Random random = new Random();
            Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
            while (true) {
                int screenWidth = screenSize.width;
                int screenHeight = screenSize.height;
                int randomX = random.nextInt(screenWidth);
                int randomY = random.nextInt(screenHeight);
                robot.mouseMove(randomX, randomY);
                Thread.sleep(10000);
            }
        } catch (AWTException e) {
              e.printStackTrace();
        }
    }
}
