import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import '../../api.dart';
import '../../extensions.dart';
import '../../providers.dart';
import '../../router.dart';
import '../loading_button.dart';
import 'validators.dart';

part 'add_product_form.gform.dart';


@ReactiveFormAnnotation()
class AddProductDetails {
  const AddProductDetails({
    @FormControlAnnotation<String>(
      validators: [ requiredValidator, ],
    ) required this.description,
    @FormControlAnnotation<String>(
      validators: [ requiredValidator, ],
    ) required this.name,
    @FormControlAnnotation<String>(
      validators: [ requiredValidator, ],
    ) required this.category,
    @FormControlAnnotation<String>(
      validators: [ requiredValidator, ],
    ) required this.position,
    @FormControlAnnotation<int>(
      validators: [ requiredValidator, ],
    ) required this.price,
    @FormControlAnnotation<int>(
      validators: [ requiredValidator, ],
    ) required this.tradePrice,
    @FormControlAnnotation<int>(
      validators: [ requiredValidator, ],
    ) required this.priceBoard,
    @FormControlAnnotation<AddProductRequestUnit>(
      validators: [ requiredValidator, ],
    ) required this.unit,
    @FormControlAnnotation<DateTime>(
      validators: [ requiredValidator, ],
    ) required this.startSales,
    @FormControlAnnotation<DateTime>(
      validators: [ requiredValidator, ],
    ) required this.endSales,
    @FormControlAnnotation<String>() this.image,
    @FormControlAnnotation<bool>() required this.eco,
    @FormControlAnnotation<bool>() required this.post,
    @FormControlAnnotation<bool>() required this.hahal,
  });

  final String? image;
  final String description;
  final String name;
  final String category;
  final bool? eco;
  final bool? post;
  final bool? hahal;
  final String position;
  final int price;
  final int tradePrice;
  final int priceBoard;
  final DateTime startSales;
  final DateTime endSales;
  final AddProductRequestUnit unit;
}

class AddProductForm extends StatelessWidget {
  const AddProductForm({ super.key, });

