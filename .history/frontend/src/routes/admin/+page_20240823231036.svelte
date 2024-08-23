<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Safeguard - Admin Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-pink-300 via-purple-300 to-indigo-300 flex items-center justify-center h-screen">

    <div class="bg-white p-10 rounded-lg shadow-2xl w-3/4 h-3/4">
        <!-- Profile Section -->
        <div class="flex items-center justify-center mb-8">
            <div class="rounded-full bg-gray-100 p-2">
                <img src="https://via.placeholder.com/100" alt="Profile Photo" class="w-24 h-24 rounded-full">
            </div>
            <div class="ml-4 text-center">
                <h2 class="text-2xl font-bold text-gray-700">Officer Name</h2>
                <p class="text-pink-500">Police ID: 123456</p>
                <p class="text-gray-600">Post: Inspector</p>
            </div>
        </div>

        <!-- Victim Information Table -->
        <div class="overflow-y-scroll h-64 border-t border-b border-gray-300 pt-4">
            <table class="w-full text-left">
                <thead>
                    <tr>
                        <th class="pb-2 text-pink-500">Name</th>
                        <th class="pb-2 text-pink-500">Aadhar Number</th>
                        <th class="pb-2 text-pink-500">Phone Number</th>
                        <th class="pb-2 text-pink-500">Live Location</th>
                        <th class="pb-2 text-pink-500">Live Video</th>
                        <th class="pb-2 text-pink-500">Audio Recording</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-gray-300">
                    <!-- Example rows -->
                    <tr>
                        <td class="py-2">Jane Doe</td>
                        <td class="py-2">1234 5678 9101</td>
                        <td class="py-2">9876543210</td>
                        <td class="py-2">Location A</td>
                        <td class="py-2"><a href="#" class="text-blue-500">View Video</a></td>
                        <td class="py-2"><a href="#" class="text-blue-500">Play Audio</a></td>
                    </tr>
                    <tr>
                        <td class="py-2">Mary Smith</td>
                        <td class="py-2">2345 6789 0123</td>
                        <td class="py-2">9876543211</td>
                        <td class="py-2">Location B</td>
                        <td class="py-2"><a href="#" class="text-blue-500">View Video</a></td>
                        <td class="py-2"><a href="#" class="text-blue-500">Play Audio</a></td>
                    </tr>
                    <!-- More rows -->
                </tbody>
            </table>
        </div>

    </div>
    
</body>
</html>
