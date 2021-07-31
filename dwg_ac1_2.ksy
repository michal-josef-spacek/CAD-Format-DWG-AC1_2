meta:
  id: dwg_0120
  title: AutoCAD drawing (AC1.2)
  application: AutoCAD
  file-extension:
    - dwg
  license: CC0-1.0
  xref:
    justsolve: DWG
    pronom:
      fmt: 22
    mime:
      - application/x-dwg
      - image/vnd.dwg
    wikidata: Q27863107
  endian: le
seq:
  - id: header
    type: header
##  - id: entities
##    type: entity
##    repeat: expr
##    repeat-expr: header.number_of_entities
types:
  header:
    seq:
      - id: magic
        contents: [0x41, 0x43, 0x31, 0x2e, 0x32, 0x00]
      - id: zeros
        size: 5
      - id: unknown1
        size: 1
      - id: insertion_base_x
        size: 8
        doc: 0x000c-0x0013
      - id: insertion_base_y
        size: 8
        doc: 0x0014-0x001b
      - id: unknown2
        size: 12
      - id: number_of_entities
        type: s2
        doc: 0x0028-0x0029
      - id: drawing_first_x
        size: 8
      - id: drawing_first_y
        size: 8
      - id: unknown3
        size: 8
      - id: drawing_second_x
        size: 8
      - id: drawing_second_y
        size: 8
      - id: unknown4
        size: 8
      - id: limits_min_x
        size: 8
        doc: 0x005a-0x0061
      - id: limits_min_y
        size: 8
        doc: 0x0062-0x0069
      - id: limits_max_x
        size: 8
        doc: 0x006a-0x0071
      - id: limits_max_y
        size: 8
        doc: 0x0072-0x0079
      - id: dwgview1
        size: 8
      - id: dwgview2
        size: 8
      - id: unknown5
        size: 8
      - id: dwgview3
        size: 8
      - id: snap
        type: s2
        doc: 0x009a-0x009b
      - id: snap_resolution
        size: 8
        doc: 0x009c-0x00a3
      - id: grid
        type: s2
        doc: 0x00a4-0x00a5
      - id: grid_value
        size: 8
        doc: 0x00a6-0x00ad
      - id: ortho
        type: s2
        doc: 0x00ae-0x00af
      - id: unknown6
        size: 2
        doc: XXX could be ffff
      - id: fill
        type: s2
        doc: 0x00b2-0x00b3 (XXX could be ffff)
      - id: text_size
        size: 8
      - id: trace_width
        size: 8
      - id: actual_layer
        type: s2
        doc: 0x00c4-0x00c5
      - id: actual_color
        type: s2
        doc: 0x00c6-0x00c7
      - id: unknown9
        size: 2
      - id: layers
        type: s2
        repeat: expr
        repeat-expr: 127
      - id: unknown10
        size: 8
      - id: unknown11
        size: 8
      - id: units_type
        type: s2
        enum: unit_types
        doc: 0x01d8-0x01d9
      - id: number_of_digits
        type: s2
        doc: 0x01da-0x01db
      - id: unknown12
        size: 4
      - id: axis
        type: s2
        doc: 0x01e0-0x01e1
      - id: axis_value
        size: 8
        doc: 0x01e2-0x01e9
      - id: unknown13
        size: 8
        doc: XXX Value is 0.25 somewhere
      - id: unknown14
        size: 8
        doc: XXX Value is 0.1 somewhere
      - id: unknown15
        size: 8
