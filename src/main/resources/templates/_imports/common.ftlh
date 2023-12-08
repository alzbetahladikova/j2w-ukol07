[#ftl]

[#macro page]
    <!DOCTYPE html>
    <html lang="cs">
    <head>
        <meta charset="UTF-8">
        <title>Můj blog</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="/images/favicon.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        [#nested]

    </body>
    </html>
[/#macro]

[#macro totalCount]
    <div class="totalCount">
        [#if posty.totalElements == 1]
            Celkem nalezen <strong>${posty.totalElements}</strong> článek.
        [#elseif posty.totalElements <= 4]
            Celkem nalezeny <strong>${posty.totalElements}</strong> články.
        [#else ]
            Celkem nalezeno <strong>${posty.totalElements}</strong> článků.
        [/#if]
    </div>
    <br>

[/#macro]