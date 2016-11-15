import java.util.Map;
import interfascia.*;

GUIController c;
IFTextField t;
IFLabel l;

Table foods;
HashMap<String,String> foodNames = new HashMap<String,String>();
PFont result;

String foodItem = "";

void setup() {
  background(#FFFFFF);
  size(1200,800);
  result = createFont("BEBAS.ttf", 120); 
  foods = loadTable("foods.csv", "header");
  
  c = new GUIController(this);
  t = new IFTextField("Text Field", 25, 30, 150);
  l = new IFLabel("", 25, 70);
  
  c.add(t);
  c.add(l);
  
  t.addActionListener(this);
}

void draw(){
  background(#FFFFFF);
  String foodResult = getResult(foodItem);
  fill(0);
  textFont(result);
  textAlign(CENTER, CENTER);
  text(foodResult, width/2, (height/2)-20);
}

void actionPerformed(GUIEvent e) {
  if (e.getMessage().equals("Completed")) {
    println("New result");
    foodItem = t.getValue();
  }
}