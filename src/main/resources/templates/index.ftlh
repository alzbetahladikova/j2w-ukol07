[#ftl]

[@c.page]
    <main class="container">

        <h1>Přehled článků</h1><br>
        [#list posty.content]
        <table class="u-full-width">
            <thead>
            <tr>
                <th>Slug</th>
                <th>Author</th>
                <th>Vydáno</th>
                <th>Title</th>
            </tr>
            </thead>
            <tbody>
            [#items as post]
                <tr>
                    <td><a href="/post/${post.slug}">${post.slug}</a></td>
                    <td>${post.author}</td>
                    <td>${post.published?date?string}</td>
                    <td>${post.title?no_esc}</td>

                </tr>
            [/#items]
            [@c.totalCount]
            [/@c.totalCount]

            </tbody>


            [/#list]
    </main>
[/@c.page]
