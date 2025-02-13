const {exec} = require('child_process');

// Fungsi untuk menjalankan perintah Dart
function runDartTest() {
    // Menyusun perintah yang akan dieksekusi
    const command = `dart test test/exam_test_2.dart -r json`;
    // const command = `dart --version`;

    exec(command, (error, stdout, stderr) => {
        if (error) {
            console.error(`Error eksekusi perintah: ${error.message}`);
            return;
        }
        if (stderr) {
            console.error(`Error stderr: ${stderr}`);
            return;
        }

        try {
            // Memisahkan output menjadi array berdasarkan baris
            const lines = stdout.trim().split('\n');

            // Memproses setiap baris sebagai objek JSON
            const results = lines.map(line => JSON.parse(line));
            console.log("Hasil JSON:", results);
        } catch (parseError) {
            console.error("Error parsing JSON:", parseError.message);
        }
    });
}

// Menjalankan fungsi dengan nama yang diinginkan
runDartTest();
