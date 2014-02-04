FORMAT: 1A
HOST: http://www.pemiluapi.org

# Candidate API
The Candidate API is a service that provides information about candidates running for office in the 2014 Indonesian elections.

# Group Candidates
Candidates related resources of the **Candidates API**

## Candidates Collection [/caleg?apiKey={apiKey}&tahun={tahun}&lembaga={lembaga}&jenis_kelamin={jenis_kelamin}&agama={agama}&provinsi={provinsi}&dapil={dapil}&partai={partai}&nama={nama}&limit={limit}&offset={offset}]

+ Parameters
    + offset (optional, number, `300`) ... Number the offset from the beginning of the list of records to return (use in combination with `limit` to support pagination)
    + limit (optional, number, `25`) ... Number the number of records to return (use in combination with `offset` to support pagination)
    + nama (optional, string, `afzal`) ... String full or partial `nama` (name) of the candidate. Will return all matching records.
    + partai (optional, string, `1`) ... String id of the `partai` (party) that the candidate is a member of
    + dapil (optional, string, `1101-00-0000`) ... String id of the `dapil` (electoral district) that the candidate is running in.
    + provinsi (optional, string, `11`) ... String id of the `provinsi` (province) that the candidate is running in.
    + agama (optional, string, `islam`) ... String `agama` (religion) of the candidate.
    + jenis_kelamin (optional, string, `L`) ... String `jenis_kelamin` (gender) of the candidate.
    + lembaga (optional, string, `DPD`) ... String `lembaga` (legislative body) that the candidate is running for.
    + tahun (optional, number, `2014`) ... Number `tahun` (election year) that the candidate is running for.
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.

### List Candidates [GET]
+ Response 200 (application/json)

        {
            "results": {
                "count": 1,
                "total": 1,
                "caleg": [
                    {
                        "id": "1101-00-0000-0101",
                        "tahun": "2014",
                        "lembaga": "DPR",
                        "nama": "Prof. Dr. BACHTIAR ALY, MA.",
                        "jenis_kelamin": "L",
                        "agama": "ISLAM",
                        "tempat_lahir": "BANDA ACEH",
                        "tanggal_lahir": "1949-12-21",
                        "status_perkawinan": "KAWIN",
                        "nama_pasangan": "Hj. Rr. INDRIJATI INAWANGSIH, SE",
                        "jumlah_anak": 2,
                        "kelurahan_tinggal": "PAMULANG TIMUR",
                        "kecamatan_tinggal": "PAMULANG",
                        "kab_kota_tinggal": "KOTA TANGERANG SELATAN",
                        "provinsi_tinggal": "BANTEN",
                        "riwayat_pendidikan": [
                            {
                               "ringkasan": "1957-1963, SD, SEKOLAH RAKYAT NEGERI, ACEH"
                            },
                            {
                                "ringkasan": "1963-1966, SLTP, SMP NEGERI 1, BANDA ACEH",
                            },
                            {
                                "ringkasan": "1963-1966 SLTP I NEGERI 1 BANDA ACEH",
                            },
                            {
                                "ringkasan": "1966-1967, SMA NEGERI I BANDA ACEH",
                            },
                            {
                                "ringkasan": "1967-1968, SLTA, SMA YPU, BANDUNG",
                            },
                            {
                                "ringkasan": "1969-1971, FAKULTAS PUBLISTIK UNIVERSITAS PADJAJARAN, BANDUNG",
                            },
                            {
                                "ringkasan": "1972-1984 STUDI ILMU KOMUNIKASI, ILMU POLITIK DAN SOSIOLOGI, WESTFAELISCHE - WILHELMS-UNIVERSITAET, MUENSTER, REP. FEDERAL JERMAN",
                            },
                            {
                                "ringkasan": "1983 S3, DR. PHIL. UNIVERSITAET, MUENSTER, REP. FEDERAL JERMAN"
                            }
                        ],
                        "riwayat_pekerjaan": [
                            {
                                "ringkasan": "1998-1998, FKP DPR RI, ANGGOTA TIM AHLI, JAKARTA",
                            },
                            {
                                "ringkasan": "1998-1998, MPR RI, TIM AHLI, JAKARTA",
                            },
                            {
                                "ringkasan": "2000-2005, TIM PENASEHAT PRESIDEN URUSAN ACEH ANGGOTA, JAKARTA",
                            },
                            {
                                "ringkasan": "2000-2002, KEMENTRIAN POLKAM, PENASEHAT, JAKARTA",
                            },
                            {
                                "ringkasan": "2005-2007, PEMERINTAHAN, TIM AHLI DPR RI, JAKARTA",
                            },
                            {
                                "ringkasan": "2002-2005, PEMERINTAHAN, DUTA BESAR MESIR, MESIR"
                            }
                        ],
                        "riwayat_organisasi": [
                            {
                                "ringkasan": "2013-SEKARANG, PARTAI NASDEM, KETUA DEWAN PAKAR DPP PARTAI NASDEM, JAKARTA",
                            },
                            {
                                "ringkasan": "2010-SEKARANG, ORMAS NASIONAL DEMOKRAT, ANGGOTA DEWAN PERTIMBANGAN, JAKARTA",
                            },
                            {
                                "ringkasan": "2007-SEKARANG, PENGURUS FORUM DUTA BESAR RI, JAKARTA",
                            },
                            {
                                "ringkasan": "2009-2013, FISIP UI, KETUA DEWAN GURU BESAR JAKARTA",
                            },
                            {
                                "ringkasan": "2010-2013, KOMITE PROFESOR UNTUK PERPUSTAKAAN UI, KETUA, JAKARTA",
                            },
                            {
                                "ringkasan": "2011-2014, PERHIMPUNAN ALUMNI JERMAN, WAKIL KETUA DEWAN KEHORMATAN"
                            }
                        ],
                        "provinsi": {
                            "id": "11",
                            "nama": "ACEH"
                        },
                        "dapil": {
                            "id": "1101-00-0000",
                            "nama": "ACEH I"
                        },
                        "partai": {
                            "id": "1",
                            "nama": "PARTAI NasDem"
                        },
                        "urutan": "1",
                        "foto_url": "http://dct.kpu.go.id/images/foto/DPR/1101.%20ACEH%20I/01.%20NASDEM/01.%20PROF.%20DR.%20BACHTIAR%20ALY%2C%20MA.jpg"
                    }
                ]
            }
        }

