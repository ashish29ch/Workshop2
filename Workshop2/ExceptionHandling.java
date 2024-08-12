package Workshop2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ExceptionHandling {
    public static void main(String[] args) {
        List<Integer> list= Arrays.asList(2,3,4,5,6);
        System.out.println(list);
        try{
            System.out.println("Checking for IndexOutofBoundException");
            list.get(5);
        }catch (IndexOutOfBoundsException e){
            e.printStackTrace();
        }
        String str=null;
        try{
            System.out.println("Checking for NullPointerException");
            if(str.equals("ashish"))
                System.out.println("found string");
            else System.out.println("Not same");
        }catch (NullPointerException e){
            e.printStackTrace();
        }
    }
}
