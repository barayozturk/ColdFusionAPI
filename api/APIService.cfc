component {

    // Dış API'den veri çeken fonksiyon
    public any function getPostsFromAPI() {
        // API URL
        var apiUrl = "https://dummyjson.com/posts";

        // API'dan veri çekme işlemi
        var apiData = {};

        try {
            // API'dan veri çekme
            apiData = this.fetchDataFromAPI(apiUrl);
        } catch (any e) {
            // Hata durumunda işlem
            // Hata yönetimi burada yapılabilir
            apiData = { error = "API'den veri çekilemedi." };
        }

        return apiData;
    }

    // Dış API'den veri çeken yardımcı fonksiyon
    private any function fetchDataFromAPI(required string apiUrl) {
        var result = {};

        // API'dan veri çekme işlemi
        try {
            // API isteği gönderme
            var apiResponse = new Http(
                method = "GET",
                url = apiUrl
            ).send().getPrefix();

            // Eğer istek başarılıysa
            if (apiResponse.statusCode eq 200) {
                // JSON verisini çözümleme
                result = deserializeJSON(apiResponse.fileContent);
            } else {
                // Eğer başarısızsa hata durumu oluştur
                result = { error = "API'den veri alınamadı. StatusCode: #apiResponse.statusCode#" };
            }
        } catch (any e) {
            // Hata durumunda işlem
            // Hata yönetimi burada yapılabilir
            result = { error = "API isteği sırasında bir hata oluştu: #e.message#" };
        }

        return result;
    }
}
