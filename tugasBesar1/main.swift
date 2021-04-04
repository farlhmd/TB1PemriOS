let namaMahasisw = ["Adi", "Budi", "Cica", "Dedi", "Essy"]
let jumKehadiran = [10, 13, 14, 9, 14]
let nilaiTugas = [75, 50, 60, 75, 80]
let nilaiUAS = [80,60,60,95,85]

class Mahasiswa {
    var nama: String
    var tugas: Int
    var uas: Int
    var kehadiran: Int
    
    init(nama: String, tugas: Int,uas: Int, kehadiran: Int) {
        self.nama = nama
        self.uas = uas
        self.tugas = tugas
        self.kehadiran = kehadiran
    }
}
var i = 0
while i < namaMahasisw.count {
    let mhs = Mahasiswa(nama: namaMahasisw[i], tugas: nilaiTugas[i], uas: nilaiUAS[i], kehadiran: jumKehadiran[i])
    let nama = mhs.nama
    let tugas = mhs.tugas
    let uas = mhs.uas
    let kehadiran = mhs.kehadiran
    let percHadir = kehadiran*100/14
    let rataRata = (tugas*4/10) + (uas*6/10)
    let bobotNilai: String
    var statusKelulusan: String

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
        statusKelulusan = "Tidak Lulus"
    default:
        statusKelulusan = "Lulus"
    }
    if statusKelulusan == "Lulus" {
        switch bobotNilai {
        case "A" , "B" , "C":
            statusKelulusan = "Lulus"
        default:
            statusKelulusan = "Tidak Lulus"
            }
        }
    print("Mahasiswa ke \(i+1)")
    print("Nama Mahasiswa: \(nama)")
//    print("Jumlah Kehadiran: \(kehadiran)")
    print("Persentase Kehadiran: \(percHadir)%")
//    print("Nilai Tugas: \(tugas)")
//    print("Nilai Uas: \(uas)")
    print("Nilai Rata-Rata: \(rataRata)")
    print("Bobot Nilai: \(bobotNilai)")
    print("Status: \(statusKelulusan) \n\n")
    i+=1
}
