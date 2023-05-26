import 'package:flutter/material.dart';


class LoadingButton extends StatelessWidget {
  const LoadingButton({ super.key, });

  @override
  Widget build(BuildContext context) => const ElevatedButton(
    onPressed: null,
    child: SizedBox(
      height: 14,
      width: 14,
      child: CircularProgressIndicator(),
    ),
  );
}
