package food;

import java.util.Map;

/**
 * Author Felix Karg, written 2017-06-15.
 */
public class Meal {

    private String mealName = "";
    private double calories = 0.0;
    private Map<Food, Double> ingredients;

    // creating a Meal with @name using @ingredients
    public Meal(String name, Map<Food, Double> ingredients) {
        mealName = name;
        this.ingredients = ingredients;
        ingredients.forEach((food, grams) -> calories += food.relativeEnergyDensity() * grams);
    }

    // returning the @name of the Meal
    public String getName() {
        return mealName;
    }

    // returning the @ingredients within the Meal
    public Map<Food, Double> getIngredients() {
        return ingredients;
    }

    // returning the combined calorific value of
    // the Meal
    public double getCalorificValue() {
        return calories;
    }

    public String toString() {
        return String.format("Meal %s with %d ingredients.", mealName, ingredients.size());
    }

}
