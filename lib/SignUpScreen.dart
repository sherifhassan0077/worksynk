import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: SingleChildScrollView(
        // علشان الصفحة ما تعملش overflow لو الكيبورد فتح
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              // الصورة بالأعلى
              Center(
                child: Image.asset(
                  "D:/worksynk-main/lib/Image/worksynk.png", // ضع اسم الصورة هنا
                  height: 120,
                ),
              ),
              const SizedBox(height: 30),

              const TextField(
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              const TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              const TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text("Create Account"),
              ),
              const SizedBox(height: 10),

              TextButton(
                onPressed: () {
                  Navigator.pop(context); // للرجوع لصفحة Login
                },
                child: const Text("Already have an account? Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
