public class Animal {

    protected String name;

    public String talkToMe(){
        return "Animal";
    }

}


public class Dog extends Animal {



    private String talkToMe(){
        return "Dog";
    }

}

public class Chicken{

    public String talkToMe(){
        return "Chicken";
    }

}
