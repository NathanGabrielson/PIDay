class MyPI {

  private static String Pi;
  
  private static long NUMPI; // number of digits of PI

  public static String getPI() {
    return Pi;
  }

  public static void setPI(String in_) {
    Pi = in_;
  }

  public static long getNUMPI() {

    return NUMPI;
  }
  
  public static void setNUMPI(long num_) {
    NUMPI = num_;
  }

  public static String [] getSubs(String s_) {
    s_ = s_.replace("/", "");
    String [] us = new String[s_.length()];

    for (int i = 0; i < s_.length(); i++) {
      us[i] = s_.substring(0, i+1);
    }

    return us;
  }

  public static String findinPI(String in_) {
    boolean found = false;
    int output = 0;
    int len = in_.length();
   
    
    for (int i = 0; i < NUMPI - len; i++) {

      if (Pi.substring(i,i+len).equals(in_) ) {
        found = true;
        output = i;
        break;
        
      }
    }
    
    if (found == true) {
      return ("FOUND " + in_ + " at position: " + output);
    }
    else {
      return ("NOT FOUND: " + in_);
    }
  }
  
}
