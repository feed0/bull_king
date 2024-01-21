import 'package:bull_king/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        /// First and Last Name
        const Row(
          children: [
            TRowTextFormField(
                labelText: TTexts.firstName, icon: Icon(Iconsax.user)),
            SizedBox(width: TSizes.spaceBtwInputFields),
            TRowTextFormField(
                labelText: TTexts.lastName, icon: Icon(Iconsax.user)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        /// Username
        TextFormField(
          // TODO expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        /// Email
        TextFormField(
          // TODO expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        /// Phone number
        TextFormField(
          // TODO expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        /// Password
        TextFormField(
          // TODO expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        /// Terms&Conditions Checkbox
        const TTermsAndConditionsCheckbox(),
        const SizedBox(height: TSizes.spaceBtwSections),

        /// Signup Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(TTexts.createAccount),
          ),
        ),
      ]),
    );
  }
}

class TRowTextFormField extends StatelessWidget {
  final String labelText;
  final Icon icon;

  const TRowTextFormField({
    required this.labelText,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        expands: false,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: icon,
        ),
      ),
    );
  }
}
