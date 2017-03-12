#define _CRT_SECURE_NO_WARNINGS
#include <vcl.h>
#include <stdio.h>
#include <stdlib.h>
#pragma hdrstop
#include "Unit1.h"
#include "Unit2.h"
#include "Unit3.h"
#include "Unit4.h"
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
__fastcall TForm1::TForm1(TComponent* Owner) : TForm(Owner) {}
/*
1. Создать файл, содержащий сведения о количестве изделий категорий А, В, С,
    собранных рабочим за месяц. Структура записей имеет поля:
    фамилия сборщика, наименование цеха, количество изделий по категориям,
    собранных рабочим за месяц. Количество записей - произвольное.
2. Cчитая,  заданными значения расценок   за выполненную работу по сборке
    единицы изделия категорий А, В, С соответственно,
    выдать на печать следующую информацию:
    - общее количество изделий категорий А, В, С, собранных рабочим цеха Х;
    - ведомость зарплаты рабочих цеха Х;
    - средний размер зарплаты работников этого цеха,
    - фамилию рабочего завода, собравшего наибольшее количество изделий.
*/
#define LENGTH_STRING 16
char *File_Name = {"fdb.txt"};
int CountEmp = 0;

void StatDoneProdForDep(TMaskEdit *maskedit, TMemo *memo, char *file_name);
void StatSalaryForDep(TMaskEdit *maskedit, TMemo *memo, char *file_name);
void SearchBestEmployee();
void PrintDBInStringGrid(TStringGrid *grid, char *file_name);

struct ProductByCategory
{
    short int prodA;  // A category of product
    short int prodB;  // B category of product
    short int prodC;  // C category of product
};

struct Employee
{
    char secondName[LENGTH_STRING]; // second name of employye
    char nameOfDep[LENGTH_STRING];  // name of department
    ProductByCategory doneProduct;  // count of done product
} employee;

struct
{
    short int salA; // salary for product A
    short int salB; // salary for product B
    short int salC; // salary for product C
} salary = {0};
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
    system("chcp 1251 > nul");
    PageControl1->ActivePageIndex = 0;
    MaskEdit7->Text = IntToStr(0);
    MaskEdit8->Text = IntToStr(0);
    MaskEdit9->Text = IntToStr(0);
    File_Name = "fdb.txt";
    Edit1->Text = File_Name;
    StringGrid1->ColCount = 6;
    StringGrid1->RowCount = 100;
    StringGrid1->ColWidths[0] = 20;
    StringGrid1->ColWidths[1] = 140;
    StringGrid1->ColWidths[2] = 150;
    StringGrid1->ColWidths[3] = 50;
    StringGrid1->ColWidths[4] = 50;
    StringGrid1->ColWidths[5] = 50;
    StringGrid1->Cells[0][0] = "№";
    StringGrid1->Cells[1][0] = "Фамилия";
    StringGrid1->Cells[2][0] = "Цех";
    StringGrid1->Cells[3][0] = "А(шт.)";
    StringGrid1->Cells[4][0] = "B(шт.)";
    StringGrid1->Cells[5][0] = "C(шт.)";
    StringGrid1->Options = StringGrid1->Options >> goEditing;
    PrintDBInStringGrid(StringGrid1, File_Name);
}

// create new embloyee
void __fastcall TForm1::BitBtn2Click(TObject *Sender)
{
    FILE *fdb = fopen(File_Name,"at");
    if(!fdb) { perror(File_Name); exit(1); }

    // read information from form and save him in file
    strcpy(employee.secondName,MaskEdit1->Text.c_str());     // second name
    strcpy(employee.nameOfDep,MaskEdit2->Text.c_str());      // department
    employee.doneProduct.prodA = StrToInt(MaskEdit3->Text);  // product A
    employee.doneProduct.prodB = StrToInt(MaskEdit4->Text);  // product B
    employee.doneProduct.prodC = StrToInt(MaskEdit5->Text);  // product C
    MaskEdit1->Text = "";
    MaskEdit2->Text = "";
    MaskEdit3->Text = "";
    MaskEdit4->Text = "";
    MaskEdit5->Text = "";

    fwrite(&employee, sizeof(Employee), 1, fdb);
    fprintf(fdb,"\n");
    fclose(fdb);

    PrintDBInStringGrid(StringGrid1, File_Name);
}

