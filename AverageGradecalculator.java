package com.craftAssignment;

import java.util.Scanner;

public class AverageGradecalculator {

	
		// TODO Auto-generated method stub
		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
	        System.out.print("Enter the number of subjects: ");
	        int numSubjects = sc.nextInt();

	        int[] scores = new int[numSubjects];

	        for (int i = 0; i < numSubjects; i++) {
	            System.out.print("Enter the score for subject " + (i + 1) + ": ");
	            scores[i] = sc.nextInt();
	        }
	        int totalScore = 0;
	        for (int score : scores) {
	            totalScore += score;
	        }

	        double averageGrade = (double) totalScore / numSubjects;

	        System.out.println("Average grade: " + averageGrade);

		
	}

}
