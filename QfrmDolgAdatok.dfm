�
 TFRMDOLGADATOK 0�  TPF0�TfrmDolgAdatokfrmDolgAdatokLeftlTop� Width�HeightkActiveControl
edtDolgKodCaption   Felhasználó adataiOldCreateOrder	OnShowFormShowPixelsPerInch`
TextHeight �TPanelPanel1TopWidth� �
TTalBitBtnBitBtn1LeftE  �
TTalBitBtnBitBtn2Left�   �TPanelPanel2Width�Height TLabelLabel1LeftTop0WidthPHeightCaption   Felhasználó kód:  TLabelLabel2LeftTopPWidthPHeightCaption   Felhasználó név:  TLabelLabel4LeftToppWidth1HeightCaption
   Tenyészet  
TTalDBEdit
edtDolgKodLeftxTop0Width1Height	AlignmenttaLeftJustifyRequiredRequiredColorclInfoBkReadOnlyColorclActiveBorderEnabled	SpinVisibleButtonVisibleTabOrder 	DataFieldFELH_KOD
DataSourcefrmDolgozok.dtsDolg  
TTalDBEdit
edtDolgNevLeftxTopPWidth1Height	AlignmenttaLeftJustifyRequiredRequiredColorclInfoBkReadOnlyColorclActiveBorderEnabled	SpinVisibleButtonVisibleTabOrder	DataFieldNEV
DataSourcefrmDolgozok.dtsDolg  TTalDBRadioGroupcbTipusLeftTop� WidthHeightVCaption   Felhasználó típus	DataFieldTIPUS
DataSourcefrmDolgozok.dtsDolgItems.Strings   0 : Csak lekérdezés   1 : Karbantartás   2 : Kiemelt felhasználó TabOrder  TTalDBLookupComboBoxcbTenyeszetLeftxToppWidth5Height	DataField	TENYESZET
DataSourcefrmDolgozok.dtsDolgKeyFieldTKOD	ListFieldLISTA
ListSourcedtsTenyeszetTabOrder   �TActionListActionList1Left�Top �TActionactOKTag�  �TAction	actMegsemTag�   	TTalQueryqryTenyeszet
ConnectiondtmTarka.cnTarka
Parameters SQL.Strings	  SELECT   TKOD,!  TKOD || ' - ' || TNEV2 AS LISTA  FROM TENY  ORDER BY TKOD Left Top� TWideStringFieldqryTenyeszetTKOD	FieldNameTKODSize  TWideStringFieldqryTenyeszetLISTA	FieldNameLISTAReadOnly	SizeX   TDataSourcedtsTenyeszetDataSetqryTenyeszetLeftHTop   