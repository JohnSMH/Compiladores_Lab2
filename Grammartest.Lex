
And [Aa][Nn][Dd]
Or [Oo][Rr]
Not [Nn][Oo][Tt]
True [Tt][Rr][Uu][Ee]
False [Ff][Aa][Ll][Ss][Ee]
%%
[\n()]    return yytext[0];
[ \t]		;
{And}	{ return AND;}
{Or}	{ return OR;}
{Not}	{return NOT;}
{True}	{yylval = 1; return (TRUE);}
{False} {yylval = 0; return (FALSE);}
.		printf("Error lexico\n");
%%

int yywrap(void)
{
	return 0;
}

// main(){
	// int token;
	// token = yylex();
	// while(token)
	// {
		// printf("%d\n", token);
		// token = yylex();
	// }
// }