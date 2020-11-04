import 'package:error_handling_demo/ui/helper/view_model.dart';
import 'package:flutter/material.dart';

/// Use this widget to build different ViewState from the view model. The only
/// widget that is fixed and always the same is the [ErrorWithRetry] widget,
/// which can only use some additional [errorPadding]
class ViewStateBuilder extends StatelessWidget {
  final ViewState state;
  final String errorMessage;
  final VoidCallback onTapRetry;
  final EdgeInsets errorPadding;
  final WidgetBuilder loadingBuilder;
  final WidgetBuilder builder;
  final WidgetBuilder errorBuilder;

  const ViewStateBuilder({
    Key key,
    @required this.state,
    @required this.loadingBuilder,
    @required this.builder,
    this.errorMessage,
    this.onTapRetry,
    this.errorPadding,
    this.errorBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    switch (state) {
      case ViewState.error:
        return errorBuilder != null
            ? errorBuilder(context)
            : Padding(
                padding: errorPadding ?? EdgeInsets.zero,
                child: Column(
                  children: [
                    Text(errorMessage ?? 'An error occured'),
                    RaisedButton(
                      child: Text('Retry'),
                      onPressed: onTapRetry,
                    )
                  ],
                ),
              );
      case ViewState.idle:
        return builder(context);
      case ViewState.loading:
      default:
        return loadingBuilder(context);
    }
  }
}
