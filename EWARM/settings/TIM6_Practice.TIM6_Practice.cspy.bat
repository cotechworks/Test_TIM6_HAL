@REM このバッチファイルはIAR Embedded WorkbenchC-SPYデバッガによって
@REM  適切な設定を使用するcspybatコマンドライン
@REMユーティリティを実行するためのコマンドラインの準備を支援するものとして生成されています。
@REM
@REM このファイルは新しいデバッグセッションが初期化されるたびに生成されるため、
@REM ファイルを名称変更または移動してから
@REM 変更を行うことを推奨します。
@REM
@REM cspybatは、このバッチファイル名に続いてデバッグファイル名(通常はELF/DWARFまたはUBROFファイル)を入力することにより、
@REM 起動できます。
@REM
@REM 使用可能なコマンドラインのパラメータについては、C-SPYデバッグガイドを参照してください。
@REM 特定の場合に役立つコマンドラインパラメータに関する他のヒント
@REM :
@REM   --download_only   後にデバッグセッションを起動せずにコードのイメージをダウンロードします
@REM                     。
@REM   --silent          サインオンのメッセージを省略します。
@REM   --timeout         実行時間の上限を設定します。
@REM 


@echo off 

if not "%~1" == "" goto debugFile 

@echo on 

"C:\Program Files (x86)\IAR Systems\Embedded Workbench 8.0\common\bin\cspybat" -f "C:\Users\KOKUBO\Documents\STM32開発\TIM6_Practice\EWARM\settings\TIM6_Practice.TIM6_Practice.general.xcl" --backend -f "C:\Users\KOKUBO\Documents\STM32開発\TIM6_Practice\EWARM\settings\TIM6_Practice.TIM6_Practice.driver.xcl" 

@echo off 
goto end 

:debugFile 

@echo on 

"C:\Program Files (x86)\IAR Systems\Embedded Workbench 8.0\common\bin\cspybat" -f "C:\Users\KOKUBO\Documents\STM32開発\TIM6_Practice\EWARM\settings\TIM6_Practice.TIM6_Practice.general.xcl" "--debug_file=%~1" --backend -f "C:\Users\KOKUBO\Documents\STM32開発\TIM6_Practice\EWARM\settings\TIM6_Practice.TIM6_Practice.driver.xcl" 

@echo off 
:end