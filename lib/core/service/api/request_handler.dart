import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_ecommerce_app/core/errors/failures.dart';

@lazySingleton
class RequestHandler {
  Future<Either<Failures, T>> handle<T>(Future<T> Function() request) async {
    try {
      final result = await request();
      return Right(result);
    } catch (e) {
      debugPrint('❌ 🔴 Request ($request) Error: $e');
      return Left(Failures.server(msg: e.toString()));
    }
  }
}