## Candidates [/caleg/{id}?apiKey={apiKey}]
A single Candidates object with all its details

+ Parameters
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.
    + id (required, string, `1101-00-0000-0101`) ... String `id` of the Candidate to perform action with.

### Retrieve a Candidate [GET]
+ Response 200 (application/json)

        {
            "results": {
                "count": 1,
                "total": 1,
                "caleg": [
                    {
                        "id": "1101-00-0000-0101",
                        "tahun": "2014",
                        "lembaga": "DPR",
                        "nama": "Prof. Dr. BACHTIAR ALY, MA.",
                        "jenis_kelamin": "L",
                        "agama": "ISLAM",
                        "tempat_lahir": "BANDA ACEH",
                        "tanggal_lahir": "1949-12-21",
                        "status_perkawinan": "KAWIN",
                        "nama_pasangan": "Hj. Rr. INDRIJATI INAWANGSIH, SE",
                        "jumlah_anak": 2,
                        "kelurahan_tinggal": "PAMULANG TIMUR",
                        "kecamatan_tinggal": "PAMULANG",
                        "kab_kota_tinggal": "KOTA TANGERANG SELATAN",
                        "provinsi_tinggal": "BANTEN",
                        "riwayat_pendidikan": [
                            {
                               "ringkasan": "1957-1963, SD, SEKOLAH RAKYAT NEGERI, ACEH"
                            },
                            {
                                "ringkasan": "1963-1966, SLTP, SMP NEGERI 1, BANDA ACEH",
                            },
                            {
                                "ringkasan": "1963-1966 SLTP I NEGERI 1 BANDA ACEH",
                            },
                            {
                                "ringkasan": "1966-1967, SMA NEGERI I BANDA ACEH",
                            },
                            {
                                "ringkasan": "1967-1968, SLTA, SMA YPU, BANDUNG",
                            },
                            {
                                "ringkasan": "1969-1971, FAKULTAS PUBLISTIK UNIVERSITAS PADJAJARAN, BANDUNG",
                            },
                            {
                                "ringkasan": "1972-1984 STUDI ILMU KOMUNIKASI, ILMU POLITIK DAN SOSIOLOGI, WESTFAELISCHE - WILHELMS-UNIVERSITAET, MUENSTER, REP. FEDERAL JERMAN",
                            },
                            {
                                "ringkasan": "1983 S3, DR. PHIL. UNIVERSITAET, MUENSTER, REP. FEDERAL JERMAN"
                            }
                        ],
                        "riwayat_pekerjaan": [
                            {
                                "ringkasan": "1998-1998, FKP DPR RI, ANGGOTA TIM AHLI, JAKARTA",
                            },
                            {
                                "ringkasan": "1998-1998, MPR RI, TIM AHLI, JAKARTA",
                            },
                            {
                                "ringkasan": "2000-2005, TIM PENASEHAT PRESIDEN URUSAN ACEH ANGGOTA, JAKARTA",
                            },
                            {
                                "ringkasan": "2000-2002, KEMENTRIAN POLKAM, PENASEHAT, JAKARTA",
                            },
                            {
                                "ringkasan": "2005-2007, PEMERINTAHAN, TIM AHLI DPR RI, JAKARTA",
                            },
                            {
                                "ringkasan": "2002-2005, PEMERINTAHAN, DUTA BESAR MESIR, MESIR"
                            }
                        ],
                        "riwayat_organisasi": [
                            {
                                "ringkasan": "2013-SEKARANG, PARTAI NASDEM, KETUA DEWAN PAKAR DPP PARTAI NASDEM, JAKARTA",
                            },
                            {
                                "ringkasan": "2010-SEKARANG, ORMAS NASIONAL DEMOKRAT, ANGGOTA DEWAN PERTIMBANGAN, JAKARTA",
                            },
                            {
                                "ringkasan": "2007-SEKARANG, PENGURUS FORUM DUTA BESAR RI, JAKARTA",
                            },
                            {
                                "ringkasan": "2009-2013, FISIP UI, KETUA DEWAN GURU BESAR JAKARTA",
                            },
                            {
                                "ringkasan": "2010-2013, KOMITE PROFESOR UNTUK PERPUSTAKAAN UI, KETUA, JAKARTA",
                            },
                            {
                                "ringkasan": "2011-2014, PERHIMPUNAN ALUMNI JERMAN, WAKIL KETUA DEWAN KEHORMATAN"
                            }
                        ],
                        "provinsi": {
                            "id": "11",
                            "nama": "ACEH"
                        },
                        "dapil": {
                            "id": "1101-00-0000",
                            "nama": "ACEH I"
                        },
                        "partai": {
                            "id": "1",
                            "nama": "PARTAI NasDem"
                        },
                        "urutan": "1",
                        "foto_url": "http://dct.kpu.go.id/images/foto/DPR/1101.%20ACEH%20I/01.%20NASDEM/01.%20PROF.%20DR.%20BACHTIAR%20ALY%2C%20MA.jpg"
                    }
                ]
            }
        }


