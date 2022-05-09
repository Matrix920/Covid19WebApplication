<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="view_sick.aspx.cs" Inherits="Covid19Website.view_sick" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">
    عرض المصابين
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="Style/bootstrap.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContent" runat="server">
    <table class="table table-condensed">
        <tr>
            <td>

            </td>
            <td dir="rtl">
                <asp:TextBox  ID="TxtSearch" CssClass="form-control" placeholder="الاسم أو اسم الأب أو الشهرة ..."  runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="BtnSearch" OnClick="BtnSearch_Click" CssClass="form-control" runat="server" Text="بحث" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" CssClass="table table-condensed" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="الاسم" SortExpression="FirstName" />
            <asp:BoundField DataField="MiddleName" HeaderText="اسم الأب" SortExpression="MiddleName" />
            <asp:BoundField DataField="LastName" HeaderText="الشهرة" SortExpression="LastName" />
            <asp:BoundField DataField="Tel" HeaderText="رقم الهاتف" SortExpression="Tel" />
            <asp:BoundField DataField="SickDate" HeaderText="تاريخ المرض" SortExpression="SickDate" />
            <asp:BoundField DataField="Number" HeaderText="رقم الإضبارة" SortExpression="Number" />
            <asp:BoundField DataField="NationalityName" HeaderText="الجنسية" SortExpression="NationalityName" />
        </Columns>
    </asp:GridView>

</asp:Content>
