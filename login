#include <iostream>
#include <fstream>
#include <string>

using namespace std;
bool isLoggedIn()
{
    string username, password;
    string un, pw;
    cout<< "entre a username:";
    cin>> username;
    cout<<"entre a password:";
    
    ifstream read(username + ".txt");
    getline(read, un);
    getline(read, pw);
    if (un == username && pw== password)
    {
        return true;
    }
    else 
    {
        return false;
    }
}

int main ()
{
    int choice;
    cout << endl;
    cout<< "Main Menu:" <<endl;
    cout<<"_____________________"<<endl;
    cout <<"1.Register"<<endl;
    cout <<"2.Login"<<endl;
    cout <<endl;
    cout << "your choice:";
    cin>> choice;
    
    if (choice==1)
    {
        string username, password;
        
        cout << "Registeration:"<<endl;
        cout<<endl;
        cout << "select a username:";
        cin>> username;
        cout<<"select a password:";
        cin>> password;
        
        ofstream file;
        file.open(username+ ".txt");
        file<<username <<endl<<password;
        file.close();
        cout<<"welcome"<<username<< "!"<<endl;
        
    }
    else  if (choice==2)
    {
        bool status= isLoggedIn();
        if (!status)
        {
            system("clear");
            cout<<endl;
            cout<<"invalid login!"<<endl;
            main();
            return 0;
        }
        else {
            cout<< "Successfully logged in!"<<endl;
            cout<<endl;
            
            int choiceTwo;
            cout <<"welcome back!"<<endl;
            cout<<endl;
            cout<<"DASHBOARD"<<endl;
            
        }
    }
}
