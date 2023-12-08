[#ftl]

[@c.page]
<main class="container">


    [#list posty]
        [#items as post]


            <h1>${post.title?no_esc}</h1>


            <p>${post.perex?no_esc}</p>
            <p>${post.body?no_esc}</p>
            <p>${post.published?date?string}</p>
            <p>${post.author}</p>


        [/#items]

    [/#list]
</main>
[/@c.page]