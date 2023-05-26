import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:reactive_forms/reactive_forms.dart';


class ReactivePinput<T> extends ReactiveFormField<T, String> {
  ReactivePinput({
    super.key,
    super.formControl,
    super.formControlName,
    super.valueAccessor,
    super.validationMessages,
    super.showErrors,
    super.focusNode,
    ReactiveFormFieldCallback<T>? onChanged,
    ReactiveFormFieldCallback<T>? onCompleted,
    ReactiveFormFieldCallback<T>? onSubmitted,
    ReactiveFormFieldCallback<T>? onTap,
    ReactiveFormFieldCallback<T>? onLongPress,
    int length = 4,
    PinTheme? defaultPinTheme,
    PinTheme? focusedPinTheme,
    PinTheme? submittedPinTheme,
    PinTheme? followingPinTheme,
    PinTheme? disabledPinTheme,
    PinTheme? errorPinTheme,
    // void Function(String)? onChanged,
    // void Function(String)? onCompleted,
    // void Function(String)? onSubmitted,
    // void Function()? onTap,
    // void Function()? onLongPress,
    TextEditingController? controller,
    // FocusNode? focusNode,
    Widget? preFilledWidget,
    List<int>? separatorPositions,
    Widget? separator = const SizedBox(width: 8),
    String smsCodeMatcher = PinputConstants.defaultSmsCodeMatcher,
    String? senderPhoneNumber,
    AndroidSmsAutofillMethod androidSmsAutofillMethod = AndroidSmsAutofillMethod.none,
    bool listenForMultipleSmsOnAndroid = false,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
    AlignmentGeometry pinContentAlignment = Alignment.center,
    Curve animationCurve = Curves.easeIn,
    Duration animationDuration = const Duration(milliseconds: 180),
    PinAnimationType pinAnimationType = PinAnimationType.scale,
    bool enabled = true,
    bool readOnly = false,
    bool useNativeKeyboard = true,
    bool toolbarEnabled = true,
    bool autofocus = false,
    bool obscureText = false,
    bool showCursor = true,
    bool isCursorAnimationEnabled = true,
    bool enableIMEPersonalizedLearning = false,
    bool enableSuggestions = true,
    HapticFeedbackType hapticFeedbackType = HapticFeedbackType.disabled,
    bool closeKeyboardWhenCompleted = true,
    TextInputType keyboardType = TextInputType.number,
    TextCapitalization textCapitalization = TextCapitalization.none,
    Offset? slideTransitionBeginOffset,
    Widget? cursor,
    Brightness? keyboardAppearance,
    List<TextInputFormatter> inputFormatters = const [],
    TextInputAction? textInputAction,
    Iterable<String>? autofillHints,
    String obscuringCharacter = '•',
    Widget? obscuringWidget,
    TextSelectionControls? selectionControls,
    String? restorationId,
    void Function(String)? onClipboardFound,
    void Function(String, Map<String, dynamic>)? onAppPrivateCommand,
    MouseCursor? mouseCursor,
    bool forceErrorState = false,
    // String? errorText,
    // String? Function(String?)? validator,
    Widget Function(String?, String)? errorBuilder,
    TextStyle? errorTextStyle,
    PinputAutovalidateMode pinputAutovalidateMode = PinputAutovalidateMode.onSubmit,
    EdgeInsets scrollPadding = const EdgeInsets.all(20),
    Widget Function(BuildContext, EditableTextState)? contextMenuBuilder,
    void Function(PointerDownEvent)? onTapOutside,
  }) : _textController = controller,
    super(
      builder: (field) {
        final state = field as _ReactivePinputState<T>;
        return Pinput(
          length: length,
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: focusedPinTheme,
          submittedPinTheme: submittedPinTheme,
          followingPinTheme: followingPinTheme,
          disabledPinTheme: disabledPinTheme,
          errorPinTheme: errorPinTheme,
          onChanged: (value) {
            field.didChange(value);
            onChanged?.call(field.control);
          },
          onCompleted: onCompleted == null ? null
            : (_) => onCompleted(field.control),
          onSubmitted: onSubmitted == null ? null
            : (_) => onSubmitted(field.control),
          onTap: onTap == null ? null :
            () => onTap(field.control),
          onLongPress: onLongPress == null ? null :
            () => onLongPress(field.control),
          controller: state._textController,
          focusNode: state.focusNode,
          preFilledWidget: preFilledWidget,
          separatorPositions: separatorPositions,
          separator: separator,
          smsCodeMatcher: smsCodeMatcher,
          senderPhoneNumber: senderPhoneNumber,
          androidSmsAutofillMethod: androidSmsAutofillMethod,
          listenForMultipleSmsOnAndroid: listenForMultipleSmsOnAndroid,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          pinContentAlignment: pinContentAlignment,
          animationCurve: animationCurve,
          animationDuration: animationDuration,
          pinAnimationType: pinAnimationType,
          enabled: enabled,
          readOnly: readOnly,
          useNativeKeyboard: useNativeKeyboard,
          toolbarEnabled: toolbarEnabled,
          autofocus: autofocus,
          obscureText: obscureText,
          showCursor: showCursor,
          isCursorAnimationEnabled: isCursorAnimationEnabled,
          enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
          enableSuggestions: enableSuggestions,
          hapticFeedbackType: hapticFeedbackType,
          closeKeyboardWhenCompleted: closeKeyboardWhenCompleted,
          keyboardType: keyboardType,
          textCapitalization: textCapitalization,
          slideTransitionBeginOffset: slideTransitionBeginOffset,
          cursor: cursor,
          keyboardAppearance: keyboardAppearance,
          inputFormatters: inputFormatters,
          textInputAction: textInputAction,
          autofillHints: autofillHints,
          obscuringCharacter: obscuringCharacter,
          obscuringWidget: obscuringWidget,
          selectionControls: selectionControls,
          restorationId: restorationId,
          onClipboardFound: onClipboardFound,
          onAppPrivateCommand: onAppPrivateCommand,
          mouseCursor: mouseCursor,
          forceErrorState: forceErrorState || state.errorText != null,
          errorText: state.errorText,
          validator: (_) => state.errorText,
          errorBuilder: errorBuilder,
          errorTextStyle: errorTextStyle,
          pinputAutovalidateMode: pinputAutovalidateMode,
          scrollPadding: scrollPadding,
          contextMenuBuilder: contextMenuBuilder,
          onTapOutside: onTapOutside,
        );
      },
    );

