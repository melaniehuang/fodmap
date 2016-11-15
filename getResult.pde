String getResult(String n){
  
  TableRow r = foods.findRow(n, "Food");
  
  if (r != null){
    String foodName = r.getString("Food");
    String edible = r.getString("Edible?");
    foodNames.put(foodName, edible);       
    return foodNames.get(foodItem);
  } else {
    return "Not found";
  }

}