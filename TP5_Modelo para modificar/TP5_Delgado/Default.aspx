<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP5_Delgado._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>TP6</h1>
        <p class="lead">&nbsp;</p>
        <table class="nav-justified" style="height: 319px">
            <tr>
                <td style="width: 189px" rowspan="5"><br />
                    <asp:ListBox ID="ListBox1" runat="server" Height="150px" Width="189px"></asp:ListBox>
                    <br />
                    <br />
                    <br />
                </td>
                <td style="width: 189px" rowspan="5">
                </td>
                <td style="height: 20px; width: 225px">
                    <asp:Button ID="BtnIncluir" runat="server" OnClick="BtnIncluir_Click" Text="Insertar" Width="105px" />
                </td>
                <td rowspan="5">
                    <asp:ListBox ID="ListBox2" runat="server" Height="150px" Width="189px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td style="height: 20px; width: 225px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px; width: 225px">
                    <asp:Button ID="BtnRemover" runat="server" OnClick="BtnRemover_Click" Text="Remover" Width="106px" />
                </td>
            </tr>
            <tr>
                <td style="width: 225px">
                    <asp:Button ID="BtnNuevoItem" runat="server" Height="26px" OnClick="Button1_Click" Text="Nuevo Item" Width="106px" />
                </td>
            </tr>
            <tr>
                <td style="height: 20px; width: 225px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click2" Text="Limpiar Lista" Width="107px" />
                </td>
            </tr>
            <tr>
                <td style="height: 20px; " colspan="3">
                    <asp:Panel ID="Panel1" runat="server" Height="31px" Visible="False" Width="248px">
                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Height="26px" Text="Nuevo Item" Width="106px"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" style="width: 128px"></asp:TextBox>
                    </asp:Panel>
                </td>
                <td style="height: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 189px">
                    <asp:Panel ID="Panel2" runat="server" Visible="False" Width="244px">
                        <asp:Button ID="AgregarItem" runat="server" Text="Agregar Item" OnClick="AgregarItem_Click" Width="176px" />
                    </asp:Panel>
                </td>
                <td style="width: 189px">
                    &nbsp;</td>
                <td style="width: 225px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 189px">
                    <asp:Button ID="BtnVIsualizar" runat="server" OnClick="BtnVIsualizar_Click" Text="Ver Seleccionados" />
                </td>
                <td style="width: 189px">
                    &nbsp;</td>
                <td style="width: 225px">
                    <asp:Label ID="ItemsSeleccionados" runat="server" Text="label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p class="lead">
            &nbsp;</p>
        <p class="lead">&nbsp;</p>
        <p class="lead">&nbsp;</p>
        <p>&nbsp;</p>
    </div>

</asp:Content>
