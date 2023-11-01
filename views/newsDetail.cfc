<!DOCTYPE html>
<html>
<head>
    <title>Haber Detayı</title>
    <style>
        /* Basit CSS stilleri */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .news-detail {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            background-color: #f9f9f9;
        }
        .news-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .news-body {
            font-size: 16px;
            line-height: 1.6;
        }
    </style>
</head>
<body>
    <div class="news-detail">
        <h1 class="news-title">#newsDetail.title#</h1>
        <p class="news-body">#newsDetail.body#</p>
        <div class="news-tags">
            <strong>Etiketler:</strong>
            <cfloop from="1" to="#arrayLen(newsDetail.tags)#" index="i">
                #newsDetail.tags[i]#<cfif i neq arrayLen(newsDetail.tags)>,</cfif>
            </cfloop>
        </div>
        <div class="news-reactions">
            <strong>Reactions:</strong> #newsDetail.reactions#
        </div>
    </div>
</body>
</html>
