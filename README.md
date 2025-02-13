# Mlaku-Mulu Backend

## Framework & Technologies Used

<table>
  <tr>
    <td align="center">
      <a href="PLACEHOLDER_NESTJS_LINK">
        <img src="https://static-00.iconduck.com/assets.00/nestjs-icon-1024x1020-34exj0g6.png" width="80px" alt="NestJS"/>
      </a>
    </td>
    <td align="center">
      <a href="PLACEHOLDER_TYPESCRIPT_LINK">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Typescript_logo_2020.svg/2048px-Typescript_logo_2020.svg.png" width="80px" alt="TypeScript"/>
      </a>
    </td>
    <td align="center">
      <a href="PLACEHOLDER_NEONPOSTGREST_LINK">
        <img src="https://2023.allthingsopen.org/wp-content/uploads/2023/07/Presenting_Neon.jpg" width="80px" alt="Neon Postgres"/>
      </a>
    </td>
  </tr>
  <tr>
    <td align="center">
      <a href="PLACEHOLDER_AZURE_LINK">
        <img src="https://swimburger.net/media/ppnn3pcl/azure.png" width="80px" alt="Azure"/>
      </a>
    </td>
    <td align="center">
      <a href="PLACEHOLDER_PRISMA_LINK">
        <img src="https://images.seeklogo.com/logo-png/44/2/prisma-logo-png_seeklogo-441035.png" width="80px" alt="Prisma"/>
      </a>
    </td>
    <td align="center">
      <a href="PLACEHOLDER_TWILIO_LINK">
        <img src="https://upload.wikimedia.org/wikipedia/commons/c/c0/Twilio_logo.png" width="80px" alt="Twilio"/>
      </a>
    </td>
  </tr>
</table>


## Database Schema

### **Models**
1. **User**: 
   - Memiliki 2 role: `pegawai` dan `turis`
   - Role dibedakan dengan Guards sebagai user authorization
2. **Trip**:
   - Dapat dimiliki oleh banyak turis
   - Memiliki relasi ke tabel User

## Additional Features
1. **Validating Layer**: Mencegah turis memesan trip yang bertabrakan dari segi waktu dan destinasi. [Source Code](https://github.com/Radiit/mlaku-mulu/blob/master/src/trips/trips.service.ts)
2. **Validation Link via WhatsApp**: Saat registrasi, user menerima link validasi melalui WhatsApp. [Source Code](https://github.com/Radiit/mlaku-mulu/tree/feat/impl-wa-verif)
3. **WhatsApp Notifications**: Pengguna menerima notifikasi saat destinasi trip diperbarui. [Source Code](https://github.com/Radiit/mlaku-mulu/tree/feat/notif-wa)
4. **JWT Implementation**: Menggunakan JWT sebagai autentikasi user. [Source Code](https://github.com/Radiit/mlaku-mulu/tree/feat/auth-jwt)

## Dummy User

| Email | Password | Role |
|----------------------|------------|---------|
| emailbaru@pegawai.com | password123 | pegawai |
| turis@example.com | password123 | turis |

## API Documentation
- **Postman Collection & Environment**: [Drive Link](https://drive.google.com/drive/folders/1FR37I5XZ-UpHYYZDkUgHUbX6lCqzND12?usp=sharing)
- **Postman Documentation**: [View Documentation](https://documenter.getpostman.com/view/39299483/2sAYXCjJCN)

## Running Locally

Untuk menjalankan proyek secara lokal, ikuti langkah-langkah berikut:

### **1. Clone repository**
```bash
 git clone <repository-url>
 cd mlaku-mulu-backend
```

### **2. Install dependencies**
```bash
 npm install
```

### **3. Buat file `.env` pada root directory dengan konfigurasi berikut:**
```
DATABASE_URL={DB LINK}
JWT_SECRET={Random token}
PORT=3000

TWILIO_ACCOUNT_SID={YOUR_SID}
TWILIO_AUTH_TOKEN={YOUR_AUTH}
TWILIO_WHATSAPP_NUMBER=+14155238886
APP_URL=http://localhost:3000
```
> **Note:** Ganti `DATABASE_URL` dan kredensial Twilio sesuai dengan kepemilikanmu.

### **4. Run Server**
```bash
 npm run start
```

Server akan berjalan di `http://localhost:3000`. 🚀

## Future Development
1. **Deepseek Integration**: Implementasi AI auto booking untuk memberikan rekomendasi otomatis bagi user.
2. **Firebase Integration**: Opsi sign-in menggunakan akun Google untuk mempermudah autentikasi.
3. **API Weather Integration**: Menyediakan informasi cuaca di hari destinasi guna membantu user dalam perencanaan trip mereka.
