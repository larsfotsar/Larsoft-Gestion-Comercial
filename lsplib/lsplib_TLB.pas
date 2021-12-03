unit lsplib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 23/07/2018 4:18:39 p. m. from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\Embarcadero\RAD Studio\12.0\Librerias\lsplib\lsplib.dll (1)
// LIBID: {B74AE57C-0929-4C7E-BB4D-BCD4E9C30C23}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  lsplibMajorVersion = 1;
  lsplibMinorVersion = 0;

  LIBID_lsplib: TGUID = '{B74AE57C-0929-4C7E-BB4D-BCD4E9C30C23}';

  IID_Iwslsp: TGUID = '{6B21D09C-A313-4597-987C-A7100A59F67E}';
  CLASS_wslsp: TGUID = '{44557C8D-476A-446F-9657-654CB50AE615}';
  IID_IGenerarLiquidacionReq: TGUID = '{4AA3DE1F-76AD-4E20-93A4-FAD38CA1B2A8}';
  CLASS_GenerarLiquidacionReq: TGUID = '{44A16E07-B6DF-46C9-9DD0-4B2C3745625E}';
  IID_IEmisorSolicitud: TGUID = '{E03E1AD1-DBF1-44FF-99C6-8E82E4D4A250}';
  CLASS_EmisorSolicitud: TGUID = '{1B814CD6-C8F9-43E1-AB19-75718DCC8645}';
  IID_IReceptorSolicitud: TGUID = '{A8093E59-017E-4291-B652-30E4F1D65772}';
  CLASS_ReceptorSolicitud: TGUID = '{9CB99BA5-FA74-4A38-A674-126DDA0B9FF3}';
  IID_IDatosLiquidacionSolicitud: TGUID = '{E374B3BD-A914-4913-8E27-D555029EFCF5}';
  CLASS_DatosLiquidacionSolicitud: TGUID = '{23FE3744-243F-49ED-B8A0-AD7C0D398F01}';
  IID_IDteSolicitud: TGUID = '{0A4EBCE6-F0AF-4A78-A520-95FBC11E1CA6}';
  CLASS_DteSolicitud: TGUID = '{C3CCEF6F-D3DB-491A-9775-223A8738F7E0}';
  IID_IItemDetalleLiquidacionSolicitud: TGUID = '{2C6141D3-605C-4C0A-B588-F151AA86E6F0}';
  CLASS_ItemDetalleLiquidacionSolicitud: TGUID = '{E3BD2C0E-6497-4BE8-A812-8E0E3E977239}';
  IID_IGastosolicitud: TGUID = '{B4E04BCB-0C1D-4834-9147-C72DF660083D}';
  CLASS_GastoSolicitud: TGUID = '{1E1BAA0D-0AEB-4CEA-8158-4DB732BAEF97}';
  IID_ITributoSolicitud: TGUID = '{B7428DAD-F7CB-4254-9451-0226595DD88E}';
  CLASS_TributoSolicitud: TGUID = '{522BA1F2-9971-4146-8BF7-A9DF6E875F4D}';
  IID_IReceptorOperadorSolicitud: TGUID = '{258546F1-831D-44B4-A69B-54ED9CBFCD8C}';
  CLASS_ReceptorOperadorSolicitud: TGUID = '{A477619B-1DD6-49A2-97EC-D14E3C8DC441}';
  IID_IFrigorificoSolicitud: TGUID = '{BB5E867A-B089-495E-BF4E-84C92E24F9BC}';
  CLASS_FrigorificoSolicitud: TGUID = '{F24C6C8D-1C71-4EB4-A291-6268B1ECB3D5}';
  IID_IGuiaSolicitud: TGUID = '{2EE5B061-324B-4BD5-A1A4-4E9E63F01E06}';
  CLASS_GuiaSolicitud: TGUID = '{4B5BE216-983C-4B60-9EDF-51B006E7FD62}';
  IID_IRaza: TGUID = '{308F1E26-EC2A-49B4-86BE-0A8B044E1C59}';
  CLASS_Raza: TGUID = '{8AA1443E-7D2F-405A-B511-30B43C9C4844}';
  IID_ILiquidacionCompraAsociada: TGUID = '{2A315F3C-C496-47AE-B161-4F440C588053}';
  CLASS_LiquidacionCompraAsociada: TGUID = '{A599517F-8D72-4752-BCD3-57406A096256}';
  IID_IGenerarLiquidacionResp: TGUID = '{A573F975-AE53-4DD0-B655-349B4A142708}';
  CLASS_GenerarLiquidacionResp: TGUID = '{0AA219B7-931C-4D86-BCF9-CED7872478DA}';
  IID_ILiquidacionDetalleRespuesta: TGUID = '{829FBBAD-0DA8-45C4-AD51-6C4976F49B1E}';
  CLASS_LiquidacionDetalleRespuesta: TGUID = '{5B6AEADD-062E-4DE9-BE84-51A39A5E13A3}';
  IID_ICabeceraLiquidacionRespuesta: TGUID = '{EA8AD2A6-CFDE-4CC3-BC0D-8041E5788737}';
  CLASS_CabeceraLiquidacionRespuesta: TGUID = '{BDE1CC9C-584C-4EBF-8DCC-CEB781CEEA19}';
  IID_IAjusteRespuesta: TGUID = '{CA22E9A1-AC9B-45F5-AA82-18BDA829ECE1}';
  CLASS_AjusteRespuesta: TGUID = '{ED1271DF-D2A4-4E94-B9B5-E3C3E03835EA}';
  IID_IEmisorRespuesta: TGUID = '{502629E0-B5CD-4F3D-8F7B-50E89D096BA5}';
  CLASS_EmisorRespuesta: TGUID = '{3DD34287-6AAF-40F7-BE16-D6C3DD507D8F}';
  IID_IReceptorRespuesta: TGUID = '{41ABFBEF-1E7C-4023-9191-B16112D7E67F}';
  CLASS_ReceptorRespuesta: TGUID = '{9B334BEE-967D-4417-8CEA-0D04832A8BB2}';
  IID_IDatosLiquidacionRespuesta: TGUID = '{8CBB71B1-474E-45A4-98AC-3704A358BF4B}';
  CLASS_DatosLiquidacionRespuesta: TGUID = '{01E57739-EADE-4363-A89D-EA16681B11AF}';
  IID_IGuiaRespuesta: TGUID = '{454905C8-B29B-4EA9-94AF-7F38356ED262}';
  CLASS_GuiaRespuesta: TGUID = '{EE33E109-D2F2-4C0C-87D5-B8207D29825C}';
  IID_IDTERespuesta: TGUID = '{1D813071-D475-420D-AF32-6D61C91380F1}';
  CLASS_DTERespuesta: TGUID = '{72626052-B8E8-4ADF-8B22-8F9D41C62E1B}';
  IID_IGastoRespuesta: TGUID = '{D79AFDEC-772E-4BA2-99C2-2656CF9C564B}';
  CLASS_GastoRespuesta: TGUID = '{B1AF2A7E-C860-4D64-AB33-8AD63C6DEF3F}';
  IID_ITributoRespuesta: TGUID = '{F329F6E8-5ED8-47F6-9F37-8D641E80E868}';
  CLASS_TributoRespuesta: TGUID = '{D05BFB59-B38F-43FF-9C61-1D25A49AC1FB}';
  IID_IResumenTotalesRespuesta: TGUID = '{6B0C2259-08B8-40DF-9313-47553541B601}';
  CLASS_ResumenTotalesRespuesta: TGUID = '{4D0C72B7-FC7B-4D88-A471-EBFA7223A504}';
  IID_IMetadata: TGUID = '{1C8DCDBE-F9C3-426C-9012-26FDF5B6935B}';
  CLASS_Metadata: TGUID = '{AFE9FC81-84F4-4D13-8193-AEBCAFC77B25}';
  IID_IItemDetalleLiquidacionRespuesta: TGUID = '{0F83FC59-3293-4876-B627-AE570367114F}';
  CLASS_ItemDetalleLiquidacionRespuesta: TGUID = '{5DBF4E78-3D89-4AE2-B200-3A11DB04ED58}';
  IID_IComprobanteAAjustar: TGUID = '{206F494C-F6EB-4F1B-8B22-725571EE26B8}';
  CLASS_ComprobanteAAjustar: TGUID = '{6246C2DF-9E23-493B-B741-26658C36F7D5}';
  IID_IFrigorificoRespuesta: TGUID = '{5085B7D3-3314-4A88-9761-8DB9E1E8674B}';
  CLASS_FrigorificoRespuesta: TGUID = '{4CCB8330-A6FD-488D-B447-4D7A4E638C6F}';
  IID_IConsultarUltimoNroComprobantePorPtoVtaResp: TGUID = '{8777A837-4C33-4149-B5C0-CCD79E370524}';
  CLASS_ConsultarUltimoNroComprobantePorPtoVtaResp: TGUID = '{2755A56F-9C6C-41A1-BC6F-FBF942F1976D}';
  IID_IConsultarUltNroComprobantePorPtoVtaRespuesta: TGUID = '{5BB4186A-E2D0-4B31-91C5-3DEB25CA43C1}';
  CLASS_ConsultarUltNroComprobantePorPtoVtaRespuesta: TGUID = '{691B824A-70C0-4397-995B-080C57D78394}';
  IID_IGenerarAjusteReq: TGUID = '{CB6B6639-D857-4D7E-8D69-15DEA6861801}';
  CLASS_GenerarAjusteReq: TGUID = '{A1B507C5-C78A-4C70-894F-C6E65B0F4206}';
  IID_IGenerarAjusteResp: TGUID = '{A7FAD4BB-BEFF-4099-A539-53E9FA6FD3B4}';
  CLASS_GenerarAjusteResp: TGUID = '{2924D987-50CF-44F0-A3E2-D13135AF1691}';
  IID_IEmisorAjusteSolicitud: TGUID = '{977B5DE5-94E9-44AB-8081-9E97704547C8}';
  CLASS_EmisorAjusteSolicitud: TGUID = '{5FFDA10C-1109-4609-B34A-8FADCDB913D0}';
  IID_IItemDetalleAjusteSolicitud: TGUID = '{A0FA4EF3-A3DD-4DB9-B478-BC4D2AED4EAA}';
  CLASS_ItemDetalleAjusteSolicitud: TGUID = '{BF893F61-E7EC-4551-B9EB-A974760F4FC5}';
  IID_IAjusteFinancieroSolicitud: TGUID = '{61348514-2295-4D33-85F1-FA861F30ED1D}';
  CLASS_AjusteFinancieroSolicitud: TGUID = '{DD10517F-8DA2-426F-A25C-76DED7E75156}';
  IID_IAjusteFisicoSolicitud: TGUID = '{AE2664C1-B2F8-4B18-9BA5-8F20DD904D35}';
  CLASS_AjusteFisicoSolicitud: TGUID = '{0DA1B9D0-C546-45B7-A1EA-AA0D5DFF5F78}';
  IID_IAjusteMonetarioSolicitud: TGUID = '{45A0F94A-2C8D-48FB-9673-E42CCE5E472E}';
  CLASS_AjusteMonetarioSolicitud: TGUID = '{6F402EFC-20CE-4158-A0F8-B043D92B0056}';
  IID_IConsultarLiquidacionPorNroComprobanteResp: TGUID = '{4D589FB1-0350-4B08-BFE8-943DB1F25D7F}';
  CLASS_ConsultarLiquidacionPorNroComprobanteResp: TGUID = '{8D39A85D-C7DA-447B-9929-7F45ECF58C0F}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  Iwslsp = interface;
  IwslspDisp = dispinterface;
  IGenerarLiquidacionReq = interface;
  IGenerarLiquidacionReqDisp = dispinterface;
  IEmisorSolicitud = interface;
  IEmisorSolicitudDisp = dispinterface;
  IReceptorSolicitud = interface;
  IReceptorSolicitudDisp = dispinterface;
  IDatosLiquidacionSolicitud = interface;
  IDatosLiquidacionSolicitudDisp = dispinterface;
  IDteSolicitud = interface;
  IDteSolicitudDisp = dispinterface;
  IItemDetalleLiquidacionSolicitud = interface;
  IItemDetalleLiquidacionSolicitudDisp = dispinterface;
  IGastosolicitud = interface;
  IGastosolicitudDisp = dispinterface;
  ITributoSolicitud = interface;
  ITributoSolicitudDisp = dispinterface;
  IReceptorOperadorSolicitud = interface;
  IReceptorOperadorSolicitudDisp = dispinterface;
  IFrigorificoSolicitud = interface;
  IFrigorificoSolicitudDisp = dispinterface;
  IGuiaSolicitud = interface;
  IGuiaSolicitudDisp = dispinterface;
  IRaza = interface;
  IRazaDisp = dispinterface;
  ILiquidacionCompraAsociada = interface;
  ILiquidacionCompraAsociadaDisp = dispinterface;
  IGenerarLiquidacionResp = interface;
  IGenerarLiquidacionRespDisp = dispinterface;
  ILiquidacionDetalleRespuesta = interface;
  ILiquidacionDetalleRespuestaDisp = dispinterface;
  ICabeceraLiquidacionRespuesta = interface;
  ICabeceraLiquidacionRespuestaDisp = dispinterface;
  IAjusteRespuesta = interface;
  IAjusteRespuestaDisp = dispinterface;
  IEmisorRespuesta = interface;
  IEmisorRespuestaDisp = dispinterface;
  IReceptorRespuesta = interface;
  IReceptorRespuestaDisp = dispinterface;
  IDatosLiquidacionRespuesta = interface;
  IDatosLiquidacionRespuestaDisp = dispinterface;
  IGuiaRespuesta = interface;
  IGuiaRespuestaDisp = dispinterface;
  IDTERespuesta = interface;
  IDTERespuestaDisp = dispinterface;
  IGastoRespuesta = interface;
  IGastoRespuestaDisp = dispinterface;
  ITributoRespuesta = interface;
  ITributoRespuestaDisp = dispinterface;
  IResumenTotalesRespuesta = interface;
  IResumenTotalesRespuestaDisp = dispinterface;
  IMetadata = interface;
  IMetadataDisp = dispinterface;
  IItemDetalleLiquidacionRespuesta = interface;
  IItemDetalleLiquidacionRespuestaDisp = dispinterface;
  IComprobanteAAjustar = interface;
  IComprobanteAAjustarDisp = dispinterface;
  IFrigorificoRespuesta = interface;
  IFrigorificoRespuestaDisp = dispinterface;
  IConsultarUltimoNroComprobantePorPtoVtaResp = interface;
  IConsultarUltimoNroComprobantePorPtoVtaRespDisp = dispinterface;
  IConsultarUltNroComprobantePorPtoVtaRespuesta = interface;
  IConsultarUltNroComprobantePorPtoVtaRespuestaDisp = dispinterface;
  IGenerarAjusteReq = interface;
  IGenerarAjusteReqDisp = dispinterface;
  IGenerarAjusteResp = interface;
  IGenerarAjusteRespDisp = dispinterface;
  IEmisorAjusteSolicitud = interface;
  IEmisorAjusteSolicitudDisp = dispinterface;
  IItemDetalleAjusteSolicitud = interface;
  IItemDetalleAjusteSolicitudDisp = dispinterface;
  IAjusteFinancieroSolicitud = interface;
  IAjusteFinancieroSolicitudDisp = dispinterface;
  IAjusteFisicoSolicitud = interface;
  IAjusteFisicoSolicitudDisp = dispinterface;
  IAjusteMonetarioSolicitud = interface;
  IAjusteMonetarioSolicitudDisp = dispinterface;
  IConsultarLiquidacionPorNroComprobanteResp = interface;
  IConsultarLiquidacionPorNroComprobanteRespDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  wslsp = Iwslsp;
  GenerarLiquidacionReq = IGenerarLiquidacionReq;
  EmisorSolicitud = IEmisorSolicitud;
  ReceptorSolicitud = IReceptorSolicitud;
  DatosLiquidacionSolicitud = IDatosLiquidacionSolicitud;
  DteSolicitud = IDteSolicitud;
  ItemDetalleLiquidacionSolicitud = IItemDetalleLiquidacionSolicitud;
  GastoSolicitud = IGastosolicitud;
  TributoSolicitud = ITributoSolicitud;
  ReceptorOperadorSolicitud = IReceptorOperadorSolicitud;
  FrigorificoSolicitud = IFrigorificoSolicitud;
  GuiaSolicitud = IGuiaSolicitud;
  Raza = IRaza;
  LiquidacionCompraAsociada = ILiquidacionCompraAsociada;
  GenerarLiquidacionResp = IGenerarLiquidacionResp;
  LiquidacionDetalleRespuesta = ILiquidacionDetalleRespuesta;
  CabeceraLiquidacionRespuesta = ICabeceraLiquidacionRespuesta;
  AjusteRespuesta = IAjusteRespuesta;
  EmisorRespuesta = IEmisorRespuesta;
  ReceptorRespuesta = IReceptorRespuesta;
  DatosLiquidacionRespuesta = IDatosLiquidacionRespuesta;
  GuiaRespuesta = IGuiaRespuesta;
  DTERespuesta = IDTERespuesta;
  GastoRespuesta = IGastoRespuesta;
  TributoRespuesta = ITributoRespuesta;
  ResumenTotalesRespuesta = IResumenTotalesRespuesta;
  Metadata = IMetadata;
  ItemDetalleLiquidacionRespuesta = IItemDetalleLiquidacionRespuesta;
  ComprobanteAAjustar = IComprobanteAAjustar;
  FrigorificoRespuesta = IFrigorificoRespuesta;
  ConsultarUltimoNroComprobantePorPtoVtaResp = IConsultarUltimoNroComprobantePorPtoVtaResp;
  ConsultarUltNroComprobantePorPtoVtaRespuesta = IConsultarUltNroComprobantePorPtoVtaRespuesta;
  GenerarAjusteReq = IGenerarAjusteReq;
  GenerarAjusteResp = IGenerarAjusteResp;
  EmisorAjusteSolicitud = IEmisorAjusteSolicitud;
  ItemDetalleAjusteSolicitud = IItemDetalleAjusteSolicitud;
  AjusteFinancieroSolicitud = IAjusteFinancieroSolicitud;
  AjusteFisicoSolicitud = IAjusteFisicoSolicitud;
  AjusteMonetarioSolicitud = IAjusteMonetarioSolicitud;
  ConsultarLiquidacionPorNroComprobanteResp = IConsultarLiquidacionPorNroComprobanteResp;


