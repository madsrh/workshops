import 'package:flutter/widgets.dart';
import 'package:lxd/lxd.dart';
import 'package:provider/provider.dart';

import 'instance_store.dart';

extension InstanceContext on BuildContext {
  LxdInstance? selectInstance(LxdInstanceId id) {
    return select<InstanceStore, LxdInstance?>((s) => s.getInstance(id));
  }
}
