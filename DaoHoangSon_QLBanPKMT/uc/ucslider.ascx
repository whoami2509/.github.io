<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucslider.ascx.cs" Inherits="DaoHoangSon_QLBanPKMT.uc.ucslider" %>

<style type="text/css">
    *{
      margin: 0;
      padding: 0;
    }

    .slide{
      width: 1200px;
      margin: 0 auto;
      overflow: hidden;
      position: relative;
      margin-bottom:5px;
    }
    .chuyen-slide{
      width: 9999px;
      transition:step-end 0.5s;
    }
    .chuyen-slide img{
      width: 1200px;
      height: 300px;
      float:left;
    }
    .dieuhuong{
      position: absolute;
      color: white;
      font-size: 40px;
      top: 48%;
      padding-left: 20px;
    }
    .dieuhuong i:last-child{
      position: relative;
      left: 1080px;
    }
</style>
<link href="../css/font-awesome/css/font-awesome.css" rel="stylesheet" />
<div class="slide">
		<div class="dieuhuong">
			<i class="fa fa-chevron-circle-left" onclick="Back();"></i>
			<i class="fa fa-chevron-circle-right" onclick="Next();"></i>
		</div>
		<div class="chuyen-slide">
			
			<img src="../hinh/slider1.jpg"/> 
			<img src="../hinh/slider2.jpg"/> 
			<img src="../hinh/slider3.jpg"/>

		</div>
	</div>
<script src="../slide/slide.js"></script>