// *********************************************************************//
// Interface: Iwslsp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6B21D09C-A313-4597-987C-A7100A59F67E}
// *********************************************************************//
  Iwslsp = interface(IDispatch)
    ['{6B21D09C-A313-4597-987C-A7100A59F67E}']
    function login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL; safecall;
    function Get_modoProduccion: OLE_CANCELBOOL; safecall;
    procedure Set_modoProduccion(Value: OLE_CANCELBOOL); safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDesc: WideString; safecall;
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function Get_XMLRequest: WideString; safecall;
    function Get_XMLResponse: WideString; safecall;
    function Get_Depurar: OLE_CANCELBOOL; safecall;
    procedure Set_Depurar(Value: OLE_CANCELBOOL); safecall;
    function nuevaLiquidacion: IGenerarLiquidacionReq; safecall;
    function generarLiquidacion: IGenerarLiquidacionResp; safecall;
    function consultarUltimoNroComprobantePorPtoVta(puntoVenta: Integer; tipoComprobante: Integer): IConsultarUltimoNroComprobantePorPtoVtaResp; safecall;
    function nuevoAjuste: IGenerarAjusteReq; safecall;
    function generarAjuste: IGenerarAjusteResp; safecall;
    function consultarLiquidacionPorNroComprobante(puntoVenta: Integer; tipoComprobante: Integer; 
                                                   nroComprobante: Integer): IConsultarLiquidacionPorNroComprobanteResp; safecall;
    property modoProduccion: OLE_CANCELBOOL read Get_modoProduccion write Set_modoProduccion;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
  end;

// *********************************************************************//
// DispIntf:  IwslspDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6B21D09C-A313-4597-987C-A7100A59F67E}
// *********************************************************************//
  IwslspDisp = dispinterface
    ['{6B21D09C-A313-4597-987C-A7100A59F67E}']
    function login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL; dispid 246;
    property modoProduccion: OLE_CANCELBOOL dispid 247;
    property ErrorCode: Integer readonly dispid 248;
    property ErrorDesc: WideString readonly dispid 249;
    property CUIT: Double dispid 250;
    property XMLRequest: WideString readonly dispid 251;
    property XMLResponse: WideString readonly dispid 252;
    property Depurar: OLE_CANCELBOOL dispid 253;
    function nuevaLiquidacion: IGenerarLiquidacionReq; dispid 201;
    function generarLiquidacion: IGenerarLiquidacionResp; dispid 202;
    function consultarUltimoNroComprobantePorPtoVta(puntoVenta: Integer; tipoComprobante: Integer): IConsultarUltimoNroComprobantePorPtoVtaResp; dispid 203;
    function nuevoAjuste: IGenerarAjusteReq; dispid 204;
    function generarAjuste: IGenerarAjusteResp; dispid 205;
    function consultarLiquidacionPorNroComprobante(puntoVenta: Integer; tipoComprobante: Integer; 
                                                   nroComprobante: Integer): IConsultarLiquidacionPorNroComprobanteResp; dispid 206;
  end;

// *********************************************************************//
// Interface: IGenerarLiquidacionReq
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4AA3DE1F-76AD-4E20-93A4-FAD38CA1B2A8}
// *********************************************************************//
  IGenerarLiquidacionReq = interface(IDispatch)
    ['{4AA3DE1F-76AD-4E20-93A4-FAD38CA1B2A8}']
    function Get_codOperacion: Integer; safecall;
    procedure Set_codOperacion(Value: Integer); safecall;
    function Get_emisor: IEmisorSolicitud; safecall;
    function Get_receptor: IReceptorSolicitud; safecall;
    function Get_datosLiquidacion: IDatosLiquidacionSolicitud; safecall;
    function Get_guia(Indice: Integer): IGuiaSolicitud; safecall;
    function Get_dte(Indice: Integer): IDteSolicitud; safecall;
    function Get_itemDetalleLiquidacion(Indice: Integer): IItemDetalleLiquidacionSolicitud; safecall;
    function Get_gasto(Indice: Integer): IGastosolicitud; safecall;
    function Get_tributo(Indice: Integer): ITributoSolicitud; safecall;
    function Get_datosAdicionales: WideString; safecall;
    procedure Set_datosAdicionales(const Value: WideString); safecall;
    property codOperacion: Integer read Get_codOperacion write Set_codOperacion;
    property emisor: IEmisorSolicitud read Get_emisor;
    property receptor: IReceptorSolicitud read Get_receptor;
    property datosLiquidacion: IDatosLiquidacionSolicitud read Get_datosLiquidacion;
    property guia[Indice: Integer]: IGuiaSolicitud read Get_guia;
    property dte[Indice: Integer]: IDteSolicitud read Get_dte;
    property itemDetalleLiquidacion[Indice: Integer]: IItemDetalleLiquidacionSolicitud read Get_itemDetalleLiquidacion;
    property gasto[Indice: Integer]: IGastosolicitud read Get_gasto;
    property tributo[Indice: Integer]: ITributoSolicitud read Get_tributo;
    property datosAdicionales: WideString read Get_datosAdicionales write Set_datosAdicionales;
  end;

// *********************************************************************//
// DispIntf:  IGenerarLiquidacionReqDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4AA3DE1F-76AD-4E20-93A4-FAD38CA1B2A8}
// *********************************************************************//
  IGenerarLiquidacionReqDisp = dispinterface
    ['{4AA3DE1F-76AD-4E20-93A4-FAD38CA1B2A8}']
    property codOperacion: Integer dispid 201;
    property emisor: IEmisorSolicitud readonly dispid 202;
    property receptor: IReceptorSolicitud readonly dispid 203;
    property datosLiquidacion: IDatosLiquidacionSolicitud readonly dispid 204;
    property guia[Indice: Integer]: IGuiaSolicitud readonly dispid 205;
    property dte[Indice: Integer]: IDteSolicitud readonly dispid 206;
    property itemDetalleLiquidacion[Indice: Integer]: IItemDetalleLiquidacionSolicitud readonly dispid 207;
    property gasto[Indice: Integer]: IGastosolicitud readonly dispid 208;
    property tributo[Indice: Integer]: ITributoSolicitud readonly dispid 209;
    property datosAdicionales: WideString dispid 210;
  end;

// *********************************************************************//
// Interface: IEmisorSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E03E1AD1-DBF1-44FF-99C6-8E82E4D4A250}
// *********************************************************************//
  IEmisorSolicitud = interface(IDispatch)
    ['{E03E1AD1-DBF1-44FF-99C6-8E82E4D4A250}']
    function Get_puntoVenta: Integer; safecall;
    procedure Set_puntoVenta(Value: Integer); safecall;
    function Get_tipoComprobante: Integer; safecall;
    procedure Set_tipoComprobante(Value: Integer); safecall;
    function Get_nroComprobante: Double; safecall;
    procedure Set_nroComprobante(Value: Double); safecall;
    function Get_codCaracter: Integer; safecall;
    procedure Set_codCaracter(Value: Integer); safecall;
    function Get_fechaInicioActividades: WideString; safecall;
    procedure Set_fechaInicioActividades(const Value: WideString); safecall;
    function Get_iibb: WideString; safecall;
    procedure Set_iibb(const Value: WideString); safecall;
    function Get_nroRUCA: Double; safecall;
    procedure Set_nroRUCA(Value: Double); safecall;
    function Get_nroRenspa: WideString; safecall;
    procedure Set_nroRenspa(const Value: WideString); safecall;
    function Get_cuitAutorizado: Double; safecall;
    procedure Set_cuitAutorizado(Value: Double); safecall;
    property puntoVenta: Integer read Get_puntoVenta write Set_puntoVenta;
    property tipoComprobante: Integer read Get_tipoComprobante write Set_tipoComprobante;
    property nroComprobante: Double read Get_nroComprobante write Set_nroComprobante;
    property codCaracter: Integer read Get_codCaracter write Set_codCaracter;
    property fechaInicioActividades: WideString read Get_fechaInicioActividades write Set_fechaInicioActividades;
    property iibb: WideString read Get_iibb write Set_iibb;
    property nroRUCA: Double read Get_nroRUCA write Set_nroRUCA;
    property nroRenspa: WideString read Get_nroRenspa write Set_nroRenspa;
    property cuitAutorizado: Double read Get_cuitAutorizado write Set_cuitAutorizado;
  end;

// *********************************************************************//
// DispIntf:  IEmisorSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E03E1AD1-DBF1-44FF-99C6-8E82E4D4A250}
// *********************************************************************//
  IEmisorSolicitudDisp = dispinterface
    ['{E03E1AD1-DBF1-44FF-99C6-8E82E4D4A250}']
    property puntoVenta: Integer dispid 201;
    property tipoComprobante: Integer dispid 202;
    property nroComprobante: Double dispid 203;
    property codCaracter: Integer dispid 204;
    property fechaInicioActividades: WideString dispid 205;
    property iibb: WideString dispid 206;
    property nroRUCA: Double dispid 207;
    property nroRenspa: WideString dispid 208;
    property cuitAutorizado: Double dispid 209;
  end;

// *********************************************************************//
// Interface: IReceptorSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A8093E59-017E-4291-B652-30E4F1D65772}
// *********************************************************************//
  IReceptorSolicitud = interface(IDispatch)
    ['{A8093E59-017E-4291-B652-30E4F1D65772}']
    function Get_codCaracter: Integer; safecall;
    procedure Set_codCaracter(Value: Integer); safecall;
    function Get_operador: IReceptorOperadorSolicitud; safecall;
    property codCaracter: Integer read Get_codCaracter write Set_codCaracter;
    property operador: IReceptorOperadorSolicitud read Get_operador;
  end;

// *********************************************************************//
// DispIntf:  IReceptorSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A8093E59-017E-4291-B652-30E4F1D65772}
// *********************************************************************//
  IReceptorSolicitudDisp = dispinterface
    ['{A8093E59-017E-4291-B652-30E4F1D65772}']
    property codCaracter: Integer dispid 201;
    property operador: IReceptorOperadorSolicitud readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IDatosLiquidacionSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E374B3BD-A914-4913-8E27-D555029EFCF5}
// *********************************************************************//
  IDatosLiquidacionSolicitud = interface(IDispatch)
    ['{E374B3BD-A914-4913-8E27-D555029EFCF5}']
    function Get_fechaComprobante: WideString; safecall;
    procedure Set_fechaComprobante(const Value: WideString); safecall;
    function Get_fechaOperacion: WideString; safecall;
    procedure Set_fechaOperacion(const Value: WideString); safecall;
    function Get_lugarRealizacion: WideString; safecall;
    procedure Set_lugarRealizacion(const Value: WideString); safecall;
    function Get_codMotivo: Integer; safecall;
    procedure Set_codMotivo(Value: Integer); safecall;
    function Get_fechaRecepcion: WideString; safecall;
    procedure Set_fechaRecepcion(const Value: WideString); safecall;
    function Get_fechaFaena: WideString; safecall;
    procedure Set_fechaFaena(const Value: WideString); safecall;
    function Get_frigorifico: IFrigorificoSolicitud; safecall;
    property fechaComprobante: WideString read Get_fechaComprobante write Set_fechaComprobante;
    property fechaOperacion: WideString read Get_fechaOperacion write Set_fechaOperacion;
    property lugarRealizacion: WideString read Get_lugarRealizacion write Set_lugarRealizacion;
    property codMotivo: Integer read Get_codMotivo write Set_codMotivo;
    property fechaRecepcion: WideString read Get_fechaRecepcion write Set_fechaRecepcion;
    property fechaFaena: WideString read Get_fechaFaena write Set_fechaFaena;
    property frigorifico: IFrigorificoSolicitud read Get_frigorifico;
  end;

