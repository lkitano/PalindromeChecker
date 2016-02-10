public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  int j = 0; 
  int l = 0;
  String s = new String();

 




  for(int i = 0; i < word.length(); i++){
    if(Character.isLetter(word.charAt(i)) == false){
         word = word.substring(0, i) + word.substring(i+1, word.length());

    }
  }

  
for(int i = 0; i < word.length(); i++){
    if(Character.isLetter(word.charAt(i)) == false){
         word = word.substring(0, i) + word.substring(i+1, word.length());

    }
  }


for(int k = 0; k < word.length(); k++){
    s = s + word.charAt(word.length()-1-k);  


}



  while(s.toLowerCase().charAt(j) == word.toLowerCase().charAt(j)){
    j++;
    if(j >= s.length()){
      return true;
    }

  }

  return false;
}

