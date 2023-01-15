const { response } = require('express')
const express = require('express')
const app = express()

const con = require('./database')

const md5 = require('md5')
const crypto = require('crypto')

const PORT = 8080
app.use(express.json())

app.listen(PORT, () => {
    console.log(`Server is up on http://localhost:${PORT}`);
})

//Login

app.post('/loginUser', (req, res) => {
    const username = req.body.username
    const password = md5(req.body.password)

    con.query("SELECT * FROM users WHERE username = ? and password = ?", [username, password], (err, row, fields) => {
        if (err) {
            console.log("gagal login: ", err);
        } else {
            console.log("API login berjalan");
            response.statusCode = 200
            res.send(row)
        }
    })
})

//Register
function generateUUID() {
    return crypto.randomBytes(16).toString('hex');
}

app.post('/registerUser', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    const id = generateUUID()
    const username = req.body.username
    const password = req.body.password
    const email = req.body.email
    const role = req.body.role
    const nama = req.body.nama
    const usia = req.body.usia
    const tgl_lahir = req.body.tgl_lahir
    const alamat = req.body.alamat
    const kota = req.body.kota
    const no_kontak = req.body.no_kontak

    con.query("INSERT INTO users (id_user, username, password, email, role, nama, usia, tgl_lahir, alamat, kota, no_kontak, status_login, connect_id) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", [id, username, md5(password), email, role, nama, usia, tgl_lahir, alamat, kota, no_kontak, "off", ""], (err, row, fields) => {
        if (err) {
            console.log("gagal menambah dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

//Get All Users
app.get('/getAllUser', (req, res) => {
    res.header('Access-Control-Allow-Origin', '*');
    con.query("SELECT * FROM users", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data: ", row);
            response.statusCode = 200
            res.send(row)
        }
    })
})

//Get User by ID
app.get('/getUserById/:id', (req, res) => {
    const id = req.params.id
    con.query("SELECT * FROM users WHERE id_user = ?", [id], (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data");
            response.statusCode = 200
            res.send(row)
        }
    })
})

//Get User by Role
app.get('/getUserByRole/:role', (req, res) => {
    const role = req.params.role
    con.query("SELECT * FROM users WHERE role = ?", [role], (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data");
            response.statusCode = 200
            res.send(row)
        }
    })
})

//Get Nama by ID
app.get('/getNamaUserById/:id', (req, res) => {
    const id = req.params.id
    con.query("SELECT nama FROM users WHERE id_user = ?", [id], (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data");
            response.statusCode = 200
            res.send(row)
        }
    })
})

//Update User
app.post('/updateUser/:id', (req, res) => {
    const id = req.params.id
    const username = req.body.username
    const password = req.body.password
    const email = req.body.email
    const nama = req.body.nama
    const alamat = req.body.alamat
    const kota = req.body.kota
    const no_kontak = req.body.no_kontak
    const tgl_lahir = req.body.tgl_lahir
    const usia = req.body.usia

    con.query("UPDATE users SET username=?, password=?, email=?, nama=?, alamat=?, kota=?, no_kontak=?, tgl_lahir=?, usia=? WHERE id_user=?", [username, md5(password), email, nama, alamat, kota, no_kontak, tgl_lahir, usia, id], (err, row, fields) => {
        if (err) {
            console.log("gagal update dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

//Delete User
app.post('/deleteUser/:id', (req, res) => {
    const id = req.params.id

    con.query("DELETE FROM users WHERE id_user = ?", [id], (err, row, fields) => {
        if (err) {
            console.log("gagal menghapus dengan error: ", );
            
        } else {
            res.send(row)
        }
    })
})

//Get Catatan by ID
app.get('/getCatatanById/:id', (req, res) => {
    const id = req.params.id
    con.query("SELECT * FROM catatan_konsultasi WHERE id_pasien = ?", [id], (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data");
            response.statusCode = 200
            res.send(row)
        }
    })
})

//Get Chat by 2 ID
app.get('/getChat/:id1/:id2', (req, res) => {
    const id1 = req.params.id1
    const id2 = req.params.id2
    con.query("SELECT * FROM chat WHERE id_awal = ? AND id_tujuan = ? ORDER BY tgl_waktu_chat DESC", [id1, id2], (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data");
            response.statusCode = 200
            res.send(row)
        }
    })
})

//Get All Informasi
app.get('/getInformasi', (req, res) => {
    con.query("SELECT * FROM informasi", (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data");
            response.statusCode = 200
            res.send(row)
        }
    })
})

//Get Informasi by ID
app.get('/getInformasiById/:id', (req, res) => {
    const id = req.params.id
    con.query("SELECT * FROM informasi WHERE id_informasi = ?", [id], (err, row, fields) => {
        if (err) {
            console.log("gagal mendapatkan data dengan error: ", err);
        } else {
            console.log("berhasil mendapatkan data");
            response.statusCode = 200
            res.send(row)
        }
    })
})

//Update Informasi
app.post('/updateInformasi/:id', (req, res) => {
    const id_informasi = req.params.id
    const judul = req.body.judul
    const source = req.body.source
    const tgl_pembuatan = req.body.tgl_pembuatan
    const isi = req.body.isi

    con.query("UPDATE informasi SET judul=?, source=?, tgl_pembuatan=?, isi=? WHERE id_informasi=?", [judul, source, tgl_pembuatan, isi, id_informasi], (err, row, fields) => {
        if (err) {
            console.log("gagal update dengan error: ", err);
        } else {
            res.send(row)
        }
    })
})

//Delete Informasi
app.post('/deleteInformasi/:id', (req, res) => {
    const id = req.params.id

    con.query("DELETE FROM informasi WHERE id_informasi = ?", [id], (err, row, fields) => {
        if (err) {
            console.log("gagal menghapus dengan error: ", );
            
        } else {
            res.send(row)
        }
    })
})