// set salary for single done product
void __fastcall TForm1::BitBtn4Click(TObject *Sender)
{
    salary.salA = StrToInt(MaskEdit7->Text);
    salary.salB = StrToInt(MaskEdit8->Text);
    salary.salC = StrToInt(MaskEdit9->Text);
    if((salary.salA) && (salary.salB) && (salary.salC))
    {
        ShowMessage("Ставка за сборку едениицы изделия установлена успешно.");
        MaskEdit10->Text = MaskEdit7->Text;
        MaskEdit11->Text = MaskEdit8->Text;
        MaskEdit12->Text = MaskEdit9->Text;
    }
    else
        ShowMessage("Во время задания данных возникла ошибка! Попробуйте еще раз.");
    TabSheet3->Show();
}

// print reports
void __fastcall TForm1::BitBtn3Click(TObject *Sender)
{
    Form1->Memo1->Clear();
    StatDoneProdForDep(MaskEdit6 ,Memo1, File_Name);
    StatSalaryForDep(MaskEdit6 ,Memo1, File_Name);
    SearchBestEmployee();
}

// change database
void __fastcall TForm1::BitBtn1Click(TObject *Sender)
{
    StringGrid1->Options = StringGrid1->Options << goEditing;
}

// save (read from StringGrid1 and rewrite file)
void __fastcall TForm1::BitBtn5Click(TObject *Sender)
{
    StringGrid1->Options = StringGrid1->Options >> goEditing;

    FILE *fdb = fopen(File_Name,"wt");
    if(!fdb) { perror(File_Name); exit(1); }

    int count = 1;
    while(count <= CountEmp)
    {
        strcpy(employee.secondName, StringGrid1->Cells[1][count].c_str());
        strcpy(employee.nameOfDep, StringGrid1->Cells[2][count].c_str());
        employee.doneProduct.prodA = StrToInt(StringGrid1->Cells[3][count]);
        employee.doneProduct.prodB = StrToInt(StringGrid1->Cells[4][count]);
        employee.doneProduct.prodC = StrToInt(StringGrid1->Cells[5][count]);
        fwrite(&employee, sizeof(Employee), 1, fdb);
        fprintf(fdb,"\n");
        count++;
    }

    fclose(fdb);
    PrintDBInStringGrid(StringGrid1, File_Name);
}
// clear Edit for enter data
void __fastcall TForm1::MaskEdit7Click(TObject *Sender)
{ MaskEdit7->Text = ""; }
void __fastcall TForm1::MaskEdit8Click(TObject *Sender)
{ MaskEdit8->Text = ""; }
void __fastcall TForm1::MaskEdit9Click(TObject *Sender)
{ MaskEdit9->Text = ""; }

// open information about this program end exit of application
void __fastcall TForm1::N4Click(TObject *Sender)
{ Application->Terminate(); }
void __fastcall TForm1::N2Click(TObject *Sender)
{ Form2->Show(); }
void __fastcall TForm1::N3Click(TObject *Sender)
{ Form3->Show(); }

// open file
void __fastcall TForm1::N7Click(TObject *Sender)
{
    if(OpenDialog1->Execute())
    {
        File_Name = OpenDialog1->FileName.c_str();
        Edit1->Text = File_Name;
    }
    else
    {
        File_Name = "filedatabase.dat";
        Edit1->Text = File_Name;
    }
    PrintDBInStringGrid(StringGrid1, File_Name);
}

// clear file
void __fastcall TForm1::N8Click(TObject *Sender)
{
    FILE *fdb = fopen(File_Name,"wt");
    if(!fdb) { perror(File_Name); exit(1); }
    ShowMessage(File_Name + AnsiString(" : очистка прошла успешно!"));
    fclose(fdb);
}

// create new file
void __fastcall TForm1::N6Click(TObject *Sender)
{
    Form4->Show();
}

// report about all products made by employees from interesting department 
void StatDoneProdForDep(TMaskEdit *maskedit, TMemo *memo, char *file_name)
{
    FILE *fdb = fopen(file_name,"rt");
	if(!fdb) { ShowMessage("Файл отсутствует!"); perror(File_Name); exit(1); }

	// list with count of all done product for each employee
	Form1->Memo1->Lines->Add(AnsiString("Работники цеха ") + maskedit->Text +
                             AnsiString(":"));
	while(!feof(fdb))
	{
		fread(&employee, sizeof(Employee), 1, fdb);
		if(!strcmp(employee.nameOfDep,maskedit->Text.c_str()))
		{
			int allDoneProd = employee.doneProduct.prodA +
								employee.doneProduct.prodB +
								employee.doneProduct.prodC;
			memo->Lines->Add(AnsiString("    ")+employee.secondName +
								AnsiString(" всего собрал ") +
								IntToStr(allDoneProd) +
								AnsiString(" изделий: (A: ") +
                                IntToStr(employee.doneProduct.prodA) +
                                AnsiString(", B: ") +
                                IntToStr(employee.doneProduct.prodB) +
                                AnsiString(", C: ") +
                                IntToStr(employee.doneProduct.prodC) +
                                AnsiString(")."));
		}
        fscanf(fdb,"\n");
	}
    fclose(fdb);
}

