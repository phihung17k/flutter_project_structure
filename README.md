Structure Highlights:
https://claude.ai/public/artifacts/b67e95f0-ce79-4da2-a38d-227c0917bbc7

core/: Contains shared utilities, configuration, and services used across features
shared/: Contains base classes and common domain/data/presentation components
features/: Each feature has its complete clean architecture (domain/data/presentation)

lib/
├── main.dart
├── app.dart
├── bootstrap.dart
├── core/
│   ├── constants/
│   │   ├── app_constants.dart
│   │   ├── api_constants.dart
│   │   ├── storage_keys.dart
│   │   ├── app_dimensions.dart
│   │   └── asset_constants.dart
│   ├── config/
│   │   ├── app_config.dart
│   │   ├── environment.dart
│   │   ├── flavor_config.dart
│   │   └── build_config.dart
│   ├── di/
│   │   ├── injection_container.dart
│   │   ├── service_locator.dart
│   │   └── module_injector.dart
│   ├── error/
│   │   ├── app_exception.dart
│   │   ├── failures.dart
│   │   ├── error_handler.dart
│   │   └── exception_mapper.dart
│   ├── extensions/
│   │   ├── build_context_x.dart
│   │   ├── string_x.dart
│   │   ├── date_time_x.dart
│   │   ├── number_x.dart
│   │   ├── widget_x.dart
│   │   └── color_x.dart
│   ├── l10n/
│   │   ├── app_localizations.dart
│   │   ├── l10n.dart
│   │   └── arb/
│   │       ├── app_en.arb
│   │       ├── app_es.arb
│   │       └── app_fr.arb
│   ├── network/
│   │   ├── dio_client.dart
│   │   ├── api_client.dart
│   │   ├── network_info.dart
│   │   ├── connectivity_service.dart
│   │   ├── interceptors/
│   │   │   ├── auth_interceptor.dart
│   │   │   ├── logging_interceptor.dart
│   │   │   ├── error_interceptor.dart
│   │   │   └── retry_interceptor.dart
│   │   └── models/
│   │       ├── api_response.dart
│   │       ├── api_error.dart
│   │       └── paginated_response.dart
│   ├── router/
│   │   ├── app_router.dart
│   │   ├── route_config.dart
│   │   ├── route_names.dart
│   │   ├── guards/
│   │   │   ├── auth_guard.dart
│   │   │   ├── onboarding_guard.dart
│   │   │   └── role_guard.dart
│   │   └── transitions/
│   │       ├── slide_transition.dart
│   │       └── fade_transition.dart
│   ├── services/
│   │   ├── analytics_service.dart
│   │   ├── crashlytics_service.dart
│   │   ├── notification_service.dart
│   │   ├── permission_service.dart
│   │   ├── biometric_service.dart
│   │   └── deep_link_service.dart
│   ├── storage/
│   │   ├── app_database.dart
│   │   ├── secure_storage.dart
│   │   ├── cache_manager.dart
│   │   ├── hive_service.dart
│   │   └── entities/
│   │       ├── user_entity.dart
│   │       └── cache_entity.dart
│   ├── theme/
│   │   ├── app_theme.dart
│   │   ├── color_schemes.dart
│   │   ├── text_theme.dart
│   │   ├── component_themes.dart
│   │   └── theme_extensions.dart
│   ├── utils/
│   │   ├── logger.dart
│   │   ├── validators.dart
│   │   ├── formatters.dart
│   │   ├── helpers.dart
│   │   ├── debouncer.dart
│   │   └── device_utils.dart
│   └── widgets/
│       ├── adaptive/
│       │   ├── adaptive_app_bar.dart
│       │   ├── adaptive_button.dart
│       │   ├── adaptive_dialog.dart
│       │   └── adaptive_loading.dart
│       ├── animations/
│       │   ├── fade_in_animation.dart
│       │   ├── slide_animation.dart
│       │   └── scale_animation.dart
│       ├── async/
│       │   ├── async_value_widget.dart
│       │   ├── future_builder_widget.dart
│       │   └── stream_builder_widget.dart
│       ├── buttons/
│       │   ├── primary_button.dart
│       │   ├── secondary_button.dart
│       │   ├── icon_button.dart
│       │   └── floating_action_button.dart
│       ├── feedback/
│       │   ├── loading_overlay.dart
│       │   ├── error_widget.dart
│       │   ├── empty_state.dart
│       │   ├── success_widget.dart
│       │   └── toast_widget.dart
│       ├── forms/
│       │   ├── app_text_field.dart
│       │   ├── password_field.dart
│       │   ├── dropdown_field.dart
│       │   ├── checkbox_field.dart
│       │   └── radio_field.dart
│       ├── layout/
│       │   ├── responsive_builder.dart
│       │   ├── safe_area_wrapper.dart
│       │   ├── spacing.dart
│       │   └── dividers.dart
│       └── navigation/
│           ├── bottom_nav_bar.dart
│           ├── drawer_widget.dart
│           └── tab_bar_widget.dart
├── shared/
│   ├── domain/
│   │   ├── entities/
│   │   │   ├── base_entity.dart
│   │   │   ├── user.dart
│   │   │   └── pagination.dart
│   │   ├── repositories/
│   │   │   └── base_repository.dart
│   │   └── usecases/
│   │       └── base_usecase.dart
│   ├── data/
│   │   ├── models/
│   │   │   ├── base_model.dart
│   │   │   ├── user_model.dart
│   │   │   └── pagination_model.dart
│   │   ├── datasources/
│   │   │   ├── base_remote_datasource.dart
│   │   │   └── base_local_datasource.dart
│   │   └── mappers/
│   │       └── base_mapper.dart
│   └── presentation/
│       ├── bloc/
│       │   ├── base_bloc.dart
│       │   ├── base_event.dart
│       │   ├── base_state.dart
│       │   └── app_bloc_observer.dart
│       ├── cubits/
│       │   ├── connectivity_cubit.dart
│       │   ├── theme_cubit.dart
│       │   └── locale_cubit.dart
│       └── mixins/
│           ├── loading_mixin.dart
│           ├── error_handling_mixin.dart
│           └── validation_mixin.dart
└── features/
    ├── authentication/
    │   ├── domain/
    │   │   ├── entities/
    │   │   │   ├── auth_user.dart
    │   │   │   ├── auth_tokens.dart
    │   │   │   ├── login_request.dart
    │   │   │   └── social_auth_data.dart
    │   │   ├── repositories/
    │   │   │   └── auth_repository.dart
    │   │   └── usecases/
    │   │       ├── login_usecase.dart
    │   │       ├── register_usecase.dart
    │   │       ├── logout_usecase.dart
    │   │       ├── refresh_token_usecase.dart
    │   │       ├── forgot_password_usecase.dart
    │   │       ├── verify_otp_usecase.dart
    │   │       ├── social_login_usecase.dart
    │   │       └── biometric_login_usecase.dart
    │   ├── data/
    │   │   ├── models/
    │   │   │   ├── auth_user_model.dart
    │   │   │   ├── auth_tokens_model.dart
    │   │   │   ├── login_request_model.dart
    │   │   │   ├── login_response_model.dart
    │   │   │   └── social_auth_model.dart
    │   │   ├── datasources/
    │   │   │   ├── remote/
    │   │   │   │   └── auth_remote_datasource.dart
    │   │   │   └── local/
    │   │   │       └── auth_local_datasource.dart
    │   │   ├── repositories/
    │   │   │   └── auth_repository_impl.dart
    │   │   └── mappers/
    │   │       └── auth_mapper.dart
    │   └── presentation/
    │       ├── bloc/
    │       │   ├── authentication/
    │       │   │   ├── auth_bloc.dart
    │       │   │   ├── auth_event.dart
    │       │   │   └── auth_state.dart
    │       │   ├── login/
    │       │   │   ├── login_bloc.dart
    │       │   │   ├── login_event.dart
    │       │   │   └── login_state.dart
    │       │   ├── register/
    │       │   │   ├── register_bloc.dart
    │       │   │   ├── register_event.dart
    │       │   │   └── register_state.dart
    │       │   ├── forgot_password/
    │       │   │   ├── forgot_password_bloc.dart
    │       │   │   ├── forgot_password_event.dart
    │       │   │   └── forgot_password_state.dart
    │       │   └── otp_verification/
    │       │       ├── otp_bloc.dart
    │       │       ├── otp_event.dart
    │       │       └── otp_state.dart
    │       ├── pages/
    │       │   ├── splash_page.dart
    │       │   ├── onboarding_page.dart
    │       │   ├── login_page.dart
    │       │   ├── register_page.dart
    │       │   ├── forgot_password_page.dart
    │       │   ├── otp_verification_page.dart
    │       │   └── reset_password_page.dart
    │       └── widgets/
    │           ├── auth_form.dart
    │           ├── login_form.dart
    │           ├── register_form.dart
    │           ├── social_login_section.dart
    │           ├── otp_input_field.dart
    │           ├── password_strength_indicator.dart
    │           └── biometric_prompt.dart
    ├── dashboard/
    │   ├── domain/
    │   │   ├── entities/
    │   │   │   ├── dashboard_data.dart
    │   │   │   ├── analytics_data.dart
    │   │   │   ├── quick_action.dart
    │   │   │   └── notification_summary.dart
    │   │   ├── repositories/
    │   │   │   └── dashboard_repository.dart
    │   │   └── usecases/
    │   │       ├── get_dashboard_data_usecase.dart
    │   │       ├── refresh_dashboard_usecase.dart
    │   │       └── get_analytics_usecase.dart
    │   ├── data/
    │   │   ├── models/
    │   │   │   ├── dashboard_data_model.dart
    │   │   │   ├── analytics_data_model.dart
    │   │   │   └── quick_action_model.dart
    │   │   ├── datasources/
    │   │   │   ├── remote/
    │   │   │   │   └── dashboard_remote_datasource.dart
    │   │   │   └── local/
    │   │   │       └── dashboard_local_datasource.dart
    │   │   └── repositories/
    │   │       └── dashboard_repository_impl.dart
    │   └── presentation/
    │       ├── bloc/
    │       │   ├── dashboard_bloc.dart
    │       │   ├── dashboard_event.dart
    │       │   ├── dashboard_state.dart
    │       │   ├── analytics/
    │       │   │   ├── analytics_bloc.dart
    │       │   │   ├── analytics_event.dart
    │       │   │   └── analytics_state.dart
    │       │   └── quick_actions/
    │       │       ├── quick_actions_cubit.dart
    │       │       └── quick_actions_state.dart
    │       ├── pages/
    │       │   ├── dashboard_page.dart
    │       │   ├── analytics_page.dart
    │       │   └── reports_page.dart
    │       └── widgets/
    │           ├── dashboard_header.dart
    │           ├── stats_card.dart
    │           ├── chart_widget.dart
    │           ├── quick_actions_grid.dart
    │           ├── recent_activity_list.dart
    │           └── refresh_indicator.dart
    ├── profile/
    │   ├── domain/
    │   │   ├── entities/
    │   │   │   ├── user_profile.dart
    │   │   │   ├── user_preferences.dart
    │   │   │   ├── profile_settings.dart
    │   │   │   └── privacy_settings.dart
    │   │   ├── repositories/
    │   │   │   └── profile_repository.dart
    │   │   └── usecases/
    │   │       ├── get_profile_usecase.dart
    │   │       ├── update_profile_usecase.dart
    │   │       ├── change_password_usecase.dart
    │   │       ├── upload_avatar_usecase.dart
    │   │       └── delete_account_usecase.dart
    │   ├── data/
    │   │   ├── models/
    │   │   │   ├── user_profile_model.dart
    │   │   │   ├── user_preferences_model.dart
    │   │   │   └── profile_settings_model.dart
    │   │   ├── datasources/
    │   │   │   ├── remote/
    │   │   │   │   └── profile_remote_datasource.dart
    │   │   │   └── local/
    │   │   │       └── profile_local_datasource.dart
    │   │   └── repositories/
    │   │       └── profile_repository_impl.dart
    │   └── presentation/
    │       ├── bloc/
    │       │   ├── profile/
    │       │   │   ├── profile_bloc.dart
    │       │   │   ├── profile_event.dart
    │       │   │   └── profile_state.dart
    │       │   ├── edit_profile/
    │       │   │   ├── edit_profile_bloc.dart
    │       │   │   ├── edit_profile_event.dart
    │       │   │   └── edit_profile_state.dart
    │       │   ├── settings/
    │       │   │   ├── settings_bloc.dart
    │       │   │   ├── settings_event.dart
    │       │   │   └── settings_state.dart
    │       │   └── avatar/
    │       │       ├── avatar_cubit.dart
    │       │       └── avatar_state.dart
    │       ├── pages/
    │       │   ├── profile_page.dart
    │       │   ├── edit_profile_page.dart
    │       │   ├── settings_page.dart
    │       │   ├── change_password_page.dart
    │       │   └── privacy_settings_page.dart
    │       └── widgets/
    │           ├── profile_header.dart
    │           ├── profile_avatar.dart
    │           ├── profile_info_card.dart
    │           ├── settings_section.dart
    │           ├── settings_tile.dart
    │           ├── avatar_picker.dart
    │           └── profile_form.dart
    ├── products/
    │   ├── domain/
    │   │   ├── entities/
    │   │   │   ├── product.dart
    │   │   │   ├── category.dart
    │   │   │   ├── product_filter.dart
    │   │   │   ├── cart_item.dart
    │   │   │   ├── wishlist_item.dart
    │   │   │   └── review.dart
    │   │   ├── repositories/
    │   │   │   ├── product_repository.dart
    │   │   │   ├── cart_repository.dart
    │   │   │   └── wishlist_repository.dart
    │   │   └── usecases/
    │   │       ├── get_products_usecase.dart
    │   │       ├── get_product_details_usecase.dart
    │   │       ├── search_products_usecase.dart
    │   │       ├── filter_products_usecase.dart
    │   │       ├── add_to_cart_usecase.dart
    │   │       ├── remove_from_cart_usecase.dart
    │   │       ├── add_to_wishlist_usecase.dart
    │   │       └── get_reviews_usecase.dart
    │   ├── data/
    │   │   ├── models/
    │   │   │   ├── product_model.dart
    │   │   │   ├── category_model.dart
    │   │   │   ├── cart_item_model.dart
    │   │   │   ├── wishlist_item_model.dart
    │   │   │   └── review_model.dart
    │   │   ├── datasources/
    │   │   │   ├── remote/
    │   │   │   │   ├── product_remote_datasource.dart
    │   │   │   │   └── review_remote_datasource.dart
    │   │   │   └── local/
    │   │   │       ├── cart_local_datasource.dart
    │   │   │       └── wishlist_local_datasource.dart
    │   │   └── repositories/
    │   │       ├── product_repository_impl.dart
    │   │       ├── cart_repository_impl.dart
    │   │       └── wishlist_repository_impl.dart
    │   └── presentation/
    │       ├── bloc/
    │       │   ├── product_list/
    │       │   │   ├── product_list_bloc.dart
    │       │   │   ├── product_list_event.dart
    │       │   │   └── product_list_state.dart
    │       │   ├── product_details/
    │       │   │   ├── product_details_bloc.dart
    │       │   │   ├── product_details_event.dart
    │       │   │   └── product_details_state.dart
    │       │   ├── search/
    │       │   │   ├── product_search_bloc.dart
    │       │   │   ├── product_search_event.dart
    │       │   │   └── product_search_state.dart
    │       │   ├── cart/
    │       │   │   ├── cart_bloc.dart
    │       │   │   ├── cart_event.dart
    │       │   │   └── cart_state.dart
    │       │   ├── wishlist/
    │       │   │   ├── wishlist_bloc.dart
    │       │   │   ├── wishlist_event.dart
    │       │   │   └── wishlist_state.dart
    │       │   └── filter/
    │       │       ├── filter_cubit.dart
    │       │       └── filter_state.dart
    │       ├── pages/
    │       │   ├── products_page.dart
    │       │   ├── product_details_page.dart
    │       │   ├── cart_page.dart
    │       │   ├── wishlist_page.dart
    │       │   ├── search_page.dart
    │       │   └── checkout_page.dart
    │       └── widgets/
    │           ├── product_card.dart
    │           ├── product_grid.dart
    │           ├── product_list_item.dart
    │           ├── product_image_carousel.dart
    │           ├── product_info_section.dart
    │           ├── product_reviews_section.dart
    │           ├── search_bar.dart
    │           ├── filter_chips.dart
    │           ├── filter_bottom_sheet.dart
    │           ├── cart_item_widget.dart
    │           ├── cart_summary.dart
    │           ├── wishlist_button.dart
    │           └── add_to_cart_button.dart
    └── notifications/
        ├── domain/
        │   ├── entities/
        │   │   ├── notification.dart
        │   │   ├── notification_settings.dart
        │   │   └── push_notification.dart
        │   ├── repositories/
        │   │   └── notification_repository.dart
        │   └── usecases/
        │       ├── get_notifications_usecase.dart
        │       ├── mark_as_read_usecase.dart
        │       ├── delete_notification_usecase.dart
        │       └── update_settings_usecase.dart
        ├── data/
        │   ├── models/
        │   │   ├── notification_model.dart
        │   │   ├── notification_settings_model.dart
        │   │   └── push_notification_model.dart
        │   ├── datasources/
        │   │   ├── remote/
        │   │   │   └── notification_remote_datasource.dart
        │   │   └── local/
        │   │       └── notification_local_datasource.dart
        │   ├── repositories/
        │   │   └── notification_repository_impl.dart
        │   └── services/
        │       ├── fcm_service.dart
        │       └── local_notification_service.dart
        └── presentation/
            ├── bloc/
            │   ├── notifications/
            │   │   ├── notifications_bloc.dart
            │   │   ├── notifications_event.dart
            │   │   └── notifications_state.dart
            │   └── settings/
            │       ├── notification_settings_cubit.dart
            │       └── notification_settings_state.dart
            ├── pages/
            │   ├── notifications_page.dart
            │   └── notification_settings_page.dart
            └── widgets/
                ├── notification_tile.dart
                ├── notification_filter.dart
                ├── notification_settings_tile.dart
                └── empty_notifications.dart