// *********************************************************************//
// DispIntf:  IDatosLiquidacionSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E374B3BD-A914-4913-8E27-D555029EFCF5}
// *********************************************************************//
  IDatosLiquidacionSolicitudDisp = dispinterface
    ['{E374B3BD-A914-4913-8E27-D555029EFCF5}']
    property fechaComprobante: WideString dispid 201;
    property fechaOperacion: WideString dispid 202;
    property lugarRealizacion: WideString dispid 203;
    property codMotivo: Integer dispid 204;
    property fechaRecepcion: WideString dispid 205;
    property fechaFaena: WideString dispid 206;
    property frigorifico: IFrigorificoSolicitud readonly dispid 207;
  end;

// *********************************************************************//
// Interface: IDteSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0A4EBCE6-F0AF-4A78-A520-95FBC11E1CA6}
// *********************************************************************//
  IDteSolicitud = interface(IDispatch)
    ['{0A4EBCE6-F0AF-4A78-A520-95FBC11E1CA6}']
    function Get_nroDTE: WideString; safecall;
    procedure Set_nroDTE(const Value: WideString); safecall;
    function Get_nroRenspa: WideString; safecall;
    procedure Set_nroRenspa(const Value: WideString); safecall;
    property nroDTE: WideString read Get_nroDTE write Set_nroDTE;
    property nroRenspa: WideString read Get_nroRenspa write Set_nroRenspa;
  end;

// *********************************************************************//
// DispIntf:  IDteSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0A4EBCE6-F0AF-4A78-A520-95FBC11E1CA6}
// *********************************************************************//
  IDteSolicitudDisp = dispinterface
    ['{0A4EBCE6-F0AF-4A78-A520-95FBC11E1CA6}']
    property nroDTE: WideString dispid 201;
    property nroRenspa: WideString dispid 202;
  end;

// *********************************************************************//
// Interface: IItemDetalleLiquidacionSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2C6141D3-605C-4C0A-B588-F151AA86E6F0}
// *********************************************************************//
  IItemDetalleLiquidacionSolicitud = interface(IDispatch)
    ['{2C6141D3-605C-4C0A-B588-F151AA86E6F0}']
    function Get_cuitCliente: Double; safecall;
    procedure Set_cuitCliente(Value: Double); safecall;
    function Get_codCategoria: Double; safecall;
    procedure Set_codCategoria(Value: Double); safecall;
    function Get_tipoLiquidacion: Integer; safecall;
    procedure Set_tipoLiquidacion(Value: Integer); safecall;
    function Get_cantidad: Integer; safecall;
    procedure Set_cantidad(Value: Integer); safecall;
    function Get_precioUnitario: Double; safecall;
    procedure Set_precioUnitario(Value: Double); safecall;
    function Get_alicuotaIVA: Double; safecall;
    procedure Set_alicuotaIVA(Value: Double); safecall;
    function Get_cantidadCabezas: Integer; safecall;
    procedure Set_cantidadCabezas(Value: Integer); safecall;
    function Get_Raza: IRaza; safecall;
    function Get_nroTropa: Double; safecall;
    procedure Set_nroTropa(Value: Double); safecall;
    function Get_codCorte: Integer; safecall;
    procedure Set_codCorte(Value: Integer); safecall;
    function Get_cantidadKgVivo: Integer; safecall;
    procedure Set_cantidadKgVivo(Value: Integer); safecall;
    function Get_precioRecupero: Double; safecall;
    procedure Set_precioRecupero(Value: Double); safecall;
    function Get_LiquidacionCompraAsociada(Indice: Integer): ILiquidacionCompraAsociada; safecall;
    property cuitCliente: Double read Get_cuitCliente write Set_cuitCliente;
    property codCategoria: Double read Get_codCategoria write Set_codCategoria;
    property tipoLiquidacion: Integer read Get_tipoLiquidacion write Set_tipoLiquidacion;
    property cantidad: Integer read Get_cantidad write Set_cantidad;
    property precioUnitario: Double read Get_precioUnitario write Set_precioUnitario;
    property alicuotaIVA: Double read Get_alicuotaIVA write Set_alicuotaIVA;
    property cantidadCabezas: Integer read Get_cantidadCabezas write Set_cantidadCabezas;
    property Raza: IRaza read Get_Raza;
    property nroTropa: Double read Get_nroTropa write Set_nroTropa;
    property codCorte: Integer read Get_codCorte write Set_codCorte;
    property cantidadKgVivo: Integer read Get_cantidadKgVivo write Set_cantidadKgVivo;
    property precioRecupero: Double read Get_precioRecupero write Set_precioRecupero;
    property LiquidacionCompraAsociada[Indice: Integer]: ILiquidacionCompraAsociada read Get_LiquidacionCompraAsociada;
  end;

// *********************************************************************//
// DispIntf:  IItemDetalleLiquidacionSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2C6141D3-605C-4C0A-B588-F151AA86E6F0}
// *********************************************************************//
  IItemDetalleLiquidacionSolicitudDisp = dispinterface
    ['{2C6141D3-605C-4C0A-B588-F151AA86E6F0}']
    property cuitCliente: Double dispid 201;
    property codCategoria: Double dispid 202;
    property tipoLiquidacion: Integer dispid 203;
    property cantidad: Integer dispid 204;
    property precioUnitario: Double dispid 205;
    property alicuotaIVA: Double dispid 206;
    property cantidadCabezas: Integer dispid 207;
    property Raza: IRaza readonly dispid 208;
    property nroTropa: Double dispid 209;
    property codCorte: Integer dispid 210;
    property cantidadKgVivo: Integer dispid 211;
    property precioRecupero: Double dispid 212;
    property LiquidacionCompraAsociada[Indice: Integer]: ILiquidacionCompraAsociada readonly dispid 213;
  end;

// *********************************************************************//
// Interface: IGastosolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B4E04BCB-0C1D-4834-9147-C72DF660083D}
// *********************************************************************//
  IGastosolicitud = interface(IDispatch)
    ['{B4E04BCB-0C1D-4834-9147-C72DF660083D}']
    function Get_codGasto: Integer; safecall;
    procedure Set_codGasto(Value: Integer); safecall;
    function Get_descripcion: WideString; safecall;
    procedure Set_descripcion(const Value: WideString); safecall;
    function Get_baseImponible: Double; safecall;
    procedure Set_baseImponible(Value: Double); safecall;
    function Get_alicuota: Double; safecall;
    procedure Set_alicuota(Value: Double); safecall;
    function Get_importe: Double; safecall;
    procedure Set_importe(Value: Double); safecall;
    function Get_alicuotaIVA: Double; safecall;
    procedure Set_alicuotaIVA(Value: Double); safecall;
    property codGasto: Integer read Get_codGasto write Set_codGasto;
    property descripcion: WideString read Get_descripcion write Set_descripcion;
    property baseImponible: Double read Get_baseImponible write Set_baseImponible;
    property alicuota: Double read Get_alicuota write Set_alicuota;
    property importe: Double read Get_importe write Set_importe;
    property alicuotaIVA: Double read Get_alicuotaIVA write Set_alicuotaIVA;
  end;

// *********************************************************************//
// DispIntf:  IGastosolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B4E04BCB-0C1D-4834-9147-C72DF660083D}
// *********************************************************************//
  IGastosolicitudDisp = dispinterface
    ['{B4E04BCB-0C1D-4834-9147-C72DF660083D}']
    property codGasto: Integer dispid 201;
    property descripcion: WideString dispid 202;
    property baseImponible: Double dispid 203;
    property alicuota: Double dispid 204;
    property importe: Double dispid 205;
    property alicuotaIVA: Double dispid 206;
  end;

// *********************************************************************//
// Interface: ITributoSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7428DAD-F7CB-4254-9451-0226595DD88E}
// *********************************************************************//
  ITributoSolicitud = interface(IDispatch)
    ['{B7428DAD-F7CB-4254-9451-0226595DD88E}']
    function Get_codTributo: Integer; safecall;
    procedure Set_codTributo(Value: Integer); safecall;
    function Get_descripcion: WideString; safecall;
    procedure Set_descripcion(const Value: WideString); safecall;
    function Get_baseImponible: Double; safecall;
    procedure Set_baseImponible(Value: Double); safecall;
    function Get_alicuota: Double; safecall;
    procedure Set_alicuota(Value: Double); safecall;
    function Get_importe: Double; safecall;
    procedure Set_importe(Value: Double); safecall;
    property codTributo: Integer read Get_codTributo write Set_codTributo;
    property descripcion: WideString read Get_descripcion write Set_descripcion;
    property baseImponible: Double read Get_baseImponible write Set_baseImponible;
    property alicuota: Double read Get_alicuota write Set_alicuota;
    property importe: Double read Get_importe write Set_importe;
  end;

// *********************************************************************//
// DispIntf:  ITributoSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7428DAD-F7CB-4254-9451-0226595DD88E}
// *********************************************************************//
  ITributoSolicitudDisp = dispinterface
    ['{B7428DAD-F7CB-4254-9451-0226595DD88E}']
    property codTributo: Integer dispid 201;
    property descripcion: WideString dispid 202;
    property baseImponible: Double dispid 203;
    property alicuota: Double dispid 204;
    property importe: Double dispid 205;
  end;

// *********************************************************************//
// Interface: IReceptorOperadorSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {258546F1-831D-44B4-A69B-54ED9CBFCD8C}
// *********************************************************************//
  IReceptorOperadorSolicitud = interface(IDispatch)
    ['{258546F1-831D-44B4-A69B-54ED9CBFCD8C}']
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function Get_iibb: WideString; safecall;
    procedure Set_iibb(const Value: WideString); safecall;
    function Get_nroRUCA: Double; safecall;
    procedure Set_nroRUCA(Value: Double); safecall;
    function Get_nroRenspa: WideString; safecall;
    procedure Set_nroRenspa(const Value: WideString); safecall;
    function Get_cuitAutorizado: Double; safecall;
    procedure Set_cuitAutorizado(Value: Double); safecall;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property iibb: WideString read Get_iibb write Set_iibb;
    property nroRUCA: Double read Get_nroRUCA write Set_nroRUCA;
    property nroRenspa: WideString read Get_nroRenspa write Set_nroRenspa;
    property cuitAutorizado: Double read Get_cuitAutorizado write Set_cuitAutorizado;
  end;

// *********************************************************************//
// DispIntf:  IReceptorOperadorSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {258546F1-831D-44B4-A69B-54ED9CBFCD8C}
// *********************************************************************//
  IReceptorOperadorSolicitudDisp = dispinterface
    ['{258546F1-831D-44B4-A69B-54ED9CBFCD8C}']
    property CUIT: Double dispid 201;
    property iibb: WideString dispid 202;
    property nroRUCA: Double dispid 203;
    property nroRenspa: WideString dispid 204;
    property cuitAutorizado: Double dispid 205;
  end;

// *********************************************************************//
// Interface: IFrigorificoSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BB5E867A-B089-495E-BF4E-84C92E24F9BC}
// *********************************************************************//
  IFrigorificoSolicitud = interface(IDispatch)
    ['{BB5E867A-B089-495E-BF4E-84C92E24F9BC}']
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function Get_nroPlanta: Integer; safecall;
    procedure Set_nroPlanta(Value: Integer); safecall;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property nroPlanta: Integer read Get_nroPlanta write Set_nroPlanta;
  end;

// *********************************************************************//
// DispIntf:  IFrigorificoSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BB5E867A-B089-495E-BF4E-84C92E24F9BC}
// *********************************************************************//
  IFrigorificoSolicitudDisp = dispinterface
    ['{BB5E867A-B089-495E-BF4E-84C92E24F9BC}']
    property CUIT: Double dispid 201;
    property nroPlanta: Integer dispid 202;
  end;

// *********************************************************************//
// Interface: IGuiaSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2EE5B061-324B-4BD5-A1A4-4E9E63F01E06}
// *********************************************************************//
  IGuiaSolicitud = interface(IDispatch)
    ['{2EE5B061-324B-4BD5-A1A4-4E9E63F01E06}']
    function Get_nroGuia: WideString; safecall;
    procedure Set_nroGuia(const Value: WideString); safecall;
    property nroGuia: WideString read Get_nroGuia write Set_nroGuia;
  end;

// *********************************************************************//
// DispIntf:  IGuiaSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2EE5B061-324B-4BD5-A1A4-4E9E63F01E06}
// *********************************************************************//
  IGuiaSolicitudDisp = dispinterface
    ['{2EE5B061-324B-4BD5-A1A4-4E9E63F01E06}']
    property nroGuia: WideString dispid 201;
  end;

// *********************************************************************//
// Interface: IRaza
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {308F1E26-EC2A-49B4-86BE-0A8B044E1C59}
// *********************************************************************//
  IRaza = interface(IDispatch)
    ['{308F1E26-EC2A-49B4-86BE-0A8B044E1C59}']
    function Get_codRaza: Integer; safecall;
    procedure Set_codRaza(Value: Integer); safecall;
    function Get_detalle: WideString; safecall;
    procedure Set_detalle(const Value: WideString); safecall;
    property codRaza: Integer read Get_codRaza write Set_codRaza;
    property detalle: WideString read Get_detalle write Set_detalle;
  end;

// *********************************************************************//
// DispIntf:  IRazaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {308F1E26-EC2A-49B4-86BE-0A8B044E1C59}
// *********************************************************************//
  IRazaDisp = dispinterface
    ['{308F1E26-EC2A-49B4-86BE-0A8B044E1C59}']
    property codRaza: Integer dispid 201;
    property detalle: WideString dispid 202;
  end;

