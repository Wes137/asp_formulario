<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioRegistro.aspx.cs" Inherits="ValidarFormularios.FormularioRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 244px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Formulario para registrarse</div>
        <p>
            &nbsp;</p>
        <table style="width:100%;">
            <tr>
                <td colspan="4">Ingrese los datos del formulario y haga clic en enviar</td>
            </tr>
            <tr>
                <td class="auto-style1">Nombre</td>
                <td colspan="3"><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" Display="Dynamic" EnableClientScript="False" ErrorMessage="Requiere el nombre" ForeColor="#CC0000">* Requiere el nombre</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Dirección</td>
                <td colspan="3">
                    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDireccion" EnableClientScript="False" ErrorMessage="Falta el ingreso de la direccion" ForeColor="#CC0000">* Falta el ingreso de la direccion</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Edad</td>
                <td colspan="3"><asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEdad" Display="Dynamic" EnableClientScript="False" ErrorMessage="Requiere la edad" ForeColor="#CC0000">* Requiere la edad</asp:RequiredFieldValidator>
                &nbsp;
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtEdad" Display="Dynamic" EnableClientScript="False" ErrorMessage="Minimo 18" ForeColor="#CC0000" MaximumValue="99" MinimumValue="18" SetFocusOnError="True" Type="Integer">* Minimo 18</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td colspan="3">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="Requiere el Email" ForeColor="#CC0000">* Requiere el Email</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" EnableClientScript="False" ErrorMessage="Email invalido" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">* Email invalido</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td colspan="3">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" EnableClientScript="False" ErrorMessage="Requiere la password" ForeColor="#CC0000">* Requiere la password</asp:RequiredFieldValidator>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Repite Password</td>
                <td colspan="3">
                    <asp:TextBox ID="txtPasswordRep" runat="server" TextMode="Password"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" EnableClientScript="False" ErrorMessage="Requiere verificación de password" ForeColor="#CC0000">* Requiere ingresar la password</asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordRep" EnableClientScript="False" ErrorMessage="Las password no son iguales" ForeColor="#CC0000" SetFocusOnError="True">* Las password no son iguales</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Fecha Matricula</td>
                <td colspan="3">
                    <asp:TextBox ID="txtFechaMatricula" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtFechaMatricula" EnableClientScript="False" ErrorMessage="Formato: mm/dd/aa" ForeColor="#CC0000">* Formato: mm/dd/aaaa</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Teléfono</td>
                <td colspan="3">
                    <asp:TextBox ID="txtTelefono" runat="server" TextMode="Phone"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefono" Display="Dynamic" EnableClientScript="False" ErrorMessage="Formato (nnn)-nnn-nnnnnnn" ForeColor="#CC0000" ValidationExpression="^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$">Formato (nnn)-nnn-nnnnnnn *</asp:RegularExpressionValidator>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Valor</td>
                <td colspan="3">
                    <asp:TextBox ID="txtValor" runat="server" TextMode="Number" ></asp:TextBox>
&nbsp;&nbsp;
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtValor" CultureInvariantValues="True" EnableClientScript="False" ErrorMessage="(Entre 230 y 890)" ForeColor="#CC0000" MaximumValue="890" MinimumValue="230">* (Entre 230 y 890)</asp:RangeValidator>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtValor" EnableClientScript="False" ErrorMessage="Valor requerido" ForeColor="#CC0000">* Valor requerido</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnAceptar" runat="server" OnClick="Button1_Click" Text="Aceptar" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancelar" runat="server" CausesValidation="False" UseSubmitBehavior="false" Text="Cancelar" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
