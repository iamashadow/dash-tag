import 'package:dash_and_tag_web_site/model/appbar_action_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomExpansionWidget extends StatefulWidget {
  final String title;
  final String? route;
  final String? subtitle;
  final bool? initiallyExpanded;
  final List<Category>? categories;
  const CustomExpansionWidget({
    super.key,
    required this.title,
    this.initiallyExpanded = false,
    this.categories,
    this.subtitle,
    this.route,
  });

  @override
  State<CustomExpansionWidget> createState() => _CustomExpansionWidgetState();
}

class _CustomExpansionWidgetState extends State<CustomExpansionWidget> {
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded!;
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      border: Border(
        bottom: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1.0,
        ),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: widget.route != "" && widget.route != null
                ? () {
                    Get.toNamed(widget.route!);
                  }
                : () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                        ),
                        widget.subtitle == null
                            ? const SizedBox()
                            : Text(
                                widget.subtitle!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                              ),
                      ],
                    ),
                  ),
                  if (widget.categories != null &&
                      widget.categories!.isNotEmpty)
                    Icon(_isExpanded
                        ? Icons.arrow_drop_up_rounded
                        : Icons.arrow_drop_down_rounded),
                ],
              ),
            ),
          ),
          if (_isExpanded && widget.categories != null)
            ...widget.categories!.map((category) {
              return CustomExpansionWidget(
                title: category.title,
                route: category.path,
                categories: category.categories ?? [],
              );
            }),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double? blur;
  final double? spread;
  final double? radius;
  final Offset? offset;
  final Color? shadowColor;
  final Border? border;
  final EdgeInsets? margin;
  const CustomContainer({
    super.key,
    required this.child,
    this.blur,
    this.spread,
    this.radius,
    this.offset,
    this.shadowColor,
    this.border,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16.0),
      margin: margin ?? const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius ?? 6.0),
        border: border ?? Border.all(color: Colors.transparent),
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? Colors.black.withOpacity(0.1),
            blurRadius: blur ?? 24,
            spreadRadius: spread ?? -4,
            offset: offset ?? const Offset(0, 12),
          ),
        ],
      ),
      child: child,
    );
  }
}
