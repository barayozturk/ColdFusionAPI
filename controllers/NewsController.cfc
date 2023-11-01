component {

    public any function index() {
        // Haberlerin ana sayfası
        var homeController = new HomeController();
        return homeController.newsList();
    }

    public any function show(newsID) {
        // Belirli bir haberin detay sayfası
        var homeController = new HomeController();
        return homeController.newsDetail(arguments.newsID);
    }

    public any function edit(newsID) {
        // Haber düzenleme sayfası
        var homeController = new HomeController();
        return homeController.updateNews(arguments.newsID);
    }

    public any function destroy(newsID) {
        // Haberi silme işlemi
        var homeController = new HomeController();
        return homeController.deleteNews(arguments.newsID);
    }

    // Yeni fonksiyonlar eklenebilir...
}
