<!DOCTYPE html>
<html>
<head>
    <title>Haber Güncelleme</title>
    <style>
        /* Basit CSS stilleri */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .update-form {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            width: 50%;
            margin: 0 auto;
        }
        .form-group {
            margin-bottom: 10px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 8px;
            font-size: 16px;
        }
        .form-group .submit-btn {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="update-form">
        <h1>Haber Güncelleme</h1>
        <form action="updateNewsAction.cfm" method="post">
            <div class="form-group">
                <label for="title">Başlık:</label>
                <input type="text" id="title" name="title" value="#newsDetail.title#" required>
            </div>
            <div class="form-group">
                <label for="body">İçerik:</label>
                <textarea id="body" name="body" required>#newsDetail.body#</textarea>
            </div>
            <div class="form-group">
                <input type="submit" value="Haberi Güncelle" class="submit-btn">
            </div>
        </form>
    </div>
</body>
</html>
