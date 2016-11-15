Table foods;
ArrayList<StringList> foodNames;

void setup() {

  foods = loadTable("foods.csv", "header");  
  println(foods.getRowCount() + " total rows in table"); 

  foodNames = new ArrayList<StringList>();

  for (TableRow row : foods.rows()) {
    StringList foodStatus = new StringList();

    String foodName = row.getString("Food");
    foodStatus.set(0, foodName);
    String edible = row.getString("Edible?");
    foodStatus.set(1, edible);

    foodNames.add(foodStatus);
  }

  println(foodNames);
}