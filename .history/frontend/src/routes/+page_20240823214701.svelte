<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Safeguard - Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">

    <div class="bg-white p-8 rounded-lg shadow-lg w-80">
        <h1 class="text-pink-500 text-2xl font-bold mb-4 text-center">Safeguard</h1>
        <h2 class="text-gray-600 text-xl mb-6 text-center">Login</h2>

        <div class="space-y-4">
            <button onclick="loginWithPhone()" class="w-full bg-pink-500 text-white py-2 rounded hover:bg-pink-600">
                Continue with Phone Number
            </button>
            
            <button onclick="loginWithEmail()" class="w-full bg-pink-500 text-white py-2 rounded hover:bg-pink-600">
                Continue with Email
            </button>

            <button onclick="login()" class="w-full bg-pink-500 text-white py-2 rounded hover:bg-pink-600">
                Login
            </button>
        </div>
    </div>

    <script>
        function loginWithPhone() {
            alert("Redirecting to phone number login...");
            // Implement the phone number login logic here
        }

        function loginWithEmail() {
            alert("Redirecting to email login...");
            // Implement the email login logic here
        }

        function login() {
            alert("Redirecting to login page...");
            // Implement the login logic here
        }
    </script>
    
</body>
</html>
