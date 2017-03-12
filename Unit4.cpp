#include <vcl.h>
#include <stdio.h>
#pragma hdrstop
#include "Unit4.h"
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm4 *Form4;
__fastcall TForm4::TForm4(TComponent* Owner) : TForm(Owner) { }

char *_File_Name = "";

void __fastcall TForm4::FormCreate(TObject *Sender)
{
    Edit1->Text = "";
    Edit2->Text = ".txt";
    Edit2->Enabled = "false";
}
//---------------------------------------------------------------------------

void __fastcall TForm4::BitBtn1Click(TObject *Sender)
{
    strcat(strcpy(_File_Name, Edit1->Text.c_str()), ".txt");

    ShowMessage(_File_Name);

    FILE *fdb = fopen(_File_Name,"wt");
    if(!fdb) { perror(_File_Name); exit(1); }

    fclose(fdb);
    Form4->Close();    
}
//---------------------------------------------------------------------------
