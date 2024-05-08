# Tutorial 8 Game Development CSUI Even Semester 2023/2024
Created by Stefanus Ndaru Wedhatama - 2006526812

## Excercise
### Adding Particles
Saya hanya sekadar mengikuti tutorial yang telah diberikan, dengan menggunakan Tutorial 6 yang pernah saya gunakan, dan menambahkan efek partikel menggunakan `Particles2D` dan memainkan berbagai propertinya seperti `Lifetime`, `ProcessMaterial`, dan sebagainya.


## Latihan Mandiri

### Apa saja hal-hal positif yang kamu identifikasi dari pengalaman para pemain ketika mencoba game kelompok?
Hal positif yang diidentifikasi adalah game yang kami buat memiliki konsep yang cukup menarik untuk memikat perhatian _bystander_ yang ada di plaza gedung baru. Hal ini terutama menarik pecinta _rhytm game_, karena apa yang kami berikan cukup unik dan tidak diikuti oleh kelompok lain. Selain itu, penggunaan _storyboard_ sebagai mekanisme untuk menentukan _mapping_ sangat unik dan memiliki kesan _well made_ yang sangat bagus, dan memberi pengalaman yang imersif untuk pemain yang memainkannya. Selain itu, game juga cukup menantang sehingga pemain merasa, ya, tertantang, untuk mencoba dan menyelesaikan level dengan mendapatkan combo terbaik dan mengalahkan bosnya.


### Apa saja hal-hal negatif (atau, pain points) yang kamu identifikasi dari pengalaman para pemain ketika mencoba game kelompok?
Yang saya perhatikan adalah, pemain perlu mempelajari sedikit mengenai _gameplay_ karena kami tidak memberikan tutorial, sehingga mereka harus dipandu bahwa mereka perlu menyerang dengan mengikuti ritme, sekaligus menghindar proyektil yang dilontarkan. Selain itu, karena kami belum mengimplementasikan berbagai tingkat kesulitan, level _default_ yang kami miliki terlalu sulit untuk mayoritas pemain dan berubah menjadi _button mashing_ game. Selain itu, _feedback_ yang diberikan oleh game, seperti indikasi bahwa berhasil hit note dengan sempurna, atau miss, bahkan terkena _damage_ dari proyektil, masih belum ada, sehingga banyak pemain cukup kebingungan dengan _sensing_ dari gamenya.


### Dari feedback-feedback yang telah diperoleh, apakah ada isu yang terkait pencapaian kondisi flow oleh pemain?
Yang paling jelas adalah tingkat kesulitan yang ada masih terlalu sulit untuk mayoritas pemain sehingga mereka merasa putus asa dan menyerah untuk berusaha, sehingga tercapai kondisi _button masing_ yang disebutkan di atas. Selain itu, kurangnya _feedback_ juga mengganggu _flow_ dari pemain untuk bisa menentukan apakah pemain sudah cukup baik dalam bermain, atau ada banyak salah pergerakan.

### Dari jawaban kamu terhadap pertanyaan 1 hingga 3, tuliskan secara singkat, dalam bentuk bullet points, apa saja hal yang ingin kamu polish dan balance?
1. Menerapkan difficulty level yang lebih rendah untuk akomodir pemain yang masih pemula di rhytm game
2. Implementasi _feedback_ mechanic untuk berbagai aspek dalam gameplay
3. Memberikan tutorial di awal agar pemain tau apa yang harus dilakukan

### Untuk masing-masing poin di jawaban pertanyaan 4, jabarkan secara singkat (1 - 3 kalimat) mengenai rencana kerja kamu untuk mengimplementasikan usulan tersebut.
1. **Menerapkan difficulty level**
Untuk ini, cukup simpel, yaitu memberikan opsi untuk menentukan _difficulty_ di awal level, mulai dari Easy, Medium, dan Hard. Lalu, mengatur _storyboard_ di setiap level agar bisa lebih mudah atau sulit dengan memanipulasi jumlah proyektil, kecepatan proyektil, dan juga _beat_ yang harus di-_hit_ oleh pemain sebagai bentuk penyerangan
2. **Implementasi _feedback_ mechanic**
Implementasi _feedback_ mechanic bisa sesimpel memberikan indikator seperti adanya animasi atau perubahan warna ketika terjadi suatu interaksi, seperti _miss_ suatu note, atau ketika terkena _damage_ sehingga pemain tau bahwa pemain baru saja terkena suatu kejadian terhadap _gameplay_ yang ada. Untuk interaksi _feedback_ secara spesifik, masih menjadi diskusi pada kelompok kami.
3. **Memberikan tutorial**
Untuk tutorial, cukup sesimpel ketika memulai game atau _storyline_ untuk pertama kali, pemain bisa memilih untuk memulai tutorial atau tidak, dan di tutorial, _basics_ dari game akan diperkenalkan dan pemain dapat mengikutinya. Level tutorial akan menggunakan _storyboard_ yang simpel karena tujuannya memang hanya untuk memperkenalkan _gameplay mechanics_ yang ada.
