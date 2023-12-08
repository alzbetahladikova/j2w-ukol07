[#ftl]

<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
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

        </tbody>

            <div class="totalCount">
                [#if posty.totalElements == 1]
                    Celkem nalezen <strong>${posty.totalElements}</strong> článek.
                [#elseif posty.totalElements <= 4]
                    Celkem nalezeny <strong>${posty.totalElements}</strong> články.
                [#else ]
                    Celkem nalezeno <strong>${posty.totalElements}</strong> článků.
                [/#if]
            </div><br>













            [/#list]
</main>
</body>
</html>