// *********************************************************************//
// Interface: ILiquidacionCompraAsociada
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2A315F3C-C496-47AE-B161-4F440C588053}
// *********************************************************************//
  ILiquidacionCompraAsociada = interface(IDispatch)
    ['{2A315F3C-C496-47AE-B161-4F440C588053}']
    function Get_tipoComprobante: Integer; safecall;
    procedure Set_tipoComprobante(Value: Integer); safecall;
    function Get_puntoVenta: Integer; safecall;
    procedure Set_puntoVenta(Value: Integer); safecall;
    function Get_nroComprobante: Integer; safecall;
    procedure Set_nroComprobante(Value: Integer); safecall;
    function Get_nroItem: Integer; safecall;
    procedure Set_nroItem(Value: Integer); safecall;
    function Get_cantidadAsociada: Integer; safecall;
    procedure Set_cantidadAsociada(Value: Integer); safecall;
    property tipoComprobante: Integer read Get_tipoComprobante write Set_tipoComprobante;
    property puntoVenta: Integer read Get_puntoVenta write Set_puntoVenta;
    property nroComprobante: Integer read Get_nroComprobante write Set_nroComprobante;
    property nroItem: Integer read Get_nroItem write Set_nroItem;
    property cantidadAsociada: Integer read Get_cantidadAsociada write Set_cantidadAsociada;
  end;

// *********************************************************************//
// DispIntf:  ILiquidacionCompraAsociadaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2A315F3C-C496-47AE-B161-4F440C588053}
// *********************************************************************//
  ILiquidacionCompraAsociadaDisp = dispinterface
    ['{2A315F3C-C496-47AE-B161-4F440C588053}']
    property tipoComprobante: Integer dispid 201;
    property puntoVenta: Integer dispid 202;
    property nroComprobante: Integer dispid 203;
    property nroItem: Integer dispid 204;
    property cantidadAsociada: Integer dispid 205;
  end;

// *********************************************************************//
// Interface: IGenerarLiquidacionResp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A573F975-AE53-4DD0-B655-349B4A142708}
// *********************************************************************//
  IGenerarLiquidacionResp = interface(IDispatch)
    ['{A573F975-AE53-4DD0-B655-349B4A142708}']
    function Get_respuesta: ILiquidacionDetalleRespuesta; safecall;
    property respuesta: ILiquidacionDetalleRespuesta read Get_respuesta;
  end;

// *********************************************************************//
// DispIntf:  IGenerarLiquidacionRespDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A573F975-AE53-4DD0-B655-349B4A142708}
// *********************************************************************//
  IGenerarLiquidacionRespDisp = dispinterface
    ['{A573F975-AE53-4DD0-B655-349B4A142708}']
    property respuesta: ILiquidacionDetalleRespuesta readonly dispid 201;
  end;

// *********************************************************************//
// Interface: ILiquidacionDetalleRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {829FBBAD-0DA8-45C4-AD51-6C4976F49B1E}
// *********************************************************************//
  ILiquidacionDetalleRespuesta = interface(IDispatch)
    ['{829FBBAD-0DA8-45C4-AD51-6C4976F49B1E}']
    function Get_cabecera: ICabeceraLiquidacionRespuesta; safecall;
    function Get_ajuste: IAjusteRespuesta; safecall;
    function Get_emisor: IEmisorRespuesta; safecall;
    function Get_receptor: IReceptorRespuesta; safecall;
    function Get_datosLiquidacion: IDatosLiquidacionRespuesta; safecall;
    function Get_guia(Indice: Integer): IGuiaRespuesta; safecall;
    function Get_dte(Indice: Integer): IDTERespuesta; safecall;
    function Get_itemDetalleLiquidacion(Indice: Integer): IItemDetalleLiquidacionRespuesta; safecall;
    function Get_gasto(Indice: Integer): IGastoRespuesta; safecall;
    function Get_tributo(Indice: Integer): ITributoRespuesta; safecall;
    function Get_datosAdicionales: WideString; safecall;
    function Get_resumenTotales: IResumenTotalesRespuesta; safecall;
    function Get_Metadata: IMetadata; safecall;
    function Get_hayErrores: OLE_CANCELBOOL; safecall;
    function Get_errores: WideString; safecall;
    procedure guardarPDF(const nombreArchivo: WideString); safecall;
    property cabecera: ICabeceraLiquidacionRespuesta read Get_cabecera;
    property ajuste: IAjusteRespuesta read Get_ajuste;
    property emisor: IEmisorRespuesta read Get_emisor;
    property receptor: IReceptorRespuesta read Get_receptor;
    property datosLiquidacion: IDatosLiquidacionRespuesta read Get_datosLiquidacion;
    property guia[Indice: Integer]: IGuiaRespuesta read Get_guia;
    property dte[Indice: Integer]: IDTERespuesta read Get_dte;
    property itemDetalleLiquidacion[Indice: Integer]: IItemDetalleLiquidacionRespuesta read Get_itemDetalleLiquidacion;
    property gasto[Indice: Integer]: IGastoRespuesta read Get_gasto;
    property tributo[Indice: Integer]: ITributoRespuesta read Get_tributo;
    property datosAdicionales: WideString read Get_datosAdicionales;
    property resumenTotales: IResumenTotalesRespuesta read Get_resumenTotales;
    property Metadata: IMetadata read Get_Metadata;
    property hayErrores: OLE_CANCELBOOL read Get_hayErrores;
    property errores: WideString read Get_errores;
  end;

// *********************************************************************//
// DispIntf:  ILiquidacionDetalleRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {829FBBAD-0DA8-45C4-AD51-6C4976F49B1E}
// *********************************************************************//
  ILiquidacionDetalleRespuestaDisp = dispinterface
    ['{829FBBAD-0DA8-45C4-AD51-6C4976F49B1E}']
    property cabecera: ICabeceraLiquidacionRespuesta readonly dispid 201;
    property ajuste: IAjusteRespuesta readonly dispid 202;
    property emisor: IEmisorRespuesta readonly dispid 203;
    property receptor: IReceptorRespuesta readonly dispid 204;
    property datosLiquidacion: IDatosLiquidacionRespuesta readonly dispid 205;
    property guia[Indice: Integer]: IGuiaRespuesta readonly dispid 206;
    property dte[Indice: Integer]: IDTERespuesta readonly dispid 207;
    property itemDetalleLiquidacion[Indice: Integer]: IItemDetalleLiquidacionRespuesta readonly dispid 208;
    property gasto[Indice: Integer]: IGastoRespuesta readonly dispid 209;
    property tributo[Indice: Integer]: ITributoRespuesta readonly dispid 210;
    property datosAdicionales: WideString readonly dispid 211;
    property resumenTotales: IResumenTotalesRespuesta readonly dispid 212;
    property Metadata: IMetadata readonly dispid 213;
    property hayErrores: OLE_CANCELBOOL readonly dispid 214;
    property errores: WideString readonly dispid 215;
    procedure guardarPDF(const nombreArchivo: WideString); dispid 216;
  end;

// *********************************************************************//
// Interface: ICabeceraLiquidacionRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA8AD2A6-CFDE-4CC3-BC0D-8041E5788737}
// *********************************************************************//
  ICabeceraLiquidacionRespuesta = interface(IDispatch)
    ['{EA8AD2A6-CFDE-4CC3-BC0D-8041E5788737}']
    function Get_codOperacion: Integer; safecall;
    function Get_cae: Double; safecall;
    function Get_fechaVencimientoCae: WideString; safecall;
    function Get_nroCodigoBarras: WideString; safecall;
    function Get_fechaProcesoAFIP: WideString; safecall;
    property codOperacion: Integer read Get_codOperacion;
    property cae: Double read Get_cae;
    property fechaVencimientoCae: WideString read Get_fechaVencimientoCae;
    property nroCodigoBarras: WideString read Get_nroCodigoBarras;
    property fechaProcesoAFIP: WideString read Get_fechaProcesoAFIP;
  end;

// *********************************************************************//
// DispIntf:  ICabeceraLiquidacionRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EA8AD2A6-CFDE-4CC3-BC0D-8041E5788737}
// *********************************************************************//
  ICabeceraLiquidacionRespuestaDisp = dispinterface
    ['{EA8AD2A6-CFDE-4CC3-BC0D-8041E5788737}']
    property codOperacion: Integer readonly dispid 201;
    property cae: Double readonly dispid 202;
    property fechaVencimientoCae: WideString readonly dispid 203;
    property nroCodigoBarras: WideString readonly dispid 204;
    property fechaProcesoAFIP: WideString readonly dispid 205;
  end;

// *********************************************************************//
// Interface: IAjusteRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA22E9A1-AC9B-45F5-AA82-18BDA829ECE1}
// *********************************************************************//
  IAjusteRespuesta = interface(IDispatch)
    ['{CA22E9A1-AC9B-45F5-AA82-18BDA829ECE1}']
    function Get_tipoAjuste: WideString; safecall;
    function Get_modoAjuste: WideString; safecall;
    function Get_comprobanteAjustado: IComprobanteAAjustar; safecall;
    property tipoAjuste: WideString read Get_tipoAjuste;
    property modoAjuste: WideString read Get_modoAjuste;
    property comprobanteAjustado: IComprobanteAAjustar read Get_comprobanteAjustado;
  end;

// *********************************************************************//
// DispIntf:  IAjusteRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA22E9A1-AC9B-45F5-AA82-18BDA829ECE1}
// *********************************************************************//
  IAjusteRespuestaDisp = dispinterface
    ['{CA22E9A1-AC9B-45F5-AA82-18BDA829ECE1}']
    property tipoAjuste: WideString readonly dispid 201;
    property modoAjuste: WideString readonly dispid 202;
    property comprobanteAjustado: IComprobanteAAjustar readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IEmisorRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {502629E0-B5CD-4F3D-8F7B-50E89D096BA5}
// *********************************************************************//
  IEmisorRespuesta = interface(IDispatch)
    ['{502629E0-B5CD-4F3D-8F7B-50E89D096BA5}']
    function Get_puntoVenta: Integer; safecall;
    function Get_tipoComprobante: Integer; safecall;
    function Get_nroComprobante: Integer; safecall;
    function Get_codCaracter: Integer; safecall;
    function Get_fechaInicioActividades: WideString; safecall;
    function Get_razonSocial: WideString; safecall;
    function Get_iibb: WideString; safecall;
    function Get_domicilioPuntoVenta: WideString; safecall;
    function Get_situacionIVA: WideString; safecall;
    function Get_nroRUCA: Integer; safecall;
    function Get_nroRenspa: WideString; safecall;
    function Get_cuitAutorizado: Double; safecall;
    function Get_nombreAutorizado: WideString; safecall;
    property puntoVenta: Integer read Get_puntoVenta;
    property tipoComprobante: Integer read Get_tipoComprobante;
    property nroComprobante: Integer read Get_nroComprobante;
    property codCaracter: Integer read Get_codCaracter;
    property fechaInicioActividades: WideString read Get_fechaInicioActividades;
    property razonSocial: WideString read Get_razonSocial;
    property iibb: WideString read Get_iibb;
    property domicilioPuntoVenta: WideString read Get_domicilioPuntoVenta;
    property situacionIVA: WideString read Get_situacionIVA;
    property nroRUCA: Integer read Get_nroRUCA;
    property nroRenspa: WideString read Get_nroRenspa;
    property cuitAutorizado: Double read Get_cuitAutorizado;
    property nombreAutorizado: WideString read Get_nombreAutorizado;
  end;

// *********************************************************************//
// DispIntf:  IEmisorRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {502629E0-B5CD-4F3D-8F7B-50E89D096BA5}
// *********************************************************************//
  IEmisorRespuestaDisp = dispinterface
    ['{502629E0-B5CD-4F3D-8F7B-50E89D096BA5}']
    property puntoVenta: Integer readonly dispid 201;
    property tipoComprobante: Integer readonly dispid 202;
    property nroComprobante: Integer readonly dispid 203;
    property codCaracter: Integer readonly dispid 204;
    property fechaInicioActividades: WideString readonly dispid 205;
    property razonSocial: WideString readonly dispid 206;
    property iibb: WideString readonly dispid 207;
    property domicilioPuntoVenta: WideString readonly dispid 208;
    property situacionIVA: WideString readonly dispid 209;
    property nroRUCA: Integer readonly dispid 210;
    property nroRenspa: WideString readonly dispid 211;
    property cuitAutorizado: Double readonly dispid 212;
    property nombreAutorizado: WideString readonly dispid 213;
  end;

// *********************************************************************//
// Interface: IReceptorRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {41ABFBEF-1E7C-4023-9191-B16112D7E67F}
// *********************************************************************//
  IReceptorRespuesta = interface(IDispatch)
    ['{41ABFBEF-1E7C-4023-9191-B16112D7E67F}']
    function Get_CUIT: Double; safecall;
    function Get_nombre: WideString; safecall;
    function Get_codCaracter: Integer; safecall;
    function Get_iibb: WideString; safecall;
    function Get_fechaInicioActividades: WideString; safecall;
    function Get_nroRenspa: WideString; safecall;
    function Get_nroRUCA: Integer; safecall;
    function Get_cuitAutorizado: Double; safecall;
    function Get_nombreAutorizado: WideString; safecall;
    function Get_situacionIVA: WideString; safecall;
    function Get_domicilio: WideString; safecall;
    function Get_nombreLocalidad: WideString; safecall;
    function Get_codProvincia: Integer; safecall;
    function Get_codigoPostal: Integer; safecall;
    property CUIT: Double read Get_CUIT;
    property nombre: WideString read Get_nombre;
    property codCaracter: Integer read Get_codCaracter;
    property iibb: WideString read Get_iibb;
    property fechaInicioActividades: WideString read Get_fechaInicioActividades;
    property nroRenspa: WideString read Get_nroRenspa;
    property nroRUCA: Integer read Get_nroRUCA;
    property cuitAutorizado: Double read Get_cuitAutorizado;
    property nombreAutorizado: WideString read Get_nombreAutorizado;
    property situacionIVA: WideString read Get_situacionIVA;
    property domicilio: WideString read Get_domicilio;
    property nombreLocalidad: WideString read Get_nombreLocalidad;
    property codProvincia: Integer read Get_codProvincia;
    property codigoPostal: Integer read Get_codigoPostal;
  end;

// *********************************************************************//
// DispIntf:  IReceptorRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {41ABFBEF-1E7C-4023-9191-B16112D7E67F}
// *********************************************************************//
  IReceptorRespuestaDisp = dispinterface
    ['{41ABFBEF-1E7C-4023-9191-B16112D7E67F}']
    property CUIT: Double readonly dispid 201;
    property nombre: WideString readonly dispid 202;
    property codCaracter: Integer readonly dispid 203;
    property iibb: WideString readonly dispid 204;
    property fechaInicioActividades: WideString readonly dispid 205;
    property nroRenspa: WideString readonly dispid 206;
    property nroRUCA: Integer readonly dispid 207;
    property cuitAutorizado: Double readonly dispid 208;
    property nombreAutorizado: WideString readonly dispid 209;
    property situacionIVA: WideString readonly dispid 210;
    property domicilio: WideString readonly dispid 211;
    property nombreLocalidad: WideString readonly dispid 212;
    property codProvincia: Integer readonly dispid 213;
    property codigoPostal: Integer readonly dispid 214;
  end;

