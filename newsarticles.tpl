<h1 class="h1">Home</h1>
<section>
    {foreach from=$result item=oneItem}
        <div id="kop">
        <h1>{$oneItem.title}</h1>
        <div id="kop2"><content>{$oneItem.content}</content></div>
        <br>
        <img src={$oneItem.image}>
        <h4>{$oneItem.date_created}</h4>
            </div>
    {/foreach}
</section>
<div id="ul1">
    <ul id="li">
        {for $foo=1 to $nr_pages}
            <li class="li"><a href="?action=home&page_nr={$foo}">{$foo}</a></li>
        {/for}

    </ul>
</div>




{*<?php*}

{*echo '<section>';*}

{*//fetch_assoc should not be in the view!*}
{*foreach($result as $row=>$oneItem) {*}

{*echo '<article>';*}
    {*echo '<h1>'.$oneItem['title'].'</h1>';*}
    {*echo '<content>'.$oneItem['content'].'</content>';*}
    {*echo'<img src='.$oneItem['image'].'>';*}
    {*echo '</article>';*}
{*}*}

{*echo '</section>';*}