// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'sign_up_form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveUserCredentialsFormConsumer extends StatelessWidget {
  const ReactiveUserCredentialsFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, UserCredentialsForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserCredentialsForm.of(context);

    if (formModel is! UserCredentialsForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class UserCredentialsFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const UserCredentialsFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final UserCredentialsForm form;
}

class ReactiveUserCredentialsForm extends StatelessWidget {
  const ReactiveUserCredentialsForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final UserCredentialsForm form;

  final WillPopCallback? onWillPop;

  static UserCredentialsForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              UserCredentialsFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        UserCredentialsFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as UserCredentialsFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return UserCredentialsFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class UserCredentialsFormBuilder extends StatefulWidget {
  const UserCredentialsFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final UserCredentials? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, UserCredentialsForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, UserCredentialsForm formModel)?
      initState;

  @override
  _UserCredentialsFormBuilderState createState() =>
      _UserCredentialsFormBuilderState();
}

class _UserCredentialsFormBuilderState
    extends State<UserCredentialsFormBuilder> {
  late UserCredentialsForm _formModel;

  @override
  void initState() {
    _formModel = UserCredentialsForm(
        widget.model, UserCredentialsForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant UserCredentialsFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = UserCredentialsForm(
          widget.model, UserCredentialsForm.formElements(widget.model), null);

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
    return ReactiveUserCredentialsForm(
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

class UserCredentialsForm implements FormModel<UserCredentials> {
  UserCredentialsForm(
    this.userCredentials,
    this.form,
    this.path,
  ) {}

  static const String fullNameControlName = "fullName";

  static const String bioControlName = "bio";

  static const String emailControlName = "email";

  static const String codeControlName = "code";

  static const String passwordControlName = "password";

  final UserCredentials? userCredentials;

  final FormGroup form;

  final String? path;

  String fullNameControlPath() => pathBuilder(fullNameControlName);
  String bioControlPath() => pathBuilder(bioControlName);
  String emailControlPath() => pathBuilder(emailControlName);
  String codeControlPath() => pathBuilder(codeControlName);
  String passwordControlPath() => pathBuilder(passwordControlName);
  String get _fullNameValue => fullNameControl.value ?? "";
  String get _bioValue => bioControl.value ?? "";
  String get _emailValue => emailControl.value ?? "";
  String get _codeValue => codeControl.value ?? "";
  String get _passwordValue => passwordControl.value ?? "";
  bool get containsFullName {
    try {
      form.control(fullNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBio {
    try {
      form.control(bioControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCode {
    try {
      form.control(codeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPassword {
    try {
      form.control(passwordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get fullNameErrors => fullNameControl.errors;
  Object? get bioErrors => bioControl.errors;
  Object? get emailErrors => emailControl.errors;
  Object? get codeErrors => codeControl.errors;
  Object? get passwordErrors => passwordControl.errors;
  void get fullNameFocus => form.focus(fullNameControlPath());
  void get bioFocus => form.focus(bioControlPath());
  void get emailFocus => form.focus(emailControlPath());
  void get codeFocus => form.focus(codeControlPath());
  void get passwordFocus => form.focus(passwordControlPath());
  void fullNameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fullNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void bioValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    bioControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void codeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    codeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fullNameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fullNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void bioValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    bioControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void codeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    codeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fullNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fullNameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void bioValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      bioControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void emailValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void codeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      codeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void passwordValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      passwordControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get fullNameControl =>
      form.control(fullNameControlPath()) as FormControl<String>;
  FormControl<String> get bioControl =>
      form.control(bioControlPath()) as FormControl<String>;
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  FormControl<String> get codeControl =>
      form.control(codeControlPath()) as FormControl<String>;
  FormControl<String> get passwordControl =>
      form.control(passwordControlPath()) as FormControl<String>;
  void fullNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fullNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fullNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void bioSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      bioControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      bioControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void emailSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void codeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      codeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      codeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void passwordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      passwordControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      passwordControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  UserCredentials get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'UserCredentialsForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return UserCredentials(
        fullName: _fullNameValue,
        bio: _bioValue,
        email: _emailValue,
        code: _codeValue,
        password: _passwordValue);
  }

  UserCredentialsForm copyWithPath(String? path) {
    return UserCredentialsForm(userCredentials, form, path);
  }

  @override
  void updateValue(
    UserCredentials value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(UserCredentialsForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    UserCredentials? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(UserCredentials? userCredentials) => FormGroup({
        fullNameControlName: FormControl<String>(
            value: userCredentials?.fullName,
            validators: [
              (control) => requiredValidator(control as FormControl<String>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        bioControlName: FormControl<String>(
            value: userCredentials?.bio,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: userCredentials?.email,
            validators: [
              (control) => requiredValidator(control as FormControl<String>),
              (control) => emailValidator(control as FormControl<String>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        codeControlName: FormControl<String>(
            value: userCredentials?.code,
            validators: [
              (control) => requiredValidator(control as FormControl<String>),
              (control) => codeLengthValidator(control as FormControl<String>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: userCredentials?.password,
            validators: [
              (control) => requiredValidator(control as FormControl<String>)
            ],
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

class ReactiveUserCredentialsFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveUserCredentialsFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(UserCredentialsForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      UserCredentialsForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, UserCredentialsForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserCredentialsForm.of(context);

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

class ReactiveUserCredentialsFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveUserCredentialsFormFormGroupArrayBuilder({
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
      UserCredentialsForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      UserCredentialsForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, UserCredentialsForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserCredentialsForm.of(context);

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
