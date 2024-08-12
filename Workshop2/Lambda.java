package Workshop2;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

public class Lambda {
    public static void main(String[] args) {
        List<Integer> list= Arrays.asList(3,2,65,73,2,7,9,5);
        System.out.println(list);
        System.out.print("Maximum value in list : ");
        Optional<Integer> max=list.stream().max(Integer::compareTo);
        System.out.print(max.get());
    }
}
