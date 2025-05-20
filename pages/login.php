<?php
include "../koneksi.php";
session_start();

$error = "";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    //tangkap input form
    $username = $_POST['username'];
    $password = $_POST['password'];

    //cek ke database
    $query = "SELECT * FROM tbl_user WHERE username='$username' AND password='$password'";
    
    //eksekusi
    $result = mysqli_query($koneksi, $query);

    //periksa hasil
    if ($result->num_rows > 0) {
        header('Location: dashboard.php');
    } else{
        echo "Login Gagal. Username atau Password salah.";
    }
}
?>

<!doctype html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>SMK Informatika Pesat IT XPro</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/png" href="../assets/img/logo-xpro.png">
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Work+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
  </head>
  <body class="bg-gray-100 font-[inter] flex flex-col justify-center items-center min-h-screen">
  
  <div class="flex-1 flex flex-col justify-center items-center gap-7 py-34 bg-linear-to-r from-orange-600 to-amber-500 h-screen w-full">
    <h1 class="text-6xl text-white font-bold">SMK Informatika Pesat IT XPro</h1>
    </div>
    
    <div class="flex-1 mx-50 -top-25 relative flex flex-col gap-10">
      <div class="w-full px-10 rounded-xl hidden">
      <img src="../assets/img/logo-xpro.png" alt="" class="w-50">
      </div>
      <div class="flex flex-col gap-10 w-150 bg-white shadow-xl border border-gray-200 rounded-xl p-15">
        <div class="flex flex-col gap-3">
        <h2 class="text-4xl font-bold text-orange-500">
          Welcome Back!
        </h2>
        <p class="text-gray-500 font-semibold text-md">
          Log in to your account.
        </p>
        </div>
        <form action="" method="POST" class="flex flex-col gap-3">
          <label for="" class="text-black font-semibold text-md">Username</label>
          <input type="text" name="username" class="w-full border border-gray-500 p-2  rounded-lg" required>
          <label for="" class="text-black font-semibold text-md">Password</label>
          <input type="text" name="password" class="w-full border border-gray-500 p-2  rounded-lg" required>
          <input type="submit" value="Login" class="w-full bg-linear-to-r from-orange-500 to-amber-500 hover:bg-linear-to-r hover:from-orange-600 hover:to-orange-500 px-5 py-2 rounded-lg text-white outline hover:outline font-semibold transition">
        </form> 
      </div>
      <h6 class="text-center text-sm text-gray-500 font-semibold">
        Don't have an account yet? <a href="register.php" class="font-bold bg-linear-to-r from-orange-600 to-amber-500 text-transparent bg-clip-text">Sign Up</a>
      </h6>
    </div>
  </body>
</html>


