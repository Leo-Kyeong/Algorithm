import java.util.*;
class Solution {
    
    public int[] solution(int[] numbers) {
        Set<Integer> uniqueSums = new HashSet<>();

        for (int i = 0; i < numbers.length - 1; i++) {
            for (int j = i + 1; j < numbers.length; j++) {
                uniqueSums.add(numbers[i] + numbers[j]);
            }
        }
        
        return uniqueSums.stream()
                .sorted()
                .mapToInt(Integer::intValue)
                .toArray();
    }
}
