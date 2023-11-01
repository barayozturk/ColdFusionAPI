component {

    // Veritabanı bağlantısı
    public any function init() {
        // Veritabanı bağlantısı
        var dbConfig = {
            username = "veritabani_kullanici_adi",
            password = "veritabani_sifresi",
            database = "veritabani_ismi",
            server = "veritabani_sunucu_adresi"
            // Diğer gerekli veritabanı konfigürasyonları
        };

        // Veritabanı bağlantısı oluşturma
        this.dbService = new Query();
        this.dbService.setDatasource(dbConfig);
    }

    // Tüm haberleri getiren fonksiyon
    public query function getAllNews() {
        // Tüm haberleri getirme sorgusu
        var sql = "SELECT * FROM News";
        var result = this.dbService.execute(sql);
        return result;
    }

    // Belirli bir haber detayını getiren fonksiyon
    public query function getNewsDetail(newsID) {
        // Belirli bir haber detayını getirme sorgusu
        var sql = "SELECT * FROM News WHERE id = :newsID";
        var args = {newsID: {value: arguments.newsID, cfsqltype: 'CF_SQL_INTEGER'}};
        var result = this.dbService.execute(sql, args);
        return result;
    }

    // Yeni haber ekleyen fonksiyon
    public boolean function addNews(title, body, category) {
        // Veritabanına ekleme sorgusu
        var sql = "INSERT INTO News (title, body, category) VALUES (:title, :body, :category)";
        var args = {
            title: {value: arguments.title, cfsqltype: 'CF_SQL_VARCHAR'},
            body: {value: arguments.body, cfsqltype: 'CF_SQL_LONGVARCHAR'},
            category: {value: arguments.category, cfsqltype: 'CF_SQL_VARCHAR'}
        };
        var result = this.dbService.execute(sql, args);
        return result;
    }

    // Haber güncelleyen fonksiyon
    public boolean function updateNews(newsID, title, body) {
        // Haberi güncelleme sorgusu
        var sql = "UPDATE News SET title = :title, body = :body WHERE id = :newsID";
        var args = {
            newsID: {value: arguments.newsID, cfsqltype: 'CF_SQL_INTEGER'},
            title: {value: arguments.title, cfsqltype: 'CF_SQL_VARCHAR'},
            body: {value: arguments.body, cfsqltype: 'CF_SQL_LONGVARCHAR'}
        };
        var result = this.dbService.execute(sql, args);
        return result;
    }

    // Haber silen fonksiyon
    public boolean function deleteNews(newsID) {
        // Haberi silme sorgusu
        var sql = "DELETE FROM News WHERE id = :newsID";
        var args = {newsID: {value: arguments.newsID, cfsqltype: 'CF_SQL_INTEGER'}};
        var result = this.dbService.execute(sql, args);
        return result;
    }
}
