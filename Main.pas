unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, PrsForm, Dialogs,
  ActnList, CfActionList, Menus, CfMainMenu, ImgList, ComCtrls, ToolWin,
  CfToolBar, Forms, ShellApi, StdCtrls, CfStaticText, ExtCtrls,
  CfControlBar, CfButton, Db, DBTables, PrsDbAppAccess, Buttons, CfBitBtn,
  Grids, DBGrids, CfDBGrid, CfPageControl, CfEdit, CfLabel, CfPanel,
  DBCtrls, CfDBText, Mask, CfMaskEditDate, CheckLst, CfCheckListBox,
  CfOpenDialog, CfMemo, CfComboBox, CfStringGrid, CfRadioGroup, CfListBox,
  CfGroupBox;

type
  TOperation = (oInsert, oModify, oDelete, oView, oNull, oSelect);

  ///

  TCfRigheDFM = class
  private
	 m_ProjectName: String;
	 m_RigheDFM: TStringList;
  public
	 constructor Create(NomeDPRDaAnalizzare: TFileName);
	 destructor Destroy; override;
	 property ProjectName: String read m_ProjectName;
	 property RigheDFM: TStringList read m_RigheDFM;
  end;

  ///

  TCfRigheObjects = class
  private
	 m_DFMName: String;
	 m_FormClassName: String;
	 m_RigheObject: TStringList;
  public
	 constructor Create(NomeDFMDaAnalizzare: TFileName);
	 destructor Destroy; override;
	 property DFMName: String read m_DFMName;
	 property FormClassName: String read m_FormClassName;
	 property RigheObject: TStringList read m_RigheObject;
  end;

  ///

  TfrmMain = class(TPrsMainForm)
	 aclMain: TCfActionList;
	 MainImageList: TImageList;
	 acChiudiApplicazione: TAction;
    PCtrlMain: TCfPageControl;
    PagAmministratore_Utenti: TTabSheet;
	 grdUtenti: TCfDBGrid;
	 btnNuovoUtente: TCfBitBtn;
    btnModificaUtente: TCfBitBtn;
	 btnEliminaUtente: TCfBitBtn;
    PagAmministratore_Gruppi: TTabSheet;
	 grdGruppi: TCfDBGrid;
    btnNuovoGruppo: TCfBitBtn;
	 btnModificaGruppo: TCfBitBtn;
    btnEliminaGruppo: TCfBitBtn;
    PagApplicazioni: TTabSheet;
    grdApplicazioni: TCfDBGrid;
    PagRestrizioni: TTabSheet;
    grdRestrizioni: TCfDBGrid;
    btnNuovaApplicazione: TCfBitBtn;
    btnModificaApplicazione: TCfBitBtn;
    btnEliminaApplicazione: TCfBitBtn;
    btnNuovaRestrizione: TCfBitBtn;
    btnModificaRestrizione: TCfBitBtn;
    btnEliminaRestrizione: TCfBitBtn;
    btnChiudi: TCfBitBtn;
    panDettaglioApplicazione: TCfPanel;
    CfLabel1: TCfLabel;
	 CfLabel2: TCfLabel;
    txtNomeApplicazione: TCfEdit;
    txtDescrizioneApplicazione: TCfEdit;
    btnConfermaApplicazione: TCfBitBtn;
    btnAnnullaApplicazione: TCfBitBtn;
    panDettaglioGruppo: TCfPanel;
    CfLabel4: TCfLabel;
    txtNomeGruppo: TCfEdit;
    btnConfermaGruppo: TCfBitBtn;
	 btnAnnullaGruppo: TCfBitBtn;
    panDettaglioUtente: TCfPanel;
    CfLabel5: TCfLabel;
    CfLabel6: TCfLabel;
    CfLabel7: TCfLabel;
    CfLabel8: TCfLabel;
    CfLabel9: TCfLabel;
    CfLabel14: TCfLabel;
    CfLabel15: TCfLabel;
    txtUserNameUtente: TCfEdit;
    txtNomeUtente: TCfEdit;
    txtCognomeUtente: TCfEdit;
    txtMatricolaUtente: TCfEdit;
    txtNoteUtente: TCfEdit;
    txtCancellatoUtente: TCfEdit;
    txtDataScadPwdUtente: TCfMaskEditDate;
	 lstGruppiAssociati: TCfCheckListBox;
    CfStaticText1: TCfStaticText;
    btnConfermaUtente: TCfBitBtn;
    btnAnnullaUtente: TCfBitBtn;
    btnRipristinaUtente: TCfBitBtn;
    OpenProject: TCfOpenDialog;
    panApplGrp_Restrizioni: TCfPanel;
    CfLabel17: TCfLabel;
    CfLabel18: TCfLabel;
    txtDBApplicazione_Restrizioni: TCfDBText;
    txtDBGruppo_Restrizioni: TCfDBText;
    panAppl_Utenti: TCfPanel;
	 CfLabel16: TCfLabel;
    txtDBApplicazione_Utenti: TCfDBText;
    panAppl_Gruppi: TCfPanel;
    CfLabel3: TCfLabel;
    txtDBApplicazione_Gruppi: TCfDBText;
    panDettaglioRestrizione: TCfPanel;
    CfLabel19: TCfLabel;
    etiCtrlTAG: TCfLabel;
    txtFormClassName: TCfEdit;
    txtCtrlTAG: TCfEdit;
    grpVisible: TCfRadioGroup;
    grpEnabled: TCfRadioGroup;
    panNuovaRestrizione: TCfGroupBox;
	 cmbForms: TCfComboBox;
    btnSelezionaProgetto: TCfBitBtn;
    CfLabel20: TCfLabel;
    lstControls: TCfListBox;
	 CfLabel21: TCfLabel;
    lblFormClassName: TCfStaticText;
    CfLabel22: TCfLabel;
    btnConfermaRestrizione: TCfBitBtn;
    btnAnnullaRestrizione: TCfBitBtn;
    btnCancellazioneFisica: TCfBitBtn;
    PagAmministratore_Appl_Uten: TTabSheet;
    grdApplicazioni_Utenti: TCfDBGrid;
    btnCancellaAppl_Uten: TCfBitBtn;
    btnModificaAppl_Uten: TCfBitBtn;
    panDettaglioAppl_Uten: TCfPanel;
	 CfLabel10: TCfLabel;
    txtDataUltConUtente: TCfMaskEditDate;
    CfLabel11: TCfLabel;
    txtConnessoUtente: TCfEdit;
    CfLabel12: TCfLabel;
    txtAttivoUtente: TCfEdit;
    CfLabel13: TCfLabel;
    txtIndirizzoIPUtente: TCfEdit;
    CfLabel23: TCfLabel;
    lblUserName: TCfStaticText;
	 btnConfermaAppl_Uten: TCfBitBtn;
    btnAnnullaAppl_Uten: TCfBitBtn;
    CfLabel24: TCfLabel;
    lblApplicazione: TCfStaticText;
    lblDBConnesso: TCfLabel;
    pagPswSupervisore: TTabSheet;
    txtPswNuova: TCfEdit;
    btnTrovaPsw: TCfBitBtn;
    btnInserisciPsw: TCfBitBtn;
    CfLabel26: TCfLabel;
    lblPswAttuale: TCfStaticText;
    CfLabel25: TCfLabel;
	 procedure acChiudiApplicazioneExecute(Sender: TObject);
	 procedure FormClose(Sender: TObject; var Action: TCloseAction);
	 procedure FormCreate(Sender: TObject);
	 procedure btnNuovoUtenteClick(Sender: TObject);
    procedure btnModificaUtenteClick(Sender: TObject);
	 procedure btnNuovaApplicazioneClick(Sender: TObject);
    procedure btnModificaApplicazioneClick(Sender: TObject);
    procedure btnEliminaApplicazioneClick(Sender: TObject);
    procedure btnConfermaApplicazioneClick(Sender: TObject);
    procedure btnAnnullaApplicazioneClick(Sender: TObject);
    procedure btnNuovoGruppoClick(Sender: TObject);
    procedure btnModificaGruppoClick(Sender: TObject);
    procedure btnEliminaGruppoClick(Sender: TObject);
	 procedure btnConfermaGruppoClick(Sender: TObject);
    procedure btnAnnullaGruppoClick(Sender: TObject);
    procedure btnEliminaUtenteClick(Sender: TObject);
    procedure btnConfermaUtenteClick(Sender: TObject);
    procedure btnAnnullaUtenteClick(Sender: TObject);
	 procedure txtConnessoUtenteChange(Sender: TObject);
    procedure txtAttivoUtenteChange(Sender: TObject);
    procedure txtCancellatoUtenteChange(Sender: TObject);
    procedure btnRipristinaUtenteClick(Sender: TObject);
    procedure btnSelezionaProgettoClick(Sender: TObject);
    procedure cmbFormsChange(Sender: TObject);
    procedure lstControlsDblClick(Sender: TObject);
    procedure btnNuovaRestrizioneClick(Sender: TObject);
    procedure btnModificaRestrizioneClick(Sender: TObject);
    procedure btnEliminaRestrizioneClick(Sender: TObject);
    procedure btnConfermaRestrizioneClick(Sender: TObject);
    procedure btnAnnullaRestrizioneClick(Sender: TObject);
	 procedure grdApplicazioniDblClick(Sender: TObject);
    procedure grdGruppiDblClick(Sender: TObject);
    procedure grdUtentiDblClick(Sender: TObject);
    procedure grdRestrizioniDblClick(Sender: TObject);
    procedure btnCancellazioneFisicaClick(Sender: TObject);
    procedure btnModificaAppl_UtenClick(Sender: TObject);
    procedure grdApplicazioni_UtentiDblClick(Sender: TObject);
    procedure btnCancellaAppl_UtenClick(Sender: TObject);
	 procedure btnConfermaAppl_UtenClick(Sender: TObject);
	 procedure btnAnnullaAppl_UtenClick(Sender: TObject);
    procedure btnTrovaPswClick(Sender: TObject);
    procedure btnInserisciPswClick(Sender: TObject);
  private
	 m_AppAccess: TPrsApplicationAccess;
	 m_sqlGruppi: TQuery;
	 m_sqlUtenti: TQuery;
	 m_sqlApplicazioni: TQuery;
	 m_sqlAppl_Uten: TQuery;
	 m_sqlRestrizioni: TQuery;
	 m_sqlPswSupervisor: TQuery;
	 m_dsUtenti: TDataSource;
	 m_dsGruppi: TDataSource;
	 m_dsApplicazioni: TDataSource;
	 m_dsAppl_Uten: TDataSource;
	 m_dsRestrizioni: TDataSource;
	 m_OperationApplicazioni: TOperation;
	 m_OperationGruppi: TOperation;
	 m_OperationUtenti: TOperation;
	 m_OperationAppl_Uten: TOperation;
	 m_OperationRestrizioni: TOperation;
	 m_ListaGruppi: TStringList;
	 procedure AbilitazioneButtonsApplicazione(Abilitazione: Boolean);
	 procedure AbilitazioneButtonsGruppo(Abilitazione: Boolean);
	 procedure AbilitazioneButtonsUtente(Abilitazione: Boolean);
	 procedure AbilitazioneButtonsAppl_Uten(Abilitazione: Boolean);
	 procedure AbilitazioneButtonsRestrizione(Abilitazione: Boolean);
	 procedure AbilitazioneButtonsPswSupervisore;
	 procedure AbilitazionePanelloDettaglioUtente(Abilitazione: Boolean);
	 procedure AbilitazionePanelloDettaglioAppl_Uten(Abilitazione: Boolean);
	 procedure AbilitazionePanelloDettaglioRestrizione(Abilitazione: Boolean);
	 procedure ChangeApplicazioni(DataSet: TDataSet);
	 procedure ChangeGruppi(DataSet: TDataSet);
	 procedure ChangeUtenti(DataSet: TDataSet);
	 procedure ChangeAppl_Uten(DataSet: TDataSet);
	 procedure ChangeRestrizioni(DataSet: TDataSet);
	 procedure AggiornaListaGruppi;
  public
	 property AppAccess: TPrsApplicationAccess read m_AppAccess write m_AppAccess;
  end;

