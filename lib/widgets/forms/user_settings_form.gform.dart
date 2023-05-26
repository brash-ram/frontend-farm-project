// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'user_settings_form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveUserSettingsUserInfoFormConsumer extends StatelessWidget {
  const ReactiveUserSettingsUserInfoFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      UserSettingsUserInfoForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserSettingsUserInfoForm.of(context);

    if (formModel is! UserSettingsUserInfoForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class UserSettingsUserInfoFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const UserSettingsUserInfoFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final UserSettingsUserInfoForm form;
}

class ReactiveUserSettingsUserInfoForm extends StatelessWidget {
  const ReactiveUserSettingsUserInfoForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final UserSettingsUserInfoForm form;

  final WillPopCallback? onWillPop;

  static UserSettingsUserInfoForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              UserSettingsUserInfoFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        UserSettingsUserInfoFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as UserSettingsUserInfoFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return UserSettingsUserInfoFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class UserSettingsUserInfoFormBuilder extends StatefulWidget {
  const UserSettingsUserInfoFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final UserSettingsUserInfo? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      UserSettingsUserInfoForm formModel, Widget? child) builder;

  final void Function(BuildContext context, UserSettingsUserInfoForm formModel)?
      initState;

  @override
  _UserSettingsUserInfoFormBuilderState createState() =>
      _UserSettingsUserInfoFormBuilderState();
}

class _UserSettingsUserInfoFormBuilderState
    extends State<UserSettingsUserInfoFormBuilder> {
  late UserSettingsUserInfoForm _formModel;

  @override
  void initState() {
    _formModel = UserSettingsUserInfoForm(widget.model,
        UserSettingsUserInfoForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant UserSettingsUserInfoFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = UserSettingsUserInfoForm(widget.model,
          UserSettingsUserInfoForm.formElements(widget.model), null);

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
    return ReactiveUserSettingsUserInfoForm(
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

class UserSettingsUserInfoForm implements FormModel<UserSettingsUserInfo> {
  UserSettingsUserInfoForm(
    this.userSettingsUserInfo,
    this.form,
    this.path,
  ) {}

  static const String fullNameControlName = "fullName";

  static const String bioControlName = "bio";

  static const String emailControlName = "email";

  static const String passwordControlName = "password";

  final UserSettingsUserInfo? userSettingsUserInfo;

  final FormGroup form;

  final String? path;

  String fullNameControlPath() => pathBuilder(fullNameControlName);
  String bioControlPath() => pathBuilder(bioControlName);
  String emailControlPath() => pathBuilder(emailControlName);
  String passwordControlPath() => pathBuilder(passwordControlName);
  String get _fullNameValue => fullNameControl.value ?? "";
  String get _bioValue => bioControl.value ?? "";
  String get _emailValue => emailControl.value ?? "";
  String? get _passwordValue => passwordControl?.value;
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
  Object? get passwordErrors => passwordControl?.errors;
  void get fullNameFocus => form.focus(fullNameControlPath());
  void get bioFocus => form.focus(bioControlPath());
  void get emailFocus => form.focus(emailControlPath());
  void get passwordFocus => form.focus(passwordControlPath());
  void passwordRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPassword) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          passwordControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            passwordControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

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

  void passwordValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl?.updateValue(value,
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

  void passwordValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl?.patchValue(value,
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
  void passwordValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      passwordControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get fullNameControl =>
      form.control(fullNameControlPath()) as FormControl<String>;
  FormControl<String> get bioControl =>
      form.control(bioControlPath()) as FormControl<String>;
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  FormControl<String>? get passwordControl => containsPassword
      ? form.control(passwordControlPath()) as FormControl<String>?
      : null;
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

  void passwordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      passwordControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      passwordControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  UserSettingsUserInfo get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'UserSettingsUserInfoForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return UserSettingsUserInfo(
        fullName: _fullNameValue,
        bio: _bioValue,
        email: _emailValue,
        password: _passwordValue);
  }

  UserSettingsUserInfoForm copyWithPath(String? path) {
    return UserSettingsUserInfoForm(userSettingsUserInfo, form, path);
  }

  @override
  void updateValue(
    UserSettingsUserInfo value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(UserSettingsUserInfoForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    UserSettingsUserInfo? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(UserSettingsUserInfo? userSettingsUserInfo) =>
      FormGroup({
        fullNameControlName: FormControl<String>(
            value: userSettingsUserInfo?.fullName,
            validators: [
              (control) => requiredValidator(control as FormControl<String>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        bioControlName: FormControl<String>(
            value: userSettingsUserInfo?.bio,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: userSettingsUserInfo?.email,
            validators: [
              (control) => requiredValidator(control as FormControl<String>),
              (control) => emailValidator(control as FormControl<String>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: userSettingsUserInfo?.password,
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

class ReactiveUserSettingsUserInfoFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveUserSettingsUserInfoFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(UserSettingsUserInfoForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      UserSettingsUserInfoForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      UserSettingsUserInfoForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserSettingsUserInfoForm.of(context);

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

class ReactiveUserSettingsUserInfoFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveUserSettingsUserInfoFormFormGroupArrayBuilder({
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
      UserSettingsUserInfoForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      UserSettingsUserInfoForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      UserSettingsUserInfoForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserSettingsUserInfoForm.of(context);

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
