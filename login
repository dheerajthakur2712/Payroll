void get_username(void)
{
        FILE *fp;
        char username[30];
        int val=0;
        system("cls");
        printf("Enter the username >>> ");
        scanf("%s",username);
        if(strcmp(username,ADM) == 0)
        {
                flag = 0;
        }
        else
        {
                fp = fopen(USER_FILE,"r");
                while(!feof(fp))
                {
                        val=strcmp(username,fp);
                        if(val == 1)
                        {
                                flag =1;
                                break;
                        }
                }
                if(flag = 0)
                        printf("Invalid username!!");
                fclose(fp);
        }
}

void maskPassword(char password[30])
{
        char ch;
        int i=0;
        while((ch =_getch())!=13)
        {
                printf("*");
                password[i]=ch;
                i++;
        }
        password[i]='\0';
}

void get_password(void)
{
        char password[30];
        do
        {
                system("cls");
                printf("Enter the password >>> ");
                maskPassword(password);
                if(strcmp(password,PWD)!=0)
                {
                    printf("\nWrong Password!!!");
                    sleep(2);
                }
        }while(strcmp(password,PWD)!=0);
}
