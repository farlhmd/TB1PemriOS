let namaMahasiswaFarhan = ["Adi", "Budi", "Cica", "Dedi", "Essy", "Farhan", "Ilhamdi"]
let jumKehadiranFarhan = [10, 13, 14, 9 , 14, 14, 3]
let nilaiTugasFarhan = [75, 50, 60, 75, 80, 100, 55]
let nilaiUASFarhan = [80,60,60,95,85, 100, 79]
let judulFarhan =  " Nama"

///cari nama terpanjang buat mastiin panjang kolom nama
var terbesarFarhan = 0
var iFarhan = 0
while iFarhan < namaMahasiswaFarhan.count-1 {
    if namaMahasiswaFarhan[iFarhan].count < namaMahasiswaFarhan[iFarhan+1].count{
        terbesarFarhan = namaMahasiswaFarhan[iFarhan+1].count
    }
    else{
        terbesarFarhan = namaMahasiswaFarhan[iFarhan].count
    }
    iFarhan += 1
}

///biar kolom nama sejalan
var nFarhan = 0
let selisihFarhan = terbesarFarhan - judulFarhan.count
var jarakSpasiFarhan = ""
var jarakStripFarhan = ""
while nFarhan < selisihFarhan + 2 {
    
    jarakSpasiFarhan = jarakSpasiFarhan + " "
    jarakStripFarhan = jarakStripFarhan + "-"
    nFarhan += 1
    
}

            ////////////////////////////////
            ///Header Table
            ////////////////////////////////

func headerFarhan(){
    print("|----------------------\(jarakStripFarhan)---------------------------------------------------------------------------------|")
    print("| No.| Nama\(jarakSpasiFarhan) | Kehadiran | Persentase |  Tugas  |   UAS  |  Rata-Rata  | Bobot Nilai | Status Kelulusan  |")
    print("|----------------------\(jarakStripFarhan)---------------------------------------------------------------------------------|")
}
            ////////////////////////////////
            ///ngerubah nama yang kurang dari nama terpanjang
            ////////////////////////////////
headerFarhan()
var xFarhan = 0
while xFarhan < namaMahasiswaFarhan.count {
    let namaFarhan = namaMahasiswaFarhan[xFarhan]
    let tugasFarhan = nilaiTugasFarhan[xFarhan]
    var tugasStrFarhan = ""
    let uasFarhan = nilaiUASFarhan[xFarhan]
    var uasStrFarhan = ""
    let kehadiranFarhan = jumKehadiranFarhan[xFarhan]
    var kehadiranStrFarhan = ""
    let percHadirFarhan = kehadiranFarhan*100/14
    var percHadirStrFarhan = ""
    let rataRataFarhan = (tugasFarhan*4/10) + (uasFarhan*6/10)
    var rataStrFarhan = ""
    var bobotNilaiFarhan = ""
    var statusKelulusanFarhan = ""
    var spasiFarhan = ""
    let selisihJumlahNamaFarhan = terbesarFarhan - namaMahasiswaFarhan[xFarhan].count
    
    /////////////////////////////
    /// Spasi untuk Header
    /////////////////////////////
    var yFarhan = 0
    while yFarhan <= selisihJumlahNamaFarhan {
        spasiFarhan = spasiFarhan + " "
        yFarhan += 1
    }
    
    /////////////////////////////
    /// Bobot nilai dan status kelulusan
    /////////////////////////////
    ///
    switch rataRataFarhan {
    case 0...45:
        bobotNilaiFarhan = "E"
    case 46...56:
        bobotNilaiFarhan = "D"
    case 57...68:
        bobotNilaiFarhan = "C"
    case 69...79:
        bobotNilaiFarhan = "B"
    case 80...100:
        bobotNilaiFarhan = "A"
    default:
        bobotNilaiFarhan = "E"
    }
    switch percHadirFarhan {
    case 0...69:
        statusKelulusanFarhan = "Tidak Lulus       "
    default:
        statusKelulusanFarhan = "Lulus"
    }
    if statusKelulusanFarhan == "Lulus" {
        switch bobotNilaiFarhan {
        case "A" , "B" , "C":
            statusKelulusanFarhan = "Lulus             "
        default:
            statusKelulusanFarhan = "Tidak Lulus       "
            }
        }
    /// Spasi untuk beberapa variable
    /// di setiap varStr, ada spasi biar sama ukurannya sama header
    /////////////////////////////
    switch kehadiranFarhan {
    case ...9:
        kehadiranStrFarhan = ("    \(String(kehadiranFarhan))      ")
    default:
        kehadiranStrFarhan = ("    \(String(kehadiranFarhan))     ")
    }
    switch percHadirFarhan {
    case ...9:
        percHadirStrFarhan = ("     \(String(percHadirFarhan))      ")
    case ...99:
        percHadirStrFarhan = ("     \(String(percHadirFarhan))     ")
    default:
        percHadirStrFarhan = ("     \(String(percHadirFarhan))    ")
    }
    switch tugasFarhan {
    case ...9:
        tugasStrFarhan = ("   \(String(tugasFarhan))     ")
    case ...99:
        tugasStrFarhan = ("   \(String(tugasFarhan))    ")
    default:
        tugasStrFarhan = ("   \(String(tugasFarhan))   ")
    }
    switch uasFarhan {
    case ...9:
        uasStrFarhan = ("   \(String(uasFarhan))    ")
    case ...99:
        uasStrFarhan = ("   \(String(uasFarhan))   ")
    default:
        uasStrFarhan = ("   \(String(uasFarhan))  ")
    }
    switch rataRataFarhan {
    case ...9:
        rataStrFarhan = ("     \(String(rataRataFarhan))       ")
    case ...99:
        rataStrFarhan = ("     \(String(rataRataFarhan))      ")
    default:
        rataStrFarhan = ("     \(String(rataRataFarhan))     ")
    }
    print("| \(xFarhan+1). | \(namaFarhan)\(spasiFarhan) |\(kehadiranStrFarhan)|\(percHadirStrFarhan)|\(tugasStrFarhan)|\(uasStrFarhan)|\(rataStrFarhan)|      \(bobotNilaiFarhan)      | \(statusKelulusanFarhan)|")
    print("|----------------------\(jarakStripFarhan)---------------------------------------------------------------------------------|")
    
    

    xFarhan += 1
}
