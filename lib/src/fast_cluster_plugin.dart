import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_map_fast_cluster/src/fast_cluster_layer.dart';
import 'package:flutter_map_fast_cluster/src/fast_cluster_layer_options.dart';

class FastClusterPlugin extends MapPlugin {
  @override
  Widget createLayer(
      LayerOptions options, MapState mapState, Stream<void> stream) {
    return FastClusterLayer(
        options as FastClusterLayerOptions, mapState, stream);
  }

  @override
  bool supportsLayer(LayerOptions options) {
    return options is FastClusterLayerOptions;
  }
}