##  entity:
##    seq:
##      - id: entity_type
##        type: s2
##        enum: entities
##      - id: data
##        type:
##          switch-on: entity_type
##          cases:
##            'entities::foo': entity_foo
##            'entities::arc': entity_arc
##            'entities::block_begin': entity_block_begin
##            'entities::block_end': entity_block_end
##            'entities::block_insert' : entity_block_insert
##            'entities::circle': entity_circle
##            'entities::line': entity_line
##            'entities::load': entity_load
##            'entities::point': entity_point
##            'entities::repeat_begin': entity_repeat_begin
##            'entities::repeat_end': entity_repeat_end
##            'entities::shape': entity_shape
##            'entities::solid': entity_solid
##            'entities::text': entity_text
##            'entities::tmp': entity_tmp
##            'entities::trace': entity_trace
##  entity_foo:
##    seq:
##      - id: layer
##        type: s2
##      - id: x
##        size: 8
##      - id: y
##        size: 8
##  entity_arc:
##    seq:
##      - id: layer
##        type: s2
##      - id: x
##        size: 8
##      - id: y
##        size: 8
##      - id: radius
##        size: 8
##      - id: angle_from
##        size: 8
##      - id: angle_to
##        size: 8
##  entity_block_begin:
##    seq:
##      - id: layer
##        type: s2
##      - id: size
##        type: s2
##      - id: value
##        size: size
##      - id: x
##        size: 8
##      - id: y
##        size: 8
##  entity_block_end:
##    seq:
##      - id: layer
##        type: s2
##  entity_block_insert:
##    seq:
##      - id: layer
##        type: s2
##      - id: size
##        type: s2
##      - id: value
##        size: size
##      - id: x1
##        size: 8
##      - id: y1
##        size: 8
##      - id: x2
##        size: 8
##      - id: y2
##        size: 8
##      ## TODO Co to je?
##      - id: z
##        size: 8
##  entity_circle:
##    seq:
##      - id: layer
##        type: s2
##      - id: x
##        size: 8
##      - id: y
##        size: 8
##      - id: radius
##        size: 8
##  entity_line:
##    seq:
##      - id: layer
##        type: s2
##      - id: x1
##        size: 8
##      - id: y1
##        size: 8
##      - id: x2
##        size: 8
##      - id: y2
##        size: 8
##  entity_load:
##    seq:
##      - id: layer
##        type: s2
##      - id: size
##        type: s2
##      - id: value
##        size: size
##  entity_point:
##    seq:
##      - id: layer
##        type: s2
##      - id: x
##        size: 8
##      - id: y
##        size: 8
##  entity_repeat_begin:
##    seq:
##      - id: layer
##        type: s2
##  entity_repeat_end:
##    seq:
##      - id: layer
##        type: s2
##      - id: columns
##        type: s2
##      - id: rows
##        type: s2
##      - id: column_distance
##        size: 8
##      - id: row_distance
##        size: 8
##  entity_shape:
##    seq:
##      - id: layer
##        type: s2
##      - id: x
##        size: 8
##      - id: y
##        size: 8
##      - id: height
##        size: 8
##      - id: angle
##        size: 8
##      - id: item_num
##        type: s2
##  entity_solid:
##    seq:
##      - id: layer
##        type: s2
##      - id: from_x
##        size: 8
##      - id: from_y
##        size: 8
##      - id: from_and_x
##        size: 8
##      - id: from_and_y
##        size: 8
##      - id: to_x
##        size: 8
##      - id: to_y
##        size: 8
##      - id: to_and_x
##        size: 8
##      - id: to_and_y
##        size: 8
##  entity_text:
##    seq:
##      - id: layer
##        type: s2
##      - id: x
##        size: 8
##      - id: y
##        size: 8
##      - id: height
##        size: 8
##        doc: TODO right?
##      - id: angle
##        size: 8
##        doc: TODO right?
##      - id: size
##        type: s2
##      - id: value
##        size: size
##  entity_tmp:
##    doc: Removed after redraw
##    seq:
##      - id: layer
##        type: s2
##      - id: x1
##        size: 8
##      - id: y1
##        size: 8
##      - id: x2
##        size: 8
##      - id: y2
##        size: 8
##  entity_trace:
##    seq:
##      - id: layer
##        type: s2
##      - id: from_x
##        size: 8
##      - id: from_y
##        size: 8
##      - id: from_and_x
##        size: 8
##      - id: from_and_y
##        size: 8
##      - id: to_x
##        size: 8
##      - id: to_y
##        size: 8
##      - id: to_and_x
##        size: 8
##      - id: to_and_y
##        size: 8
enums:
  entities:
    ## TODO Many tmps
    -1: tmp
    -2: foo
    1: line
    2: point
    3: circle
    4: shape
    5: repeat_begin
    6: repeat_end
    7: text
    8: arc
    9: trace
    10: load
    11: solid
    12: block_begin
    13: block_end
    14: block_insert
  unit_types:
    1: scientific
    2: decimal
    3: engineering
    4: architectural
