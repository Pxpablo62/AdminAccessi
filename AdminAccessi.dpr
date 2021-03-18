program AdminAccessi;

uses
  Forms,
  Windows,
  SysUtils,
  Dialogs,
  CfSysMan,
  Main in 'Main.pas' {frmMain},
  PrsDBAppAccess in '..\Lib\PrsDBAppAccess.pas',
  PrsAppAccessClasses in '..\Lib\PrsAppAccessClasses.pas',
  PrsRegistry in '..\Lib\PrsRegistry.pas',
  PrsAppLoginForm in '..\Lib\PrsAppLoginForm.pas' {frmAppLoginPrs},
  PrsForm in '..\Lib\PrsForm.pas',
  PrsChangePasswordForm in '..\Lib\PrsChangePasswordForm.pas' {frmChangePasswordPrs},
  PrsUpgrade in '..\Lib\PrsUpgrade.pas';

{$R *.RES}

begin
   Application.Initialize;
   {Verifica dell'esistenza di una precedente istanza
   dell'applicazione già aperta}
	CreateMutex(nil, True, PChar( ExtractFileBaseName( ExtractFileName( Application.ExeName ) ) ) );
   if GetLastError = ERROR_ALREADY_EXISTS then
      ShowMessage('L''applicazione ' + ExtractFileBaseName( ExtractFileName( Application.ExeName ) ) + ' è già aperta.' + CHR(13)+CHR(10) +
                  'Per utilizzarla fare click sul task ' + ExtractFileBaseName( ExtractFileName( Application.ExeName ) ) + CHR(13)+CHR(10) +
                  'della barra delle applicazioni di Windows')
	else
		begin
			Application.ShowMainForm := False;
			Application.CreateForm(TfrmMain, frmMain);
			Application.CreateForm(TfrmChangePasswordPrs, frmChangePasswordPrs);
 			frmMain.Show;
			Application.Run;
		end;
end.