var
  frmMain: TfrmMain;

implementation

uses CfSysman;
{$R *.DFM}

//-----------------------------------------------------------------------------
procedure TfrmMain.acChiudiApplicazioneExecute(Sender: TObject);
//-----------------------------------------------------------------------------
begin
	Close;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
//------------------------------------------------------------------------------
var
	i: Integer;
	bFormToClose: Boolean;
begin
	bFormToClose := False;
	// Prima di chiudere si controlla se ci sono form aperte

	// Innanzitutto si cercano forms figlie della MAIN
	for i := 0 to Application.MainForm.ComponentCount - 1 do
		if (Application.MainForm.Components[i] is TPrsNewForm) or
			(Application.MainForm.Components[i] is TPrsForm) or
			(Application.MainForm.Components[i] is TForm) then
			begin
				bFormToClose := True;
				MessageDlg('Ci sono delle forms ancora aperte.'+CHR(13)+CHR(10)+
							  'E'' necessario chiuderle prima di poter terminare l''applicazione.', mtInformation,
							  [mbOk], 0);
				Break;
			end;

	// Se non ho trovato forms aperte con il controllo precedente
	// cerco eventuali forms dell'Application
	if not bFormToClose then
		begin
			// Si cercano forms figlie dell'Application (tranne la Main)
			for i := 0 to Application.ComponentCount - 1 do
				if ((Application.Components[i] is TPrsNewForm) or
					 (Application.Components[i] is TPrsForm) or
					 (Application.Components[i] is TForm)) and
					 (Application.Components[i].Name <> Application.MainForm.Name) and
					 (Application.Components[i].Name <> 'frmChangePasswordPrs') then
					begin
						bFormToClose := True;
						MessageDlg('Ci sono delle forms ancora aperte.'+CHR(13)+CHR(10)+
									  'E'' necessario chiuderle prima di poter terminare l''applicazione.', mtInformation,
									  [mbOk], 0);
						Break;
					end;
		end;

	// Solo se non ci sono forms aperte posso chiudere l'applicazione
	if not bFormToClose then
		begin
			if m_sqlGruppi <> nil then m_sqlGruppi.Close;
			if m_sqlUtenti <> nil then m_sqlUtenti.Close;
			if m_sqlApplicazioni <> nil then m_sqlApplicazioni.Close;
			if m_sqlAppl_Uten <> nil then m_sqlAppl_Uten.Close;
			if m_sqlRestrizioni <> nil then m_sqlRestrizioni.Close;
			m_AppAccess.Free;
			m_ListaGruppi.Free;
			Action := caFree;
		end
	else
		Action := caNone;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.FormCreate(Sender: TObject);
//------------------------------------------------------------------------------
// Abilita/Disabilita le azioni definite a seconda che siano stati
// indicati o meno i programmi collegati e setta dati principali file di log
var
	PercorsoDBConnesso: String;
	ListaParametri: TStringList;
	Indice: Integer;
