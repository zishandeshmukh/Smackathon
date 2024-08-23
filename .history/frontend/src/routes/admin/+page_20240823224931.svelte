<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Safeguard Admin Portal</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Add custom styles for scrollable table */
        .scrollable-table {
            max-height: 500px; /* Adjust height as needed */
            overflow-y: auto;
        }
    </style>
</head>
<body class="bg-gradient-to-r from-pink-300 via-purple-300 to-indigo-300 min-h-screen flex flex-col items-center">

    <header class="bg-pink-500 w-full py-4 shadow-lg rounded-b-lg">
        <h1 class="text-white text-3xl font-bold text-center">Safeguard Admin Portal</h1>
    </header>

    <main class="w-full max-w-6xl mt-8 flex flex-col items-center">
        <!-- Profile Section -->
        <div class="bg-white p-6 rounded-lg shadow-lg w-full max-w-md mb-6 flex items-center">
            <!-- Profile Photo -->
            <div class="w-24 h-24 bg-pink-500 rounded-full flex items-center justify-center text-white text-2xl font-bold mr-4">
                <span>J</span> <!-- Placeholder for Initial or Profile Photo -->
            </div>
            <!-- Profile Details -->
            <div class="text-gray-700 text-sm">
                <h2 class="text-2xl font-bold text-pink-500 mb-2">Officer Jane Doe</h2>
                <p><strong>Police ID:</strong> 12345</p>
                <p><strong>Post:</strong> Inspector</p>
            </div>
        </div>

        <!-- Threats Table -->
        <div class="bg-white p-6 rounded-lg shadow-lg w-full max-w-6xl">
            <h2 class="text-2xl font-bold text-pink-500 mb-4">Reported Threats</h2>

            <div class="scrollable-table">
                <table class="min-w-full bg-white rounded-lg overflow-hidden">
                    <thead>
                        <tr class="w-full bg-gray-100 text-gray-600 uppercase text-sm leading-normal">
                            <th class="py-3 px-6 text-left">Name</th>
                            <th class="py-3 px-6 text-left">Aadhar Number</th>
                            <th class="py-3 px-6 text-left">Phone Number</th>
                            <th class="py-3 px-6 text-left">Live Location</th>
                            <th class="py-3 px-6 text-left">Live Video</th>
                            <th class="py-3 px-6 text-left">Audio Recording</th>
                        </tr>
                    </thead>
                    <tbody class="text-gray-600 text-sm font-light">
                        <tr class="border-b border-gray-200 hover:bg-gray-100">
                            <td class="py-3 px-6 text-left">Jane Doe</td>
                            <td class="py-3 px-6 text-left">1234-5678-9101</td>
                            <td class="py-3 px-6 text-left">+91 9876543210</td>
                            <td class="py-3 px-6 text-left">22.5726° N, 88.3639° E</td>
                            <td class="py-3 px-6 text-left">
                                <a href="#" class="text-blue-500 hover:underline">View Live Video</a>
                            </td>
                            <td class="py-3 px-6 text-left">
                                <a href="#" class="text-blue-500 hover:underline">Listen to Audio</a>
                            </td>
                        </tr>
                        <!-- Additional rows can be added here -->
                    </tbody>
                </table>
            </div>
        </div>
    </main>

    <footer class="bg-pink-500 w-full py-2 mt-auto text-white text-center rounded-t-lg">
        © 2024 Safeguard - All Rights
