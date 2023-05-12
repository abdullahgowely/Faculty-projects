
package data_strucures;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Scanner;
import java.util.Date;
import java.io.DataOutputStream;
import java.util.ArrayList;
public class Courses_GPA  extends Students  {

    public Courses_GPA() {
    }


    public Courses_GPA(int GPA) {
      this.GPA = 0;}
    
  protected double sum=0;
  protected double GPA;
  protected double total_h;
  protected int NumberOfPaymentsDone;
  protected int TotalAmountPaidSoFar;
  Object[] PayDetails = new Object[4];
  protected int AmountPaid;
  protected int TransactionNumber;
  protected String TypeOfFunding ;
  protected  String BankOfTransaction;
  protected Date TransactionDate;
  protected static int hours=0;
ArrayList<String> subjects=new ArrayList<String>();
ArrayList<Double> subjects_grades=new ArrayList<>();
ArrayList<Integer>course_id=new ArrayList<>();
ArrayList<String>doctor=new ArrayList<>();
ArrayList<String>GTA=new ArrayList<>();
ArrayList<Integer>ghours=new ArrayList<>();
public void getsubjects(){
    //getting the subjects names and codes from the user
    Scanner input=new Scanner(System.in);
    System.out.println("How many subjects did you study ?");
    int x=input.nextInt();
    for(int i=0;i<x;i++){
     System.out.println("Enter the name for subject"+(i+1));
     String subject=input.next();
     subjects.add(i,subject);
     System.out.println("What is the course id of subject "+(i+1)+"?");
     int id=input.nextInt();
     course_id.add(i,id);
     System.out.println("What is the name of the GTA ?");
     String gta=input.next();
     GTA.add(i,gta);
    }
    System.out.println("Your subjects are :");
    System.out.println(subjects);
    System.out.println("the id for the courses is :");
    System.out.println(course_id);
    System.out.println("The GTA for each course are :");
    System.out.println(GTA);

}
public void getDoctorName(){
    //getting the doctor name for the course from the user 
    Scanner input=new Scanner(System.in);
  System.out.println(subjects);
    for(int i=0;i<subjects.size();i++){
     System.out.println("Who is the doctor for subject"+(i+1));
     String subject=input.next();
     doctor.add(i,subject);
    }
    System.out.println("Your doctors are :");
    System.out.println(doctor);
}
public void getGrades(){
    //getting the grades for each course from the student,each grade has a unique gpa as shown :
    Scanner input=new Scanner(System.in);
    for(int i=0;i<subjects.size();i++){
        System.out.println("what is  Your grade for "+subjects.get(i));
        System.out.println("Enter from A --> to F");
    String grades=input.next();
     if (grades.equals ("A")||grades.equals("a"))
    subjects_grades.add(i, 4.00);
  else if (grades.equals("A-")||grades.equals("a-"))
    subjects_grades.add(i, 3.67);
    else if (grades.equals("A+")||grades.equals("a+"))
    subjects_grades.add(i, 4.0);
  else if (grades.equals("B+")||grades.equals("b+"))
   subjects_grades.add(i, 3.33);
  else if (grades.equals("B")||grades.equals("b"))
     subjects_grades.add(i, 3.00);
  else if (grades.equals ("B-")||grades.equals("b-"))
     subjects_grades.add(i, 2.67);
  else if (grades.equals("C+")||grades.equals("c+"))
     subjects_grades.add(i, 2.33);
  else if (grades.equals("C")||grades.equals("c"))
    subjects_grades.add(i, 2.00);
  else if (grades.equals ("D+")||grades.equals("d+"))
  subjects_grades.add(i, 1.33);
  else if (grades.equals ("D")||grades.equals("d"))
     subjects_grades.add(i, 1.00);
  else if (grades.equals ("F")||grades.equals("f"))
    subjects_grades.add(i, 0.0);
  else if (grades.equals ("FX"))
     subjects_grades.add(i,0.0);
  else
    System.out.println ("Invalid Grade");
    }
    System.out.println(subjects_grades);
}
public void getHours(){
    // getting the credit hours for each course from the student
    Scanner input = new Scanner(System.in);
    for(int i = 0;i<subjects.size();i++){
    System.out.println("What is the credit hours for subjcect "+subjects.get(i));
   int hours=input.nextInt();
   ghours.add(i, hours);}
    System.out.println("The credit hours for"+subjects);
    System.out.println(ghours);}
public void calc_gpa(){
    //calculating the gpa for the term from the student 
int i;
double total_h=0;
Scanner input=new Scanner(System.in);
System.out.println("How many courses did you take this term ?");
int t=input.nextInt();
for(i=0;i<t;i++){
System.out.println("what is the name of course "+(i+1));
System.out.println(subjects);
System.out.println(subjects_grades);
String course=input.next();
if(subjects.contains(course)){
int x=subjects.indexOf(course);
total_h+=ghours.get(x);
sum+=(subjects_grades.get(x)*ghours.get(x));
}}
  GPA=(sum)/(total_h);
  System.out.println("GPA is :"+GPA);
}
public void remove(){
    Scanner input=new Scanner(System.in);
    System.out.println("Do you want to remove any subjects ? \n 1-yes 2-no");
    int choice=input.nextInt();
    switch(choice){
        case 1 :
            System.out.println("Which subject do you want to remove ?");
            System.out.println(subjects);
            System.out.println(course_id);
            System.out.println(GTA);
            System.out.println(ghours);
            System.out.println(subjects_grades);
    System.out.println("Enter the course id for the subject you want to remove ");
            int id=input.nextInt();
            if(course_id.contains(id)){
                int x=course_id.indexOf(id);
            subjects.remove(x);
            course_id.remove(x);
            GTA.remove(x);
            ghours.remove(x);
            subjects_grades.remove(x);
                System.out.println("Your subjects has been successfully edited.");
         System.out.println(subjects);
            System.out.println(course_id);
            System.out.println(GTA);
            System.out.println(ghours);
            System.out.println(subjects_grades);
            break ;}
        case 2 :
            System.out.println("We are here anytime to serve you.");
            break ; 
        default :
            System.out.println("Please enter a correct answer");
            remove();
    }
}
}


    







  
