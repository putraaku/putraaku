#!/bin/bash

if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST FolderRahasia goto MDLOCKER
:CONFIRM
echo Apakah anda ingin mengunci FolderRahasia tersebut ?
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Ketik Y atau N.
goto CONFIRM
:LOCK
ren FolderRahasia "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo FolderRahasia Terkunci

:UNLOCK
echo Masukkan Password untuk membuka kunci
set/p "pass=>"
if NOT %pass%== masukkanpassword goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" FolderRahasia
echo FolderRahasia sudah di bu
:FAIL
echo Password salah

:MDLOCKER
md FolderRahasia
echo FolderRahasia Sukses di buat
