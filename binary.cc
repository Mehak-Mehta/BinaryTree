#include <iostream> 
using namespace std; 

/* A node contains the value, left and right pointers */
struct Node 
{ 
	int data; 
	struct Node* left; 
	struct Node* right; 
}; 

/* Creates a new node */
struct Node* newNode(int data) 
{ 
	Node* node = new Node;
	node->data = data; 
	node->left = NULL; 
	node->right = NULL; 
	
	return(node); 
} 

void invert(struct Node* node) 
{ 
	if (node == NULL) 
		return; 
	else
	{ 
		struct Node* temp; 
		
		/* recursive calls */
		invert(node->left); 
		invert(node->right); 
	
		/* swap the pointers in this node */
		temp	 = node->left; 
		node->left = node->right; 
		node->right = temp; 
	} 
} 

/* print InOrder binary tree traversal.*/
void print_tree(struct Node* node) 
{ 
	if (node == NULL) 
		return; 
	
	print_tree(node->left); 
	cout << node->data << " "; 
	print_tree(node->right); 
} 

 
int main() 
{ 
	struct Node *root = newNode(2); 
	root->left = newNode(1); 
	root->right = newNode(4); 
	root->right->left = newNode(3); 
	root->right->right = newNode(5); 
	
	cout << "Inorder traversal of the constructed"
		<< " tree is" << endl; 
	print_tree(root); 
	
	/* Invert the tree */
	invert(root); 
	
	cout << endl;

	cout << "Inorder traversal of the inverted tree"
		<< " is \n"; 
	print_tree(root); 
	
	return 0; 
} 
