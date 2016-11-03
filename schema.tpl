
{*<head>*}
    {*<meta charset="utf-8">*}
    {*<script>*}
        {*function showResult(str) {*}
            {*if (str=="") {*}
                {*document.getElementById("txtHint").innerHTML="";*}
                {*return;*}
            {*}*}
            {*if (window.XMLHttpRequest) {*}
                {*// code for IE7+, Firefox, Chrome, Opera, Safari*}
                {*xmlhttp=new XMLHttpRequest();*}
            {*} else { // code for IE6, IE5*}
                {*xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");*}
            {*}*}
            {*xmlhttp.onreadystatechange=function() {*}
                {*if (this.readyState==4 && this.status==200) {*}
                    {*document.getElementById("txtHint").innerHTML=this.responseText;*}
                {*}*}
            {*}*}
            {*xmlhttp.open("GET","model/getuser2.php?q="+str,true);*}
            {*xmlhttp.send();*}
        {*}*}
    {*</script>*}
{*</head>*}
{*<body>*}
{*<h1 class="h1">Schema</h1>*}
{*<div id="search">*}

    {*<form>*}
        {*<input id="search2" type="text" size="30" onkeyup="showResult(this.value)">*}
        {*<div id="livesearch"></div>*}
    {*</form>*}
    {*<br>*}
    {*<div id="txtHint"><b>No results</b></div>*}
    {*<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>*}
{*</div>*}
{*</body>*}
<h1 class="h1">Schema</h1>
<section>
<table id="schema">
    <tr>
        <td class="schema"><strong>Thuis</strong></td>
        <td class="schema"><strong>Uit</strong></td>
        <td class="schema"><strong>Datum</strong></td>
        <td class="schema"><strong>Competitie</strong></td>
    </tr>
    {foreach from=$result item=oneItem}
        <tr>
            <td class="schema">{$oneItem.thuis}</td>
            <td class="schema">{$oneItem.uit}</td>
            <td class="schema" class="weg">{$oneItem.datum}</td>
            <td class="schema" class="weg">{$oneItem.Competitie}</td>

        </tr>
    {/foreach}
</table>
</section>