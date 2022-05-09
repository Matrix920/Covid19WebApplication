<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="nationality.aspx.cs" Inherits="Covid19Website.nationality" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">
    الجنسيات
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
       <link rel="stylesheet" href="Style/bootstrap.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContent" runat="server">

    <asp:GridView ID="GridView1" CssClass="table table-condensed" runat="server" AutoGenerateColumns="False" DataKeyNames="NationalityID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="NationalityID" HeaderText="NationalityID" Visible="false" InsertVisible="False" ReadOnly="True" SortExpression="NationalityID" />
            <asp:BoundField DataField="NationalityCode" HeaderText="رمز الجنسية" SortExpression="NationalityCode" />
            <asp:BoundField DataField="NationalityName" HeaderText="الجنسية" SortExpression="NationalityName" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Nationalities] WHERE [NationalityID] = @original_NationalityID AND [NationalityCode] = @original_NationalityCode AND [NationalityName] = @original_NationalityName" InsertCommand="INSERT INTO [Nationalities] ([NationalityCode], [NationalityName]) VALUES (@NationalityCode, @NationalityName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Nationalities]" UpdateCommand="UPDATE [Nationalities] SET [NationalityCode] = @NationalityCode, [NationalityName] = @NationalityName WHERE [NationalityID] = @original_NationalityID AND [NationalityCode] = @original_NationalityCode AND [NationalityName] = @original_NationalityName">
    <DeleteParameters>
        <asp:Parameter Name="original_NationalityID" Type="Int32" />
        <asp:Parameter Name="original_NationalityCode" Type="String" />
        <asp:Parameter Name="original_NationalityName" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="NationalityCode" Type="String" />
        <asp:Parameter Name="NationalityName" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NationalityCode" Type="String" />
        <asp:Parameter Name="NationalityName" Type="String" />
        <asp:Parameter Name="original_NationalityID" Type="Int32" />
        <asp:Parameter Name="original_NationalityCode" Type="String" />
        <asp:Parameter Name="original_NationalityName" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <p dir="rtl">
        إن حذف أي من الجنسيات سوف يؤدي إلى حذف جميع المرضى المسجلين بهذه الجنسية
    </p>

     <table dir="rtl" class="table table-condensed" style="width:40%;margin:0 auto">
    
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="اسم الجنسية"></asp:Label>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="TxtNationalityName" runat="server"></asp:TextBox>
            </td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ValidationGroup="nationality" ControlToValidate="TxtNationalityName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

            </td>
         
        </tr>

         <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="رمز الجنسية"></asp:Label>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="TxtNationalityCode" runat="server"></asp:TextBox>
            </td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  ValidationGroup="nationality" ControlToValidate="TxtNationalityCode" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

            </td>
        
        </tr>

         <tr>
             <td>

             </td>
             <td>
                <asp:Button ID="BtnSave" CssClass="form-control" OnClick="BtnSave_Click"  ValidationGroup="nationality"   runat="server" Text="حفظ" />
            </td>
             <td>

             </td>
         </tr>
         </table>
</asp:Content>
