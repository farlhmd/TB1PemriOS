let namaMahasisw = ["Adi", "Budi", "Cica", "Dedi", "Essy Malay", "Muhammad Farhan Ilhamdi", "Panama Juli"]
let jumKehadiran = [10, 13, 14, 9 , 14, 14, 3]
let nilaiTugas = [75, 50, 60, 75, 80, 100, 55]
let nilaiUAS = [80,60,60,95,85, 100, 79]
let judul =  " Nama"

///cari nama terpanjang buat mastiin panjang kolom nama
var terbesar = 0
var i = 0
while i < namaMahasisw.count-1 {
    if namaMahasisw[i].count < namaMahasisw[i+1].count{
        terbesar = namaMahasisw[i+1].count
    }
    else{
        terbesar = namaMahasisw[i].count
    }
    i += 1
}
///biar kolom nama sejalan
var n = 0
let selisih = terbesar - judul.count
var jarakSpasi = ""
var jarakStrip = ""
while n < selisih + 2 {
    
    jarakSpasi = jarakSpasi + " "
    jarakStrip = jarakStrip + "-"
    n += 1
    
}

            ////////////////////////////////
            ///Header Table
            ////////////////////////////////
print("|----------------------\(jarakStrip)---------------------------------------------------------------------------------|")
print("| No.| Nama\(jarakSpasi) | Kehadiran | Persentase |  Tugas  |   UAS  |  Rata-Rata  | Bobot Nilai | Status Kelulusan  |")
print("|----------------------\(jarakStrip)---------------------------------------------------------------------------------|")


            ////////////////////////////////
            ///ngerubah nama yang kurang dari nama terpanjang
            ////////////////////////////////
var x = 0
while x < namaMahasisw.count {
    let nama = namaMahasisw[x]
    let tugas = nilaiTugas[x]
    var tugasStr = ""
    let uas = nilaiUAS[x]
    var uasStr = ""
    let kehadiran = jumKehadiran[x]
    var kehadiranStr = ""
    let percHadir = kehadiran*100/14
    var percHadirStr = ""
    let rataRata = (tugas*4/10) + (uas*6/10)
    var rataStr = ""
    var bobotNilai = ""
    var statusKelulusan = ""
    var spasi = ""
    let selisihJumlahNama = terbesar - namaMahasisw[x].count
    
    /////////////////////////////
    /// Spasi untuk Header
    /////////////////////////////
    var y = 0
    while y <= selisihJumlahNama {
        spasi = spasi + " "
        y += 1
    }
    
    /////////////////////////////
    /// Bobot nilai dan status kelulusan
    /////////////////////////////
    ///
    switch rataRata {
    case 0...45:
        bobotNilai = "E"
    case 46...56:
        bobotNilai = "D"
    case 57...68:
        bobotNilai = "C"
    case 69...79:
        bobotNilai = "B"
    case 80...100:
        bobotNilai = "A"
    default:
        bobotNilai = "E"
    }
    switch percHadir {
    case 0...69:
        statusKelulusan = "Tidak Lulus       "
    default:
        statusKelulusan = "Lulus"
    }
    if statusKelulusan == "Lulus" {
        switch bobotNilai {
        case "A" , "B" , "C":
            statusKelulusan = "Lulus             "
        default:
            statusKelulusan = "Tidak Lulus       "
            }
        }
    /// Spasi untuk beberapa variable
    /// di setiap varStr, ada spasi biar sama ukurannya sama header
    /////////////////////////////
    switch kehadiran {
    case ...9:
        kehadiranStr = ("    \(String(kehadiran))      ")
    default:
        kehadiranStr = ("    \(String(kehadiran))     ")
    }
    switch percHadir {
    case ...9:
        percHadirStr = ("     \(String(percHadir))      ")
    case ...99:
        percHadirStr = ("     \(String(percHadir))     ")
    default:
        percHadirStr = ("     \(String(percHadir))    ")
    }
    switch tugas {
    case ...9:
        tugasStr = ("   \(String(tugas))     ")
    case ...99:
        tugasStr = ("   \(String(tugas))    ")
    default:
        tugasStr = ("   \(String(tugas))   ")
    }
    switch uas {
    case ...9:
        uasStr = ("   \(String(uas))    ")
    case ...99:
        uasStr = ("   \(String(uas))   ")
    default:
        uasStr = ("   \(String(uas))  ")
    }
    switch rataRata {
    case ...9:
        rataStr = ("     \(String(rataRata))       ")
    case ...99:
        rataStr = ("     \(String(rataRata))      ")
    default:
        rataStr = ("     \(String(rataRata))     ")
    }
    print("| \(x+1). | \(nama)\(spasi) |\(kehadiranStr)|\(percHadirStr)|\(tugasStr)|\(uasStr)|\(rataStr)|      \(bobotNilai)      | \(statusKelulusan)|")
    print("|----------------------\(jarakStrip)---------------------------------------------------------------------------------|")
    
    

    x += 1
}