begin
	PCtrlMain.ActivePageIndex := 0;
	
	m_ListaGruppi := TStringList.Create;

	panDettaglioApplicazione.Visible := False;
	panDettaglioGruppo.Visible		   := False;
	panNuovaRestrizione.Visible		:= False;
	//
	m_AppAccess := TPrsApplicationAccess.Create('MainProject');
	//
	// Crea Query per contenere le applicazioni
	m_sqlApplicazioni := TQuery.Create(Self);
	m_AppAccess.DbAppAccess.Applicazioni.GetListaApplicazioni(m_sqlApplicazioni);
	// Crea DataSource per associare il DataSet dei gruppi alla griglia
	m_dsApplicazioni         := TDataSource.Create(Self);
	m_dsApplicazioni.DataSet := m_sqlApplicazioni;
	// Associa la griglia al dataSource creato qui sopra
	grdApplicazioni.DataSource := m_dsApplicazioni;

	// Crea Query per contenere i gruppi
	m_sqlGruppi := TQuery.Create(Self);
	m_AppAccess.DbAppAccess.Gruppi.GetListaGruppi(m_sqlGruppi);
	// Crea DataSource per associare il DataSet dei gruppi alla griglia
	m_dsGruppi         := TDataSource.Create(Self);
	m_dsGruppi.DataSet := m_sqlGruppi;
	// Associa la griglia al dataSource creato qui sopra
	grdGruppi.DataSource   := m_dsGruppi;

	// Crea Query per contenere gli utenti
	m_sqlUtenti := TQuery.Create(Self);
	m_AppAccess.DbAppAccess.Utenti.GetListaUtenti(m_sqlUtenti, True);
	// Crea DataSource per associare il DataSet degli Utenti alla griglia
	m_dsUtenti         := TDataSource.Create(Self);
	m_dsUtenti.DataSet := m_sqlUtenti;
	// Associa la griglia al dataSource creato qui sopra
	grdUtenti.DataSource := m_dsUtenti;

	// Crea Query per contenere i dati di Applicazioni_Utenti
	m_sqlAppl_Uten := TQuery.Create(Self);
	m_AppAccess.DbAppAccess.Utenti.GetDatiApplicazioneUtente(m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger, 0, m_sqlAppl_Uten);
	// Crea DataSource per associare il DataSet degli Utenti alla griglia
	m_dsAppl_Uten         := TDataSource.Create(Self);
	m_dsAppl_Uten.DataSet := m_sqlAppl_Uten;
	// Associa la griglia al dataSource creato qui sopra
	grdApplicazioni_Utenti.DataSource := m_dsAppl_Uten;

	// Crea Query per contenere le restrizioni
	m_sqlRestrizioni := TQuery.Create(Self);
	m_AppAccess.DbAppAccess.Restrizioni.GetListaRestrizioni(m_sqlRestrizioni);
	// Crea DataSource per associare il DataSet dei gruppi alla griglia
	m_dsRestrizioni         := TDataSource.Create(Self);
	m_dsRestrizioni.DataSet := m_sqlRestrizioni;
	// Associa la griglia al dataSource creato qui sopra
	grdRestrizioni.DataSource := m_dsRestrizioni;

	//Crea Query per avere a disposizione la pswsupervisore
	m_sqlPswSupervisor := TQuery.Create(Self);
	m_AppAccess.DbAppAccess.PasswordSupervisor.GetPwd(m_sqlPswSupervisor);
	lblPswAttuale.Caption := m_sqlPswSupervisor.FieldByName('PSW').AsString;

	m_sqlApplicazioni.AfterScroll := ChangeApplicazioni;
	m_sqlGruppi.AfterScroll 		:= ChangeGruppi;
	m_sqlUtenti.AfterScroll 		:= ChangeUtenti;
	m_sqlAppl_Uten.AfterScroll 	:= ChangeAppl_Uten;
	m_sqlRestrizioni.AfterScroll  := ChangeRestrizioni;
	ChangeApplicazioni(m_sqlApplicazioni);
	ChangeGruppi(m_sqlGruppi);
	ChangeUtenti(m_sqlUtenti);
	ChangeAppl_Uten(m_sqlAppl_Uten);
	ChangeRestrizioni(m_sqlRestrizioni);

	// Associa label applicazione al datasource
	txtDBApplicazione_Gruppi.DataSource := m_dsApplicazioni;
	txtDBApplicazione_Gruppi.DataField  := 'NOME';

	txtDBApplicazione_Utenti.DataSource := m_dsApplicazioni;
	txtDBApplicazione_Utenti.DataField  := 'NOME';

	txtDBApplicazione_Restrizioni.DataSource := m_dsApplicazioni;
	txtDBApplicazione_Restrizioni.DataField  := 'NOME';

	txtDBGruppo_Restrizioni.DataSource 	:= m_dsGruppi;
	txtDBGruppo_Restrizioni.DataField  	:= 'NOME';

	ListaParametri := TStringList.Create;
	Session.GetAliasParams(m_AppAccess.DbAppAccess.DB.DatabaseName, ListaParametri);
	for Indice := 0 to ListaParametri.Count-1 do
		begin
			if (UpperCase(Copy(ListaParametri[Indice], 1, 13)) = 'DATABASE NAME') then
				PercorsoDBConnesso := Copy(ListaParametri[Indice], 15, Length(ListaParametri[Indice])-14)
			else
				if (UpperCase(Copy(ListaParametri[Indice], 1, 11)) = 'SERVER NAME') then
					PercorsoDBConnesso := Copy(ListaParametri[Indice], 13, Length(ListaParametri[Indice])-12);
		end;
	ListaParametri.Free;
	lblDBConnesso.Caption := 'DB connesso: ' + m_AppAccess.DbAppAccess.DB.DatabaseName + ACCAPO + PercorsoDBConnesso;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.AbilitazioneButtonsApplicazione(Abilitazione: Boolean);
//------------------------------------------------------------------------------
begin
	btnNuovaApplicazione.Enabled	 	:= Abilitazione;
	btnModificaApplicazione.Enabled 	:= Abilitazione;
	btnEliminaApplicazione.Enabled 	:= Abilitazione;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.AbilitazioneButtonsGruppo(Abilitazione: Boolean);
//------------------------------------------------------------------------------
begin
	btnNuovoGruppo.Enabled	 	:= Abilitazione;
	btnModificaGruppo.Enabled 	:= Abilitazione;
	btnEliminaGruppo.Enabled 	:= Abilitazione;
end;

// PAGINA APPLICAZIONI

