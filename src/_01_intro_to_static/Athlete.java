
public class Athlete {

     static int nextBibNumber = 1;
     static String raceLocation = "New York";
     static String raceStartTime = "9.00am";

     String name;
     int speed;
     int bibNumber;

     Athlete (String name, int speed){
    	 this.name = name;
    	 this.speed = speed;
    	 this.bibNumber = nextBibNumber;
    	 nextBibNumber++;
     }
     


     public static void main(String[] args) {
    	 //create two athletes
    	 //print their names, bibNumbers, and the location of their race. 
    	 Athlete a = new Athlete("a", 5);
    	 System.out.println(a.name + " " + a.bibNumber + " " + raceLocation);
    	 Athlete b = new Athlete("b", 7);
    	 System.out.println(b.name + " " + b.bibNumber + " " + raceLocation);
     }
}

