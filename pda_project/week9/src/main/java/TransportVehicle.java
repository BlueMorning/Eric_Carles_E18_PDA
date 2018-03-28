import java.util.ArrayList;

public abstract class TransportVehicle {

    protected int passengerCapacity;
    protected ArrayList<Passenger> passengers;

    public TransportVehicle(int passengerCapacity){
        this.passengerCapacity = passengerCapacity;
    }
}
