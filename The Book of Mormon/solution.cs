public class Kata
{
    public static long Mormons(long startingNumber, long reach, long target)
    {
        if (target <= startingNumber)
            return 0;

        return 1 + Mormons(startingNumber + startingNumber * reach, reach, target);
    }
}