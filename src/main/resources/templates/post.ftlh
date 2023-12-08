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