import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TestTrain {

    private Passenger passenger_1;
    private Passenger passenger_2;
    private Train train;


    @Before
    public void before(){

        passenger_1 = new Passenger("Paul");
        passenger_2 = new Passenger("Emily");
        train       = new Train(10);
    }


    @Test
    public void canAddPassenger(){

        train.addNewPassenger(passenger_1);
        train.addNewPassenger(passenger_2);
        assertEquals(2, train.getPassengersCount());
    }

    @Test
    public void canRemovePassenger(){

        train.addNewPassenger(passenger_1);
        train.addNewPassenger(passenger_2);
        assertEquals(2, train.getPassengersCount());

        train.removePassenger(passenger_1);
        assertEquals(1, train.getPassengersCount());
    }


    @Test
    public void hasPlacesAvailableCount(){
        assertEquals(10, train.getPlacesAvailableCount());
    }

    @Test
    public void canFindPassenger(){
        train.addNewPassenger(passenger_1);
        train.addNewPassenger(passenger_2);
        assertEquals(passenger_1, train.findPassenger(passenger_1.getName()));
    }





}
