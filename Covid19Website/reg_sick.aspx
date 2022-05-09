<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reg_sick.aspx.cs" Inherits="Covid19Website.reg_sick" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">
    تسجيل مصاب
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Style/bootstrap.css" />
    <style>
        table{
         //   width:50%;
         // margin:0 auto;
        }
        .auto-style1 {
            width: 101px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContent" runat="server">
        <table dir="rtl" class="table table-condensed" style="width:50%;margin:0 auto">
    
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="الاسم"></asp:Label>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="TxtFirstName" runat="server"></asp:TextBox>
            </td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ValidationGroup="register" ControlToValidate="TxtFirstName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

            </td>
            <td>

            </td>
        </tr>
        <tr>                    
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="اسم الأب "></asp:Label>
            </td>
            <td>
                 <asp:TextBox CssClass="form-control" ID="TxtMidName" runat="server"></asp:TextBox>
            </td>
             <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  ValidationGroup="register" ControlToValidate="TxtMidName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="الشهرة"></asp:Label>
            </td>
            <td>
                 <asp:TextBox ID="TxtLastName" CssClass="form-control" runat="server"></asp:TextBox>
            </td>
             <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="register"  ControlToValidate="TxtLastName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="رقم الهاتف"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtTel" CssClass="form-control" runat="server"></asp:TextBox>
            </td>
             <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="register"  ControlToValidate="TxtTel" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

            </td>
            <td dir="rtl">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" ErrorMessage="يجب أن يتضمن 6 أرقام على الأقل أو 6 أرقام بعد (-)" ValidationExpression="[0-9]*[-]?[0-9]{6,}" ValidationGroup="register" ControlToValidate="TxtTel"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="الجنسية"></asp:Label>
            </td>
            <td dir="ltr">
                <asp:DropDownList ID="DropDownNationalities" CssClass="form-control" runat="server" ></asp:DropDownList>
            </td>
            
            <td>

            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" Text="تاريخ المرض"></asp:Label>
            </td>
            <td>
                 <asp:TextBox ID="TxtSickDate" CssClass="form-control" runat="server"></asp:TextBox>
            </td>
             <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="register"  ControlToValidate="TxtSickDate" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="يجب أن يكون التاريخ من الشكل YYYY/MM/DD"  Type="Date" ValidationGroup="register" ControlToValidate="TxtSickDate" Operator="DataTypeCheck"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" Text="رقم الإضبارة"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtNumber" CssClass="form-control" runat="server" ToolTip="Number"></asp:TextBox>
            </td>
             <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6"  ValidationGroup="register" ControlToValidate="TxtNumber" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

            </td>
            <td>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TxtNumber" ValidationGroup="register" runat="server" ErrorMessage="يجب أن يكون 6 خانات" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
            <tr>
            <td class="auto-style1">
            </td>
            <td>
                <asp:Button ID="BtnSave" CssClass="form-control" OnClick="BtnSave_Click"  ValidationGroup="register"   runat="server" Text="حفظ" />
            </td>
        </tr>
    </table>
    
   
   
    
   
    
</asp:Content>