// *********************************************************************//
// Interface: IDatosLiquidacionRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8CBB71B1-474E-45A4-98AC-3704A358BF4B}
// *********************************************************************//
  IDatosLiquidacionRespuesta = interface(IDispatch)
    ['{8CBB71B1-474E-45A4-98AC-3704A358BF4B}']
    function Get_fechaComprobante: WideString; safecall;
    function Get_fechaOperacion: WideString; safecall;
    function Get_lugarRealizacion: WideString; safecall;
    function Get_codMotivo: Integer; safecall;
    function Get_fechaRecepcion: WideString; safecall;
    function Get_fechaFaena: WideString; safecall;
    function Get_frigorifico: IFrigorificoRespuesta; safecall;
    property fechaComprobante: WideString read Get_fechaComprobante;
    property fechaOperacion: WideString read Get_fechaOperacion;
    property lugarRealizacion: WideString read Get_lugarRealizacion;
    property codMotivo: Integer read Get_codMotivo;
    property fechaRecepcion: WideString read Get_fechaRecepcion;
    property fechaFaena: WideString read Get_fechaFaena;
    property frigorifico: IFrigorificoRespuesta read Get_frigorifico;
  end;

// *********************************************************************//
// DispIntf:  IDatosLiquidacionRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8CBB71B1-474E-45A4-98AC-3704A358BF4B}
// *********************************************************************//
  IDatosLiquidacionRespuestaDisp = dispinterface
    ['{8CBB71B1-474E-45A4-98AC-3704A358BF4B}']
    property fechaComprobante: WideString readonly dispid 201;
    property fechaOperacion: WideString readonly dispid 202;
    property lugarRealizacion: WideString readonly dispid 203;
    property codMotivo: Integer readonly dispid 204;
    property fechaRecepcion: WideString readonly dispid 205;
    property fechaFaena: WideString readonly dispid 206;
    property frigorifico: IFrigorificoRespuesta readonly dispid 207;
  end;

// *********************************************************************//
// Interface: IGuiaRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {454905C8-B29B-4EA9-94AF-7F38356ED262}
// *********************************************************************//
  IGuiaRespuesta = interface(IDispatch)
    ['{454905C8-B29B-4EA9-94AF-7F38356ED262}']
    function Get_nroGuia: WideString; safecall;
    property nroGuia: WideString read Get_nroGuia;
  end;

// *********************************************************************//
// DispIntf:  IGuiaRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {454905C8-B29B-4EA9-94AF-7F38356ED262}
// *********************************************************************//
  IGuiaRespuestaDisp = dispinterface
    ['{454905C8-B29B-4EA9-94AF-7F38356ED262}']
    property nroGuia: WideString readonly dispid 201;
  end;

// *********************************************************************//
// Interface: IDTERespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1D813071-D475-420D-AF32-6D61C91380F1}
// *********************************************************************//
  IDTERespuesta = interface(IDispatch)
    ['{1D813071-D475-420D-AF32-6D61C91380F1}']
    function Get_nroDTE: WideString; safecall;
    function Get_nroRenspa: WideString; safecall;
    property nroDTE: WideString read Get_nroDTE;
    property nroRenspa: WideString read Get_nroRenspa;
  end;

// *********************************************************************//
// DispIntf:  IDTERespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1D813071-D475-420D-AF32-6D61C91380F1}
// *********************************************************************//
  IDTERespuestaDisp = dispinterface
    ['{1D813071-D475-420D-AF32-6D61C91380F1}']
    property nroDTE: WideString readonly dispid 201;
    property nroRenspa: WideString readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IGastoRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D79AFDEC-772E-4BA2-99C2-2656CF9C564B}
// *********************************************************************//
  IGastoRespuesta = interface(IDispatch)
    ['{D79AFDEC-772E-4BA2-99C2-2656CF9C564B}']
    function Get_codGasto: Integer; safecall;
    function Get_descripcion: WideString; safecall;
    function Get_baseImponible: Double; safecall;
    function Get_alicuota: Double; safecall;
    function Get_importe: Double; safecall;
    function Get_alicuotaIVA: Double; safecall;
    function Get_importeIVA: Double; safecall;
    property codGasto: Integer read Get_codGasto;
    property descripcion: WideString read Get_descripcion;
    property baseImponible: Double read Get_baseImponible;
    property alicuota: Double read Get_alicuota;
    property importe: Double read Get_importe;
    property alicuotaIVA: Double read Get_alicuotaIVA;
    property importeIVA: Double read Get_importeIVA;
  end;

// *********************************************************************//
// DispIntf:  IGastoRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D79AFDEC-772E-4BA2-99C2-2656CF9C564B}
// *********************************************************************//
  IGastoRespuestaDisp = dispinterface
    ['{D79AFDEC-772E-4BA2-99C2-2656CF9C564B}']
    property codGasto: Integer readonly dispid 201;
    property descripcion: WideString readonly dispid 202;
    property baseImponible: Double readonly dispid 203;
    property alicuota: Double readonly dispid 204;
    property importe: Double readonly dispid 205;
    property alicuotaIVA: Double readonly dispid 206;
    property importeIVA: Double readonly dispid 207;
  end;

// *********************************************************************//
// Interface: ITributoRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F329F6E8-5ED8-47F6-9F37-8D641E80E868}
// *********************************************************************//
  ITributoRespuesta = interface(IDispatch)
    ['{F329F6E8-5ED8-47F6-9F37-8D641E80E868}']
    function Get_codTributo: Integer; safecall;
    function Get_descripcion: WideString; safecall;
    function Get_baseImponible: Double; safecall;
    function Get_alicuota: Double; safecall;
    function Get_importe: Double; safecall;
    property codTributo: Integer read Get_codTributo;
    property descripcion: WideString read Get_descripcion;
    property baseImponible: Double read Get_baseImponible;
    property alicuota: Double read Get_alicuota;
    property importe: Double read Get_importe;
  end;

// *********************************************************************//
// DispIntf:  ITributoRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F329F6E8-5ED8-47F6-9F37-8D641E80E868}
// *********************************************************************//
  ITributoRespuestaDisp = dispinterface
    ['{F329F6E8-5ED8-47F6-9F37-8D641E80E868}']
    property codTributo: Integer readonly dispid 201;
    property descripcion: WideString readonly dispid 202;
    property baseImponible: Double readonly dispid 203;
    property alicuota: Double readonly dispid 204;
    property importe: Double readonly dispid 205;
  end;

// *********************************************************************//
// Interface: IResumenTotalesRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6B0C2259-08B8-40DF-9313-47553541B601}
// *********************************************************************//
  IResumenTotalesRespuesta = interface(IDispatch)
    ['{6B0C2259-08B8-40DF-9313-47553541B601}']
    function Get_importeBruto: Double; safecall;
    function Get_importeIVASobreBruto: Double; safecall;
    function Get_importeTotalGastos: Double; safecall;
    function Get_importeIVASobreGastos: Double; safecall;
    function Get_importeTotalTributos: Double; safecall;
    function Get_importeTotalNeto: Double; safecall;
    property importeBruto: Double read Get_importeBruto;
    property importeIVASobreBruto: Double read Get_importeIVASobreBruto;
    property importeTotalGastos: Double read Get_importeTotalGastos;
    property importeIVASobreGastos: Double read Get_importeIVASobreGastos;
    property importeTotalTributos: Double read Get_importeTotalTributos;
    property importeTotalNeto: Double read Get_importeTotalNeto;
  end;

// *********************************************************************//
// DispIntf:  IResumenTotalesRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6B0C2259-08B8-40DF-9313-47553541B601}
// *********************************************************************//
  IResumenTotalesRespuestaDisp = dispinterface
    ['{6B0C2259-08B8-40DF-9313-47553541B601}']
    property importeBruto: Double readonly dispid 201;
    property importeIVASobreBruto: Double readonly dispid 202;
    property importeTotalGastos: Double readonly dispid 203;
    property importeIVASobreGastos: Double readonly dispid 204;
    property importeTotalTributos: Double readonly dispid 205;
    property importeTotalNeto: Double readonly dispid 206;
  end;

// *********************************************************************//
// Interface: IMetadata
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1C8DCDBE-F9C3-426C-9012-26FDF5B6935B}
// *********************************************************************//
  IMetadata = interface(IDispatch)
    ['{1C8DCDBE-F9C3-426C-9012-26FDF5B6935B}']
    function Get_servidor: WideString; safecall;
    function Get_fechaHora: WideString; safecall;
    property servidor: WideString read Get_servidor;
    property fechaHora: WideString read Get_fechaHora;
  end;

// *********************************************************************//
// DispIntf:  IMetadataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1C8DCDBE-F9C3-426C-9012-26FDF5B6935B}
// *********************************************************************//
  IMetadataDisp = dispinterface
    ['{1C8DCDBE-F9C3-426C-9012-26FDF5B6935B}']
    property servidor: WideString readonly dispid 201;
    property fechaHora: WideString readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IItemDetalleLiquidacionRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0F83FC59-3293-4876-B627-AE570367114F}
// *********************************************************************//
  IItemDetalleLiquidacionRespuesta = interface(IDispatch)
    ['{0F83FC59-3293-4876-B627-AE570367114F}']
    function Get_nroItem: Integer; safecall;
    function Get_cuitCliente: Double; safecall;
    function Get_codCategoria: Integer; safecall;
    function Get_cantidad: Integer; safecall;
    function Get_cantidadCabezas: Integer; safecall;
    function Get_Raza: IRaza; safecall;
    function Get_tipoLiquidacion: Integer; safecall;
    function Get_precioUnitario: Double; safecall;
    function Get_alicuotaIVA: Double; safecall;
    function Get_nroTropa: Double; safecall;
    function Get_cantidadKgVivo: Double; safecall;
    function Get_precioRecupero: Double; safecall;
    function Get_codCorte: Integer; safecall;
    function Get_unidadMedida: WideString; safecall;
    function Get_importeBruto: Double; safecall;
    function Get_importeIVA: Double; safecall;
    function Get_promedioKgVivo: Double; safecall;
    function Get_promedioUM: Double; safecall;
    function Get_rinde: Double; safecall;
    function Get_precioKgVivo: Double; safecall;
    function Get_importeTotal: Double; safecall;
    function Get_LiquidacionCompraAsociada(Indice: Integer): ILiquidacionCompraAsociada; safecall;
    property nroItem: Integer read Get_nroItem;
    property cuitCliente: Double read Get_cuitCliente;
    property codCategoria: Integer read Get_codCategoria;
    property cantidad: Integer read Get_cantidad;
    property cantidadCabezas: Integer read Get_cantidadCabezas;
    property Raza: IRaza read Get_Raza;
    property tipoLiquidacion: Integer read Get_tipoLiquidacion;
    property precioUnitario: Double read Get_precioUnitario;
    property alicuotaIVA: Double read Get_alicuotaIVA;
    property nroTropa: Double read Get_nroTropa;
    property cantidadKgVivo: Double read Get_cantidadKgVivo;
    property precioRecupero: Double read Get_precioRecupero;
    property codCorte: Integer read Get_codCorte;
    property unidadMedida: WideString read Get_unidadMedida;
    property importeBruto: Double read Get_importeBruto;
    property importeIVA: Double read Get_importeIVA;
    property promedioKgVivo: Double read Get_promedioKgVivo;
    property promedioUM: Double read Get_promedioUM;
    property rinde: Double read Get_rinde;
    property precioKgVivo: Double read Get_precioKgVivo;
    property importeTotal: Double read Get_importeTotal;
    property LiquidacionCompraAsociada[Indice: Integer]: ILiquidacionCompraAsociada read Get_LiquidacionCompraAsociada;
  end;

// *********************************************************************//
// DispIntf:  IItemDetalleLiquidacionRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0F83FC59-3293-4876-B627-AE570367114F}
// *********************************************************************//
  IItemDetalleLiquidacionRespuestaDisp = dispinterface
    ['{0F83FC59-3293-4876-B627-AE570367114F}']
    property nroItem: Integer readonly dispid 201;
    property cuitCliente: Double readonly dispid 202;
    property codCategoria: Integer readonly dispid 203;
    property cantidad: Integer readonly dispid 204;
    property cantidadCabezas: Integer readonly dispid 205;
    property Raza: IRaza readonly dispid 206;
    property tipoLiquidacion: Integer readonly dispid 207;
    property precioUnitario: Double readonly dispid 208;
    property alicuotaIVA: Double readonly dispid 209;
    property nroTropa: Double readonly dispid 210;
    property cantidadKgVivo: Double readonly dispid 211;
    property precioRecupero: Double readonly dispid 212;
    property codCorte: Integer readonly dispid 213;
    property unidadMedida: WideString readonly dispid 214;
    property importeBruto: Double readonly dispid 215;
    property importeIVA: Double readonly dispid 216;
    property promedioKgVivo: Double readonly dispid 217;
    property promedioUM: Double readonly dispid 218;
    property rinde: Double readonly dispid 219;
    property precioKgVivo: Double readonly dispid 220;
    property importeTotal: Double readonly dispid 221;
    property LiquidacionCompraAsociada[Indice: Integer]: ILiquidacionCompraAsociada readonly dispid 222;
  end;

// *********************************************************************//
// Interface: IComprobanteAAjustar
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {206F494C-F6EB-4F1B-8B22-725571EE26B8}
// *********************************************************************//
  IComprobanteAAjustar = interface(IDispatch)
    ['{206F494C-F6EB-4F1B-8B22-725571EE26B8}']
    function Get_tipoComprobante: Integer; safecall;
    procedure Set_tipoComprobante(Value: Integer); safecall;
    function Get_puntoVenta: Integer; safecall;
    procedure Set_puntoVenta(Value: Integer); safecall;
    function Get_nroComprobante: Integer; safecall;
    procedure Set_nroComprobante(Value: Integer); safecall;
    property tipoComprobante: Integer read Get_tipoComprobante write Set_tipoComprobante;
    property puntoVenta: Integer read Get_puntoVenta write Set_puntoVenta;
    property nroComprobante: Integer read Get_nroComprobante write Set_nroComprobante;
  end;

// *********************************************************************//
// DispIntf:  IComprobanteAAjustarDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {206F494C-F6EB-4F1B-8B22-725571EE26B8}
// *********************************************************************//
  IComprobanteAAjustarDisp = dispinterface
    ['{206F494C-F6EB-4F1B-8B22-725571EE26B8}']
    property tipoComprobante: Integer dispid 201;
    property puntoVenta: Integer dispid 202;
    property nroComprobante: Integer dispid 203;
  end;

