common/: Shared entities, models, and utilities used across features.
config/: App-wide configurations and dependency injection.
infrastructure/: Services like network, storage, and localization.

config/feature_flags.dart to support dynamic feature toggling via a service like Firebase Remote Config or a custom solution.

lib/
├── main.dart # Entry point
├── app.dart # App widget with global providers
├── bootstrap.dart # App initialization (DI, configs, etc.)
├── common/ # Shared utilities and base components
│ ├── constants/ # App-wide constants
│ │ ├── app_constants.dart
│ │ ├── api_constants.dart
│ │ └── asset_constants.dart
│ ├── entities/ # Shared domain entities
│ │ ├── base_entity.dart
│ │ ├── user.dart
│ │ └── pagination.dart
│ ├── models/ # Shared data models
│ │ ├── base_model.dart
│ │ ├── user_model.dart
│ │ └── pagination_model.dart
│ ├── extensions/ # Utility extensions
│ │ ├── string_x.dart
│ │ ├── date_time_x.dart
│ │ └── build_context_x.dart
│ ├── utils/ # General utilities
│ │ ├── logger.dart
│ │ ├── validators.dart
│ │ └── helpers.dart
│ └── widgets/ # Reusable, non-feature-specific widgets
│ ├── adaptive_button.dart
│ ├── loading_indicator.dart
│ ├── error_widget.dart
│ └── toast_widget.dart
├── config/ # App configuration and DI
│ ├── di/ # Dependency injection
│ │ ├── injection.dart
│ │ └── modules/
│ │ ├── auth_module.dart
│ │ ├── network_module.dart
│ │ └── storage_module.dart
│ ├── environment.dart # Environment configs (dev, prod, staging)
│ ├── feature_flags.dart # Feature flag management
│ └── app_config.dart # Global app settings
├── infrastructure/ # Infrastructure services (network, storage, etc.)
│ ├── network/ # Network-related utilities
│ │ ├── dio_client.dart
│ │ ├── api_client.dart
│ │ ├── connectivity_service.dart
│ │ └── interceptors/
│ │ ├── auth_interceptor.dart
│ │ └── logging_interceptor.dart
│ ├── storage/ # Storage services
│ │ ├── secure_storage.dart
│ │ ├── cache_manager.dart
│ │ └── entities/
│ │ ├── user_entity.dart
│ │ └── cache_entity.dart
│ ├── services/ # External services
│ │ ├── analytics_service.dart
│ │ ├── notification_service.dart
│ │ └── biometric_service.dart
│ ├── l10n/ # Localization
│ │ ├── app_localizations.dart
│ │ └── locales/
│ │ ├── en/app_en.arb
│ │ ├── es/app_es.arb
│ │ └── fr/app_fr.arb
│ └── router/ # Navigation
│ ├── app_router.dart
│ ├── route_names.dart
│ └── guards/
│ ├── auth_guard.dart
│ └── role_guard.dart
├── features/ # Feature modules
│ ├── authentication/ # Authentication feature
│ │ ├── data/ # Data layer
│ │ │ ├── datasources/
│ │ │ │ ├── auth_remote_datasource.dart
│ │ │ │ └── auth_local_datasource.dart
│ │ │ ├── models/
│ │ │ │ ├── auth_user_model.dart
│ │ │ │ └── auth_tokens_model.dart
│ │ │ └── repository/
│ │ │ └── auth_repository_impl.dart
│ │ ├── domain/ # Domain layer
│ │ │ ├── entities/
│ │ │ │ ├── auth_user.dart
│ │ │ │ └── auth_tokens.dart
│ │ │ ├── repository/
│ │ │ │ └── auth_repository.dart
│ │ │ └── usecases/
│ │ │ ├── login_usecase.dart
│ │ │ ├── register_usecase.dart
│ │ │ └── logout_usecase.dart
│ │ └── presentation/ # Presentation layer
│ │ ├── state/ # State management (BLoC/Cubit)
│ │ │ ├── auth_cubit.dart
│ │ │ └── auth_state.dart
│ │ ├── pages/
│ │ │ ├── login_page.dart
│ │ │ ├── register_page.dart
│ │ │ └── splash_page.dart
│ │ └── widgets/
│ │ ├── auth_form.dart
│ │ └── social_login_button.dart
│ ├── dashboard/ # Dashboard feature
│ │ ├── data/
│ │ │ ├── datasources/
│ │ │ │ ├── dashboard_remote_datasource.dart
│ │ │ │ └── dashboard_local_datasource.dart
│ │ │ ├── models/
│ │ │ │ ├── dashboard_data_model.dart
│ │ │ │ └── analytics_model.dart
│ │ │ └── repository/
│ │ │ └── dashboard_repository_impl.dart
│ │ ├── domain/
│ │ │ ├── entities/
│ │ │ │ ├── dashboard_data.dart
│ │ │ │ └── analytics_data.dart
│ │ │ ├── repository/
│ │ │ │ └── dashboard_repository.dart
│ │ │ └── usecases/
│ │ │ ├── get_dashboard_data_usecase.dart
│ │ │ └── get_analytics_usecase.dart
│ │ └── presentation/
│ │ ├── state/
│ │ │ ├── dashboard_cubit.dart
│ │ │ └── dashboard_state.dart
│ │ ├── pages/
│ │ │ ├── dashboard_page.dart
│ │ │ └── analytics_page.dart
│ │ └── widgets/
│ │ ├── stats_card.dart
│ │ └── chart_widget.dart
│ ├── profile/ # Profile feature
│ │ ├── data/
│ │ │ ├── datasources/
│ │ │ │ ├── profile_remote_datasource.dart
│ │ │ │ └── profile_local_datasource.dart
│ │ │ ├── models/
│ │ │ │ ├── user_profile_model.dart
│ │ │ │ └── settings_model.dart
│ │ │ └── repository/
│ │ │ └── profile_repository_impl.dart
│ │ ├── domain/
│ │ │ ├── entities/
│ │ │ │ ├── user_profile.dart
│ │ │ │ └── settings.dart
│ │ │ ├── repository/
│ │ │ │ └── profile_repository.dart
│ │ │ └── usecases/
│ │ │ ├── get_profile_usecase.dart
│ │ │ └── update_profile_usecase.dart
│ │ └── presentation/
│ │ ├── state/
│ │ │ ├── profile_cubit.dart
│ │ │ └── profile_state.dart
│ │ ├── pages/
│ │ │ ├── profile_page.dart
│ │ │ └── settings_page.dart
│ │ └── widgets/
│ │ ├── profile_avatar.dart
│ │ └── profile_form.dart
│ ├── products/ # Products feature
│ │ ├── data/
│ │ │ ├── datasources/
│ │ │ │ ├── product_remote_datasource.dart
│ │ │ │ └── product_local_datasource.dart
│ │ │ ├── models/
│ │ │ │ ├── product_model.dart
│ │ │ │ └── cart_model.dart
│ │ │ └── repository/
│ │ │ ├── product_repository_impl.dart
│ │ │ └── cart_repository_impl.dart
│ │ ├── domain/
│ │ │ ├── entities/
│ │ │ │ ├── product.dart
│ │ │ │ └── cart_item.dart
│ │ │ ├── repository/
│ │ │ │ ├── product_repository.dart
│ │ │ │ └── cart_repository.dart
│ │ │ └── usecases/
│ │ │ ├── get_products_usecase.dart
│ │ │ └── add_to_cart_usecase.dart
│ │ └── presentation/
│ │ ├── state/
│ │ │ ├── product_cubit.dart
│ │ │ └── product_state.dart
│ │ ├── pages/
│ │ │ ├── products_page.dart
│ │ │ └── product_details_page.dart
│ │ └── widgets/
│ │ ├── product_card.dart
│ │ └── add_to_cart_button.dart
│ └── notifications/ # Notifications feature (simplified for lightweight feature)
│ ├── notification_repository.dart
│ ├── notification_model.dart
│ ├── usecases/
│ │ ├── get_notifications_usecase.dart
│ │ └── mark_as_read_usecase.dart
│ ├── state/
│ │ ├── notifications_cubit.dart
│ │ └── notifications_state.dart
│ ├── pages/
│ │ └── notifications_page.dart
│ └── widgets/
│ └── notification_tile.dart
└── tests/ # Testing directory mirroring lib/
├── common/
├── infrastructure/
├── features/
│ ├── authentication/
│ ├── dashboard/
│ ├── profile/
│ ├── products/
│ └── notifications/
└── integration/
├── app_test.dart
└── flows/
├── auth_flow_test.dart
└── product_flow_test.dart
