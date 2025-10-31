import 'package:flutter/material.dart';
import 'package:worksynk/SignUpScreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _scaleAnimation =
        Tween<double>(begin: 0.7, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    ));

    _fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),

            FadeTransition(
              opacity: _fadeAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Center(
                  child: Image.asset(
                    'D:/worksynk-main/lib/Image/worksynk.png',
                    height: 200,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),

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
            const SizedBox(height: 25),
            ElevatedButton(
            
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 سطر الأيقونات
            const Text(
              "Or login with",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // فيسبوك
                IconButton(
                  icon: Image.asset(
                    'D:/worksynk-main/lib/Image/communication.png',
                    height: 40,
                  ),
                  onPressed: () {
                    // TODO: Login with Facebook
                  },
                ),
                const SizedBox(width: 20),

                // جيميل
                IconButton(
                  icon: Image.asset(
                    'D:/worksynk-main/lib/Image/search.png',
                    height: 40,
                  ),
                  onPressed: () {
                    // TODO: Login with Google
                  },
                ),
                const SizedBox(width: 20),

                // لينكد إن
                IconButton(
                  icon: Image.asset(
                    'D:/worksynk-main/lib/Image/linkedin.png',
                    height: 40,
                  ),
                  onPressed: () {
                    // TODO: Login with LinkedIn
                  },
                ),
              ],
            ),

            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ),
                );
              },
              child: const Text(
                "Don’t have an account? Sign Up",
                style: TextStyle(fontSize: 16, color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