// *********************************************************************//
// Interface: IFrigorificoRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5085B7D3-3314-4A88-9761-8DB9E1E8674B}
// *********************************************************************//
  IFrigorificoRespuesta = interface(IDispatch)
    ['{5085B7D3-3314-4A88-9761-8DB9E1E8674B}']
    function Get_CUIT: Double; safecall;
    function Get_razonSocial: WideString; safecall;
    function Get_nroPlanta: Integer; safecall;
    property CUIT: Double read Get_CUIT;
    property razonSocial: WideString read Get_razonSocial;
    property nroPlanta: Integer read Get_nroPlanta;
  end;

// *********************************************************************//
// DispIntf:  IFrigorificoRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5085B7D3-3314-4A88-9761-8DB9E1E8674B}
// *********************************************************************//
  IFrigorificoRespuestaDisp = dispinterface
    ['{5085B7D3-3314-4A88-9761-8DB9E1E8674B}']
    property CUIT: Double readonly dispid 201;
    property razonSocial: WideString readonly dispid 202;
    property nroPlanta: Integer readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IConsultarUltimoNroComprobantePorPtoVtaResp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8777A837-4C33-4149-B5C0-CCD79E370524}
// *********************************************************************//
  IConsultarUltimoNroComprobantePorPtoVtaResp = interface(IDispatch)
    ['{8777A837-4C33-4149-B5C0-CCD79E370524}']
    function Get_respuesta: IConsultarUltNroComprobantePorPtoVtaRespuesta; safecall;
    property respuesta: IConsultarUltNroComprobantePorPtoVtaRespuesta read Get_respuesta;
  end;

// *********************************************************************//
// DispIntf:  IConsultarUltimoNroComprobantePorPtoVtaRespDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8777A837-4C33-4149-B5C0-CCD79E370524}
// *********************************************************************//
  IConsultarUltimoNroComprobantePorPtoVtaRespDisp = dispinterface
    ['{8777A837-4C33-4149-B5C0-CCD79E370524}']
    property respuesta: IConsultarUltNroComprobantePorPtoVtaRespuesta readonly dispid 201;
  end;

// *********************************************************************//
// Interface: IConsultarUltNroComprobantePorPtoVtaRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5BB4186A-E2D0-4B31-91C5-3DEB25CA43C1}
// *********************************************************************//
  IConsultarUltNroComprobantePorPtoVtaRespuesta = interface(IDispatch)
    ['{5BB4186A-E2D0-4B31-91C5-3DEB25CA43C1}']
    function Get_nroComprobante: Double; safecall;
    function Get_errores: WideString; safecall;
    function Get_Metadata: IMetadata; safecall;
    function Get_hayErrores: OLE_CANCELBOOL; safecall;
    property nroComprobante: Double read Get_nroComprobante;
    property errores: WideString read Get_errores;
    property Metadata: IMetadata read Get_Metadata;
    property hayErrores: OLE_CANCELBOOL read Get_hayErrores;
  end;

// *********************************************************************//
// DispIntf:  IConsultarUltNroComprobantePorPtoVtaRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5BB4186A-E2D0-4B31-91C5-3DEB25CA43C1}
// *********************************************************************//
  IConsultarUltNroComprobantePorPtoVtaRespuestaDisp = dispinterface
    ['{5BB4186A-E2D0-4B31-91C5-3DEB25CA43C1}']
    property nroComprobante: Double readonly dispid 201;
    property errores: WideString readonly dispid 202;
    property Metadata: IMetadata readonly dispid 203;
    property hayErrores: OLE_CANCELBOOL readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IGenerarAjusteReq
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CB6B6639-D857-4D7E-8D69-15DEA6861801}
// *********************************************************************//
  IGenerarAjusteReq = interface(IDispatch)
    ['{CB6B6639-D857-4D7E-8D69-15DEA6861801}']
    function Get_tipoAjuste: WideString; safecall;
    procedure Set_tipoAjuste(const Value: WideString); safecall;
    function Get_fechaComprobante: WideString; safecall;
    procedure Set_fechaComprobante(const Value: WideString); safecall;
    function Get_emisor: IEmisorAjusteSolicitud; safecall;
    function Get_itemDetalleAjusteLiquidacion(Indice: Integer): IItemDetalleAjusteSolicitud; safecall;
    function Get_ajusteFinanciero: IAjusteFinancieroSolicitud; safecall;
    function Get_datosAdicionales: WideString; safecall;
    procedure Set_datosAdicionales(const Value: WideString); safecall;
    property tipoAjuste: WideString read Get_tipoAjuste write Set_tipoAjuste;
    property fechaComprobante: WideString read Get_fechaComprobante write Set_fechaComprobante;
    property emisor: IEmisorAjusteSolicitud read Get_emisor;
    property itemDetalleAjusteLiquidacion[Indice: Integer]: IItemDetalleAjusteSolicitud read Get_itemDetalleAjusteLiquidacion;
    property ajusteFinanciero: IAjusteFinancieroSolicitud read Get_ajusteFinanciero;
    property datosAdicionales: WideString read Get_datosAdicionales write Set_datosAdicionales;
  end;

// *********************************************************************//
// DispIntf:  IGenerarAjusteReqDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CB6B6639-D857-4D7E-8D69-15DEA6861801}
// *********************************************************************//
  IGenerarAjusteReqDisp = dispinterface
    ['{CB6B6639-D857-4D7E-8D69-15DEA6861801}']
    property tipoAjuste: WideString dispid 201;
    property fechaComprobante: WideString dispid 202;
    property emisor: IEmisorAjusteSolicitud readonly dispid 203;
    property itemDetalleAjusteLiquidacion[Indice: Integer]: IItemDetalleAjusteSolicitud readonly dispid 204;
    property ajusteFinanciero: IAjusteFinancieroSolicitud readonly dispid 205;
    property datosAdicionales: WideString dispid 206;
  end;

// *********************************************************************//
// Interface: IGenerarAjusteResp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A7FAD4BB-BEFF-4099-A539-53E9FA6FD3B4}
// *********************************************************************//
  IGenerarAjusteResp = interface(IDispatch)
    ['{A7FAD4BB-BEFF-4099-A539-53E9FA6FD3B4}']
    function Get_respuesta: ILiquidacionDetalleRespuesta; safecall;
    property respuesta: ILiquidacionDetalleRespuesta read Get_respuesta;
  end;

// *********************************************************************//
// DispIntf:  IGenerarAjusteRespDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A7FAD4BB-BEFF-4099-A539-53E9FA6FD3B4}
// *********************************************************************//
  IGenerarAjusteRespDisp = dispinterface
    ['{A7FAD4BB-BEFF-4099-A539-53E9FA6FD3B4}']
    property respuesta: ILiquidacionDetalleRespuesta readonly dispid 201;
  end;

// *********************************************************************//
// Interface: IEmisorAjusteSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {977B5DE5-94E9-44AB-8081-9E97704547C8}
// *********************************************************************//
  IEmisorAjusteSolicitud = interface(IDispatch)
    ['{977B5DE5-94E9-44AB-8081-9E97704547C8}']
    function Get_puntoVenta: Integer; safecall;
    procedure Set_puntoVenta(Value: Integer); safecall;
    function Get_nroComprobante: Integer; safecall;
    procedure Set_nroComprobante(Value: Integer); safecall;
    function Get_ComprobanteAAjustar: IComprobanteAAjustar; safecall;
    property puntoVenta: Integer read Get_puntoVenta write Set_puntoVenta;
    property nroComprobante: Integer read Get_nroComprobante write Set_nroComprobante;
    property ComprobanteAAjustar: IComprobanteAAjustar read Get_ComprobanteAAjustar;
  end;

// *********************************************************************//
// DispIntf:  IEmisorAjusteSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {977B5DE5-94E9-44AB-8081-9E97704547C8}
// *********************************************************************//
  IEmisorAjusteSolicitudDisp = dispinterface
    ['{977B5DE5-94E9-44AB-8081-9E97704547C8}']
    property puntoVenta: Integer dispid 201;
    property nroComprobante: Integer dispid 202;
    property ComprobanteAAjustar: IComprobanteAAjustar readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IItemDetalleAjusteSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A0FA4EF3-A3DD-4DB9-B478-BC4D2AED4EAA}
// *********************************************************************//
  IItemDetalleAjusteSolicitud = interface(IDispatch)
    ['{A0FA4EF3-A3DD-4DB9-B478-BC4D2AED4EAA}']
    function Get_nroItemAjustar: Integer; safecall;
    procedure Set_nroItemAjustar(Value: Integer); safecall;
    function Get_ajusteFisico: IAjusteFisicoSolicitud; safecall;
    function Get_ajusteMonetario: IAjusteMonetarioSolicitud; safecall;
    function Get_ajusteCompraAsociada(Indice: Integer): ILiquidacionCompraAsociada; safecall;
    property nroItemAjustar: Integer read Get_nroItemAjustar write Set_nroItemAjustar;
    property ajusteFisico: IAjusteFisicoSolicitud read Get_ajusteFisico;
    property ajusteMonetario: IAjusteMonetarioSolicitud read Get_ajusteMonetario;
    property ajusteCompraAsociada[Indice: Integer]: ILiquidacionCompraAsociada read Get_ajusteCompraAsociada;
  end;

// *********************************************************************//
// DispIntf:  IItemDetalleAjusteSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A0FA4EF3-A3DD-4DB9-B478-BC4D2AED4EAA}
// *********************************************************************//
  IItemDetalleAjusteSolicitudDisp = dispinterface
    ['{A0FA4EF3-A3DD-4DB9-B478-BC4D2AED4EAA}']
    property nroItemAjustar: Integer dispid 201;
    property ajusteFisico: IAjusteFisicoSolicitud readonly dispid 202;
    property ajusteMonetario: IAjusteMonetarioSolicitud readonly dispid 203;
    property ajusteCompraAsociada[Indice: Integer]: ILiquidacionCompraAsociada readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IAjusteFinancieroSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {61348514-2295-4D33-85F1-FA861F30ED1D}
// *********************************************************************//
  IAjusteFinancieroSolicitud = interface(IDispatch)
    ['{61348514-2295-4D33-85F1-FA861F30ED1D}']
    function Get_gasto(Indice: Integer): IGastosolicitud; safecall;
    function Get_tributo(Indice: Integer): ITributoSolicitud; safecall;
    property gasto[Indice: Integer]: IGastosolicitud read Get_gasto;
    property tributo[Indice: Integer]: ITributoSolicitud read Get_tributo;
  end;

// *********************************************************************//
// DispIntf:  IAjusteFinancieroSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {61348514-2295-4D33-85F1-FA861F30ED1D}
// *********************************************************************//
  IAjusteFinancieroSolicitudDisp = dispinterface
    ['{61348514-2295-4D33-85F1-FA861F30ED1D}']
    property gasto[Indice: Integer]: IGastosolicitud readonly dispid 201;
    property tributo[Indice: Integer]: ITributoSolicitud readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IAjusteFisicoSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AE2664C1-B2F8-4B18-9BA5-8F20DD904D35}
// *********************************************************************//
  IAjusteFisicoSolicitud = interface(IDispatch)
    ['{AE2664C1-B2F8-4B18-9BA5-8F20DD904D35}']
    function Get_cantidad: Integer; safecall;
    procedure Set_cantidad(Value: Integer); safecall;
    function Get_cantidadCabezas: Integer; safecall;
    procedure Set_cantidadCabezas(Value: Integer); safecall;
    function Get_cantidadKgVivo: Integer; safecall;
    procedure Set_cantidadKgVivo(Value: Integer); safecall;
    property cantidad: Integer read Get_cantidad write Set_cantidad;
    property cantidadCabezas: Integer read Get_cantidadCabezas write Set_cantidadCabezas;
    property cantidadKgVivo: Integer read Get_cantidadKgVivo write Set_cantidadKgVivo;
  end;

// *********************************************************************//
// DispIntf:  IAjusteFisicoSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AE2664C1-B2F8-4B18-9BA5-8F20DD904D35}
// *********************************************************************//
  IAjusteFisicoSolicitudDisp = dispinterface
    ['{AE2664C1-B2F8-4B18-9BA5-8F20DD904D35}']
    property cantidad: Integer dispid 201;
    property cantidadCabezas: Integer dispid 202;
    property cantidadKgVivo: Integer dispid 203;
  end;

// *********************************************************************//
// Interface: IAjusteMonetarioSolicitud
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {45A0F94A-2C8D-48FB-9673-E42CCE5E472E}
// *********************************************************************//
  IAjusteMonetarioSolicitud = interface(IDispatch)
    ['{45A0F94A-2C8D-48FB-9673-E42CCE5E472E}']
    function Get_precioUnitario: Double; safecall;
    procedure Set_precioUnitario(Value: Double); safecall;
    function Get_precioRecupero: Double; safecall;
    procedure Set_precioRecupero(Value: Double); safecall;
    property precioUnitario: Double read Get_precioUnitario write Set_precioUnitario;
    property precioRecupero: Double read Get_precioRecupero write Set_precioRecupero;
  end;

// *********************************************************************//
// DispIntf:  IAjusteMonetarioSolicitudDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {45A0F94A-2C8D-48FB-9673-E42CCE5E472E}
// *********************************************************************//
  IAjusteMonetarioSolicitudDisp = dispinterface
    ['{45A0F94A-2C8D-48FB-9673-E42CCE5E472E}']
    property precioUnitario: Double dispid 201;
    property precioRecupero: Double dispid 202;
  end;

// *********************************************************************//
// Interface: IConsultarLiquidacionPorNroComprobanteResp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4D589FB1-0350-4B08-BFE8-943DB1F25D7F}
// *********************************************************************//
  IConsultarLiquidacionPorNroComprobanteResp = interface(IDispatch)
    ['{4D589FB1-0350-4B08-BFE8-943DB1F25D7F}']
    function Get_respuesta: ILiquidacionDetalleRespuesta; safecall;
    property respuesta: ILiquidacionDetalleRespuesta read Get_respuesta;
  end;

// *********************************************************************//
// DispIntf:  IConsultarLiquidacionPorNroComprobanteRespDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4D589FB1-0350-4B08-BFE8-943DB1F25D7F}
// *********************************************************************//
  IConsultarLiquidacionPorNroComprobanteRespDisp = dispinterface
    ['{4D589FB1-0350-4B08-BFE8-943DB1F25D7F}']
    property respuesta: ILiquidacionDetalleRespuesta readonly dispid 201;
  end;

// *********************************************************************//
// The Class Cowslsp provides a Create and CreateRemote method to          
// create instances of the default interface Iwslsp exposed by              
// the CoClass wslsp. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Cowslsp = class
    class function Create: Iwslsp;
    class function CreateRemote(const MachineName: string): Iwslsp;
  end;