//------------------------------------------------------------------------------
procedure TfrmMain.btnNuovaApplicazioneClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	m_OperationApplicazioni := oInsert;
	AbilitazioneButtonsApplicazione(False);
	panDettaglioApplicazione.Visible := True;
	txtNomeApplicazione.Text	      := '';
	txtDescrizioneApplicazione.Text  := '';
	txtNomeApplicazione.SetFocus;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnModificaApplicazioneClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	m_OperationApplicazioni := oModify;
	AbilitazioneButtonsApplicazione(False);
	panDettaglioApplicazione.Visible := True;
	txtNomeApplicazione.Text	      := m_sqlApplicazioni.FieldByName('NOME').AsString;
	txtDescrizioneApplicazione.Text  := m_sqlApplicazioni.FieldByName('DESCRIZIONE').AsString;
	txtNomeApplicazione.SetFocus;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.grdApplicazioniDblClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	btnModificaApplicazioneClick(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnEliminaApplicazioneClick(Sender: TObject);
//------------------------------------------------------------------------------
var
	MyQuery: TQuery;
begin
	MyQuery := TQuery.Create(Self);
	if m_AppAccess.DbAppAccess.Applicazioni.GetGruppiCollegati(m_sqlApplicazioni.FieldByName('ID_APPL').AsInteger, MyQuery) then
		begin
			MessageDlg('Deh, bellino... Mi''a per te... ''r budello di to'' ma'' travestito da pirata e '+
						  'visualizzato sotto forma di BMW... vesta applicazione vì '+
						  'non si pole cancellare perché c''ha dei gruppi associati... BOIA DEH', mtError, [mbOK], 0);
		end
	else
		begin
			if MessageDlg('Confermi la cancellazione dell''applicazione ' +
								m_sqlApplicazioni.FieldByName('NOME').AsString + ' - ' +
								m_sqlApplicazioni.FieldByName('DESCRIZIONE').AsString+'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
				begin
					if m_AppAccess.DbAppAccess.Applicazioni.DelApplicazione(m_sqlApplicazioni.FieldByName('ID_APPL').AsInteger) then
						m_AppAccess.DbAppAccess.Applicazioni.GetListaApplicazioni(m_sqlApplicazioni)
					else
						MessageDlg('L''è ita male... la non si è potuta cancellare... BOIA DEH!', mtError, [mbOK], 0);
				end;
		end;
	MyQuery.Close;
	MyQuery.Free;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnConfermaApplicazioneClick(Sender: TObject);
//------------------------------------------------------------------------------
var
	MyRecAppl: TPrsRecordAppl;
begin
	if (Trim(txtNomeApplicazione.Text) <> '') and (Trim(txtDescrizioneApplicazione.Text) <> '') then
		begin
			if m_OperationApplicazioni = oInsert then
				begin
					MyRecAppl.Id_Appl 	:= 0;
					MyRecAppl.Nome			:= Trim(txtNomeApplicazione.Text);
					MyRecAppl.Descrizione:= Trim(txtDescrizioneApplicazione.Text);
					if m_AppAccess.DbAppAccess.Applicazioni.NewApplicazione(MyRecAppl) < 1 then
						begin
							MessageDlg('L''è ita male... la non si è potuta inserire... BOIA DEH!', mtError, [mbOK], 0);
							txtNomeApplicazione.SetFocus;
						end
					else
						begin
							m_AppAccess.DbAppAccess.Applicazioni.GetListaApplicazioni(m_sqlApplicazioni);
							panDettaglioApplicazione.Visible := False;
							AbilitazioneButtonsApplicazione(True);
							m_OperationApplicazioni := oNull;
						end;
				end
			else
				begin
					if m_OperationApplicazioni = oModify then
						begin
							MyRecAppl.Id_Appl 	:= m_sqlApplicazioni.FieldByName('ID_APPL').AsInteger;
							MyRecAppl.Nome			:= Trim(txtNomeApplicazione.Text);
							MyRecAppl.Descrizione:= Trim(txtDescrizioneApplicazione.Text);
							if not m_AppAccess.DbAppAccess.Applicazioni.SetApplicazione(MyRecAppl.Id_Appl, MyRecAppl) then
								begin
									MessageDlg('L''è ita male... a questo punto è proprio MAIALAH... la non si è potuta aggiornare... BOIA DEH!', mtError, [mbOK], 0);
									txtNomeApplicazione.SetFocus;
								end
							else
								begin
									m_AppAccess.DbAppAccess.Applicazioni.GetListaApplicazioni(m_sqlApplicazioni);
									panDettaglioApplicazione.Visible := False;
									AbilitazioneButtonsApplicazione(True);
									m_OperationApplicazioni := oNull;
								end;
						end;
				end;
		end
	else
		begin
			MessageDlg('Nome e descrizione dell''applicazione sono dati obbligatori', mtError, [mbOK], 0);
			txtNomeApplicazione.SetFocus;
		end;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnAnnullaApplicazioneClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	m_OperationApplicazioni := oNull;
	panDettaglioApplicazione.Visible := False;
	AbilitazioneButtonsApplicazione(True);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.ChangeApplicazioni(DataSet: TDataSet);
//------------------------------------------------------------------------------
begin
	if m_sqlGruppi <> nil then
		begin
			m_sqlGruppi.Filtered := False;
			m_sqlGruppi.Filter := 'ID_APPL = ' + m_sqlApplicazioni.FieldByName('ID_APPL').AsString;
			m_sqlGruppi.Filtered := True;
		end;

	AggiornaListaGruppi;
	ChangeGruppi(m_sqlGruppi);
	ChangeUtenti(m_sqlUtenti);
end;

// PAGINA GRUPPI

//------------------------------------------------------------------------------
procedure TfrmMain.btnNuovoGruppoClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	m_OperationGruppi := oInsert;
	AbilitazioneButtonsGruppo(False);
	panDettaglioGruppo.Visible := True;
	txtNomeGruppo.Text	      := '';
	txtNomeGruppo.SetFocus;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnModificaGruppoClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	m_OperationGruppi := oModify;
	AbilitazioneButtonsGruppo(False);
	panDettaglioGruppo.Visible := True;
	txtNomeGruppo.Text	      := m_sqlGruppi.FieldByName('NOME').AsString;
	txtNomeGruppo.SetFocus;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.grdGruppiDblClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	btnModificaGruppoClick(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnEliminaGruppoClick(Sender: TObject);
//------------------------------------------------------------------------------
var
	MyQuery: TQuery;
	EseguiCancellazione: Boolean;
begin
	MyQuery := TQuery.Create(Self);
	if m_AppAccess.DbAppAccess.Gruppi.GetUtentiCollegati(m_sqlGruppi.FieldByName('ID_GRUPPO').AsInteger, MyQuery) then
		begin
			if MessageDlg('Deh, bellino... Stai di morto attentino!! Vesto gruppo vì c''ha degli utenti collegati. ' +
							  'Sei proprio sicuro di volerlo piallare? BOIA DEH?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
				EseguiCancellazione := True
			else
				EseguiCancellazione := False;
		end
	else
		begin
			if MessageDlg('Confermi la cancellazione del gruppo ' +
								m_sqlGruppi.FieldByName('ID_GRUPPO').AsString + ' - ' +
								m_sqlGruppi.FieldByName('NOME').AsString+'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
				EseguiCancellazione := True
			else
				EseguiCancellazione := False;
		end;

	if EseguiCancellazione then
		begin
			if m_AppAccess.DbAppAccess.Gruppi.DelGruppo(m_sqlGruppi.FieldByName('ID_GRUPPO').AsInteger) then
				begin
					m_AppAccess.DbAppAccess.Gruppi.GetListaGruppi(m_sqlGruppi);
					AggiornaListaGruppi;
				end
			else
				MessageDlg('L''è ita male... non si è potuto cancellare... BOIA DEH!', mtError, [mbOK], 0);
		end;
	MyQuery.Close;
	MyQuery.Free;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnConfermaGruppoClick(Sender: TObject);
//------------------------------------------------------------------------------
var
	MyRecGruppo: TPrsRecordGruppo;
begin
	if (Trim(txtNomeGruppo.Text) <> '') then
		begin
			if m_OperationGruppi = oInsert then
				begin
					MyRecGruppo.Id_Appl 	:= m_sqlApplicazioni.FieldByName('ID_APPL').AsInteger;
					MyRecGruppo.Id_Gruppo:= 0;
					MyRecGruppo.Nome		:= Trim(txtNomeGruppo.Text);
					if m_AppAccess.DbAppAccess.Gruppi.NewGruppo(MyRecGruppo) < 1 then
						begin
							MessageDlg('L''è ita male... non si è potuto inserire... BOIA DEH!', mtError, [mbOK], 0);
							txtNomeGruppo.SetFocus;
						end
					else
						begin
							m_AppAccess.DbAppAccess.Gruppi.GetListaGruppi(m_sqlGruppi);
							panDettaglioGruppo.Visible := False;
							AbilitazioneButtonsGruppo(True);
							m_OperationGruppi := oNull;
							AggiornaListaGruppi;
						end;
				end
			else
				begin
					if m_OperationGruppi = oModify then
						begin
							MyRecGruppo.Id_Appl 	:= m_sqlApplicazioni.FieldByName('ID_APPL').AsInteger;
							MyRecGruppo.Id_Gruppo:= m_sqlGruppi.FieldByName('ID_GRUPPO').AsInteger;
							MyRecGruppo.Nome		:= Trim(txtNomeGruppo.Text);
							if not m_AppAccess.DbAppAccess.Gruppi.SetGruppo(MyRecGruppo.Id_Gruppo, MyRecGruppo) then
								begin
									MessageDlg('L''è ita male... a questo punto è proprio MAIALAH... non si è potuto aggiornare... BOIA DEH!', mtError, [mbOK], 0);
									txtNomeGruppo.SetFocus;
								end
							else
								begin
									m_AppAccess.DbAppAccess.Gruppi.GetListaGruppi(m_sqlGruppi);
									panDettaglioGruppo.Visible := False;
									AbilitazioneButtonsGruppo(True);
									m_OperationGruppi := oNull;
									AggiornaListaGruppi;
								end;
						end;
				end;
		end
	else
		begin
			MessageDlg('Il Nome del gruppo è un dato obbligatorio', mtError, [mbOK], 0);
			txtNomeGruppo.SetFocus;
		end;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnAnnullaGruppoClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	m_OperationGruppi := oNull;
	panDettaglioGruppo.Visible := False;
	AbilitazioneButtonsGruppo(True);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.ChangeGruppi(DataSet: TDataSet);
//------------------------------------------------------------------------------
begin
	if m_sqlRestrizioni <> nil then
		begin
			m_sqlRestrizioni.Filtered := False;
			m_sqlRestrizioni.Filter := 'ID_GRUPPO = ' + m_sqlGruppi.FieldByName('ID_GRUPPO').AsString;
			m_sqlRestrizioni.Filtered := True;
		end;
end;

// PAGINA UTENTI

//------------------------------------------------------------------------------
procedure TfrmMain.AbilitazioneButtonsUtente(Abilitazione: Boolean);
//------------------------------------------------------------------------------
begin
	btnNuovoUtente.Enabled	 	:= Abilitazione;
	btnModificaUtente.Enabled 	:= Abilitazione;
	btnEliminaUtente.Enabled 	:= Abilitazione;
	btnRipristinaUtente.Enabled:= Abilitazione;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.AbilitazionePanelloDettaglioUtente(Abilitazione: Boolean);
//------------------------------------------------------------------------------
begin
	txtUserNameUtente.Enabled		:= Abilitazione;
	txtNomeUtente.Enabled			:= Abilitazione;
	txtCognomeUtente.Enabled		:= Abilitazione;
	txtMatricolaUtente.Enabled		:= Abilitazione;
	txtNoteUtente.Enabled			:= Abilitazione;
	txtDataScadPwdUtente.Enabled	:= Abilitazione;
	lstGruppiAssociati.Enabled		:= Abilitazione;
	btnConfermaUtente.Enabled		:= Abilitazione;
	btnAnnullaUtente.Enabled		:= Abilitazione;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnNuovoUtenteClick(Sender: TObject);
//------------------------------------------------------------------------------
var
	Indice: Integer;
begin
	m_OperationUtenti := oInsert;
	AbilitazioneButtonsUtente(False);
	AbilitazionePanelloDettaglioUtente(True);
	txtUserNameUtente.Text     := '';
	txtNomeUtente.Text         := '';
	txtCognomeUtente.Text      := '';
	txtMatricolaUtente.Text    := '';
	txtNoteUtente.Text         := '';
	txtDataScadPwdUtente.Text  := '';
	txtCancellatoUtente.Text	:= '';
	for Indice := 0 to lstGruppiAssociati.Items.Count - 1 do
		lstGruppiAssociati.Checked[Indice] := False;
	txtUserNameUtente.SetFocus;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnModificaUtenteClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	m_OperationUtenti := oModify;
	AbilitazioneButtonsUtente(False);
	AbilitazionePanelloDettaglioUtente(True);
	txtUserNameUtente.SetFocus;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.grdUtentiDblClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	btnModificaUtenteClick(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnEliminaUtenteClick(Sender: TObject);
//------------------------------------------------------------------------------
var
	MyId_Utente: Integer;
begin
	if m_AppAccess.DbAppAccess.Utenti.CheckUtenteAttualmenteConnesso(m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger) then
		MessageDlg('Deh, bellino... non ttu'' lo puoi cancellare vesto utente vì perché gli è connesso a qualche ' +
					  'procedura! BOIA DEH!', mtInformation, [mbOK], 0)
	else
		begin
			MyId_Utente := m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger;
			if m_AppAccess.DbAppAccess.Utenti.DelUtente(m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger) then
				begin
					m_AppAccess.DbAppAccess.Utenti.GetListaUtenti(m_sqlUtenti, True);
					m_sqlUtenti.Locate('ID_UTENTE', MyId_Utente, [loCaseInsensitive]);
				end
			else
				MessageDlg('L''è ita male... non si è potuto cancellare... BOIA DEH!', mtError, [mbOK], 0);
		end;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnRipristinaUtenteClick(Sender: TObject);
//------------------------------------------------------------------------------
var
	MyId_Utente: Integer;
begin
	if m_AppAccess.DbAppAccess.Utenti.UnDelUtente(m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger) then
		begin
			MyId_Utente := m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger;
			m_AppAccess.DbAppAccess.Utenti.GetListaUtenti(m_sqlUtenti, True);
			m_sqlUtenti.Locate('ID_UTENTE', MyId_Utente, [loCaseInsensitive]);
		end
	else
		MessageDlg('L''è ita male... non si è potuto ripristinare... BOIA DEH!', mtError, [mbOK], 0);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnCancellazioneFisicaClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	if m_AppAccess.DbAppAccess.Utenti.CheckUtenteAttualmenteConnesso(m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger) then
		MessageDlg('Deh, bellino... non ttu'' lo puoi cancellare vesto utente vì perché gli è connesso a qualche ' +
					  'procedura! BOIA DEH!', mtInformation, [mbOK], 0)
	else
		begin
			if MessageDlg('Sei sicuro di vole piallare l''utente ' + m_sqlUtenti.FieldByName('USERNAME').AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
				begin
					if m_AppAccess.DbAppAccess.Utenti.DelUtente_Fisica(m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger) then
						m_AppAccess.DbAppAccess.Utenti.GetListaUtenti(m_sqlUtenti, True)
					else
						MessageDlg('L''è ita male... non si è potuto cancellare... BOIA DEH!', mtError, [mbOK], 0);
				end;
		end;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnConfermaUtenteClick(Sender: TObject);
//------------------------------------------------------------------------------
var
	MyRecUtente: TPrsRecordUtente;
	Indice: Integer;
begin
	if (Trim(txtUserNameUtente.Text) <> '') then
		begin
			if m_OperationUtenti = oInsert then
				begin
					MyRecUtente.Id_Utente	:= 0;
					MyRecUtente.UserName		:= Trim(txtUserNameUtente.Text);
					MyRecUtente.Nome			:= Trim(txtNomeUtente.Text);
					MyRecUtente.Cognome		:= Trim(txtCognomeUtente.Text);
					MyRecUtente.Matricola	:= StrToIntDef( Trim(txtMatricolaUtente.Text), 0);
					MyRecUtente.Note			:= Trim(txtNoteUtente.Text);
					if Trim(txtCancellatoUtente.Text) = 'S' then
						MyRecUtente.Cancellato	:= True
					else
						MyRecUtente.Cancellato	:= False;
					MyRecUtente.DataScadPwd		:= txtDataScadPwdUtente.TextAsDate;

					MyRecUtente.Id_Utente := m_AppAccess.DbAppAccess.Utenti.NewUtente(MyRecUtente);
					if MyRecUtente.Id_Utente < 1 then
						begin
							MessageDlg('L''è ita male... non si è potuto inserire... BOIA DEH!', mtError, [mbOK], 0);
							txtUserNameUtente.SetFocus;
						end
					else
						begin
							// Inserisce i gruppi collegati all'utente
							for Indice := 0 to lstGruppiAssociati.Items.Count - 1 do
								begin
									if lstGruppiAssociati.Checked[Indice] then
										m_AppAccess.DbAppAccess.Utenti.NewGruppoCollegato(MyRecUtente.Id_Utente, StrToInt(m_ListaGruppi[Indice]) );
								end;

							m_AppAccess.DbAppAccess.Utenti.GetListaUtenti(m_sqlUtenti, True);
							AbilitazioneButtonsUtente(True);
							AbilitazionePanelloDettaglioUtente(False);
							m_OperationUtenti := oNull;
						end;
				end
			else
				begin
					if m_OperationUtenti = oModify then
						begin
							MyRecUtente.Id_Utente	:= m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger;
							MyRecUtente.UserPass		:= m_sqlUtenti.FieldByName('USERPASS').AsString;
							MyRecUtente.PrecPwd01	:= m_sqlUtenti.FieldByName('PRECPWD01').AsString;
							MyRecUtente.PrecPwd02	:= m_sqlUtenti.FieldByName('PRECPWD02').AsString;
							MyRecUtente.PrecPwd03	:= m_sqlUtenti.FieldByName('PRECPWD03').AsString;
							MyRecUtente.PrecPwd04	:= m_sqlUtenti.FieldByName('PRECPWD04').AsString;
							MyRecUtente.PrecPwd05	:= m_sqlUtenti.FieldByName('PRECPWD05').AsString;
							MyRecUtente.PrecPwd06	:= m_sqlUtenti.FieldByName('PRECPWD06').AsString;
							MyRecUtente.PrecPwd07	:= m_sqlUtenti.FieldByName('PRECPWD07').AsString;
							MyRecUtente.UserName		:= Trim(txtUserNameUtente.Text);
							MyRecUtente.Nome			:= Trim(txtNomeUtente.Text);
							MyRecUtente.Cognome		:= Trim(txtCognomeUtente.Text);
							MyRecUtente.Matricola	:= StrToIntDef( Trim(txtMatricolaUtente.Text), 0);
							MyRecUtente.Note			:= Trim(txtNoteUtente.Text);
							if Trim(txtCancellatoUtente.Text) = 'S' then
								MyRecUtente.Cancellato	:= True
							else
								MyRecUtente.Cancellato	:= False;
							MyRecUtente.DataScadPwd		:= txtDataScadPwdUtente.TextAsDate;

							if not m_AppAccess.DbAppAccess.Utenti.SetUtente(MyRecUtente.Id_Utente, MyRecUtente) then
								begin
									MessageDlg('L''è ita male... a questo punto è proprio MAIALAH... non si è potuto aggiornare... BOIA DEH!', mtError, [mbOK], 0);
									txtUserNameUtente.SetFocus;
								end
							else
								begin
									// Prima cancella tutti i gruppi collegati
									//	for Indice := 0 to m_ListaGruppi.Count - 1 do
									//	   m_AppAccess.DbAppAccess.Utenti.DelGruppiCollegati(MyRecUtente.Id_Utente, StrToInt(m_ListaGruppi[Indice]));
									m_AppAccess.DbAppAccess.Utenti.DelGruppiCollegati(MyRecUtente.Id_Utente, m_sqlApplicazioni.FieldByName('ID_APPL').AsInteger);
									// Poi inserisce quelli ceccati
									for Indice := 0 to lstGruppiAssociati.Items.Count - 1 do
										begin
											if lstGruppiAssociati.Checked[Indice] then
												m_AppAccess.DbAppAccess.Utenti.NewGruppoCollegato(MyRecUtente.Id_Utente, StrToInt(m_ListaGruppi[Indice]) );
										end;

									m_AppAccess.DbAppAccess.Utenti.GetListaUtenti(m_sqlUtenti, True);
									m_sqlUtenti.Locate('ID_UTENTE', MyRecUtente.Id_Utente, [loCaseInsensitive]);
									AbilitazioneButtonsUtente(True);
									AbilitazionePanelloDettaglioUtente(False);
									m_OperationUtenti := oNull;
								end;
						end;
				end;
		end
	else
		begin
			MessageDlg('L''UserName è un dato obbligatorio', mtError, [mbOK], 0);
			txtUserNameUtente.SetFocus;
		end;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnAnnullaUtenteClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	m_OperationUtenti := oNull;
	AbilitazioneButtonsUtente(True);
	ChangeUtenti(m_sqlUtenti);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.txtCancellatoUtenteChange(Sender: TObject);
//------------------------------------------------------------------------------
begin
	if Trim(txtCancellatoUtente.Text) <> '' then
		begin
			if (Trim(txtCancellatoUtente.Text) <> 'S') and (Trim(txtCancellatoUtente.Text) <> 'N') then
				begin
					MessageDlg('Valori ammessi: S oppure N', mtError, [mbOk], 0);
					txtCancellatoUtente.SetFocus;
				end;
		end;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.ChangeUtenti(DataSet: TDataSet);
//------------------------------------------------------------------------------
var
	MyQuery: TQuery;
	Indice: Integer;
begin
	if m_sqlAppl_Uten <> nil then
		m_AppAccess.DbAppAccess.Utenti.GetDatiApplicazioneUtente(m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger, 0, m_sqlAppl_Uten);

	AbilitazionePanelloDettaglioUtente(False);
	m_OperationUtenti := oNull;

	txtUserNameUtente.Text     := Trim(m_sqlUtenti.FieldByName('USERNAME').AsString);
	txtNomeUtente.Text         := Trim(m_sqlUtenti.FieldByName('NOME').AsString);
	txtCognomeUtente.Text      := Trim(m_sqlUtenti.FieldByName('COGNOME').AsString);
	txtMatricolaUtente.Text    := Trim(m_sqlUtenti.FieldByName('MATRICOLA').AsString);
	txtNoteUtente.Text         := Trim(m_sqlUtenti.FieldByName('NOTE').AsString);
	txtDataScadPwdUtente.Text  := Trim(m_sqlUtenti.FieldByName('DATASCADPWD').AsString);
	txtCancellatoUtente.Text	:= Trim(m_sqlUtenti.FieldByName('CANCELLATO').AsString);
	// Gruppi dell'utente
	for Indice := 0 to lstGruppiAssociati.Items.Count - 1 do
		lstGruppiAssociati.Checked[Indice] := False;

	MyQuery := TQuery.Create(Self);
	if m_AppAccess.DbAppAccess.Utenti.GetGruppiCollegati( m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger, m_sqlApplicazioni.FieldByName('ID_APPL').AsInteger, MyQuery) then
		begin
			MyQuery.First;
			while not MyQuery.Eof do
				begin
					Indice := m_ListaGruppi.IndexOf(MyQuery.FieldByName('ID_GRUPPO').AsString);
					if Indice <> -1 then
						lstGruppiAssociati.Checked[Indice] := True;
					MyQuery.Next;
				end;
		end;
	MyQuery.Close;
	MyQuery.Free;

	if m_sqlUtenti.FieldByName('CANCELLATO').AsString = 'S' then
		btnRipristinaUtente.Enabled := True
	else
		btnRipristinaUtente.Enabled := False;
end;

// PAGINA APPLICAZIONI_UTENTI

//------------------------------------------------------------------------------
procedure TfrmMain.AbilitazioneButtonsAppl_Uten(Abilitazione: Boolean);
//------------------------------------------------------------------------------
begin
	btnModificaAppl_Uten.Enabled 	:= Abilitazione;
	btnCancellaAppl_Uten.Enabled 	:= Abilitazione;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.AbilitazionePanelloDettaglioAppl_Uten(Abilitazione: Boolean);
//------------------------------------------------------------------------------
begin
	txtDataUltConUtente.Enabled	:= Abilitazione;
	txtConnessoUtente.Enabled		:= Abilitazione;
	txtAttivoUtente.Enabled			:= Abilitazione;
	txtIndirizzoIPUtente.Enabled	:= Abilitazione;
	btnConfermaAppl_Uten.Enabled 	:= Abilitazione;
	btnAnnullaAppl_Uten.Enabled	:= Abilitazione;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnModificaAppl_UtenClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	m_OperationAppl_Uten := oModify;
	AbilitazioneButtonsAppl_Uten(False);
	AbilitazionePanelloDettaglioAppl_Uten(True);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.grdApplicazioni_UtentiDblClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	btnModificaAppl_UtenClick(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnCancellaAppl_UtenClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	if m_AppAccess.DbAppAccess.Utenti.DelDatiApplicazioneUtente(m_sqlAppl_Uten.FieldByName('ID_UTENTE').AsInteger, m_sqlAppl_Uten.FieldByName('ID_APPL').AsInteger) then
		m_AppAccess.DbAppAccess.Utenti.GetDatiApplicazioneUtente(m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger, 0, m_sqlAppl_Uten)
	else
		MessageDlg('L''è ita male... non si è potuta cancellare... BOIA DEH!', mtError, [mbOK], 0);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnConfermaAppl_UtenClick(Sender: TObject);
//------------------------------------------------------------------------------
var
	MyRecAppl_Uten: TPrsRecordApplicazioneUtente;
begin
	if (Trim(txtConnessoUtente.Text) <> '') and (Trim(txtAttivoUtente.Text) <> '') then
		begin
			if m_OperationAppl_Uten = oModify then
				begin
					MyRecAppl_Uten.Id_Utente		:= m_sqlAppl_Uten.FieldByName('ID_UTENTE').AsInteger;
					MyRecAppl_Uten.Id_Appl 			:= m_sqlAppl_Uten.FieldByName('ID_APPL').AsInteger;
					if Trim(txtConnessoUtente.Text) = 'S' then
						MyRecAppl_Uten.Connesso	:= True
					else
						MyRecAppl_Uten.Connesso	:= False;
					if Trim(txtAttivoUtente.Text) = 'S' then
						MyRecAppl_Uten.Attivo	:= True
					else
						MyRecAppl_Uten.Attivo	:= False;
					MyRecAppl_Uten.IndirizzoIP    := Trim(txtIndirizzoIPUtente.Text);
					MyRecAppl_Uten.DataUltCon		:= txtDataUltConUtente.TextAsDate;

					if not m_AppAccess.DbAppAccess.Utenti.SetDatiApplicazioneUtente(MyRecAppl_Uten) then
						begin
							MessageDlg('L''è ita male... a questo punto è proprio MAIALAH... non si è potuta aggiornare... BOIA DEH!', mtError, [mbOK], 0);
							txtConnessoUtente.SetFocus;
						end
					else
						begin
							m_AppAccess.DbAppAccess.Utenti.GetDatiApplicazioneUtente(m_sqlUtenti.FieldByName('ID_UTENTE').AsInteger, 0, m_sqlAppl_Uten);
							AbilitazioneButtonsAppl_Uten(True);
							AbilitazionePanelloDettaglioAppl_Uten(False);
							m_OperationAppl_Uten := oNull;
						end;
				end;
		end
	else
		begin
			MessageDlg('Mancano dei dati obbligatori', mtError, [mbOK], 0);
			txtConnessoUtente.SetFocus;
		end;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnAnnullaAppl_UtenClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	m_OperationAppl_Uten := oNull;
	AbilitazioneButtonsAppl_Uten(True);
	AbilitazionePanelloDettaglioAppl_Uten(False);
	ChangeAppl_Uten(m_sqlAppl_Uten);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.ChangeAppl_Uten(DataSet: TDataSet);
//------------------------------------------------------------------------------
begin
	AbilitazionePanelloDettaglioAppl_Uten(False);
	m_OperationAppl_Uten := oNull;

	lblUserName.Caption			:= Trim(m_sqlUtenti.FieldByName('USERNAME').AsString) + ' - ' + Trim(Trim(m_sqlUtenti.FieldByName('COGNOME').AsString) + Trim(m_sqlUtenti.FieldByName('NOME').AsString));
	lblApplicazione.Caption		:= m_AppAccess.DbAppAccess.Applicazioni.Decod_Applicazione(m_sqlAppl_Uten.FieldByName('ID_APPL').AsInteger);
	txtDataUltConUtente.Text   := Trim(m_sqlAppl_Uten.FieldByName('DATAULTCON').AsString);
	txtConnessoUtente.Text     := Trim(m_sqlAppl_Uten.FieldByName('CONNESSO').AsString);
	txtAttivoUtente.Text       := Trim(m_sqlAppl_Uten.FieldByName('ATTIVO').AsString);
	txtIndirizzoIPUtente.Text  := Trim(m_sqlAppl_Uten.FieldByName('INDIRIZZOIP').AsString);
end;


//------------------------------------------------------------------------------
procedure TfrmMain.txtConnessoUtenteChange(Sender: TObject);
//------------------------------------------------------------------------------
begin
	if Trim(txtConnessoUtente.Text) <> '' then
		begin
			if (Trim(txtConnessoUtente.Text) <> 'S') and (Trim(txtConnessoUtente.Text) <> 'N') then
				begin
					MessageDlg('Valori ammessi: S oppure N', mtError, [mbOk], 0);
					txtConnessoUtente.SetFocus;
				end;
		end;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.txtAttivoUtenteChange(Sender: TObject);
//------------------------------------------------------------------------------
begin
	if Trim(txtAttivoUtente.Text) <> '' then
		begin
			if (Trim(txtAttivoUtente.Text) <> 'S') and (Trim(txtAttivoUtente.Text) <> 'N') then
				begin
					MessageDlg('Valori ammessi: S oppure N', mtError, [mbOk], 0);
					txtAttivoUtente.SetFocus;
				end;
		end;
end;

// PAGINA RESTRIZIONI

//------------------------------------------------------------------------------
procedure TfrmMain.AbilitazioneButtonsRestrizione(Abilitazione: Boolean);
//------------------------------------------------------------------------------
begin
	btnNuovaRestrizione.Enabled	 	:= Abilitazione;
	btnModificaRestrizione.Enabled 	:= Abilitazione;
	btnEliminaRestrizione.Enabled 	:= Abilitazione;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.AbilitazionePanelloDettaglioRestrizione(Abilitazione: Boolean);
//------------------------------------------------------------------------------
begin
	txtFormClassName.Enabled	:= Abilitazione;
	txtCtrlTAG.Enabled			:= Abilitazione;
	grpVisible.Enabled         := Abilitazione;
	grpEnabled.Enabled         := Abilitazione;
	btnConfermaRestrizione.Enabled := Abilitazione;
	btnAnnullaRestrizione.Enabled	 := Abilitazione;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnSelezionaProgettoClick(Sender: TObject);
//------------------------------------------------------------------------------
var
	ProjectName: String;
	MyRigheDFM: TCfRigheDFM;
begin
	if OpenProject.Execute then
		begin
			ProjectName := OpenProject.FileName;
			if FileExists(ProjectName) then
				begin
					MyRigheDFM := TCfRigheDFM.Create(ProjectName);

					cmbForms.Items.Clear;
					cmbForms.Items.AddStrings(MyRigheDFM.RigheDFM);

					MyRigheDFM.Free;
				end
			else
				MessageDlg('Nome file inesistente', mtError, [mbOk], 0);
		end;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.cmbFormsChange(Sender: TObject);
//------------------------------------------------------------------------------
var
	MyRigheObjects: TCfRigheObjects;
begin
	MyRigheObjects := TCfRigheObjects.Create(cmbForms.Text);
	lblFormClassName.Caption := MyRigheObjects.FormClassName;
	lstControls.Clear;
	lstControls.Items.AddStrings(MyRigheObjects.RigheObject);
	MyRigheObjects.Free;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.lstControlsDblClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	txtFormClassName.Text := lblFormClassName.Caption;
	txtCtrlTAG.Text		 := lstControls.Items[lstControls.ItemIndex];
end;


//------------------------------------------------------------------------------
procedure TfrmMain.btnNuovaRestrizioneClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	m_OperationRestrizioni := oInsert;
	AbilitazioneButtonsRestrizione(False);
	AbilitazionePanelloDettaglioRestrizione(True);
	panNuovaRestrizione.Visible := True;
	txtFormClassName.Text   := '';
	txtCtrlTAG.Text         := '';
	grpVisible.ItemIndex		:= 1;
	grpEnabled.ItemIndex		:= 1;
	btnSelezionaProgetto.SetFocus;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnModificaRestrizioneClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	m_OperationRestrizioni := oModify;
	AbilitazioneButtonsRestrizione(False);
	AbilitazionePanelloDettaglioRestrizione(True);
	txtFormClassName.Enabled := False;
	txtCtrlTAG.Enabled		 := False;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.grdRestrizioniDblClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	btnModificaRestrizioneClick(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnEliminaRestrizioneClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	if m_AppAccess.DbAppAccess.Restrizioni.DelRestrizione(m_sqlRestrizioni.FieldByName('ID_GRUPPO').AsInteger,
																			m_sqlRestrizioni.FieldByName('FRMCLASSNAME').AsString,
																			m_sqlRestrizioni.FieldByName('CTRLTAG').AsString) then
		m_AppAccess.DbAppAccess.Restrizioni.GetListaRestrizioni(m_sqlRestrizioni)
	else
		MessageDlg('L''è ita male... non si è potuta cancellare... BOIA DEH!', mtError, [mbOK], 0);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnConfermaRestrizioneClick(Sender: TObject);
//------------------------------------------------------------------------------
var
	MyRecRestrizione: TPrsRecordRestrizione;
begin
	if (Trim(txtFormClassName.Text) <> '') or (Trim(txtCtrlTAG.Text) <> '') then
		begin
			if m_OperationRestrizioni = oInsert then
				begin
					MyRecRestrizione.Id_Gruppo		 := m_sqlGruppi.FieldByName('ID_GRUPPO').AsInteger;
					MyRecRestrizione.FormClassName := Trim(txtFormClassName.Text);
					MyRecRestrizione.CtrlTAG		 := Trim(txtCtrlTAG.Text);
					if grpVisible.ItemIndex = 0 then
						MyRecRestrizione.Visible 	 := True
					else
						MyRecRestrizione.Visible 	 := False;
					if grpEnabled.ItemIndex = 0 then
						MyRecRestrizione.Enabled 	 := True
					else
						MyRecRestrizione.Enabled 	 := False;

					if not m_AppAccess.DbAppAccess.Restrizioni.NewRestrizione(MyRecRestrizione) then
						begin
							MessageDlg('L''è ita male... non si è potuta inserire... BOIA DEH!', mtError, [mbOK], 0);
							txtFormClassName.SetFocus;
						end
					else
						begin
							m_AppAccess.DbAppAccess.Restrizioni.GetListaRestrizioni(m_sqlRestrizioni);
							AbilitazioneButtonsRestrizione(True);
							AbilitazionePanelloDettaglioRestrizione(False);
							panNuovaRestrizione.Visible := False;
							m_OperationRestrizioni := oNull;
						end;
				end
			else
				begin
					if m_OperationRestrizioni = oModify then
						begin
							MyRecRestrizione.Id_Gruppo		 := m_sqlGruppi.FieldByName('ID_GRUPPO').AsInteger;
							MyRecRestrizione.FormClassName := Trim(txtFormClassName.Text);
							MyRecRestrizione.CtrlTAG		 := Trim(txtCtrlTAG.Text);
							if grpVisible.ItemIndex = 0 then
								MyRecRestrizione.Visible 	 := True
							else
								MyRecRestrizione.Visible 	 := False;
							if grpEnabled.ItemIndex = 0 then
								MyRecRestrizione.Enabled 	 := True
							else
								MyRecRestrizione.Enabled 	 := False;

							if not m_AppAccess.DbAppAccess.Restrizioni.SetRestrizione(MyRecRestrizione) then
								begin
									MessageDlg('L''è ita male... a questo punto è proprio MAIALAH... non si è potuta aggiornare... BOIA DEH!', mtError, [mbOK], 0);
									txtFormClassName.SetFocus;
								end
							else
								begin
									m_AppAccess.DbAppAccess.Restrizioni.GetListaRestrizioni(m_sqlRestrizioni);
									AbilitazioneButtonsRestrizione(True);
									AbilitazionePanelloDettaglioRestrizione(False);
									m_OperationRestrizioni := oNull;
								end;
						end;
				end;
		end
	else
		begin
			MessageDlg('Mancano la FormName o il CtrlName', mtError, [mbOK], 0);
			txtFormClassName.SetFocus;
		end;
end;

procedure TfrmMain.btnAnnullaRestrizioneClick(Sender: TObject);
begin
	m_OperationRestrizioni := oNull;
	AbilitazioneButtonsRestrizione(True);
	panNuovaRestrizione.Visible := False;
	ChangeRestrizioni(m_sqlRestrizioni);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.ChangeRestrizioni(DataSet: TDataSet);
//------------------------------------------------------------------------------
begin
	AbilitazionePanelloDettaglioRestrizione(False);
	m_OperationRestrizioni  := oNull;

	txtFormClassName.Text   := Trim(m_sqlRestrizioni.FieldByName('FRMCLASSNAME').AsString);
	txtCtrlTAG.Text      	:= Trim(m_sqlRestrizioni.FieldByName('CTRLTAG').AsString);
	grpVisible.ItemIndex 	:= m_sqlRestrizioni.FieldByName('VISIBLE').AsInteger;
	grpEnabled.ItemIndex 	:= m_sqlRestrizioni.FieldByName('ENABLED').AsInteger;
end;

// PAGINA PASSWORD SUPERVISORE

//------------------------------------------------------------------------------
procedure TfrmMain.AbilitazioneButtonsPswSupervisore;
//------------------------------------------------------------------------------
begin
	btnInserisciPsw.Enabled	 	:= Trim(txtPswNuova.Text) <> '';
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnTrovaPswClick(Sender: TObject);
//------------------------------------------------------------------------------
var
	Parola, Psw: String;
	Lunghezza, Indice, NumeroACaso: Integer;
begin
	Parola := '09direzionesistemiinformativi21lisa26paolo14angela';
	Randomize;

	Lunghezza := Random(21);
	Psw := '';
	for Indice := 0 to Lunghezza - 1 do
		begin
			NumeroACaso := Random(50);
			Psw := Psw + Copy(Parola, NumeroACaso, 1);
		end;
	txtPswNuova.Text := Trim(Psw);
end;

//------------------------------------------------------------------------------
procedure TfrmMain.btnInserisciPswClick(Sender: TObject);
//------------------------------------------------------------------------------
begin
	if MessageDlg('Si vuole inserire la nuova password per il Supervisore in archivio?', mtConfirmation , [mbYes, mbNo], 0) = mrYes then
		begin
			if not m_AppAccess.DbAppAccess.PasswordSupervisor.SetPwd(Trim(txtPswNuova.Text)) then
				begin
					MessageDlg('non è stato possibile modificare la Password del supervisore.', mtError, [mbOK], 0);
					txtPswNuova.SetFocus;
				end
			else
				begin
					lblPswAttuale.Caption 	:= Trim(txtPswNuova.text);
					txtPswNuova.Text 			:= '';
				end;
		end;
end;

{ ============================= TCfRigheDFM ============================= }

//------------------------------------------------------------------------------
constructor TCfRigheDFM.Create(NomeDPRDaAnalizzare: TFileName);
//------------------------------------------------------------------------------
var
	Stringa, UltimoCarattere: String;
	MyRigheDPR, MyRigheUses: TStringList;
	Indice, Ind2, NumCarattere, CaratterePartenza: Integer;
begin
	m_RigheDFM 		:= TStringList.Create;
	m_ProjectName  := NomeDPRDaAnalizzare;

	if FileExists(m_ProjectName) then
		begin
			MyRigheDPR := TStringList.Create;
			MyRigheUses:= TStringList.Create;

			// Carica in una StringList gli statements del DPR
			MyRigheDPR.LoadFromFile(m_ProjectName);

			// Elimina tutti gli spazi a sinistra
			for Indice := 0 to MyRigheDPR.Count - 1 do
				MyRigheDPR[Indice] := Trim(MyRigheDPR[Indice]);

			// Carica in una StringList tutte le USES del progetto
			Stringa := '';
			for Indice := 0 to MyRigheDPR.Count - 1 do
				begin
					if LowerCase(Copy(MyRigheDPR[Indice], 1, 4)) = 'uses' then
						begin
							for Ind2 := Indice to MyRigheDPR.Count - 1 do
								begin
									if Ind2 = Indice then
										CaratterePartenza := 5
									else
										CaratterePartenza := 1;
									for NumCarattere := CaratterePartenza to Length(MyRigheDPR[Ind2]) do
										begin
											UltimoCarattere := Trim(Copy(MyRigheDPR[Ind2], NumCarattere, 1));
											if UltimoCarattere = ';' then
												begin
													if Pos('.pas', LowerCase(Stringa)) > 0 then
														MyRigheUses.Add(Stringa);
													Break;
												end
											else
												begin
													if UltimoCarattere = ',' then
														begin
															if Pos('.pas', LowerCase(Stringa)) > 0 then
																MyRigheUses.Add(Stringa);
															Stringa := '';
														end
													else
														begin
															if UltimoCarattere <> '' then
																Stringa := Stringa + UltimoCarattere;
														end;
												end;
										end;
									if UltimoCarattere = ';' then
										Break;
								end;
							Break;
						end;
				end;
			//
			MyRigheDPR.Free;
			// Individua tutti i DFM da analizzare
			for Indice := 0 to MyRigheUses.Count - 1 do
				begin
					CaratterePartenza := Pos('''', MyRigheUses[Indice]) + 1;
					if CaratterePartenza > 1 then
						begin
							Stringa := Copy(MyRigheUses[Indice], CaratterePartenza, Pos('.pas', LowerCase(MyRigheUses[Indice])) - CaratterePartenza ) + '.dfm';

							// Controlla se c'è il percorso del file
							if Pos('\', Stringa) = 0 then
								begin
									// Aggiunge in testa lo stesso percorso in cui si trova il .dpr
									Stringa := ExtractFilePath(m_ProjectName) + Stringa;
								end;
							if FileExists(Stringa) then
								m_RigheDFM.Add(Stringa);
						end;
				end;
			//
			MyRigheUses.Free;
			//
		end;
end;

//------------------------------------------------------------------------------
destructor TCfRigheDFM.Destroy;
//------------------------------------------------------------------------------
begin
	m_RigheDFM.Free;
	inherited;
end;

{ ============================= TCfRigheObjects ============================= }

//------------------------------------------------------------------------------
constructor TCfRigheObjects.Create(NomeDFMDaAnalizzare: TFileName);
//------------------------------------------------------------------------------
var
	MyRigheDFM: TStringList;
	Indice: Integer;
	Stringa: String;
begin
	m_DFMName 	  := NomeDFMDaAnalizzare;
	m_RigheObject := TStringList.Create;

	if FileExists(NomeDFMDaAnalizzare) then
		begin
			MyRigheDFM := TStringList.Create;

			// Carica in una StringList gli statements del DFM
			MyRigheDFM.LoadFromFile(m_DFMName);

			// Elimina tutti gli spazi a sinistra
			for Indice := 0 to MyRigheDFM.Count - 1 do
				MyRigheDFM[Indice] := Trim(MyRigheDFM[Indice]);

			// Determina il nome della classe
			// e' SEMPRE LA PRIMA RIGA DEL .DFM A CONTENERE LO STATEMENT "object Nome: Classe"
			m_FormClassName := Trim(Copy(MyRigheDFM[0], Pos(':', MyRigheDFM[0])+1, Length(MyRigheDFM[0]) - Pos(':', MyRigheDFM[0]) ));

			// Cerca tutti gli oggetti che si trovano all'interno della classe
			for Indice := 1 to MyRigheDFM.Count - 1 do
				begin
					if LowerCase(Copy(MyRigheDFM[Indice], 1, 7)) = 'object ' then
						begin
							Stringa := Trim (Copy(MyRigheDFM[Indice], 8, Pos(':', MyRigheDFM[Indice]) - 8) );
							m_RigheObject.Add(Stringa);
						end;
				end;
			//
			MyRigheDFM.Free;
		end;
end;

//------------------------------------------------------------------------------
destructor TCfRigheObjects.Destroy;
//------------------------------------------------------------------------------
begin
	m_RigheObject.Free;
	inherited;
end;

//------------------------------------------------------------------------------
procedure TfrmMain.AggiornaListaGruppi;
//------------------------------------------------------------------------------
begin
	// Aggiorna lista gruppi nella page degli utenti
	lstGruppiAssociati.Items.Clear;
	m_ListaGruppi.Clear;
	m_sqlGruppi.DisableControls;
	m_sqlGruppi.First;
	while not m_sqlGruppi.Eof do
		begin
			lstGruppiAssociati.Items.Add( Trim(m_sqlGruppi.FieldByName('NOME').AsString) );
			m_ListaGruppi.Add(Trim(m_sqlGruppi.FieldByName('ID_GRUPPO').AsString) );
			m_sqlGruppi.Next;
		end;
	m_sqlGruppi.First;
	m_sqlGruppi.EnableControls;
end;

end.
