<!DOCTYPE html>
<html>
<head>
    <title>Ana Sayfa - Haberler</title>
    <style>
        /* Basit CSS stilleri */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .news-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }
        .news-card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
        }
        .news-title {
            font-weight: bold;
            margin-bottom: 5px;
        }
        .news-body {
            color: #333;
        }
    </style>
</head>
<body>
    <h1>Son Haberler</h1>

    <div class="news-container">
        <cfhttp url="https://dummyjson.com/posts" method="GET" result="apiData">
            <cfif apiData.statusCode EQ 200>
                <cfset newsList = deserializeJSON(apiData.fileContent).posts>
                <cfloop array="#newsList#" index="news">
                    <div class="news-card">
                        <div class="news-title">#news.title#</div>
                        <div class="news-body">#news.body#</div>
                        <div class="news-tags">
                            <strong>Etiketler:</strong>
                            <cfloop array="#news.tags#" index="tag">
                                #tag#<cfif currentRow lt arrayLen(news.tags)>,</cfif>
                            </cfloop>
                        </div>
                    </div>
                </cfloop>
            <cfelse>
                <p>API'den haberler alınamadı.</p>
            </cfif>
        </cfhttp>
    </div>
</body>
</html>
