component {

    this.name = "MyColdFusionApp"; // Uygulama adı
    this.applicationTimeout = createTimeSpan(0, 6, 0, 0); // Uygulama zaman aşımı (6 saat)

    // Uygulama başlatıldığında çalışan fonksiyon
    function onApplicationStart() {
        // Uygulama başlatıldığında yapılacak işlemler burada gerçekleştirilebilir
        application.myVariable = "Başlangıç Değeri";
        return true;
    }

    // Uygulama durdurulduğunda çalışan fonksiyon
    function onApplicationEnd() {
        // Uygulama durdurulduğunda yapılacak işlemler burada gerçekleştirilebilir
        return true;
    }

    // Her istek yapıldığında çalışan fonksiyon
    function onRequestStart() {
        // Her istek başladığında yapılacak işlemler burada gerçekleştirilebilir
        return true;
    }

    // Her istek tamamlandığında çalışan fonksiyon
    function onRequestEnd() {
        // Her istek tamamlandığında yapılacak işlemler burada gerçekleştirilebilir
        return true;
    }

    // Hata oluştuğunda çalışan fonksiyon
    function onError(exception, eventname) {
        // Hata durumunda yapılacak işlemler burada gerçekleştirilebilir
        return true;
    }
}
