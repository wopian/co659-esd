﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome_Form.aspx.cs" Inherits="WebApplication14.Welcome_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.3/dist/leaflet.css"
    />

   <script src="https://unpkg.com/leaflet@1.0.3/dist/leaflet.js"
    ></script>

    <style>
        #mapid { height: 180px; }
    </style>
   



</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><strong><em>Welcome </em></strong></h1>
        </div>
    </form>

    <div id="mapid"></div>

<script>
    var mymap = L.map('mapid').setView([51.505, -0.09], 13);
    L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoiaHVzc2VpbjI2MiIsImEiOiJjazI0cmlweWkxZDc1M2dueXpuaHAxaDF2In0.ip6VJnj1iasy8LX35FRv2Q', {
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        maxZoom: 18,
        id: 'mapbox.streets',
        accessToken: 'your.mapbox.access.token'
    }).addTo(mymap);
</script>
</body>
</html>



