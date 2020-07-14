<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="Default.aspx.cs" Inherits="DXWebApplication20._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <br />
    <script type="text/javascript">
        function OnClickButtonDel(s, e) {
            grid.PerformCallback('Delete');
        }
    </script>
    <dx:ASPxLabel ID="sLabel" runat="server"></dx:ASPxLabel>

    <dx:BootstrapButton ID="BootstrapButtonDel" runat="server" ClientEnabled="true" AutoPostBack="false" Text="Delete Marked Clientside">
        <ClientSideEvents Click="OnClickButtonDel" />
    </dx:BootstrapButton>
    <br />
    <dx:BootstrapGridView ID="BootstrapGridView1" runat="server" ClientInstanceName="grid" ClientIDMode="AutoID" AutoGenerateColumns="False" DataSourceID="SqlDataSourceNW" KeyFieldName="CustomerID">
        <SettingsCommandButton>
            <EditButton IconCssClass="fas fa-edit" />
            <NewButton IconCssClass="fas fa-edit" />
            <DeleteButton IconCssClass="fas fa-trash" />
            <UpdateButton IconCssClass="fas fa-save" />
            <CancelButton IconCssClass="fas fa-undo" />
        </SettingsCommandButton>
        <%--             <SettingsBehavior ConfirmDelete="true" />--%>
        <SettingsDataSecurity AllowDelete="True" AllowEdit="True" AllowInsert="True" />
        <Columns>
            <dx:BootstrapGridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" ShowEditButton="true" ShowNewButtonInHeader="true" ShowDeleteButton="true" ButtonRenderMode="Image" Width="100" VisibleIndex="0" />

            <dx:BootstrapGridViewTextColumn FieldName="CustomerID" ReadOnly="True" VisibleIndex="1">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="CompanyName" VisibleIndex="2">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="ContactName" VisibleIndex="3">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="ContactTitle" VisibleIndex="4">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Address" VisibleIndex="5">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="City" VisibleIndex="6">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Region" VisibleIndex="7">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="PostalCode" VisibleIndex="8">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Country" PropertiesTextEdit-ClientInstanceName="Country" VisibleIndex="9">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Phone" VisibleIndex="10">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Fax" VisibleIndex="11">
            </dx:BootstrapGridViewTextColumn>
        </Columns>
    </dx:BootstrapGridView>

    <asp:SqlDataSource ID="SqlDataSourceNW" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Customers]" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (@CustomerID, @CompanyName, @ContactName, @ContactTitle, @Address, @City, @Region, @PostalCode, @Country, @Phone, @Fax)" UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName, [ContactName] = @ContactName, [ContactTitle] = @ContactTitle, [Address] = @Address, [City] = @City, [Region] = @Region, [PostalCode] = @PostalCode, [Country] = @Country, [Phone] = @Phone, [Fax] = @Fax WHERE [CustomerID] = @CustomerID">
        <DeleteParameters>
            <asp:Parameter Name="CustomerID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerID" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="ContactName" Type="String" />
            <asp:Parameter Name="ContactTitle" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Region" Type="String" />
            <asp:Parameter Name="PostalCode" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Fax" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="ContactName" Type="String" />
            <asp:Parameter Name="ContactTitle" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Region" Type="String" />
            <asp:Parameter Name="PostalCode" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Fax" Type="String" />
            <asp:Parameter Name="CustomerID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
