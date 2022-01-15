
#include<stdio.h>
#include<string.h>
#include<time.h>
#include<stdlib.h>
#include<math.h>


//KUTAY ÖZBAY 270201017
/*
Functionalities;
- Text File IO (DONE)
- Priority Queue  (DONE)
    - Insert (DONE)
    - Getting Indexis of parent, left and right node (DONE)
    - ShýftUp Funciton (DONE)
    - Swap Function (DONE)
- Convert Function ( DONE)
    -Node Struct  (DONE)
    -Running node struct correctly (DONE)
- Save your array in a Text File by Breadht First(DONE)
- Write that one in Java too ( DONE)

*/



typedef struct Node {
    int data;
    struct Node* left;
    struct Node* right;
}Node;

struct Node* newNode(int data)
{

    struct Node* node = (struct Node*)malloc(sizeof(struct Node));

    node->data = data;


    node->left = NULL;
    node->right = NULL;
    return (node);
}
Node* insertLevelOrder(int* arr, struct Node* root, int i, int n)
{

    if (i < n)
    {
        struct Node* temp = newNode(arr[i]);
        root = temp;
        root->left = insertLevelOrder(arr, root->left, 2 * i + 1, n);
        root->right = insertLevelOrder(arr, root->right, 2 * i + 2, n);
    }
    return root;
}
/* Print function For Node Structer it used in test stage
void inOrder(struct Node* root)
{
    if (root != NULL)
    {
        inOrder(root->left);
        printf("%d \n", root->data);
        inOrder(root->right);
    }
}
*/


int main() 
{
    int num = pow(2, 25);
    //Malloc Func
    int* unorderedArray = (int*)malloc(num * sizeof(int));

    FILE* filePointer;
    filePointer = fopen("2-25integers.txt", "r");

    // Check if this filePointer is null
    // which maybe if the file does not exist
    if (filePointer == NULL)
    {
        printf("2-25integers.txt file failed to open.");
    }
    else
    {

        printf("The file is now opened.\n");
        // using fscanf() method to read data
        int i = 0;
        //k is lentgh of our array 
        int k = 0;
        while (!feof(filePointer))
        {
            //Burayý tek satýra çevir.
            fscanf(filePointer, "%d", &i);
            unorderedArray[k] = i;
            k++;
        }
        int* priorityQueue = (int*)malloc(k * sizeof(int));
        int size = -1;
        //closing file
        fclose(filePointer);
        struct Node* root = insertLevelOrder(unorderedArray, root, 0, k);
        //parent index function
        int parent(int i)
        {

            return (i - 1) / 2;
        }
        //leftchild funciton
        int leftChild(int i)
        {

            return ((2 * i) + 1);
        }
        //rightchild funciton
        int rightChild(int i)
        {

            return ((2 * i) + 2);
        }
        //swap function
        void swap(int i, int j)
        {
            int temp = priorityQueue[i];
            priorityQueue[i] = priorityQueue[j];
            priorityQueue[j] = temp;
        }
        //shiftUp Funciton
        void shiftUp(int i)
        {
            while (i > 0 && priorityQueue[parent(i)] < priorityQueue[i]) {

                // Swap parent and current node
                swap(parent(i), i);

                // Update i to parent of i
                i = parent(i);
            }
        }
        //insert Function it is the main function which calls the others.
        void insert(int p)
        {
            size = size + 1;
            priorityQueue[size] = p;

            // Shift Up to maintain heap property
            shiftUp(size);
        }       
        
        
        printf("Data successfully read from file 2-25integers.txt\n");
        printf("The file is now closed.\n");
        //Time start
        clock_t start, end;
        double cpu_time_used;

        start = clock();
        for (int i = 0; i < k; i++)
        {
            insert(*(unorderedArray + i));
        }
        //Time End
        end = clock();
        cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
        //Printing Time
        printf("Time: %f \n", cpu_time_used);

        /*
        It is used in Test Stage of code it is printing priorityqueue array 
        for (int i = 0; i < k; i++)
        {
            printf("PQ: %d\n", priorityQueue[i]);
        }
        */


        //Write File Process
        // creating a FILE variable
        FILE* fptr;
        // open the file in write mode
        fptr = fopen("integers", "w");

        if (fptr != NULL) {
            printf("File created successfully!\n");
        }
        else {
            printf("Failed to create the file.\n");
            // exit status for OS that an error occurred
            return -1;
        }
        
        for (int i = 0; i < k; i++)
        {
            fprintf(fptr, "%d", priorityQueue[i]);
        }
        // close connection
        fclose(fptr);

        /*
        // open file for reading it is used in coding stge for test purposes
        fptr = fopen("integers", "r");

        // display numbers
        printf("\nNumbers:\n");
        while ((num = getw(fptr)) != EOF) {
            printf("Writen numbers: %d\n", num);
        }

        printf("\nEnd of file.\n");

        // close connection
        fclose(fptr);
        */   
    }

}



     

        


        
        
         

   







    

    