<h1 class="h1">About The Players</h1>
<section>
    {foreach from=$result item=oneItem}
<div id="kop20">
    <img id="imgabout" src={$oneItem.image}>
    <div id="subkop">
    <h1>{$oneItem.title}</h1>
   <content> <div id="kop3">{$oneItem.content}</div></content>
    <h4>{$oneItem.date_created}</h4>
       {*<div id="kip">{$oneItem.video}</div>*}
        <video width="300" controls>
            <source src="video/{$oneItem.video}" type="video/mp4">

            Your browser does not support HTML5 video.
        </video>
    </div>


</div>
{/foreach}
</section>
<div id="ul12">
    <ul id="pli">
        {for $foo=1 to $nr_pages}
            <li class="li"><a href="?action=about&page_nr={$foo}">{$foo}</a></li>
        {/for}

    </ul>
</div>