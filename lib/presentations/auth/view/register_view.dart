import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jalan_yuk/presentations/auth/cubit/auth_cubit.dart';
import 'package:jalan_yuk/presentations/auth/cubit/auth_state.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  final _emailC = TextEditingController();
  final _passwordC = TextEditingController();
  final _fullnameC = TextEditingController();
  final _phoneC = TextEditingController();

  bool _obscurePassword = true;

  static const _emerald = Color(0xFF1F7A5A);
  static const _emeraldDark = Color(0xFF155D45);
  static const _softBorder = Color(0xFFE5E7EB);
  static const _hintColor = Color(0xFF9CA3AF);

  @override
  void dispose() {
    _emailC.dispose();
    _passwordC.dispose();
    _fullnameC.dispose();
    _phoneC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // Kalau gagal
        if (state.status == AuthStatus.failure && state.errorMessage != null) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        }

        // Kalau register sukses -> balik ke halaman login
        if (state.status == AuthStatus.unauthenticated &&
            state.errorMessage == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Registration successful, please login'),
            ),
          );
          context.goNamed('auth');
        }
      },
      builder: (context, state) {
        final isLoading = state.status == AuthStatus.loading;

        return Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/background_register.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: Container(color: Colors.black.withOpacity(0.30)),
              ),
              SafeArea(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight - 30,
                        ),
                        child: Column(
                          children: [
                            _buildHeader(),
                            SizedBox(
                              height: (constraints.maxHeight * 0.10).clamp(
                                18,
                                90,
                              ),
                            ),
                            _buildRegisterForm(isLoading),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.18),
              borderRadius: BorderRadius.circular(14),
            ),
            child: IconButton(
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                  return;
                }
                context.goNamed('auth');
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              color: Colors.white,
              tooltip: 'Back',
            ),
          ),
        ),
        const SizedBox(height: 18),
        const Center(
          child: Text(
            'JalanYuk',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.3,
            ),
          ),
        ),
        const SizedBox(height: 6),
        const Center(
          child: Text(
            'Create Your Account',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRegisterForm(bool isLoading) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 430),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 48),
            padding: const EdgeInsets.fromLTRB(18, 62, 18, 18),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.88),
              borderRadius: BorderRadius.circular(28),
              border: Border.all(color: Colors.white.withOpacity(0.45)),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x33000000),
                  blurRadius: 26,
                  offset: Offset(0, 14),
                ),
              ],
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildTextField(
                    icon: Icons.email_outlined,
                    hint: 'Enter your email',
                    controller: _emailC,
                    keyboardType: TextInputType.emailAddress,
                    validatorMessage: 'Email tidak boleh kosong',
                  ),
                  const SizedBox(height: 12),
                  _buildTextField(
                    icon: Icons.lock_outline_rounded,
                    hint: 'Enter your password',
                    controller: _passwordC,
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Password tidak boleh kosong';
                      }
                      if (value.trim().length < 6) {
                        return 'Password minimal 6 karakter';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  _buildTextField(
                    icon: Icons.person_outline_rounded,
                    hint: 'Enter your full name',
                    controller: _fullnameC,
                    validatorMessage: 'Full Name tidak boleh kosong',
                  ),
                  const SizedBox(height: 12),
                  _buildTextField(
                    icon: Icons.phone_outlined,
                    hint: 'Enter your phone number',
                    controller: _phoneC,
                    keyboardType: TextInputType.phone,
                    validatorMessage: 'Phone Number tidak boleh kosong',
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: isLoading
                          ? null
                          : () {
                              if (!(_formKey.currentState?.validate() ??
                                  false)) {
                                return;
                              }

                              context.read<AuthCubit>().register(
                                email: _emailC.text.trim(),
                                password: _passwordC.text.trim(),
                                fullName: _fullnameC.text.trim(),
                                phoneNumber: _phoneC.text.trim(),
                              );
                            },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: _emerald,
                        disabledBackgroundColor: _emerald.withOpacity(0.65),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: isLoading
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => context.goNamed('auth'),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: _emeraldDark,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _buildGoogleButton(isLoading),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.95),
                  border: Border.all(color: Colors.white, width: 3),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x33000000),
                      blurRadius: 18,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.account_circle_rounded,
                  size: 64,
                  color: Color(0xFFBCC5BA),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required IconData icon,
    required String hint,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
    String? validatorMessage,
    String? Function(String?)? validator,
    bool isPassword = false,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword ? _obscurePassword : false,
      validator:
          validator ??
          (value) {
            if (value == null || value.trim().isEmpty) {
              return validatorMessage ?? 'Field tidak boleh kosong';
            }
            return null;
          },
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: _hintColor),
        prefixIcon: Icon(icon, color: const Color(0xFF4B5563), size: 21),
        suffixIcon: isPassword
            ? IconButton(
                onPressed: () {
                  setState(() => _obscurePassword = !_obscurePassword);
                },
                icon: Icon(
                  _obscurePassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: const Color(0xFF6B7280),
                ),
              )
            : null,
        filled: true,
        fillColor: Colors.white.withOpacity(0.9),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: _softBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: _softBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: _emerald, width: 1.3),
        ),
      ),
    );
  }

  Widget _buildGoogleButton(bool isLoading) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton.icon(
        onPressed: isLoading ? null : () {},
        icon: Image.asset('assets/images/google.png', height: 20),
        label: const Text(
          'Sign Up with Google',
          style: TextStyle(
            color: Color(0xFF1F2937),
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: _softBorder),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
