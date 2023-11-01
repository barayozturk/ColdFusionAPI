component {

    // Tüm haberleri getiren fonksiyon
    public query function getAllNews() {
        var dbService = new DBService();
        return dbService.getAllNews();
    }

    // Belirli bir haberin detaylarını getiren fonksiyon
    public query function getNewsDetail(newsID) {
        var dbService = new DBService();
        return dbService.getNewsDetail(arguments.newsID);
    }

    // Yeni bir haber ekleyen fonksiyon
    public boolean function addNews(title, body, category) {
        var dbService = new DBService();
        return dbService.addNews(arguments.title, arguments.body, arguments.category);
    }

    // Belirli bir haberi güncelleyen fonksiyon
    public boolean function updateNews(newsID, title, body) {
        var dbService = new DBService();
        return dbService.updateNews(arguments.newsID, arguments.title, arguments.body);
    }

    // Belirli bir haberi silen fonksiyon
    public boolean function deleteNews(newsID) {
        var dbService = new DBService();
        return dbService.deleteNews(arguments.newsID);
    }
}
