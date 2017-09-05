package rainfall;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * Author Felix Karg, written 2017-07-13.
 */
public class Main {
    /**
     * This function computes average precipitation from the list readings.
     * Then, for each series we compute the average (ignoring negative, falsely
     * reportet values), and put them in the list to be returned. Empty series
     * will be marked by the empty Option-Type.
     * @param readings several series of precipitation-data.
     * @return a list of Option-types formed from the averaging of the given series.
     */
    public static List<Optional<Double> > rainfall(List<Double> readings) {

        List<Optional<Double> > returnvalue = new ArrayList<Optional<Double> >();
        Double currentSum = 0.0;
        int currentNum = 0;

        for (int i = 0; i < readings.size(); i++) {
            if (readings.get(i) == -999.0 && currentNum != 0) {
                // this means we are at the end of an series, reset both counters.
                returnvalue.add(Optional.of(currentSum / currentNum));
                currentNum = 0;
                currentSum = 0.0;
            } else if (readings.get(i) == -999.0) {
                // this means that currentNum = 0, or that there were no datapoints.
                returnvalue.add(Optional.empty());
            } else if (readings.get(i) >= 0){
                // we still have to check if the value is valid
                currentNum += 1;
                currentSum += readings.get(i);
            }
        }
        return returnvalue;
    }
}
