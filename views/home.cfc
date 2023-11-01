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
        <cfloop query="apiData.posts">
            <div class="news-card">
                <div class="news-title">#apiData.posts.title#</div>
                <div class="news-body">#apiData.posts.body#</div>
                <div class="news-tags">
                    <strong>Etiketler:</strong>
                    <cfloop from="1" to="#arrayLen(apiData.posts.tags)#" index="i">
                        #apiData.posts.tags[i]#<cfif i neq arrayLen(apiData.posts.tags)>,</cfif>
                    </cfloop>
                </div>
                <div class="news-reactions">
                    <strong>Reactions:</strong> #apiData.posts.reactions#
                </div>
            </div>
        </cfloop>
    </div>
</body>
</html>