  final TextEditingController? _textController;

  @override
  ReactiveFormFieldState<T, String> createState() => _ReactivePinputState<T>();
}

class _ReactivePinputState<T> extends ReactiveFocusableFormFieldState<T, String> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _initializeTextController();
  }

  @override
  void onControlValueChanged(dynamic value) {
    final effectiveValue = (value == null) ? '' : value.toString();
    _textController.value = _textController.value.copyWith(
      text: effectiveValue,
      selection: TextSelection.collapsed(offset: effectiveValue.length),
      composing: TextRange.empty,
    );

    super.onControlValueChanged(value);
  }

  @override
  ControlValueAccessor<T, String> selectValueAccessor() => switch (control) {
    FormControl<int>() => IntValueAccessor(),
    FormControl<double>() => DoubleValueAccessor(),
    FormControl<DateTime>() => DateTimeValueAccessor(),
    FormControl<TimeOfDay>() => TimeOfDayValueAccessor(),
    _ => super.selectValueAccessor(),
  } as ControlValueAccessor<T, String>;

  void _initializeTextController() {
    final initialValue = value ?? '';
    final currentWidget = widget as ReactivePinput<T>;
    _textController = (currentWidget._textController != null)
      ? currentWidget._textController!
      : TextEditingController();
    _textController.text = initialValue;
  }
}
