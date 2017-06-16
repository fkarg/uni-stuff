package food;

/**
 * Author Felix Karg, written 2017-06-15.
 */
public class Food {

    private String foodName = "";
    private double energyDensity = 0.0;

    // creating Food with @name, @carbohydrateShare, @fatShare and @proteinShare
    // and calculating the internal energy-Density based on that
    public Food(String name, double carbohydrateShare, double fatShare, double proteinShare) {

        // checking if too big
        if (carbohydrateShare + fatShare + proteinShare > 1)
            throw new IllegalArgumentException("proportion bigger than one!");
        // checking for negs
        if (carbohydrateShare < 0 || fatShare < 0 || proteinShare < 0)
            throw new IllegalArgumentException("no negative values allowed!");

        foodName = name;
        energyDensity = 17 * (carbohydrateShare + proteinShare) + 37 * fatShare;
    }

    // returning the @name of the Food
    public String getName() {
        return foodName;
    }

    // returning the already-calculated energy-density
    public double relativeEnergyDensity() {
        return energyDensity;
    }

    @Override
    public boolean equals (Object r) {
        if (r == null) return false;
        if (!(r instanceof Food)) return false;
        Food food = (Food) r;
        return food.getName().equals(this.getName());
    }

    @Override
    public int hashCode() {
        return foodName.hashCode();
    }

    public String toString() {
        return String.format("Food %s with %s calories", foodName, energyDensity);
    }

}
