
ź
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
A
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
i
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.2.02v1.2.0-rc2-21-g12f033dńq
o

imageinputPlaceholder*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
\
zerosConst*
dtype0*
_output_shapes
:	
*
valueB	
*    
~
Variable
VariableV2*
_output_shapes
:	
*
	container *
shape:	
*
dtype0*
shared_name 

Variable/AssignAssignVariablezeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	
*
_class
loc:@Variable
j
Variable/readIdentityVariable*
_class
loc:@Variable*
_output_shapes
:	
*
T0
T
zeros_1Const*
valueB
*    *
_output_shapes
:
*
dtype0
v

Variable_1
VariableV2*
shape:
*
shared_name *
dtype0*
_output_shapes
:
*
	container 

Variable_1/AssignAssign
Variable_1zeros_1*
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_1*
T0*
use_locking(
k
Variable_1/readIdentity
Variable_1*
T0*
_output_shapes
:
*
_class
loc:@Variable_1

MatMulMatMul
imageinputVariable/read*
transpose_b( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( *
T0
W
ymainAddMatMulVariable_1/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
i
yunderPlaceholder*
shape:˙˙˙˙˙˙˙˙˙
*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

F
RankConst*
_output_shapes
: *
dtype0*
value	B :
J
ShapeShapeymain*
T0*
out_type0*
_output_shapes
:
H
Rank_1Const*
dtype0*
_output_shapes
: *
value	B :
L
Shape_1Shapeymain*
T0*
_output_shapes
:*
out_type0
G
Sub/yConst*
value	B :*
_output_shapes
: *
dtype0
:
SubSubRank_1Sub/y*
_output_shapes
: *
T0
R
Slice/beginPackSub*
N*
T0*
_output_shapes
:*

axis 
T

Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
b
SliceSliceShape_1Slice/begin
Slice/size*
Index0*
T0*
_output_shapes
:
b
concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
q
concatConcatV2concat/values_0Sliceconcat/axis*
_output_shapes
:*
N*
T0*

Tidx0
j
ReshapeReshapeymainconcat*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
H
Rank_2Const*
dtype0*
_output_shapes
: *
value	B :
M
Shape_2Shapeyunder*
out_type0*
_output_shapes
:*
T0
I
Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :
>
Sub_1SubRank_2Sub_1/y*
_output_shapes
: *
T0
V
Slice_1/beginPackSub_1*

axis *
_output_shapes
:*
T0*
N
V
Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
h
Slice_1SliceShape_2Slice_1/beginSlice_1/size*
_output_shapes
:*
Index0*
T0
d
concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙
O
concat_1/axisConst*
value	B : *
_output_shapes
: *
dtype0
y
concat_1ConcatV2concat_1/values_0Slice_1concat_1/axis*
N*

Tidx0*
T0*
_output_shapes
:
o
	Reshape_1Reshapeyunderconcat_1*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsReshape	Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
I
Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :
<
Sub_2SubRankSub_2/y*
T0*
_output_shapes
: 
W
Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
U
Slice_2/sizePackSub_2*
_output_shapes
:*
N*

axis *
T0
o
Slice_2SliceShapeSlice_2/beginSlice_2/size*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0*
T0
x
	Reshape_2ReshapeSoftmaxCrossEntropyWithLogitsSlice_2*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
O
ConstConst*
dtype0*
_output_shapes
:*
valueB: 
\
MeanMean	Reshape_2Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
T
gradients/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Y
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
: *
T0
k
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
b
gradients/Mean_grad/ShapeShape	Reshape_2*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

Tmultiples0
d
gradients/Mean_grad/Shape_1Shape	Reshape_2*
out_type0*
_output_shapes
:*
T0
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
e
gradients/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
{
gradients/Reshape_2_grad/ShapeShapeSoftmaxCrossEntropyWithLogits*
T0*
_output_shapes
:*
out_type0
¤
 gradients/Reshape_2_grad/ReshapeReshapegradients/Mean_grad/truedivgradients/Reshape_2_grad/Shape*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
}
gradients/zeros_like	ZerosLikeSoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
â
7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/Reshape_2_grad/Reshape;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ě
0gradients/SoftmaxCrossEntropyWithLogits_grad/mulMul7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDimsSoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
a
gradients/Reshape_grad/ShapeShapeymain*
out_type0*
_output_shapes
:*
T0
š
gradients/Reshape_grad/ReshapeReshape0gradients/SoftmaxCrossEntropyWithLogits_grad/mulgradients/Reshape_grad/Shape*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
`
gradients/ymain_grad/ShapeShapeMatMul*
T0*
_output_shapes
:*
out_type0
f
gradients/ymain_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
ş
*gradients/ymain_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/ymain_grad/Shapegradients/ymain_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ť
gradients/ymain_grad/SumSumgradients/Reshape_grad/Reshape*gradients/ymain_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/ymain_grad/ReshapeReshapegradients/ymain_grad/Sumgradients/ymain_grad/Shape*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
Ż
gradients/ymain_grad/Sum_1Sumgradients/Reshape_grad/Reshape,gradients/ymain_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/ymain_grad/Reshape_1Reshapegradients/ymain_grad/Sum_1gradients/ymain_grad/Shape_1*
Tshape0*
_output_shapes
:
*
T0
m
%gradients/ymain_grad/tuple/group_depsNoOp^gradients/ymain_grad/Reshape^gradients/ymain_grad/Reshape_1
â
-gradients/ymain_grad/tuple/control_dependencyIdentitygradients/ymain_grad/Reshape&^gradients/ymain_grad/tuple/group_deps*/
_class%
#!loc:@gradients/ymain_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
Ű
/gradients/ymain_grad/tuple/control_dependency_1Identitygradients/ymain_grad/Reshape_1&^gradients/ymain_grad/tuple/group_deps*1
_class'
%#loc:@gradients/ymain_grad/Reshape_1*
_output_shapes
:
*
T0
˝
gradients/MatMul_grad/MatMulMatMul-gradients/ymain_grad/tuple/control_dependencyVariable/read*
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
T0
ł
gradients/MatMul_grad/MatMul_1MatMul
imageinput-gradients/ymain_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	
*
transpose_a(
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ĺ
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
â
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
_output_shapes
:	
*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
T0
b
GradientDescent/learning_rateConst*
valueB
 *   ?*
_output_shapes
: *
dtype0

4GradientDescent/update_Variable/ApplyGradientDescentApplyGradientDescentVariableGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
_class
loc:@Variable*
_output_shapes
:	
*
T0*
use_locking( 

6GradientDescent/update_Variable_1/ApplyGradientDescentApplyGradientDescent
Variable_1GradientDescent/learning_rate/gradients/ymain_grad/tuple/control_dependency_1*
use_locking( *
T0*
_output_shapes
:
*
_class
loc:@Variable_1

GradientDescentNoOp5^GradientDescent/update_Variable/ApplyGradientDescent7^GradientDescent/update_Variable_1/ApplyGradientDescent
2
initNoOp^Variable/Assign^Variable_1/Assign
Q
infer/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
a
inferArgMaxymaininfer/dimension*

Tidx0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
d
ArgMaxArgMaxyunderArgMax/dimension*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

Tidx0
K
EqualEqualinferArgMax*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
Cast_1CastEqual*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0

Q
Const_1Const*
valueB: *
_output_shapes
:*
dtype0
]
Mean_1MeanCast_1Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_5983bfaf1a884f8aa278a353419007d9/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
\
save/ShardedFilename/shardConst*
_output_shapes
: *
dtype0*
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
u
save/SaveV2/tensor_namesConst*)
value BBVariableB
Variable_1*
dtype0*
_output_shapes
:
g
save/SaveV2/shape_and_slicesConst*
valueBB B *
_output_shapes
:*
dtype0

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1*
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
_output_shapes
: *
T0
l
save/RestoreV2/tensor_namesConst*
valueBBVariable*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2

save/AssignAssignVariablesave/RestoreV2*
_output_shapes
:	
*
validate_shape(*
_class
loc:@Variable*
T0*
use_locking(
p
save/RestoreV2_1/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Variable_1
j
!save/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
˘
save/Assign_1Assign
Variable_1save/RestoreV2_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*
_class
loc:@Variable_1
8
save/restore_shardNoOp^save/Assign^save/Assign_1
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"
trainable_variableshf
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0"
train_op

GradientDescent"u
	variableshf
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0