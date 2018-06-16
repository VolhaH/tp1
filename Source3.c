#define _CRT_SECURE_NO_WARNINGS

#include<stdio.h>
#include "Student.h"

void add(FILE* f) {
	struct student st;

	printf("surname:\n");
	scanf("%s", st.surname);

	printf("name:\n");
	scanf("%s", st.name);

	printf("patronymic:\n");
	scanf("%s", st.patronymic);

	printf("year:\n");
	scanf("%d", &st.year);

	printf("gender:\n");
	scanf("%d", &st.gender);

	printf("marks:\n");
	for (int i = 0; i < 3; i++) {
		scanf("%d", &st.marks[i]);
	}

	fwrite(&st, sizeof(st), 1, f);

	printf("Student has added.\n");
}

void print(FILE* f) {
	struct student st;

	fseek(f, 0, SEEK_SET);
	while (1) {
		fread(&st, sizeof(st), 1, f);
		if (feof(f))
			break;
		printf("%s %s %s, %d, %d; %d, %d, %d\n", st.surname, st.name, st.patronymic, st.year, st.gender, st.marks[0], st.marks[1], st.marks[2]);
	}
	printf("List has printed.\n");
}

void old(FILE* f) {
	struct student st;
	struct student max;
	max.year = 3000;

	fseek(f, 0, SEEK_SET);
	while (1) {
		fread(&st, sizeof(st), 1, f);
		if (feof(f))
			break;
		if (st.year < max.year) {
			max = st;
		}
		
	}
	printf("%s %s %s, %d, %d; %d, %d, %d\n", max.surname, max.name, max.patronymic, max.year, max.gender, max.marks[0], max.marks[1], max.marks[2]);
	printf("The oldest.\n");
}

int main() {
	int c = -1;
	FILE *f;

	f = fopen("file.txt", "a+");

	printf("1 - Add.\n2 - Print.\n3 - Print the oldest.\n0 - EXIT.\n\n");

	while (c != 0) {
		scanf("%d", &c);
		switch (c) {
		case 1:
			add(f);
			break;
		case 2:
			print(f);
			break;
		case 3:
			old(f);
			break;
		default:
			break;
		}
	}

	return 0;
}