// *********************************************************************//
// The Class CoGenerarLiquidacionReq provides a Create and CreateRemote method to          
// create instances of the default interface IGenerarLiquidacionReq exposed by              
// the CoClass GenerarLiquidacionReq. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGenerarLiquidacionReq = class
    class function Create: IGenerarLiquidacionReq;
    class function CreateRemote(const MachineName: string): IGenerarLiquidacionReq;
  end;

// *********************************************************************//
// The Class CoEmisorSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IEmisorSolicitud exposed by              
// the CoClass EmisorSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEmisorSolicitud = class
    class function Create: IEmisorSolicitud;
    class function CreateRemote(const MachineName: string): IEmisorSolicitud;
  end;

// *********************************************************************//
// The Class CoReceptorSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IReceptorSolicitud exposed by              
// the CoClass ReceptorSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReceptorSolicitud = class
    class function Create: IReceptorSolicitud;
    class function CreateRemote(const MachineName: string): IReceptorSolicitud;
  end;

// *********************************************************************//
// The Class CoDatosLiquidacionSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IDatosLiquidacionSolicitud exposed by              
// the CoClass DatosLiquidacionSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDatosLiquidacionSolicitud = class
    class function Create: IDatosLiquidacionSolicitud;
    class function CreateRemote(const MachineName: string): IDatosLiquidacionSolicitud;
  end;

// *********************************************************************//
// The Class CoDteSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IDteSolicitud exposed by              
// the CoClass DteSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDteSolicitud = class
    class function Create: IDteSolicitud;
    class function CreateRemote(const MachineName: string): IDteSolicitud;
  end;

// *********************************************************************//
// The Class CoItemDetalleLiquidacionSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IItemDetalleLiquidacionSolicitud exposed by              
// the CoClass ItemDetalleLiquidacionSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoItemDetalleLiquidacionSolicitud = class
    class function Create: IItemDetalleLiquidacionSolicitud;
    class function CreateRemote(const MachineName: string): IItemDetalleLiquidacionSolicitud;
  end;

// *********************************************************************//
// The Class CoGastoSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IGastosolicitud exposed by              
// the CoClass GastoSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGastoSolicitud = class
    class function Create: IGastosolicitud;
    class function CreateRemote(const MachineName: string): IGastosolicitud;
  end;

// *********************************************************************//
// The Class CoTributoSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface ITributoSolicitud exposed by              
// the CoClass TributoSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTributoSolicitud = class
    class function Create: ITributoSolicitud;
    class function CreateRemote(const MachineName: string): ITributoSolicitud;
  end;

// *********************************************************************//
// The Class CoReceptorOperadorSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IReceptorOperadorSolicitud exposed by              
// the CoClass ReceptorOperadorSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReceptorOperadorSolicitud = class
    class function Create: IReceptorOperadorSolicitud;
    class function CreateRemote(const MachineName: string): IReceptorOperadorSolicitud;
  end;

// *********************************************************************//
// The Class CoFrigorificoSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IFrigorificoSolicitud exposed by              
// the CoClass FrigorificoSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFrigorificoSolicitud = class
    class function Create: IFrigorificoSolicitud;
    class function CreateRemote(const MachineName: string): IFrigorificoSolicitud;
  end;

// *********************************************************************//
// The Class CoGuiaSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IGuiaSolicitud exposed by              
// the CoClass GuiaSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGuiaSolicitud = class
    class function Create: IGuiaSolicitud;
    class function CreateRemote(const MachineName: string): IGuiaSolicitud;
  end;

// *********************************************************************//
// The Class CoRaza provides a Create and CreateRemote method to          
// create instances of the default interface IRaza exposed by              
// the CoClass Raza. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRaza = class
    class function Create: IRaza;
    class function CreateRemote(const MachineName: string): IRaza;
  end;

// *********************************************************************//
// The Class CoLiquidacionCompraAsociada provides a Create and CreateRemote method to          
// create instances of the default interface ILiquidacionCompraAsociada exposed by              
// the CoClass LiquidacionCompraAsociada. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLiquidacionCompraAsociada = class
    class function Create: ILiquidacionCompraAsociada;
    class function CreateRemote(const MachineName: string): ILiquidacionCompraAsociada;
  end;

// *********************************************************************//
// The Class CoGenerarLiquidacionResp provides a Create and CreateRemote method to          
// create instances of the default interface IGenerarLiquidacionResp exposed by              
// the CoClass GenerarLiquidacionResp. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGenerarLiquidacionResp = class
    class function Create: IGenerarLiquidacionResp;
    class function CreateRemote(const MachineName: string): IGenerarLiquidacionResp;
  end;

// *********************************************************************//
// The Class CoLiquidacionDetalleRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface ILiquidacionDetalleRespuesta exposed by              
// the CoClass LiquidacionDetalleRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLiquidacionDetalleRespuesta = class
    class function Create: ILiquidacionDetalleRespuesta;
    class function CreateRemote(const MachineName: string): ILiquidacionDetalleRespuesta;
  end;

// *********************************************************************//
// The Class CoCabeceraLiquidacionRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface ICabeceraLiquidacionRespuesta exposed by              
// the CoClass CabeceraLiquidacionRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCabeceraLiquidacionRespuesta = class
    class function Create: ICabeceraLiquidacionRespuesta;
    class function CreateRemote(const MachineName: string): ICabeceraLiquidacionRespuesta;
  end;

// *********************************************************************//
// The Class CoAjusteRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface IAjusteRespuesta exposed by              
// the CoClass AjusteRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAjusteRespuesta = class
    class function Create: IAjusteRespuesta;
    class function CreateRemote(const MachineName: string): IAjusteRespuesta;
  end;

// *********************************************************************//
// The Class CoEmisorRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface IEmisorRespuesta exposed by              
// the CoClass EmisorRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEmisorRespuesta = class
    class function Create: IEmisorRespuesta;
    class function CreateRemote(const MachineName: string): IEmisorRespuesta;
  end;

// *********************************************************************//
// The Class CoReceptorRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface IReceptorRespuesta exposed by              
// the CoClass ReceptorRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReceptorRespuesta = class
    class function Create: IReceptorRespuesta;
    class function CreateRemote(const MachineName: string): IReceptorRespuesta;
  end;

// *********************************************************************//
// The Class CoDatosLiquidacionRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface IDatosLiquidacionRespuesta exposed by              
// the CoClass DatosLiquidacionRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDatosLiquidacionRespuesta = class
    class function Create: IDatosLiquidacionRespuesta;
    class function CreateRemote(const MachineName: string): IDatosLiquidacionRespuesta;
  end;

// *********************************************************************//
// The Class CoGuiaRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface IGuiaRespuesta exposed by              
// the CoClass GuiaRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGuiaRespuesta = class
    class function Create: IGuiaRespuesta;
    class function CreateRemote(const MachineName: string): IGuiaRespuesta;
  end;

// *********************************************************************//
// The Class CoDTERespuesta provides a Create and CreateRemote method to          
// create instances of the default interface IDTERespuesta exposed by              
// the CoClass DTERespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDTERespuesta = class
    class function Create: IDTERespuesta;
    class function CreateRemote(const MachineName: string): IDTERespuesta;
  end;

// *********************************************************************//
// The Class CoGastoRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface IGastoRespuesta exposed by              
// the CoClass GastoRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGastoRespuesta = class
    class function Create: IGastoRespuesta;
    class function CreateRemote(const MachineName: string): IGastoRespuesta;
  end;

// *********************************************************************//
// The Class CoTributoRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface ITributoRespuesta exposed by              
// the CoClass TributoRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTributoRespuesta = class
    class function Create: ITributoRespuesta;
    class function CreateRemote(const MachineName: string): ITributoRespuesta;
  end;

// *********************************************************************//
// The Class CoResumenTotalesRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface IResumenTotalesRespuesta exposed by              
// the CoClass ResumenTotalesRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoResumenTotalesRespuesta = class
    class function Create: IResumenTotalesRespuesta;
    class function CreateRemote(const MachineName: string): IResumenTotalesRespuesta;
  end;

// *********************************************************************//
// The Class CoMetadata provides a Create and CreateRemote method to          
// create instances of the default interface IMetadata exposed by              
// the CoClass Metadata. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMetadata = class
    class function Create: IMetadata;
    class function CreateRemote(const MachineName: string): IMetadata;
  end;

// *********************************************************************//
// The Class CoItemDetalleLiquidacionRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface IItemDetalleLiquidacionRespuesta exposed by              
// the CoClass ItemDetalleLiquidacionRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoItemDetalleLiquidacionRespuesta = class
    class function Create: IItemDetalleLiquidacionRespuesta;
    class function CreateRemote(const MachineName: string): IItemDetalleLiquidacionRespuesta;
  end;

// *********************************************************************//
// The Class CoComprobanteAAjustar provides a Create and CreateRemote method to          
// create instances of the default interface IComprobanteAAjustar exposed by              
// the CoClass ComprobanteAAjustar. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComprobanteAAjustar = class
    class function Create: IComprobanteAAjustar;
    class function CreateRemote(const MachineName: string): IComprobanteAAjustar;
  end;

// *********************************************************************//
// The Class CoFrigorificoRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface IFrigorificoRespuesta exposed by              
// the CoClass FrigorificoRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFrigorificoRespuesta = class
    class function Create: IFrigorificoRespuesta;
    class function CreateRemote(const MachineName: string): IFrigorificoRespuesta;
  end;

// *********************************************************************//
// The Class CoConsultarUltimoNroComprobantePorPtoVtaResp provides a Create and CreateRemote method to          
// create instances of the default interface IConsultarUltimoNroComprobantePorPtoVtaResp exposed by              
// the CoClass ConsultarUltimoNroComprobantePorPtoVtaResp. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConsultarUltimoNroComprobantePorPtoVtaResp = class
    class function Create: IConsultarUltimoNroComprobantePorPtoVtaResp;
    class function CreateRemote(const MachineName: string): IConsultarUltimoNroComprobantePorPtoVtaResp;
  end;

// *********************************************************************//
// The Class CoConsultarUltNroComprobantePorPtoVtaRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface IConsultarUltNroComprobantePorPtoVtaRespuesta exposed by              
// the CoClass ConsultarUltNroComprobantePorPtoVtaRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConsultarUltNroComprobantePorPtoVtaRespuesta = class
    class function Create: IConsultarUltNroComprobantePorPtoVtaRespuesta;
    class function CreateRemote(const MachineName: string): IConsultarUltNroComprobantePorPtoVtaRespuesta;
  end;

// *********************************************************************//
// The Class CoGenerarAjusteReq provides a Create and CreateRemote method to          
// create instances of the default interface IGenerarAjusteReq exposed by              
// the CoClass GenerarAjusteReq. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGenerarAjusteReq = class
    class function Create: IGenerarAjusteReq;
    class function CreateRemote(const MachineName: string): IGenerarAjusteReq;
  end;

// *********************************************************************//
// The Class CoGenerarAjusteResp provides a Create and CreateRemote method to          
// create instances of the default interface IGenerarAjusteResp exposed by              
// the CoClass GenerarAjusteResp. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGenerarAjusteResp = class
    class function Create: IGenerarAjusteResp;
    class function CreateRemote(const MachineName: string): IGenerarAjusteResp;
  end;

// *********************************************************************//
// The Class CoEmisorAjusteSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IEmisorAjusteSolicitud exposed by              
// the CoClass EmisorAjusteSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEmisorAjusteSolicitud = class
    class function Create: IEmisorAjusteSolicitud;
    class function CreateRemote(const MachineName: string): IEmisorAjusteSolicitud;
  end;

// *********************************************************************//
// The Class CoItemDetalleAjusteSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IItemDetalleAjusteSolicitud exposed by              
// the CoClass ItemDetalleAjusteSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoItemDetalleAjusteSolicitud = class
    class function Create: IItemDetalleAjusteSolicitud;
    class function CreateRemote(const MachineName: string): IItemDetalleAjusteSolicitud;
  end;

// *********************************************************************//
// The Class CoAjusteFinancieroSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IAjusteFinancieroSolicitud exposed by              
// the CoClass AjusteFinancieroSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAjusteFinancieroSolicitud = class
    class function Create: IAjusteFinancieroSolicitud;
    class function CreateRemote(const MachineName: string): IAjusteFinancieroSolicitud;
  end;

// *********************************************************************//
// The Class CoAjusteFisicoSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IAjusteFisicoSolicitud exposed by              
// the CoClass AjusteFisicoSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAjusteFisicoSolicitud = class
    class function Create: IAjusteFisicoSolicitud;
    class function CreateRemote(const MachineName: string): IAjusteFisicoSolicitud;
  end;

// *********************************************************************//
// The Class CoAjusteMonetarioSolicitud provides a Create and CreateRemote method to          
// create instances of the default interface IAjusteMonetarioSolicitud exposed by              
// the CoClass AjusteMonetarioSolicitud. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAjusteMonetarioSolicitud = class
    class function Create: IAjusteMonetarioSolicitud;
    class function CreateRemote(const MachineName: string): IAjusteMonetarioSolicitud;
  end;

// *********************************************************************//
// The Class CoConsultarLiquidacionPorNroComprobanteResp provides a Create and CreateRemote method to          
// create instances of the default interface IConsultarLiquidacionPorNroComprobanteResp exposed by              
// the CoClass ConsultarLiquidacionPorNroComprobanteResp. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConsultarLiquidacionPorNroComprobanteResp = class
    class function Create: IConsultarLiquidacionPorNroComprobanteResp;
    class function CreateRemote(const MachineName: string): IConsultarLiquidacionPorNroComprobanteResp;
  end;

implementation

uses System.Win.ComObj;

class function Cowslsp.Create: Iwslsp;
begin
  Result := CreateComObject(CLASS_wslsp) as Iwslsp;
end;

class function Cowslsp.CreateRemote(const MachineName: string): Iwslsp;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wslsp) as Iwslsp;
end;

class function CoGenerarLiquidacionReq.Create: IGenerarLiquidacionReq;
begin
  Result := CreateComObject(CLASS_GenerarLiquidacionReq) as IGenerarLiquidacionReq;
end;

class function CoGenerarLiquidacionReq.CreateRemote(const MachineName: string): IGenerarLiquidacionReq;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GenerarLiquidacionReq) as IGenerarLiquidacionReq;
end;

class function CoEmisorSolicitud.Create: IEmisorSolicitud;
begin
  Result := CreateComObject(CLASS_EmisorSolicitud) as IEmisorSolicitud;
end;

class function CoEmisorSolicitud.CreateRemote(const MachineName: string): IEmisorSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EmisorSolicitud) as IEmisorSolicitud;
end;

