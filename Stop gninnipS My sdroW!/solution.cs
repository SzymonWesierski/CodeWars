using System;

public class Kata
{
    public static string SpinWords(string sentence)
    {
        int wordLength = 5;
        string newString = "";
        string[] splitedSentence = sentence.Split(" ");
        foreach (string word in splitedSentence)
        {
            if (word.Length >= wordLength)
            {
                char[] charArray = word.ToCharArray();
                Array.Reverse(charArray);
                newString += " " + new string(charArray);
            }
            else
            {
                newString += " " + word;
            }
        }
        return newString.TrimStart();
    }
}