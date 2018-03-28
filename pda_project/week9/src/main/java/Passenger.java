public class Passenger implements Cloneable {

    private String name;


    {
        System.out.println("Welcome to this new passenger \n");
    }


    public Passenger(String name){
        this.name = name;
        System.out.println("Whose name is " + this.getName());
    }

    public String getName(){
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Passenger clone() throws CloneNotSupportedException {
        return (Passenger)super.clone();
    }

}
