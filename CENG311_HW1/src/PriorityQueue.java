
import java.math.*;
import java.util.PriorityQueue;



public class PriorityQueue {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(new File("somenumbers.txt"));
		double num = Math.pow(2, 28);
		int [] unorderedArray = new int [100];
		int [] priorityQueue = new int [100];
		int i = 0;
		while(scanner.hasNextInt())
		{
			unorderedArray[i++] = scanner.nextInt();
		}

		   
		   
		// Creating empty priority queue
		PriorityQueue<Integer> pQueue = new PriorityQueue<Integer>();
		for(int k = 0; k < unorderedArray.length; k++){
			pQueue.add(priorityQueue[k]);
		}
		  
		    
		

	}

}
