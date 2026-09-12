import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class DriverDashboardView extends StatefulWidget {
  const DriverDashboardView({super.key});

  @override
  State<DriverDashboardView> createState() => _DriverDashboardViewState();
}

class _DriverDashboardViewState extends State<DriverDashboardView> {
  String _otp = "";
  bool _isValidated = false;

  void _pressKey(String key) {
    if (_isValidated) return;
    if (_otp.length < 4) {
      setState(() {
        _otp += key;
      });
    }
  }

  void _deleteLast() {
    if (_isValidated) return;
    if (_otp.isNotEmpty) {
      setState(() {
        _otp = _otp.substring(0, _otp.length - 1);
      });
    }
  }

  void _clearOtp() {
    if (_isValidated) return;
    setState(() {
      _otp = "";
    });
  }

  void _validateCourse() {
    if (_otp.length == 4) {
      setState(() {
        _isValidated = true;
      });
    }
  }

  void _withdrawMpesa() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Demande de retrait M-Pesa de 32 500 FC initiée avec succès."),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 16,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppTheme.textPrimary),
          onPressed: () {},
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Espace Motard', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: AppTheme.textPrimary)),
            Text('GOMA EXPRESS', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: AppTheme.textSecondary, letterSpacing: 1.1)),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.teal.shade50,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(color: Colors.teal, shape: BoxShape.circle),
                ),
                const SizedBox(width: 6),
                const Text('En service', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.teal)),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Earnings Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFF8FAFC),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppTheme.border),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Gains du jour', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppTheme.textSecondary)),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
                        child: const Text('8 courses', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: const [
                          Text('32 500 FC', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: AppTheme.textPrimary, letterSpacing: -0.5)),
                          SizedBox(width: 6),
                          Text('~\$11.8 USD', style: TextStyle(fontSize: 12, color: AppTheme.textSecondary)),
                        ],
                      ),
                      GestureDetector(
                        onTap: _withdrawMpesa,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppTheme.border),
                            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 4)],
                          ),
                          child: Row(
                            children: const [
                              Text('Retirer M-Pesa', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              SizedBox(width: 4),
                              Icon(Icons.arrow_forward, size: 14, color: AppTheme.textSecondary),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Current Order Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppTheme.border),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.two_wheeler, size: 18, color: AppTheme.primary),
                          SizedBox(width: 6),
                          Text('COURSE EN COURS #8821', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1.1)),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(color: Colors.red.shade50, borderRadius: BorderRadius.circular(4)),
                        child: const Text('Express', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Timeline points
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 4),
                          Container(width: 8, height: 8, decoration: const BoxDecoration(color: AppTheme.textSecondary, shape: BoxShape.circle)),
                          Container(width: 1, height: 24, color: AppTheme.border, margin: const EdgeInsets.symmetric(vertical: 4)),
                          Container(width: 8, height: 8, decoration: const BoxDecoration(color: AppTheme.primary, shape: BoxShape.circle)),
                        ],
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('DÉPART', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppTheme.textSecondary)),
                            const Text('Katindo (Pharmacie Virunga)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 12),
                            const Text('ARRIVÉE', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppTheme.textSecondary)),
                            const Text('Himbi (Avenue des Écoles)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(height: 1),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.route, size: 16, color: AppTheme.textSecondary),
                          SizedBox(width: 4),
                          Text('4.2 km', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppTheme.textSecondary)),
                          SizedBox(width: 8),
                          Text('•', style: TextStyle(color: AppTheme.textSecondary)),
                          SizedBox(width: 8),
                          Text('+2 500 FC', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.green)),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(color: AppTheme.neutralBg, borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          children: const [
                            Icon(Icons.navigation, size: 14),
                            SizedBox(width: 4),
                            Text('Itinéraire', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // OTP Pad Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppTheme.border),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8)],
              ),
              child: Column(
                children: [
                  const Text('Code de remise client', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 2),
                  const Text('Demandez le code à 4 chiffres au destinataire', style: TextStyle(fontSize: 12, color: AppTheme.textSecondary)),
                  const SizedBox(height: 16),
                  
                  // OTP Display
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      bool hasDigit = _otp.length > index;
                      return Container(
                        width: 48,
                        height: 48,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: hasDigit ? Colors.red.shade50 : AppTheme.neutralBg,
                          border: Border.all(color: hasDigit ? AppTheme.primary : AppTheme.border),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            hasDigit ? _otp[index] : '_',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: hasDigit ? AppTheme.primary : AppTheme.textPrimary,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 20),

                  // Keypad
                  SizedBox(
                    width: 280,
                    child: GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      childAspectRatio: 1.8,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      children: [
                        _buildKeypadButton('1'), _buildKeypadButton('2'), _buildKeypadButton('3'),
                        _buildKeypadButton('4'), _buildKeypadButton('5'), _buildKeypadButton('6'),
                        _buildKeypadButton('7'), _buildKeypadButton('8'), _buildKeypadButton('9'),
                        _buildKeypadAction('C', _clearOtp, color: AppTheme.textSecondary),
                        _buildKeypadButton('0'),
                        _buildKeypadAction('⌫', _deleteLast, isIcon: true),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Validate Button
                  GestureDetector(
                    onTap: _otp.length == 4 ? _validateCourse : null,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        color: _isValidated ? Colors.green : (_otp.length == 4 ? AppTheme.primary : AppTheme.border),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (_isValidated) const Icon(Icons.check, color: Colors.white, size: 18),
                          if (_isValidated) const SizedBox(width: 8),
                          Text(
                            _isValidated ? 'Course validée (+2 500 FC)' : 'Valider et terminer la course',
                            style: TextStyle(
                              color: _otp.length == 4 ? Colors.white : AppTheme.textSecondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildKeypadButton(String digit) {
    return GestureDetector(
      onTap: () => _pressKey(digit),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.neutralBg,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(digit, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }

  Widget _buildKeypadAction(String label, VoidCallback onTap, {bool isIcon = false, Color? color}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isIcon 
            ? const Icon(Icons.backspace_outlined, size: 20, color: AppTheme.textSecondary)
            : Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color)),
        ),
      ),
    );
  }
}
