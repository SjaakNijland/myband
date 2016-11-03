<div id="bug">
<aside>
    <h1 id="ash1">Last News</h1>
    <section id="sec">
        {foreach from=$result item=oneItem}
            <div id="kop69">
                <h2>{$oneItem.title}</h2>
                <div id="kopaside"><content>{$oneItem.content}</content></div>
                <img src={$oneItem.image}>
                <h4>{$oneItem.date_created}</h4>
            </div>
        {/foreach}
    </section>
</aside>