// print report about salary for interesting department
void StatSalaryForDep(TMaskEdit *maskedit, TMemo *memo, char *file_name )
{
    int depSal = 0,     // salary for interesting department
	    empSal = 0,	    // salary for employee from this department
	    countEmp = 0;   // count of employees
    double avgSal = 0;  // average salary for interesting department
// calculate average salary for interesting department
// list with salary for each employee from this department
	memo->Lines->Add(AnsiString("Оклад работников цеха ") +
						maskedit->Text + AnsiString(":"));

    FILE *fdb = fopen(file_name,"rt");
	if(!fdb) { ShowMessage("Файл отсутствует!"); perror(File_Name); exit(1); }
	while(!feof(fdb))
	{
		fread(&employee, sizeof(Employee), 1, fdb);
		if(!strcmp(employee.nameOfDep,maskedit->Text.c_str()))
		{
			empSal = employee.doneProduct.prodA * salary.salA +
                     employee.doneProduct.prodB * salary.salB +
                     employee.doneProduct.prodC * salary.salC;
			depSal += empSal;

			memo->Lines->Add(AnsiString("    Оклад работника ") +
								employee.secondName + AnsiString(" составляет ") +
								IntToStr(empSal) + AnsiString("$"));
			countEmp++;
		}
        fscanf(fdb,"\n");
	}
    if(countEmp)
    {
		avgSal = depSal / countEmp;
		Form1->Memo1->Lines->Add(AnsiString("Средний оклад по цеху ") +
				    		  maskedit->Text + AnsiString(":") +
                             FormatFloat(0.00, avgSal) + "$");
    }
    else
        ShowMessage("В базе данных не найдена информация о сотрудниках искомого цеха!");

    fclose(fdb);
}
//---------------------------------------------------------------------------

// search best employee for max done products
void SearchBestEmployee()
{
    FILE *fdb = fopen(File_Name,"rt");
    if(!fdb) { perror(File_Name); exit(1); }

    char best[LENGTH_STRING];
    int max = 0, doneprod = 0;
    while(!feof(fdb))
    {
		fread(&employee, sizeof(Employee), 1, fdb);
        doneprod = employee.doneProduct.prodA +
                   employee.doneProduct.prodB +
                   employee.doneProduct.prodC;
        if(doneprod > max)
        {
            max = doneprod;
            strcpy(best,employee.secondName);
        }
        fscanf(fdb,"\n");
    };

    Form1->Memo1->Lines->Add(AnsiString("Сотрудник ") + best +
                      " собрал больше всего изделий: " + IntToStr(max) +
                      AnsiString(" шт."));
    fclose(fdb);
}

// print database in StringGrid
void PrintDBInStringGrid(TStringGrid *grid, char *file_name)
{
    grid->Options = grid->Options << goEditing;
    FILE *fdb = fopen(file_name, "rt");
    if(!file_name) {perror(file_name); exit(1);}

    int count = 1;
    while(!feof(fdb))
    {
        fread(&employee, sizeof(Employee),1,fdb);

        grid->Cells[0][count] = IntToStr(count);
        grid->Cells[1][count] = employee.secondName;
        grid->Cells[2][count] = employee.nameOfDep;
        grid->Cells[3][count] = employee.doneProduct.prodA;
        grid->Cells[4][count] = employee.doneProduct.prodB;
        grid->Cells[5][count] = employee.doneProduct.prodC;

        ++count;
        fscanf(fdb,"\n");
    }
    CountEmp = count - 1;

    fclose(fdb);
    grid->Options = grid->Options >> goEditing;
}

// safe enter of data
void __fastcall TForm1::MaskEdit1KeyPress(TObject *Sender, char &Key){
    if (Key == VK_BACK) return;
    if ((Key < 'А') || (Key > 'Я') && (Key < 'а') || ((Key > 'я'))) Key = 0;
}
void __fastcall TForm1::MaskEdit2KeyPress(TObject *Sender, char &Key){
    if (Key == VK_BACK) return;
    if ((Key < '0') || (Key > '9')) Key = 0;
}
