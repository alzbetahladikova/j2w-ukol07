[#ftl]

<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">

</head>
<body>
<main class="container">

    <h1>Přehled článků</h1>
    [#list posty]
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
                <a href="/post/${post.slug}" li><td>${post.slug}</td></a>
                <td>${post.author}</td>
                <td>${post.published?date?string}</td>
                <td>${post.title?no_esc}</td>

            </tr>
        [/#items]
        </tbody>
    [/#list]
</main>
</body>
</html>