public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  String bWord = noCapitals(onlyLetters(noSpaces(word)));
  if(bWord.equals(reverse(bWord))){
    return true;
  }
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    if(str.length() == 0){
      return str;
    }
    for(int i = str.length() - 1; i >= 0; i--){
      sNew = sNew + str.substring(i, i + 1); 
    }
    return sNew;
}

public String noSpaces(String sWord){
  String noSpace = "";
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i)!= ' '){
      noSpace = noSpace + sWord.substring(i, i + 1);
    }
  }
  return noSpace;
}

public String onlyLetters(String sString){
  String letters = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      letters = letters + sString.charAt(i);
    }
  }
  return letters;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
  }

