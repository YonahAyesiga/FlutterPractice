import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Neutral Grey Background: #F5F5F5
      backgroundColor: const Color(0xFFF5F5F5), 
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- BLUE HEADER SECTION ---
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              decoration: const BoxDecoration(
                // Primary Blue: #1976D2
                color: Color(0xFF1976D2), 
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // --- IMAGE SECTION ---
                    // Make sure the filename matches what is in your assets/images folder!
                    Image.asset(
                      'assets/images/bus_illustration.png', 
                      height: 120,
                      fit: BoxFit.contain,
                      // If the image fails to load, it shows an icon as a backup
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.directions_bus, size: 80, color: Colors.white);
                      },
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "BUS ECOSYSTEM",
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 24, 
                        fontWeight: FontWeight.bold, 
                        letterSpacing: 1.5
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // --- FORM SECTION ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Dark Text: #212121
                  const Text(
                    "Login", 
                    style: TextStyle(
                      fontSize: 32, 
                      fontWeight: FontWeight.bold, 
                      color: Color(0xFF212121)
                    )
                  ),
                  const SizedBox(height: 5),
                  // Secondary Text Grey: #757575
                  const Text(
                    "Enter your credentials to access the system", 
                    style: TextStyle(color: Color(0xFF757575), fontSize: 16)
                  ),
                  const SizedBox(height: 40),

                  // Email Field
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white, // White: #FFFFFF
                      hintText: "Email Address",
                      prefixIcon: const Icon(Icons.email_outlined, color: Color(0xFF1976D2)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15), 
                        borderSide: BorderSide.none
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Password Field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.lock_outline, color: Color(0xFF1976D2)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15), 
                        borderSide: BorderSide.none
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?", 
                        style: TextStyle(color: Color(0xFF1976D2))
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // --- LOGIN BUTTON (Secondary Teal: #009688) ---
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF009688), 
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                      onPressed: () {
                        // Logic for login goes here
                      },
                      child: const Text(
                        "SIGN IN", 
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 18, 
                          fontWeight: FontWeight.bold
                        )
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Register Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account? ", style: TextStyle(color: Color(0xFF757575))),
                      GestureDetector(
                        onTap: () {
                          // Navigate to Signup screen
                        },
                        child: const Text(
                          "Register Now", 
                          style: TextStyle(
                            color: Color(0xFF1976D2), 
                            fontWeight: FontWeight.bold
                          )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}