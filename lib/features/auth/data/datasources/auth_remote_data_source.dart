import 'package:blog_app/core/error/exepctions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<String> signInWithEmailPassword({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;

  AuthRemoteDataSourceImpl(this.supabaseClient);

  @override
  Future<String> signInWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement signInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth
          .signUp(email: email, password: password, data: {
        'name': name,
      });

      if (response.user == null) {
        throw ServerExceptions('User is null!');
      }

      return response.user!.id;
    } catch (e) {
      throw ServerExceptions(e.toString());
    }
  }
}
