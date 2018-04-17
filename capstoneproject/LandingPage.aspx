<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="capstoneproject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavigationContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="BodyMainContent" ContentPlaceHolderID="MainContent" runat="server">
    <section>
<div id="length_control" class="container-fluid fill-height">
	<div id="myCarousel" class="carousel slide" data-ride="carousel" >
    <!-- Carousel indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>   
    <!-- Wrapper for carousel items -->
    <div class="carousel-inner" style="height:450px; width:100%; margin-left:auto; margin-right:auto; box-shadow:0 0 20px black;  border-radius:5px;">
        <div class="item active">
            <img src="smartt.jpg" alt="First Slide" style="margin-left:auto; margin-right:auto; " class="img-responsive">
        </div>
		<div class="carousel-caption">
            <h3>What we do</h3>
        </div>
        <div class="item">
            <img src="raspberry.jpg" alt="Second Slide" style="margin-left:auto; margin-right:auto;" class="img-responsive">
        </div>
		<div class="carousel-caption">
            <h3>What we do</h3>
        </div>
        <div class="item">
            <img src="alexa.jpg" alt="Third Slide" style="margin-left:auto; margin-right:auto;" class="img-responsive">
        </div>
		<div class="carousel-caption">
            <h3>What we do</h3>
        </div>
    </div>
    <!-- Carousel controls -->
    <a class="carousel-control left" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="carousel-control right" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>
</div>
            </section>
        <section>
</asp:Content>
