FactoryGirl.define do
  factory :aceh, class: Province do
    id 11
    nama "Aceh"
    nama_lengkap "Aceh"
    nama_inggris "Special Region of Aceh"
    jumlah_kursi "13"
    jumlah_penduduk "5015234"
  end

  factory :jambi, class: Province do
    id 15
    nama "Jambi"
    nama_lengkap "Jambi"
    nama_inggris "Jambi"
    jumlah_kursi "7"
    jumlah_penduduk "3532126"
  end
end