# Group Parties
Parties related resources of the **Candidates API**

## Parties Collection [/partai?apiKey={apiKey}]

+ Parameters
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.

### List all Parties [GET]
+ Response 200 (application/json)

        {
            "results": {
                "count": 3,
                "partai": [
                    {
                        "id": "1",
                        "nama": "Partai NasDem",
                        "nama_lengkap": "Partai NasDem",
                        "url_situs": "http://www.partainasdem.org/",
                        "url_facebook": "https://www.facebook.com/pages/Partai-Nasdem/135724689838285",
                        "url_twitter": "https://twitter.com/NasDem"
                    },
                    {
                        "id": "2",
                        "nama": "PKB",
                        "nama_lengkap": "Partai Kebangkitan Bangsa",
                        "url_situs": "http://www.dpp.pkb.or.id/",
                        "url_facebook": "https://www.facebook.com/pages/DPP-PKB/167600963307010",
                        "url_twitter": "https://twitter.com/PKB_News_Online"
                    },
                    {
                        "id": "3",
                        "nama": "PKS",
                        "nama_lengkap": "Partai Keadilan Sejahtera",
                        "url_situs": "http://www.pks.or.id/",
                        "url_facebook": "https://www.facebook.com/HumasPartaiKeadilanSejahtera",
                        "url_twitter": "https://twitter.com/PKSejahtera"
                    }
                ]
            }
        }

## Parties [/partai/{id}?apiKey={apiKey}]
A single Parties object with all its details

+ Parameters
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.
    + id (required, string, `3`) ... String `id` of the Party to perform action with.

### Retrieve a Party [GET]
+ Response 200 (application/json)

        {
            "results": {
                "count": 1,
                "partai": [
                    {
                        "id": "3",
                        "nama": "PKS",
                        "nama_lengkap": "Partai Keadilan Sejahtera",
                        "url_situs": "http://www.pks.or.id/",
                        "url_facebook": "https://www.facebook.com/HumasPartaiKeadilanSejahtera",
                        "url_twitter": "https://twitter.com/PKSejahtera"
                    }
                ]
            }
        }


# Group Provinces
Provinces related resources of the **Candidates API**

