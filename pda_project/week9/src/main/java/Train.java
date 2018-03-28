import java.util.ArrayList;

public class Train extends TransportVehicle {


    public Train(int passengerCapacity) {
        super(passengerCapacity);
        this.passengers = new ArrayList<>();
    }

    public Passenger findPassenger(String passengerName){
        for(Passenger passenger : this.passengers){
            if(passenger.getName().equals(passengerName)){
                return passenger;
            }
        }

        return null;
    }


    public boolean addNewPassenger(Passenger newPassenger){
        if(this.passengers.size() < this.passengerCapacity){
            this.passengers.add(newPassenger);
            return true;
        }
        else{
            return false;
        }
    }

    public boolean removePassenger(Passenger passenger){
        if(this.passengers.contains(passenger)){
            this.passengers.remove(passenger);
            return true;
        }
        else{
            return false;
        }
    }

    public int getPassengersCount(){
        return this.passengers.size();
    }

    public int getPlacesAvailableCount(){
        return this.passengerCapacity - this.passengers.size();
    }


}
