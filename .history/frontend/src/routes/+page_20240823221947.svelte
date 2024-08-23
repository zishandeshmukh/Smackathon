<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Safeguard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-pink-300 via-purple-300 to-indigo-300 flex items-center justify-center h-screen">

    <div class="bg-white p-8 rounded-lg shadow-lg w-80">
        <h1 class="text-pink-500 text-2xl font-bold mb-4 text-center">Safeguard</h1>

        <form action="#" method="POST" class="space-y-4">
            
            <!-- Option Buttons for Login and Sign Up -->
            <div class="flex justify-around mb-4">
                <button type="button" class="w-1/2  text-white py-1 mx-2 rounded-full hover:bg-pink-600">
                    Login
                </button>
                <button type="button" class="w-1/2 bg-pink-500 text-white py-1 mx-2 rounded-full hover:bg-pink-600">
                    Sign Up
                </button>
            </div>

            <div>
                <label for="phone" class="block text-sm font-medium text-gray-700">Phone Number</label>
                <input type="text" id="phone" name="phone" placeholder="Enter your phone number" 
                       class="mt-1 block w-full px-3 py-2 bg-gray-50 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-pink-500 focus:border-pink-500 sm:text-sm">
            </div>
            
            <div>
                <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" 
                       class="mt-1 block w-full px-3 py-2 bg-gray-50 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-pink-500 focus:border-pink-500 sm:text-sm">
            </div>

            <div>
                <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" 
                       class="mt-1 block w-full px-3 py-2 bg-gray-50 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-pink-400 focus:border-pink-500 sm:text-sm">
            </div>

            <div class="flex justify-center items-center">
                <button type="submit" class="m-3 w-full bg-pink-500 text-white py-1 rounded-full hover:bg-pink-600">
                    Login
                </button>
            </div>
        </form>
    </div>
    
</body>
</html>
