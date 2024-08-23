<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Safeguard Admin Portal</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-pink-300 via-purple-300 to-indigo-300 flex items-center justify-center h-screen p-4">

    <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-4xl">
        <!-- Profile Section -->
        <div class="flex items-center justify-center mb-6">
            <div class="flex items-center bg-pink-100 p-6 rounded-full shadow-lg">
                <img src="https://via.placeholder.com/100" alt="Profile" class="w-24 h-24 rounded-full object-cover mr-6">
                <div>
                    <h2 class="text-2xl font-bold text-pink-600">Officer Name</h2>
                    <p class="text-sm text-gray-600">Police ID: 123456</p>
                    <p class="text-sm text-gray-600">Post: Senior Officer</p>
                </div>
            </div>
        </div>

        <!-- Data Section -->
        <div class="bg-white rounded-lg p-6 shadow-md overflow-y-auto max-h-96">
            <!-- Single Entry Template -->
            <div class="mb-6 p-6 rounded-lg bg-gray-100 shadow-inner">
                <h3 class="text-xl font-bold text-gray-700 mb-4">Name: Jane Doe</h3>
                <p class="text-base text-gray-600"><strong>Aadhar Number:</strong> 1234-5678-9012</p>
                <p class="text-base text-gray-600"><strong>Phone Number:</strong> +91 9876543210</p>
                <p class="text-base text-gray-600"><strong>Live Location:</strong> 28.7041° N, 77.1025° E</p>
                <p class="text-base text-gray-600"><strong>Live Video:</strong> <a href="#" class="text-pink-600 underline">View Video</a></p>
                <p class="text-base text-gray-600"><strong>Audio Recording:</strong> <a href="#" class="text-pink-600 underline">Listen</a></p>
            </div>

            <!-- Duplicate the above block for more entries -->
            <div class="mb-6 p-6 rounded-lg bg-gray-100 shadow-inner">
                <h3 class="text-xl font-bold text-gray-700 mb-4">Name: Mary Smith</h3>
                <p class="text-base text-gray-600"><strong>Aadhar Number:</strong> 2345-6789-0123</p>
                <p class="text-base text-gray-600"><strong>Phone Number:</strong> +91 9876543211</p>
                <p class="text-base text-gray-600"><strong>Live Location:</strong> 19.0760° N, 72.8777° E</p>
                <p class="text-base text-gray-600"><strong>Live Video:</strong> <a href="#" class="text-pink-600 underline">View Video</a></p>
                <p class="text-base text-gray-600"><strong>Audio Recording:</strong> <a href="#" class="text-pink-600 underline">Listen</a></p>
            </div>

            <!-- Add more entries as needed -->
            <div class="mb-6 p-6 rounded-lg bg-gray-100 shadow-inner">
                <h3 class="text-xl font-bold text-gray-700 mb-4">Name: Alice Johnson</h3>
                <p class="text-base text-gray-600"><strong>Aadhar Number:</strong> 3456-7890-1234</p>
                <p class="text-base text-gray-600"><strong>Phone Number:</strong> +91 9876543212</p>
                <p class="text-base text-gray-600"><strong>Live Location:</strong> 12.9716° N, 77.5946° E</p>
                <p class="text-base text-gray-600"><strong>Live Video:</strong> <a href="#" class="text-pink-600 underline">View Video</a></p>
                <p class="text-base text-gray-600"><strong>Audio Recording:</strong> <a href="#" class="text-pink-600 underline">Listen</a></p>
            </div>
        </div>
    </div>
    
</body>
</html>