## Provinces Collection [/provinsi?apiKey={apiKey}]

+ Parameters
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.

### List all Provinces [GET]
+ Response 200 (application/json)

        {
            "results": {
                "count": 2,
                "provinsi": [
                    {
                        "id": "11",
                        "nama": "Aceh",
                        "nama_lengkap": "Aceh",
                        "nama_inggris": "Special Region of Aceh",
                        "jumlah_kursi": 13,
                        "jumlah_penduduk": 5015234
                    },
                    {
                        "id": "12",
                        "nama": "Sumut",
                        "nama_lengkap": "Sumatera Utara",
                        "nama_inggris": "North Sumatra",
                        "jumlah_kursi": 30,
                        "jumlah_penduduk": 15227719
                    }
                ]
            }
        }


# Group Electoral Districts
Electoral Districts related resources of the **Candidates API**

## Electoral Districts Collection [/dapil?apiKey={apiKey}&provinsi={provinsi}&nama_lembaga={nama_lembaga}]

+ Parameters
    + nama_lembaga (optional, string, `DPRDI`) ... String `nama_lembaga` (name of the body) to filter the districts by.
    + provinsi (optional, string, `11`) ... String id of the `provinsi` (province) to filter the districts by.
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.

### List all Electoral Districts [GET]
+ Response 200 (application/json)

        {
            "results": {
                "count": 6,
                "dapil": [
                    {
                        "id": "1101-00-0000",
                        "nama": "Aceh I",
                        "nama_lengkap": "Aceh I",
                        "nama_lembaga": "DPR",
                        "jumlah_kursi": 7,
                        "jumlah_penduduk": 2642760,
                        "provinsi": {
                            "id": "11",
                            "nama": "Aceh"
                        }
                    },
                    {
                        "id": "1100-01-0000",
                        "nama": "Aceh 1",
                        "nama_lengkap": "Aceh 1",
                        "nama_lembaga": "DPRDI",
                        "jumlah_kursi": 11,
                        "jumlah_penduduk": 0,
                        "provinsi": {
                            "id": "11",
                            "nama": "Aceh"
                        }
                    },
                    {
                        "id": "1100-01-0101",
                        "nama": "Aceh Besar 1",
                        "nama_lengkap": "Aceh Besar 1",
                        "nama_lembaga": "DPRDII",
                        "jumlah_kursi": 7,
                        "jumlah_penduduk": 0,
                        "provinsi": {
                            "id": "11",
                            "nama": "Aceh"
                        }
                    },
                    {
                        "id": "1201-00-0000",
                        "nama": "Sumut I",
                        "nama_lengkap": "Sumatera Utara I",
                        "nama_lembaga": "DPR",
                        "jumlah_kursi": 10,
                        "jumlah_penduduk": 2686316,
                        "provinsi": {
                            "id": "12",
                            "nama": "Sumut"
                        }
                    },
                    {
                        "id": "1200-01-0000",
                        "nama": "Sumut 1",
                        "nama_lengkap": "Sumatera Utara 1",
                        "nama_lembaga": "DPRDI",
                        "jumlah_kursi": 10,
                        "jumlah_penduduk": 0,
                        "provinsi": {
                            "id": "12",
                            "nama": "Sumut"
                        }
                    },
                    {
                        "id": "1200-01-0101",
                        "nama": "Kota Medan 1",
                        "nama_lengkap": "Kota Medan 1",
                        "nama_lembaga": "DPRDII",
                        "jumlah_kursi": 11,
                        "jumlah_penduduk": 0,
                        "provinsi": {
                            "id": "12",
                            "nama": "Sumut"
                        }
                    }
                ]
            }
        }

## Electoral Districts [/dapil/{id}?apiKey={apiKey}]
A single Electoral District object with all its details

+ Parameters
    + apiKey (required, string, `06ec082d057daa3d310b27483cc3962e`) ... String `apiKey` of the application.
    + id (required, string, `1101-00-0000`) ... String `id` of the Electoral District to perform action with.

### Retrieve an Electoral District [GET]
+ Response 200 (application/json)

        {
            "results": {
                "count": 1,
                "dapil": [
                    {
                        "id": "1101-00-0000",
                        "nama": "Aceh I",
                        "nama_lengkap": "Aceh I",
                        "nama_lembaga": "DPR",
                        "jumlah_kursi": 7,
                        "jumlah_penduduk": 2642760,
                        "provinsi": {
                            "id": "11",
                            "nama": "Aceh"
                        }
                    }
                ]
            }
        }

