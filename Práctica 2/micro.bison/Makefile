micro:	micro.tab.c micro.lex.c
	gcc -o micro micro.tab.c lex.yy.c
micro.tab.c:	micro.y
	bison -dv micro.y
micro.lex.c:	micro.l
	flex micro.l
clean:
	rm  micro.tab.c micro.tab.h micro.output lex.yy.c micro
