<!DOCTYPE html>
<html>
<head>
    <title>Haber Listesi</title>
    <style>
        /* Basit CSS stilleri */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .news-list {
            list-style: none;
            padding: 0;
        }
        .news-item {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
        }
        .news-title {
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 5px;
        }
        .news-body {
            font-size: 14px;
        }
    </style>
</head>
<body>
    <h1>Son Haberler</h1>

    <ul class="news-list">
        <cfloop query="news">
            <li class="news-item">
                <h2 class="news-title">#news.title#</h2>
                <p class="news-body">#news.body#</p>
                <a href="newsDetail.cfm?newsID=#news.id#">Detayları Gör</a>
            </li>
        </cfloop>
    </ul>
</body>
</html>
