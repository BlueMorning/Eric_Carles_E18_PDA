public class Runner {




     public static void main (String[] args){


         Passenger p1 = new Passenger("Eric");


         changeName(p1, "Jessica");

         System.out.println(p1.getName());


         Passenger p2 = new Passenger("Mathieu");

         try{
            changeName(p2.clone(), "Ashley");
         }
         catch(CloneNotSupportedException c){

         }

         System.out.println(p2.getName());

         int x = 10;
         multiply(x);
         System.out.println(x);




     }


     public static void changeName(Passenger p, String newName){
         p.setName(newName);
     }

     public static int multiply(int z){
         z = z*2;
         return z;
     }



}
