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

    <h1>Zvolený článek</h1>
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
</body>
</html>