class function CoReceptorSolicitud.Create: IReceptorSolicitud;
begin
  Result := CreateComObject(CLASS_ReceptorSolicitud) as IReceptorSolicitud;
end;

class function CoReceptorSolicitud.CreateRemote(const MachineName: string): IReceptorSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReceptorSolicitud) as IReceptorSolicitud;
end;

class function CoDatosLiquidacionSolicitud.Create: IDatosLiquidacionSolicitud;
begin
  Result := CreateComObject(CLASS_DatosLiquidacionSolicitud) as IDatosLiquidacionSolicitud;
end;

class function CoDatosLiquidacionSolicitud.CreateRemote(const MachineName: string): IDatosLiquidacionSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DatosLiquidacionSolicitud) as IDatosLiquidacionSolicitud;
end;

class function CoDteSolicitud.Create: IDteSolicitud;
begin
  Result := CreateComObject(CLASS_DteSolicitud) as IDteSolicitud;
end;

class function CoDteSolicitud.CreateRemote(const MachineName: string): IDteSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DteSolicitud) as IDteSolicitud;
end;

class function CoItemDetalleLiquidacionSolicitud.Create: IItemDetalleLiquidacionSolicitud;
begin
  Result := CreateComObject(CLASS_ItemDetalleLiquidacionSolicitud) as IItemDetalleLiquidacionSolicitud;
end;

class function CoItemDetalleLiquidacionSolicitud.CreateRemote(const MachineName: string): IItemDetalleLiquidacionSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ItemDetalleLiquidacionSolicitud) as IItemDetalleLiquidacionSolicitud;
end;

class function CoGastoSolicitud.Create: IGastosolicitud;
begin
  Result := CreateComObject(CLASS_GastoSolicitud) as IGastosolicitud;
end;

class function CoGastoSolicitud.CreateRemote(const MachineName: string): IGastosolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GastoSolicitud) as IGastosolicitud;
end;

class function CoTributoSolicitud.Create: ITributoSolicitud;
begin
  Result := CreateComObject(CLASS_TributoSolicitud) as ITributoSolicitud;
end;

class function CoTributoSolicitud.CreateRemote(const MachineName: string): ITributoSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TributoSolicitud) as ITributoSolicitud;
end;

class function CoReceptorOperadorSolicitud.Create: IReceptorOperadorSolicitud;
begin
  Result := CreateComObject(CLASS_ReceptorOperadorSolicitud) as IReceptorOperadorSolicitud;
end;

class function CoReceptorOperadorSolicitud.CreateRemote(const MachineName: string): IReceptorOperadorSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReceptorOperadorSolicitud) as IReceptorOperadorSolicitud;
end;

class function CoFrigorificoSolicitud.Create: IFrigorificoSolicitud;
begin
  Result := CreateComObject(CLASS_FrigorificoSolicitud) as IFrigorificoSolicitud;
end;

class function CoFrigorificoSolicitud.CreateRemote(const MachineName: string): IFrigorificoSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FrigorificoSolicitud) as IFrigorificoSolicitud;
end;

class function CoGuiaSolicitud.Create: IGuiaSolicitud;
begin
  Result := CreateComObject(CLASS_GuiaSolicitud) as IGuiaSolicitud;
end;

class function CoGuiaSolicitud.CreateRemote(const MachineName: string): IGuiaSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GuiaSolicitud) as IGuiaSolicitud;
end;

class function CoRaza.Create: IRaza;
begin
  Result := CreateComObject(CLASS_Raza) as IRaza;
end;

class function CoRaza.CreateRemote(const MachineName: string): IRaza;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Raza) as IRaza;
end;

class function CoLiquidacionCompraAsociada.Create: ILiquidacionCompraAsociada;
begin
  Result := CreateComObject(CLASS_LiquidacionCompraAsociada) as ILiquidacionCompraAsociada;
end;

class function CoLiquidacionCompraAsociada.CreateRemote(const MachineName: string): ILiquidacionCompraAsociada;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LiquidacionCompraAsociada) as ILiquidacionCompraAsociada;
end;

class function CoGenerarLiquidacionResp.Create: IGenerarLiquidacionResp;
begin
  Result := CreateComObject(CLASS_GenerarLiquidacionResp) as IGenerarLiquidacionResp;
end;

class function CoGenerarLiquidacionResp.CreateRemote(const MachineName: string): IGenerarLiquidacionResp;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GenerarLiquidacionResp) as IGenerarLiquidacionResp;
end;

class function CoLiquidacionDetalleRespuesta.Create: ILiquidacionDetalleRespuesta;
begin
  Result := CreateComObject(CLASS_LiquidacionDetalleRespuesta) as ILiquidacionDetalleRespuesta;
end;

class function CoLiquidacionDetalleRespuesta.CreateRemote(const MachineName: string): ILiquidacionDetalleRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LiquidacionDetalleRespuesta) as ILiquidacionDetalleRespuesta;
end;

class function CoCabeceraLiquidacionRespuesta.Create: ICabeceraLiquidacionRespuesta;
begin
  Result := CreateComObject(CLASS_CabeceraLiquidacionRespuesta) as ICabeceraLiquidacionRespuesta;
end;

class function CoCabeceraLiquidacionRespuesta.CreateRemote(const MachineName: string): ICabeceraLiquidacionRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CabeceraLiquidacionRespuesta) as ICabeceraLiquidacionRespuesta;
end;

class function CoAjusteRespuesta.Create: IAjusteRespuesta;
begin
  Result := CreateComObject(CLASS_AjusteRespuesta) as IAjusteRespuesta;
end;

class function CoAjusteRespuesta.CreateRemote(const MachineName: string): IAjusteRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AjusteRespuesta) as IAjusteRespuesta;
end;

class function CoEmisorRespuesta.Create: IEmisorRespuesta;
begin
  Result := CreateComObject(CLASS_EmisorRespuesta) as IEmisorRespuesta;
end;

class function CoEmisorRespuesta.CreateRemote(const MachineName: string): IEmisorRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EmisorRespuesta) as IEmisorRespuesta;
end;

class function CoReceptorRespuesta.Create: IReceptorRespuesta;
begin
  Result := CreateComObject(CLASS_ReceptorRespuesta) as IReceptorRespuesta;
end;

class function CoReceptorRespuesta.CreateRemote(const MachineName: string): IReceptorRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReceptorRespuesta) as IReceptorRespuesta;
end;

class function CoDatosLiquidacionRespuesta.Create: IDatosLiquidacionRespuesta;
begin
  Result := CreateComObject(CLASS_DatosLiquidacionRespuesta) as IDatosLiquidacionRespuesta;
end;

class function CoDatosLiquidacionRespuesta.CreateRemote(const MachineName: string): IDatosLiquidacionRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DatosLiquidacionRespuesta) as IDatosLiquidacionRespuesta;
end;

class function CoGuiaRespuesta.Create: IGuiaRespuesta;
begin
  Result := CreateComObject(CLASS_GuiaRespuesta) as IGuiaRespuesta;
end;

class function CoGuiaRespuesta.CreateRemote(const MachineName: string): IGuiaRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GuiaRespuesta) as IGuiaRespuesta;
end;

class function CoDTERespuesta.Create: IDTERespuesta;
begin
  Result := CreateComObject(CLASS_DTERespuesta) as IDTERespuesta;
end;

class function CoDTERespuesta.CreateRemote(const MachineName: string): IDTERespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DTERespuesta) as IDTERespuesta;
end;

class function CoGastoRespuesta.Create: IGastoRespuesta;
begin
  Result := CreateComObject(CLASS_GastoRespuesta) as IGastoRespuesta;
end;

class function CoGastoRespuesta.CreateRemote(const MachineName: string): IGastoRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GastoRespuesta) as IGastoRespuesta;
end;

class function CoTributoRespuesta.Create: ITributoRespuesta;
begin
  Result := CreateComObject(CLASS_TributoRespuesta) as ITributoRespuesta;
end;

class function CoTributoRespuesta.CreateRemote(const MachineName: string): ITributoRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TributoRespuesta) as ITributoRespuesta;
end;

class function CoResumenTotalesRespuesta.Create: IResumenTotalesRespuesta;
begin
  Result := CreateComObject(CLASS_ResumenTotalesRespuesta) as IResumenTotalesRespuesta;
end;

class function CoResumenTotalesRespuesta.CreateRemote(const MachineName: string): IResumenTotalesRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ResumenTotalesRespuesta) as IResumenTotalesRespuesta;
end;

class function CoMetadata.Create: IMetadata;
begin
  Result := CreateComObject(CLASS_Metadata) as IMetadata;
end;

class function CoMetadata.CreateRemote(const MachineName: string): IMetadata;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Metadata) as IMetadata;
end;

class function CoItemDetalleLiquidacionRespuesta.Create: IItemDetalleLiquidacionRespuesta;
begin
  Result := CreateComObject(CLASS_ItemDetalleLiquidacionRespuesta) as IItemDetalleLiquidacionRespuesta;
end;

class function CoItemDetalleLiquidacionRespuesta.CreateRemote(const MachineName: string): IItemDetalleLiquidacionRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ItemDetalleLiquidacionRespuesta) as IItemDetalleLiquidacionRespuesta;
end;

class function CoComprobanteAAjustar.Create: IComprobanteAAjustar;
begin
  Result := CreateComObject(CLASS_ComprobanteAAjustar) as IComprobanteAAjustar;
end;

class function CoComprobanteAAjustar.CreateRemote(const MachineName: string): IComprobanteAAjustar;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComprobanteAAjustar) as IComprobanteAAjustar;
end;

class function CoFrigorificoRespuesta.Create: IFrigorificoRespuesta;
begin
  Result := CreateComObject(CLASS_FrigorificoRespuesta) as IFrigorificoRespuesta;
end;

class function CoFrigorificoRespuesta.CreateRemote(const MachineName: string): IFrigorificoRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FrigorificoRespuesta) as IFrigorificoRespuesta;
end;

class function CoConsultarUltimoNroComprobantePorPtoVtaResp.Create: IConsultarUltimoNroComprobantePorPtoVtaResp;
begin
  Result := CreateComObject(CLASS_ConsultarUltimoNroComprobantePorPtoVtaResp) as IConsultarUltimoNroComprobantePorPtoVtaResp;
end;

class function CoConsultarUltimoNroComprobantePorPtoVtaResp.CreateRemote(const MachineName: string): IConsultarUltimoNroComprobantePorPtoVtaResp;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConsultarUltimoNroComprobantePorPtoVtaResp) as IConsultarUltimoNroComprobantePorPtoVtaResp;
end;

class function CoConsultarUltNroComprobantePorPtoVtaRespuesta.Create: IConsultarUltNroComprobantePorPtoVtaRespuesta;
begin
  Result := CreateComObject(CLASS_ConsultarUltNroComprobantePorPtoVtaRespuesta) as IConsultarUltNroComprobantePorPtoVtaRespuesta;
end;

class function CoConsultarUltNroComprobantePorPtoVtaRespuesta.CreateRemote(const MachineName: string): IConsultarUltNroComprobantePorPtoVtaRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConsultarUltNroComprobantePorPtoVtaRespuesta) as IConsultarUltNroComprobantePorPtoVtaRespuesta;
end;

class function CoGenerarAjusteReq.Create: IGenerarAjusteReq;
begin
  Result := CreateComObject(CLASS_GenerarAjusteReq) as IGenerarAjusteReq;
end;

class function CoGenerarAjusteReq.CreateRemote(const MachineName: string): IGenerarAjusteReq;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GenerarAjusteReq) as IGenerarAjusteReq;
end;

class function CoGenerarAjusteResp.Create: IGenerarAjusteResp;
begin
  Result := CreateComObject(CLASS_GenerarAjusteResp) as IGenerarAjusteResp;
end;

class function CoGenerarAjusteResp.CreateRemote(const MachineName: string): IGenerarAjusteResp;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GenerarAjusteResp) as IGenerarAjusteResp;
end;

class function CoEmisorAjusteSolicitud.Create: IEmisorAjusteSolicitud;
begin
  Result := CreateComObject(CLASS_EmisorAjusteSolicitud) as IEmisorAjusteSolicitud;
end;

class function CoEmisorAjusteSolicitud.CreateRemote(const MachineName: string): IEmisorAjusteSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EmisorAjusteSolicitud) as IEmisorAjusteSolicitud;
end;

class function CoItemDetalleAjusteSolicitud.Create: IItemDetalleAjusteSolicitud;
begin
  Result := CreateComObject(CLASS_ItemDetalleAjusteSolicitud) as IItemDetalleAjusteSolicitud;
end;

class function CoItemDetalleAjusteSolicitud.CreateRemote(const MachineName: string): IItemDetalleAjusteSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ItemDetalleAjusteSolicitud) as IItemDetalleAjusteSolicitud;
end;

class function CoAjusteFinancieroSolicitud.Create: IAjusteFinancieroSolicitud;
begin
  Result := CreateComObject(CLASS_AjusteFinancieroSolicitud) as IAjusteFinancieroSolicitud;
end;

class function CoAjusteFinancieroSolicitud.CreateRemote(const MachineName: string): IAjusteFinancieroSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AjusteFinancieroSolicitud) as IAjusteFinancieroSolicitud;
end;

class function CoAjusteFisicoSolicitud.Create: IAjusteFisicoSolicitud;
begin
  Result := CreateComObject(CLASS_AjusteFisicoSolicitud) as IAjusteFisicoSolicitud;
end;

class function CoAjusteFisicoSolicitud.CreateRemote(const MachineName: string): IAjusteFisicoSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AjusteFisicoSolicitud) as IAjusteFisicoSolicitud;
end;

class function CoAjusteMonetarioSolicitud.Create: IAjusteMonetarioSolicitud;
begin
  Result := CreateComObject(CLASS_AjusteMonetarioSolicitud) as IAjusteMonetarioSolicitud;
end;

class function CoAjusteMonetarioSolicitud.CreateRemote(const MachineName: string): IAjusteMonetarioSolicitud;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AjusteMonetarioSolicitud) as IAjusteMonetarioSolicitud;
end;

class function CoConsultarLiquidacionPorNroComprobanteResp.Create: IConsultarLiquidacionPorNroComprobanteResp;
begin
  Result := CreateComObject(CLASS_ConsultarLiquidacionPorNroComprobanteResp) as IConsultarLiquidacionPorNroComprobanteResp;
end;

class function CoConsultarLiquidacionPorNroComprobanteResp.CreateRemote(const MachineName: string): IConsultarLiquidacionPorNroComprobanteResp;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConsultarLiquidacionPorNroComprobanteResp) as IConsultarLiquidacionPorNroComprobanteResp;
end;

end.
