#include <iostream>
#include <cstring>
using namespace std;
int main (int argc, char* argv[]){
  if (argv[1]==NULL){
    cout << " >> Input lb help to get help!";
    return 1;
  }
  char db[1000]="cd ~/LoveBlog/love-blog && bash main.sh ";
  strcat (db, argv[1]);
  strcat (db, " ");
  system (db);
}
