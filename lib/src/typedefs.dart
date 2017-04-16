import 'package:built_value/built_value.dart';

import 'action.dart';
import 'middleware.dart';

typedef void Reducer<P, V extends Built<V, B>, B extends Builder<V, B>>(
    B builder, Action<P> action);

typedef ActionHandler(Action a);
typedef ActionHandler NextActionHandler(ActionHandler next);
typedef NextActionHandler Middleware<State>(MiddlewareApi api);