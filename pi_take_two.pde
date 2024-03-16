String [] pilines;
String pidigits;
long numDigits;
String bDay = "";
String bDayUK;
String[] us;
String[] uk;

void setup() {
  print("PLEASE INPUT BIRTHDAY IN FOLLOWING SYNTAX: MM/DD/YY\n");
}

void draw() {}

void search() {
   print("bDay is: " + bDay);
   bDayUK = (bDay.substring(3,6) + bDay.substring(0,3) + bDay.substring(6));
   print("\nbDayUK is: " + bDayUK);
   us = MyPI.getSubs(bDay);
   uk = MyPI.getSubs(bDayUK);
   
   pilines = loadStrings("pi-tenmillion.txt");
   pidigits = pilines[0].replace(".", "");
   numDigits = pidigits.length();
   MyPI.setPI(pidigits);
   MyPI.setNUMPI(numDigits);
   
   System.out.println("UNITED STATES");
   
   for (String target : us) {
     System.out.println(MyPI.findinPI(target));
   }
   System.out.println("\nUK TIME");
   for (String target : uk) {
     System.out.println(MyPI.findinPI(target));
    
   }
   
   return;
}

void keyTyped () {
  print(key);
  if (key == ENTER && bDay.length() > 0) {
    search();
  }
  else if (key == DELETE) {
    bDay = "";
    System.out.println();
  }
  else {   
    bDay+=key;
  }
}
