<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="createuser.aspx.cs" Inherits="Bookshop.createuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 283px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row" align="center">
   <div class="col-md-12" >
       <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" OnCreatedUser="CreateUserWizard1_CreatedUser">
           <WizardSteps>
               <asp:CreateUserWizardStep runat="server" >
                   <CustomNavigationTemplate>
                       <table border="0" cellspacing="5" style="width:100%;height:100%;">
                           <tr align="right">
                               <td align="right" colspan="0">
                                   <div class="btn btn-info glyphicon glyphicon-user">
                                   <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" BorderWidth="0" BackColor="Transparent"  Text="Create" ValidationGroup="CreateUserWizard1" />
                              </div>
                                   </td>
                           </tr>
                       </table>
                   </CustomNavigationTemplate>
               </asp:CreateUserWizardStep>
               <asp:CompleteWizardStep runat="server" >
                   <ContentTemplate>
                       <table>
                           <tr>
                               <td align="center" colspan="2">Complete</td>
                           </tr>
                           <tr>
                               <td>Your account has been successfully created.</td>
                           </tr>
                           <tr>
                               <td align="right" colspan="2">
                                   <div class="btn btn-info glyphicon glyphicon-ok">
                                   <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" BackColor="Transparent" BorderWidth="0" OnClick="ContinueButton_Click1" Text="Continue" ValidationGroup="CreateUserWizard1" />
                              </div>
                                   </td>
                           </tr>
                       </table>
                   </ContentTemplate>
               </asp:CompleteWizardStep>
           </WizardSteps>
           <FinishNavigationTemplate>
               <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
               <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" />
           </FinishNavigationTemplate>
       </asp:CreateUserWizard>
       

   </div>
    </div>
</asp:Content>
