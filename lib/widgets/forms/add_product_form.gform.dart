// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'add_product_form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveAddProductDetailsFormConsumer extends StatelessWidget {
  const ReactiveAddProductDetailsFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, AddProductDetailsForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAddProductDetailsForm.of(context);

    if (formModel is! AddProductDetailsForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class AddProductDetailsFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const AddProductDetailsFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final AddProductDetailsForm form;
}

class ReactiveAddProductDetailsForm extends StatelessWidget {
  const ReactiveAddProductDetailsForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final AddProductDetailsForm form;

  final WillPopCallback? onWillPop;

  static AddProductDetailsForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              AddProductDetailsFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        AddProductDetailsFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as AddProductDetailsFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return AddProductDetailsFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class AddProductDetailsFormBuilder extends StatefulWidget {
  const AddProductDetailsFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final AddProductDetails? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, AddProductDetailsForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, AddProductDetailsForm formModel)?
      initState;

  @override
  _AddProductDetailsFormBuilderState createState() =>
      _AddProductDetailsFormBuilderState();
}

class _AddProductDetailsFormBuilderState
    extends State<AddProductDetailsFormBuilder> {
  late AddProductDetailsForm _formModel;

  @override
  void initState() {
    _formModel = AddProductDetailsForm(
        widget.model, AddProductDetailsForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant AddProductDetailsFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = AddProductDetailsForm(
          widget.model, AddProductDetailsForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveAddProductDetailsForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class AddProductDetailsForm implements FormModel<AddProductDetails> {
  AddProductDetailsForm(
    this.addProductDetails,
    this.form,
    this.path,
  ) {}

  static const String descriptionControlName = "description";

  static const String nameControlName = "name";

  static const String categoryControlName = "category";

  static const String positionControlName = "position";

  static const String priceControlName = "price";

  static const String tradePriceControlName = "tradePrice";

  static const String priceBoardControlName = "priceBoard";

  static const String unitControlName = "unit";

  static const String startSalesControlName = "startSales";

  static const String endSalesControlName = "endSales";

  static const String imageControlName = "image";

  static const String ecoControlName = "eco";

  static const String postControlName = "post";

  static const String hahalControlName = "hahal";

  final AddProductDetails? addProductDetails;

  final FormGroup form;

  final String? path;

  String descriptionControlPath() => pathBuilder(descriptionControlName);
  String nameControlPath() => pathBuilder(nameControlName);
  String categoryControlPath() => pathBuilder(categoryControlName);
  String positionControlPath() => pathBuilder(positionControlName);
  String priceControlPath() => pathBuilder(priceControlName);
  String tradePriceControlPath() => pathBuilder(tradePriceControlName);
  String priceBoardControlPath() => pathBuilder(priceBoardControlName);
  String unitControlPath() => pathBuilder(unitControlName);
  String startSalesControlPath() => pathBuilder(startSalesControlName);
  String endSalesControlPath() => pathBuilder(endSalesControlName);
  String imageControlPath() => pathBuilder(imageControlName);
  String ecoControlPath() => pathBuilder(ecoControlName);
  String postControlPath() => pathBuilder(postControlName);
  String hahalControlPath() => pathBuilder(hahalControlName);
  String get _descriptionValue => descriptionControl.value as String;
  String get _nameValue => nameControl.value as String;
  String get _categoryValue => categoryControl.value as String;
  String get _positionValue => positionControl.value as String;
  int get _priceValue => priceControl.value as int;
  int get _tradePriceValue => tradePriceControl.value as int;
  int get _priceBoardValue => priceBoardControl.value as int;
  AddProductRequestUnit get _unitValue =>
      unitControl.value as AddProductRequestUnit;
  DateTime get _startSalesValue => startSalesControl.value as DateTime;
  DateTime get _endSalesValue => endSalesControl.value as DateTime;
  String? get _imageValue => imageControl?.value;
  bool? get _ecoValue => ecoControl?.value;
  bool? get _postValue => postControl?.value;
  bool? get _hahalValue => hahalControl?.value;
  bool get containsDescription {
    try {
      form.control(descriptionControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCategory {
    try {
      form.control(categoryControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPosition {
    try {
      form.control(positionControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPrice {
    try {
      form.control(priceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTradePrice {
    try {
      form.control(tradePriceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPriceBoard {
    try {
      form.control(priceBoardControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsUnit {
    try {
      form.control(unitControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsStartSales {
    try {
      form.control(startSalesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEndSales {
    try {
      form.control(endSalesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsImage {
    try {
      form.control(imageControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEco {
    try {
      form.control(ecoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPost {
    try {
      form.control(postControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsHahal {
    try {
      form.control(hahalControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get descriptionErrors => descriptionControl.errors;
  Object? get nameErrors => nameControl.errors;
  Object? get categoryErrors => categoryControl.errors;
  Object? get positionErrors => positionControl.errors;
  Object? get priceErrors => priceControl.errors;
  Object? get tradePriceErrors => tradePriceControl.errors;
  Object? get priceBoardErrors => priceBoardControl.errors;
  Object? get unitErrors => unitControl.errors;
  Object? get startSalesErrors => startSalesControl.errors;
  Object? get endSalesErrors => endSalesControl.errors;
  Object? get imageErrors => imageControl?.errors;
  Object? get ecoErrors => ecoControl?.errors;
  Object? get postErrors => postControl?.errors;
  Object? get hahalErrors => hahalControl?.errors;
  void get descriptionFocus => form.focus(descriptionControlPath());
  void get nameFocus => form.focus(nameControlPath());
  void get categoryFocus => form.focus(categoryControlPath());
  void get positionFocus => form.focus(positionControlPath());
  void get priceFocus => form.focus(priceControlPath());
  void get tradePriceFocus => form.focus(tradePriceControlPath());
  void get priceBoardFocus => form.focus(priceBoardControlPath());
  void get unitFocus => form.focus(unitControlPath());
  void get startSalesFocus => form.focus(startSalesControlPath());
  void get endSalesFocus => form.focus(endSalesControlPath());
  void get imageFocus => form.focus(imageControlPath());
  void get ecoFocus => form.focus(ecoControlPath());
  void get postFocus => form.focus(postControlPath());
  void get hahalFocus => form.focus(hahalControlPath());
  void imageRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsImage) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          imageControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            imageControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void ecoRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsEco) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          ecoControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            ecoControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void postRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPost) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          postControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            postControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void hahalRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsHahal) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          hahalControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            hahalControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void descriptionValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void categoryValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    categoryControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void positionValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    positionControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void priceValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    priceControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tradePriceValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    tradePriceControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void priceBoardValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    priceBoardControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void unitValueUpdate(
    AddProductRequestUnit value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    unitControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void startSalesValueUpdate(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    startSalesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void endSalesValueUpdate(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    endSalesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void imageValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    imageControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void ecoValueUpdate(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    ecoControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postValueUpdate(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void hahalValueUpdate(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hahalControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void descriptionValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void categoryValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    categoryControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void positionValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    positionControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void priceValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    priceControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tradePriceValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    tradePriceControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void priceBoardValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    priceBoardControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void unitValuePatch(
    AddProductRequestUnit value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    unitControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void startSalesValuePatch(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    startSalesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void endSalesValuePatch(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    endSalesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void imageValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    imageControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void ecoValuePatch(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    ecoControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postValuePatch(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void hahalValuePatch(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hahalControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void descriptionValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      descriptionControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void categoryValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      categoryControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void positionValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      positionControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void priceValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      priceControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void tradePriceValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      tradePriceControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void priceBoardValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      priceBoardControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void unitValueReset(
    AddProductRequestUnit value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      unitControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void startSalesValueReset(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      startSalesControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void endSalesValueReset(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      endSalesControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void imageValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      imageControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void ecoValueReset(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      ecoControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void postValueReset(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      postControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void hahalValueReset(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      hahalControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get descriptionControl =>
      form.control(descriptionControlPath()) as FormControl<String>;
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<String> get categoryControl =>
      form.control(categoryControlPath()) as FormControl<String>;
  FormControl<String> get positionControl =>
      form.control(positionControlPath()) as FormControl<String>;
  FormControl<int> get priceControl =>
      form.control(priceControlPath()) as FormControl<int>;
  FormControl<int> get tradePriceControl =>
      form.control(tradePriceControlPath()) as FormControl<int>;
  FormControl<int> get priceBoardControl =>
      form.control(priceBoardControlPath()) as FormControl<int>;
  FormControl<AddProductRequestUnit> get unitControl =>
      form.control(unitControlPath()) as FormControl<AddProductRequestUnit>;
  FormControl<DateTime> get startSalesControl =>
      form.control(startSalesControlPath()) as FormControl<DateTime>;
  FormControl<DateTime> get endSalesControl =>
      form.control(endSalesControlPath()) as FormControl<DateTime>;
  FormControl<String>? get imageControl => containsImage
      ? form.control(imageControlPath()) as FormControl<String>?
      : null;
  FormControl<bool>? get ecoControl =>
      containsEco ? form.control(ecoControlPath()) as FormControl<bool>? : null;
  FormControl<bool>? get postControl => containsPost
      ? form.control(postControlPath()) as FormControl<bool>?
      : null;
  FormControl<bool>? get hahalControl => containsHahal
      ? form.control(hahalControlPath()) as FormControl<bool>?
      : null;
  void descriptionSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      descriptionControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      descriptionControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void categorySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      categoryControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      categoryControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void positionSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      positionControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      positionControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void priceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      priceControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      priceControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void tradePriceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      tradePriceControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      tradePriceControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void priceBoardSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      priceBoardControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      priceBoardControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void unitSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      unitControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      unitControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void startSalesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      startSalesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      startSalesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void endSalesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      endSalesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      endSalesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void imageSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      imageControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      imageControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void ecoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      ecoControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      ecoControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void postSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      postControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      postControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void hahalSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      hahalControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      hahalControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  AddProductDetails get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'AddProductDetailsForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return AddProductDetails(
        description: _descriptionValue,
        name: _nameValue,
        category: _categoryValue,
        position: _positionValue,
        price: _priceValue,
        tradePrice: _tradePriceValue,
        priceBoard: _priceBoardValue,
        unit: _unitValue,
        startSales: _startSalesValue,
        endSales: _endSalesValue,
        image: _imageValue,
        eco: _ecoValue,
        post: _postValue,
        hahal: _hahalValue);
  }

  AddProductDetailsForm copyWithPath(String? path) {
    return AddProductDetailsForm(addProductDetails, form, path);
  }

  @override
  void updateValue(
    AddProductDetails value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(AddProductDetailsForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    AddProductDetails? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(AddProductDetails? addProductDetails) =>
      FormGroup({
        descriptionControlName: FormControl<String>(
            value: addProductDetails?.description,
            validators: [
              (control) => requiredValidator(control as FormControl<String>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: addProductDetails?.name,
            validators: [
              (control) => requiredValidator(control as FormControl<String>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        categoryControlName: FormControl<String>(
            value: addProductDetails?.category,
            validators: [
              (control) => requiredValidator(control as FormControl<String>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        positionControlName: FormControl<String>(
            value: addProductDetails?.position,
            validators: [
              (control) => requiredValidator(control as FormControl<String>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        priceControlName: FormControl<int>(
            value: addProductDetails?.price,
            validators: [
              (control) => requiredValidator(control as FormControl<int>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        tradePriceControlName: FormControl<int>(
            value: addProductDetails?.tradePrice,
            validators: [
              (control) => requiredValidator(control as FormControl<int>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        priceBoardControlName: FormControl<int>(
            value: addProductDetails?.priceBoard,
            validators: [
              (control) => requiredValidator(control as FormControl<int>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        unitControlName: FormControl<AddProductRequestUnit>(
            value: addProductDetails?.unit,
            validators: [
              (control) => requiredValidator(
                  control as FormControl<AddProductRequestUnit>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        startSalesControlName: FormControl<DateTime>(
            value: addProductDetails?.startSales,
            validators: [
              (control) => requiredValidator(control as FormControl<DateTime>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        endSalesControlName: FormControl<DateTime>(
            value: addProductDetails?.endSales,
            validators: [
              (control) => requiredValidator(control as FormControl<DateTime>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        imageControlName: FormControl<String>(
            value: addProductDetails?.image,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        ecoControlName: FormControl<bool>(
            value: addProductDetails?.eco,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        postControlName: FormControl<bool>(
            value: addProductDetails?.post,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        hahalControlName: FormControl<bool>(
            value: addProductDetails?.hahal,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveAddProductDetailsFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveAddProductDetailsFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(AddProductDetailsForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      AddProductDetailsForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, AddProductDetailsForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAddProductDetailsForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveAddProductDetailsFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveAddProductDetailsFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      AddProductDetailsForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      AddProductDetailsForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, AddProductDetailsForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAddProductDetailsForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <V>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
