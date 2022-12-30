import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:country_picker/country_picker.dart';

class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField({super.key});

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  String? countryCode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: InputDecoration(
        prefixIconConstraints: const BoxConstraints(maxWidth: 80),
        prefixIcon: InkWell(
          onTap: () {
            countryCodePicker(context, (code) {
              setState(() {
                countryCode = code.phoneCode;
              });
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "+${countryCode ?? "1"}",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: countryCode != null ? Colors.black : Colors.grey[600]!,
                  ),
                ),
                const Gap(8.0),
                Image.asset(
                  "assets/images/Polygon.png",
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ),
        filled: true,
        hintText: "Enter phone number...",
        contentPadding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 12.0,
        ),
      ),
    );
  }

  Future<dynamic> countryCodePicker(
      BuildContext context, Function(Country) onSelect) async {
    showCountryPicker(
      context: context,
      favorite: ["US", "IN"],
      showPhoneCode: true,
      onSelect: onSelect,
      searchAutofocus: false,
      countryListTheme: CountryListThemeData(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        // Optional. Styles the search field.
        inputDecoration: InputDecoration(
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
          labelText: 'Search',
          hintText: 'Search country',
          prefixIcon: const Icon(
            Icons.search,
            // color: AppColors.colorPrimary,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
      ),
    );
  }
}
