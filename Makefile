parser: 
	miniL.lex miniL.y
	bison -v -d --file-prefix=y miniL.y
	flex miniL.lex
	gcc -o parser y.tab.c lex.yy.c -lfl

test:
	cat fibonacci.min | parser

clean:
	rm -f lex.yy.c y.tab.* y.output *.o parser