  @override
  Widget build(BuildContext context) => AddProductDetailsFormBuilder(
    builder: (context, formModel, child) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Name
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveTextField(
            formControl: formModel.nameControl,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.type_specimen_outlined),
              labelText: context.localizations.productName,
            ),
            validationMessages: {
              ValidationMessage.required: (error) => context.localizations.formErrorRequired,
            },
          ),
        ),
        // Description
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveTextField(
            formControl: formModel.descriptionControl,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.description),
              labelText: context.localizations.productDescription,
            ),
            validationMessages: {
              ValidationMessage.required: (error) => context.localizations.formErrorRequired,
            },
          ),
        ),
        // Category
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveTextField(
            formControl: formModel.categoryControl,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.category),
              labelText: context.localizations.productCategory,
            ),
            validationMessages: {
              ValidationMessage.required: (error) => context.localizations.formErrorRequired,
            },
          ),
        ),
        // Tags
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ReactiveCheckbox(
                    formControl: formModel.hahalControl,
                  ),
                  context.localizations.productTagHalal.widget,
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ReactiveCheckbox(
                    formControl: formModel.postControl,
                  ),
                  context.localizations.productTagPost.widget,
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ReactiveCheckbox(
                    formControl: formModel.ecoControl,
                  ),
                  context.localizations.productTagEco.widget,
                ],
              ),
            ],
          ),
        ),
        // Position
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveTextField(
            formControl: formModel.positionControl,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.fmd_good_outlined),
              labelText: context.localizations.productPosition,
            ),
            validationMessages: {
              ValidationMessage.required: (error) => context.localizations.formErrorRequired,
            },
          ),
        ),
        // Price
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveTextField(
            formControl: formModel.priceControl,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.attach_money),
              labelText: context.localizations.productPrice,
            ),
            validationMessages: {
              ValidationMessage.required: (error) => context.localizations.formErrorRequired,
            },
          ),
        ),
        // Trade price
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveTextField(
            formControl: formModel.tradePriceControl,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.attach_money),
              labelText: context.localizations.productTradePrice,
            ),
            validationMessages: {
              ValidationMessage.required: (error) => context.localizations.formErrorRequired,
            },
          ),
        ),
        // Price board
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveTextField(
            formControl: formModel.priceBoardControl,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.one_k_plus_outlined),
              labelText: context.localizations.productPriceBoard,
            ),
            validationMessages: {
              ValidationMessage.required: (error) => context.localizations.formErrorRequired,
            },
          ),
        ),
        // Unit
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveDropdownField(
            formControl: formModel.unitControl,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.attach_money),
              labelText: context.localizations.productUnit,
            ),
            validationMessages: {
              ValidationMessage.required: (error) => context.localizations.formErrorRequired,
            },
            items: [
              DropdownMenuItem(
                value: AddProductRequestUnit.kg,
                child: 'KG'.widget,
              ),
              DropdownMenuItem(
                value: AddProductRequestUnit.pieces,
                child: 'Count'.widget,
              ),
            ],
          ),
        ),
        // Start sales
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveDatePicker(
            formControl: formModel.startSalesControl,
            firstDate: DateTime.now(),
            lastDate: DateTime(2077),
            builder: (context, picker, child) =>
              Row(
                children: [
                  Text('Start sales'),
                  const SizedBox(width: 6),
                  TextButton.icon(
                    icon: const Icon(Icons.date_range),
                    label: Text(picker.value?.format ?? 'Select date'),
                    onPressed: picker.showPicker,
                  ),
                ],
              ),
          ),
        ),
        // End sales
        Padding(
          padding: const EdgeInsets.all(8),
          child: ReactiveDatePicker(
            formControl: formModel.endSalesControl,
            firstDate: DateTime.now(),
            lastDate: DateTime(2077),
            builder: (context, picker, child) =>
              Row(
                children: [
                  Text('End sales'),
                  const SizedBox(width: 6),
                  TextButton.icon(
                    icon: const Icon(Icons.date_range),
                    label: Text(picker.value?.format ?? 'Select date'),
                    onPressed: picker.showPicker,
                  ),
                ],
              ),
          ),
        ),
        // Submit
        ReactiveAddProductDetailsFormConsumer(
          builder: (context, form, child) => Consumer(
            builder: (context, ref, child) => ref.watch(authenticationProvider).render(
              skipLoadingOnRefresh: false,
              loadingBuilder: () => const LoadingButton(),
              (data) => ElevatedButton(
                onPressed: switch (data) {
                  AuthenticationState.user when form.form.valid => () async {
                    final router = context.router;
                    final formData = form.model;
                    final result = await apiClient.apiProductAddPost(
                      body: AddProductRequest(
                        image: formData.image,
                        description: formData.description,
                        name: formData.name,
                        category: formData.category,
                        tags: [
                          if (formData.hahal ?? false)
                            AddProductRequestTags.halal,
                          if (formData.eco ?? false)
                            AddProductRequestTags.eko,
                          if (formData.post ?? false)
                            AddProductRequestTags.post,
                        ],
                        position: formData.position,
                        price: formData.price,
                        tradePrice: formData.tradePrice,
                        priceBoard: formData.priceBoard,
                        unit: formData.unit,
                        farmerId: ref.read(userProvider).asData!.value!.id,
                        startSales: formData.startSales.unixTimestamp,
                        endSales: formData.endSales.unixTimestamp,
                        deliveryTypes: [
                          AddProductRequestDeliveryTypes.pickup,
                        ],
                        discount: 0,
                      ),
                    );
                    if (context.mounted)
                      await showDialog<bool>(
                        context: context,
                        builder: (context) => result.isSuccessful
                          ? AlertDialog(
                              content: context.localizations.productAdded.widget,
                              actions: [
                                TextButton(
                                  child: const Text('Ok'),
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                  },
                                ),
                              ],
                            )
                          : AlertDialog(
                              content: context.localizations.productFailed.widget,
                              actions: [
                                TextButton(
                                  child: const Text('Ok'),
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                  },
                                ),
                              ],
                            ),
                      );
                  },
                  _ => null,
                },
                child: context.localizations.save.widget,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
