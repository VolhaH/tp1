Source3.o: Source3.c
	gcc -c -o Source3.o Source3.c
Student.o: Student.h
	gcc -c -o Student.o Student.h
Student: Source3.o Student.o
	gcc -o Student Source3.o Student.o