
З
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
О
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12unknown8
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ш*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
ш*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ш*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:ш*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
шє*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
шє*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:є*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:є*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	єd*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	єd*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:d*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:d
*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:
*
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
d
momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
momentum
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

NoOpNoOp
П%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*њ$
value№$Bэ$ Bц$
С
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

trainable_variables
	variables
regularization_losses
	keras_api

signatures
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
R
#trainable_variables
$	variables
%regularization_losses
&	keras_api
h

'kernel
(bias
)trainable_variables
*	variables
+regularization_losses
,	keras_api
R
-trainable_variables
.	variables
/regularization_losses
0	keras_api
h

1kernel
2bias
3trainable_variables
4	variables
5regularization_losses
6	keras_api
6
	7decay
8learning_rate
9momentum
:iter
8
0
1
2
3
'4
(5
16
27
8
0
1
2
3
'4
(5
16
27
 
­

;layers
<metrics
=non_trainable_variables

trainable_variables
>layer_regularization_losses
	variables
regularization_losses
?layer_metrics
 
 
 
 
­

@layers
Ametrics
Bnon_trainable_variables
trainable_variables
Clayer_regularization_losses
	variables
regularization_losses
Dlayer_metrics
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

Elayers
Fmetrics
Gnon_trainable_variables
trainable_variables
Hlayer_regularization_losses
	variables
regularization_losses
Ilayer_metrics
 
 
 
­

Jlayers
Kmetrics
Lnon_trainable_variables
trainable_variables
Mlayer_regularization_losses
	variables
regularization_losses
Nlayer_metrics
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­

Olayers
Pmetrics
Qnon_trainable_variables
trainable_variables
Rlayer_regularization_losses
 	variables
!regularization_losses
Slayer_metrics
 
 
 
­

Tlayers
Umetrics
Vnon_trainable_variables
#trainable_variables
Wlayer_regularization_losses
$	variables
%regularization_losses
Xlayer_metrics
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
­

Ylayers
Zmetrics
[non_trainable_variables
)trainable_variables
\layer_regularization_losses
*	variables
+regularization_losses
]layer_metrics
 
 
 
­

^layers
_metrics
`non_trainable_variables
-trainable_variables
alayer_regularization_losses
.	variables
/regularization_losses
blayer_metrics
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
­

clayers
dmetrics
enon_trainable_variables
3trainable_variables
flayer_regularization_losses
4	variables
5regularization_losses
glayer_metrics
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
8
0
1
2
3
4
5
6
7

h0
i1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	jtotal
	kcount
l	variables
m	keras_api
D
	ntotal
	ocount
p
_fn_kwargs
q	variables
r	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

j0
k1

l	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

n0
o1

q	variables

serving_default_input_inputPlaceholder*/
_output_shapes
:џџџџџџџџџ  *
dtype0*$
shape:џџџџџџџџџ  
П
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_inputdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasoutput/kerneloutput/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_141254
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ў
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOpSGD/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_141634
щ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasoutput/kerneloutput/biasdecaylearning_ratemomentumSGD/itertotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_141692ЊМ
є	
л
B__inference_output_layer_call_and_return_conditional_losses_141081

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
+
Т
?__inference_MLP_layer_call_and_return_conditional_losses_141349

inputs*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЂoutput/BiasAdd/ReadVariableOpЂoutput/MatMul/ReadVariableOpk
input/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
input/Constz
input/ReshapeReshapeinputsinput/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
input/ReshapeЇ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ш*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMulinput/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_1/MatMulЅ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02 
dense_1/BiasAdd/ReadVariableOpЂ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_1/Relu
dropout_1/IdentityIdentitydense_1/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dropout_1/IdentityЇ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
шє*
dtype02
dense_2/MatMul/ReadVariableOpЁ
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dense_2/MatMulЅ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:є*
dtype02 
dense_2/BiasAdd/ReadVariableOpЂ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dense_2/Relu
dropout_2/IdentityIdentitydense_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dropout_2/IdentityІ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	єd*
dtype02
dense_3/MatMul/ReadVariableOp 
dense_3/MatMulMatMuldropout_2/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dense_3/MatMulЄ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_3/BiasAdd/ReadVariableOpЁ
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dense_3/BiasAddp
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dense_3/Relu
dropout_3/IdentityIdentitydense_3/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_3/IdentityЂ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype02
output/MatMul/ReadVariableOp
output/MatMulMatMuldropout_3/Identity:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
output/MatMulЁ
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
output/BiasAdd/ReadVariableOp
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
output/BiasAddv
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
output/Softmaxю
IdentityIdentityoutput/Softmax:softmax:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ  ::::::::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
Ѓ
c
*__inference_dropout_3_layer_call_fn_141538

inputs
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1410522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџd22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs

и
$__inference_signature_wrapper_141254
input_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinput_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_1408812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ  ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:џџџџџџџџџ  
%
_user_specified_nameinput_input
Й
]
A__inference_input_layer_call_and_return_conditional_losses_141397

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ  :W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
Е
и
$__inference_MLP_layer_call_fn_141225
input_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinput_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_MLP_layer_call_and_return_conditional_losses_1412062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ  ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:џџџџџџџџџ  
%
_user_specified_nameinput_input
ќ.
щ
!__inference__wrapped_model_140881
input_input.
*mlp_dense_1_matmul_readvariableop_resource/
+mlp_dense_1_biasadd_readvariableop_resource.
*mlp_dense_2_matmul_readvariableop_resource/
+mlp_dense_2_biasadd_readvariableop_resource.
*mlp_dense_3_matmul_readvariableop_resource/
+mlp_dense_3_biasadd_readvariableop_resource-
)mlp_output_matmul_readvariableop_resource.
*mlp_output_biasadd_readvariableop_resource
identityЂ"MLP/dense_1/BiasAdd/ReadVariableOpЂ!MLP/dense_1/MatMul/ReadVariableOpЂ"MLP/dense_2/BiasAdd/ReadVariableOpЂ!MLP/dense_2/MatMul/ReadVariableOpЂ"MLP/dense_3/BiasAdd/ReadVariableOpЂ!MLP/dense_3/MatMul/ReadVariableOpЂ!MLP/output/BiasAdd/ReadVariableOpЂ MLP/output/MatMul/ReadVariableOps
MLP/input/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
MLP/input/Const
MLP/input/ReshapeReshapeinput_inputMLP/input/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MLP/input/ReshapeГ
!MLP/dense_1/MatMul/ReadVariableOpReadVariableOp*mlp_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ш*
dtype02#
!MLP/dense_1/MatMul/ReadVariableOpЌ
MLP/dense_1/MatMulMatMulMLP/input/Reshape:output:0)MLP/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
MLP/dense_1/MatMulБ
"MLP/dense_1/BiasAdd/ReadVariableOpReadVariableOp+mlp_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02$
"MLP/dense_1/BiasAdd/ReadVariableOpВ
MLP/dense_1/BiasAddBiasAddMLP/dense_1/MatMul:product:0*MLP/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
MLP/dense_1/BiasAdd}
MLP/dense_1/ReluReluMLP/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
MLP/dense_1/Relu
MLP/dropout_1/IdentityIdentityMLP/dense_1/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџш2
MLP/dropout_1/IdentityГ
!MLP/dense_2/MatMul/ReadVariableOpReadVariableOp*mlp_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
шє*
dtype02#
!MLP/dense_2/MatMul/ReadVariableOpБ
MLP/dense_2/MatMulMatMulMLP/dropout_1/Identity:output:0)MLP/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџє2
MLP/dense_2/MatMulБ
"MLP/dense_2/BiasAdd/ReadVariableOpReadVariableOp+mlp_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:є*
dtype02$
"MLP/dense_2/BiasAdd/ReadVariableOpВ
MLP/dense_2/BiasAddBiasAddMLP/dense_2/MatMul:product:0*MLP/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџє2
MLP/dense_2/BiasAdd}
MLP/dense_2/ReluReluMLP/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2
MLP/dense_2/Relu
MLP/dropout_2/IdentityIdentityMLP/dense_2/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџє2
MLP/dropout_2/IdentityВ
!MLP/dense_3/MatMul/ReadVariableOpReadVariableOp*mlp_dense_3_matmul_readvariableop_resource*
_output_shapes
:	єd*
dtype02#
!MLP/dense_3/MatMul/ReadVariableOpА
MLP/dense_3/MatMulMatMulMLP/dropout_2/Identity:output:0)MLP/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
MLP/dense_3/MatMulА
"MLP/dense_3/BiasAdd/ReadVariableOpReadVariableOp+mlp_dense_3_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02$
"MLP/dense_3/BiasAdd/ReadVariableOpБ
MLP/dense_3/BiasAddBiasAddMLP/dense_3/MatMul:product:0*MLP/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
MLP/dense_3/BiasAdd|
MLP/dense_3/ReluReluMLP/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
MLP/dense_3/Relu
MLP/dropout_3/IdentityIdentityMLP/dense_3/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd2
MLP/dropout_3/IdentityЎ
 MLP/output/MatMul/ReadVariableOpReadVariableOp)mlp_output_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype02"
 MLP/output/MatMul/ReadVariableOp­
MLP/output/MatMulMatMulMLP/dropout_3/Identity:output:0(MLP/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MLP/output/MatMul­
!MLP/output/BiasAdd/ReadVariableOpReadVariableOp*mlp_output_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02#
!MLP/output/BiasAdd/ReadVariableOp­
MLP/output/BiasAddBiasAddMLP/output/MatMul:product:0)MLP/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MLP/output/BiasAdd
MLP/output/SoftmaxSoftmaxMLP/output/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MLP/output/Softmax
IdentityIdentityMLP/output/Softmax:softmax:0#^MLP/dense_1/BiasAdd/ReadVariableOp"^MLP/dense_1/MatMul/ReadVariableOp#^MLP/dense_2/BiasAdd/ReadVariableOp"^MLP/dense_2/MatMul/ReadVariableOp#^MLP/dense_3/BiasAdd/ReadVariableOp"^MLP/dense_3/MatMul/ReadVariableOp"^MLP/output/BiasAdd/ReadVariableOp!^MLP/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ  ::::::::2H
"MLP/dense_1/BiasAdd/ReadVariableOp"MLP/dense_1/BiasAdd/ReadVariableOp2F
!MLP/dense_1/MatMul/ReadVariableOp!MLP/dense_1/MatMul/ReadVariableOp2H
"MLP/dense_2/BiasAdd/ReadVariableOp"MLP/dense_2/BiasAdd/ReadVariableOp2F
!MLP/dense_2/MatMul/ReadVariableOp!MLP/dense_2/MatMul/ReadVariableOp2H
"MLP/dense_3/BiasAdd/ReadVariableOp"MLP/dense_3/BiasAdd/ReadVariableOp2F
!MLP/dense_3/MatMul/ReadVariableOp!MLP/dense_3/MatMul/ReadVariableOp2F
!MLP/output/BiasAdd/ReadVariableOp!MLP/output/BiasAdd/ReadVariableOp2D
 MLP/output/MatMul/ReadVariableOp MLP/output/MatMul/ReadVariableOp:\ X
/
_output_shapes
:џџџџџџџџџ  
%
_user_specified_nameinput_input
І
г
$__inference_MLP_layer_call_fn_141370

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_MLP_layer_call_and_return_conditional_losses_1411572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ  ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs

F
*__inference_dropout_3_layer_call_fn_141543

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1410572
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
ў!

?__inference_MLP_layer_call_and_return_conditional_losses_141126
input_input
dense_1_141102
dense_1_141104
dense_2_141108
dense_2_141110
dense_3_141114
dense_3_141116
output_141120
output_141122
identityЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂoutput/StatefulPartitionedCallд
input/PartitionedCallPartitionedCallinput_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_1408912
input/PartitionedCallЋ
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput/PartitionedCall:output:0dense_1_141102dense_1_141104*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1409102!
dense_1/StatefulPartitionedCall§
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1409432
dropout_1/PartitionedCallЏ
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_141108dense_2_141110*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџє*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1409672!
dense_2/StatefulPartitionedCall§
dropout_2/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџє* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1410002
dropout_2/PartitionedCallЎ
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_3_141114dense_3_141116*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1410242!
dense_3/StatefulPartitionedCallќ
dropout_3/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1410572
dropout_3/PartitionedCallЉ
output/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0output_141120output_141122*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_1410812 
output/StatefulPartitionedCall
IdentityIdentity'output/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ  ::::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:\ X
/
_output_shapes
:џџџџџџџџџ  
%
_user_specified_nameinput_input
і	
м
C__inference_dense_1_layer_call_and_return_conditional_losses_140910

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ш*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

d
E__inference_dropout_3_layer_call_and_return_conditional_losses_141528

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeД
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_140995

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЕ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџє*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yП
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџє2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџє2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџє:P L
(
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs

F
*__inference_dropout_2_layer_call_fn_141496

inputs
identityЧ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџє* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1410002
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџє:P L
(
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs

d
E__inference_dropout_3_layer_call_and_return_conditional_losses_141052

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeД
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Ё
B
&__inference_input_layer_call_fn_141402

inputs
identityУ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_1408912
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ  :W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
І
г
$__inference_MLP_layer_call_fn_141391

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_MLP_layer_call_and_return_conditional_losses_1412062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ  ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
Ї
c
*__inference_dropout_1_layer_call_fn_141444

inputs
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1409382
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџш22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs

F
*__inference_dropout_1_layer_call_fn_141449

inputs
identityЧ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1409432
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџш:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_141481

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЕ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџє*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yП
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџє2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџє2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџє:P L
(
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
Ї
c
*__inference_dropout_2_layer_call_fn_141491

inputs
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџє* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1409952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџє2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџє22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
с
}
(__inference_dense_2_layer_call_fn_141469

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџє*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1409672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџє2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџш::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
є	
л
B__inference_output_layer_call_and_return_conditional_losses_141554

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
с(

__inference__traced_save_141634
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop'
#savev2_momentum_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameы
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*§
valueѓB№B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЊ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesК
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableop#savev2_sgd_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*n
_input_shapes]
[: :
ш:ш:
шє:є:	єd:d:d
:
: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
ш:!

_output_shapes	
:ш:&"
 
_output_shapes
:
шє:!

_output_shapes	
:є:%!

_output_shapes
:	єd: 

_output_shapes
:d:$ 

_output_shapes

:d
: 

_output_shapes
:
:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
і	
м
C__inference_dense_2_layer_call_and_return_conditional_losses_140967

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
шє*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџє2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:є*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџє2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџє2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџш::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_140938

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЕ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџш*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yП
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџш2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџш:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
л
|
'__inference_output_layer_call_fn_141563

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_1410812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџd::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
№	
м
C__inference_dense_3_layer_call_and_return_conditional_losses_141507

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	єd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџє::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
 G
Т
?__inference_MLP_layer_call_and_return_conditional_losses_141312

inputs*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЂoutput/BiasAdd/ReadVariableOpЂoutput/MatMul/ReadVariableOpk
input/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
input/Constz
input/ReshapeReshapeinputsinput/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
input/ReshapeЇ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ш*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMulinput/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_1/MatMulЅ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02 
dense_1/BiasAdd/ReadVariableOpЂ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dense_1/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_1/dropout/ConstІ
dropout_1/dropout/MulMuldense_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dropout_1/dropout/Mul|
dropout_1/dropout/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shapeг
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџш*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2"
 dropout_1/dropout/GreaterEqual/yч
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2 
dropout_1/dropout/GreaterEqual
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџш2
dropout_1/dropout/CastЃ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dropout_1/dropout/Mul_1Ї
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
шє*
dtype02
dense_2/MatMul/ReadVariableOpЁ
dense_2/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dense_2/MatMulЅ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:є*
dtype02 
dense_2/BiasAdd/ReadVariableOpЂ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dense_2/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_2/dropout/ConstІ
dropout_2/dropout/MulMuldense_2/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dropout_2/dropout/Mul|
dropout_2/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shapeг
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџє*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2"
 dropout_2/dropout/GreaterEqual/yч
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2 
dropout_2/dropout/GreaterEqual
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџє2
dropout_2/dropout/CastЃ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџє2
dropout_2/dropout/Mul_1І
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	єd*
dtype02
dense_3/MatMul/ReadVariableOp 
dense_3/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dense_3/MatMulЄ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_3/BiasAdd/ReadVariableOpЁ
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dense_3/BiasAddp
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dense_3/Reluw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_3/dropout/ConstЅ
dropout_3/dropout/MulMuldense_3/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_3/dropout/Mul|
dropout_3/dropout/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shapeв
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2"
 dropout_3/dropout/GreaterEqual/yц
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2 
dropout_3/dropout/GreaterEqual
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd2
dropout_3/dropout/CastЂ
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџd2
dropout_3/dropout/Mul_1Ђ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype02
output/MatMul/ReadVariableOp
output/MatMulMatMuldropout_3/dropout/Mul_1:z:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
output/MatMulЁ
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
output/BiasAdd/ReadVariableOp
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
output/BiasAddv
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
output/Softmaxю
IdentityIdentityoutput/Softmax:softmax:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ  ::::::::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
№	
м
C__inference_dense_3_layer_call_and_return_conditional_losses_141024

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	єd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџє::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
Ш
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_141533

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_141434

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЕ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџш*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yП
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџш2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџш2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*'
_input_shapes
:џџџџџџџџџш:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
еC
б
"__inference__traced_restore_141692
file_prefix#
assignvariableop_dense_1_kernel#
assignvariableop_1_dense_1_bias%
!assignvariableop_2_dense_2_kernel#
assignvariableop_3_dense_2_bias%
!assignvariableop_4_dense_3_kernel#
assignvariableop_5_dense_3_bias$
 assignvariableop_6_output_kernel"
assignvariableop_7_output_bias
assignvariableop_8_decay$
 assignvariableop_9_learning_rate 
assignvariableop_10_momentum 
assignvariableop_11_sgd_iter
assignvariableop_12_total
assignvariableop_13_count
assignvariableop_14_total_1
assignvariableop_15_count_1
identity_17ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9ё
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*§
valueѓB№B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesА
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Є
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2І
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Є
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4І
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Є
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ѕ
AssignVariableOp_6AssignVariableOp assignvariableop_6_output_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѓ
AssignVariableOp_7AssignVariableOpassignvariableop_7_output_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8
AssignVariableOp_8AssignVariableOpassignvariableop_8_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѕ
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Є
AssignVariableOp_10AssignVariableOpassignvariableop_10_momentumIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_11Є
AssignVariableOp_11AssignVariableOpassignvariableop_11_sgd_iterIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ё
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ё
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ѓ
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ѓ
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpО
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16Б
Identity_17IdentityIdentity_16:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_17"#
identity_17Identity_17:output:0*U
_input_shapesD
B: ::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Е
и
$__inference_MLP_layer_call_fn_141176
input_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityЂStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinput_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_MLP_layer_call_and_return_conditional_losses_1411572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ  ::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:џџџџџџџџџ  
%
_user_specified_nameinput_input
Ч&
я
?__inference_MLP_layer_call_and_return_conditional_losses_141157

inputs
dense_1_141133
dense_1_141135
dense_2_141139
dense_2_141141
dense_3_141145
dense_3_141147
output_141151
output_141153
identityЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ!dropout_1/StatefulPartitionedCallЂ!dropout_2/StatefulPartitionedCallЂ!dropout_3/StatefulPartitionedCallЂoutput/StatefulPartitionedCallЯ
input/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_1408912
input/PartitionedCallЋ
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput/PartitionedCall:output:0dense_1_141133dense_1_141135*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1409102!
dense_1/StatefulPartitionedCall
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1409382#
!dropout_1/StatefulPartitionedCallЗ
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_141139dense_2_141141*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџє*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1409672!
dense_2/StatefulPartitionedCallЙ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџє* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1409952#
!dropout_2/StatefulPartitionedCallЖ
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_3_141145dense_3_141147*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1410242!
dense_3/StatefulPartitionedCallИ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1410522#
!dropout_3/StatefulPartitionedCallБ
output/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0output_141151output_141153*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_1410812 
output/StatefulPartitionedCallю
IdentityIdentity'output/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ  ::::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
і	
м
C__inference_dense_1_layer_call_and_return_conditional_losses_141413

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ш*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ь
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_141486

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџє2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:џџџџџџџџџє:P L
(
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
Ь
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_141000

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџє2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:џџџџџџџџџє:P L
(
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
с
}
(__inference_dense_1_layer_call_fn_141422

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1409102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ь
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_141439

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџш2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:џџџџџџџџџш:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
Й
]
A__inference_input_layer_call_and_return_conditional_losses_140891

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ  :W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
я!

?__inference_MLP_layer_call_and_return_conditional_losses_141206

inputs
dense_1_141182
dense_1_141184
dense_2_141188
dense_2_141190
dense_3_141194
dense_3_141196
output_141200
output_141202
identityЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂoutput/StatefulPartitionedCallЯ
input/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_1408912
input/PartitionedCallЋ
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput/PartitionedCall:output:0dense_1_141182dense_1_141184*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1409102!
dense_1/StatefulPartitionedCall§
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1409432
dropout_1/PartitionedCallЏ
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_141188dense_2_141190*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџє*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1409672!
dense_2/StatefulPartitionedCall§
dropout_2/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџє* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1410002
dropout_2/PartitionedCallЎ
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_3_141194dense_3_141196*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1410242!
dense_3/StatefulPartitionedCallќ
dropout_3/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1410572
dropout_3/PartitionedCallЉ
output/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0output_141200output_141202*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_1410812 
output/StatefulPartitionedCall
IdentityIdentity'output/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ  ::::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ  
 
_user_specified_nameinputs
ж&
є
?__inference_MLP_layer_call_and_return_conditional_losses_141098
input_input
dense_1_140921
dense_1_140923
dense_2_140978
dense_2_140980
dense_3_141035
dense_3_141037
output_141092
output_141094
identityЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ!dropout_1/StatefulPartitionedCallЂ!dropout_2/StatefulPartitionedCallЂ!dropout_3/StatefulPartitionedCallЂoutput/StatefulPartitionedCallд
input/PartitionedCallPartitionedCallinput_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_1408912
input/PartitionedCallЋ
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput/PartitionedCall:output:0dense_1_140921dense_1_140923*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1409102!
dense_1/StatefulPartitionedCall
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1409382#
!dropout_1/StatefulPartitionedCallЗ
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_140978dense_2_140980*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџє*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1409672!
dense_2/StatefulPartitionedCallЙ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџє* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1409952#
!dropout_2/StatefulPartitionedCallЖ
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_3_141035dense_3_141037*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1410242!
dense_3/StatefulPartitionedCallИ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1410522#
!dropout_3/StatefulPartitionedCallБ
output/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0output_141092output_141094*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_1410812 
output/StatefulPartitionedCallю
IdentityIdentity'output/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:џџџџџџџџџ  ::::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:\ X
/
_output_shapes
:џџџџџџџџџ  
%
_user_specified_nameinput_input
і	
м
C__inference_dense_2_layer_call_and_return_conditional_losses_141460

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
шє*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџє2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:є*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџє2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџє2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџє2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџш::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
п
}
(__inference_dense_3_layer_call_fn_141516

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1410242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџє::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџє
 
_user_specified_nameinputs
Ь
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_140943

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџш2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџш2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:џџџџџџџџџш:P L
(
_output_shapes
:џџџџџџџџџш
 
_user_specified_nameinputs
Ш
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_141057

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџd2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџd2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџd:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultЅ
K
input_input<
serving_default_input_input:0џџџџџџџџџ  :
output0
StatefulPartitionedCall:0џџџџџџџџџ
tensorflow/serving/predict:еш
ј2
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

trainable_variables
	variables
regularization_losses
	keras_api

signatures
s__call__
t_default_save_signature
*u&call_and_return_all_conditional_losses"н/
_tf_keras_sequentialО/{"class_name": "Sequential", "name": "MLP", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "MLP", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_input"}}, {"class_name": "Flatten", "config": {"name": "input", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 500, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "MLP", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_input"}}, {"class_name": "Flatten", "config": {"name": "input", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 500, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 8.089513623852837e-15, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
п
trainable_variables
	variables
regularization_losses
	keras_api
v__call__
*w&call_and_return_all_conditional_losses"а
_tf_keras_layerЖ{"class_name": "Flatten", "name": "input", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "input", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
ђ

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
x__call__
*y&call_and_return_all_conditional_losses"Э
_tf_keras_layerГ{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3072}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3072]}}
х
trainable_variables
	variables
regularization_losses
	keras_api
z__call__
*{&call_and_return_all_conditional_losses"ж
_tf_keras_layerМ{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
ё

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
|__call__
*}&call_and_return_all_conditional_losses"Ь
_tf_keras_layerВ{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 500, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1000}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1000]}}
х
#trainable_variables
$	variables
%regularization_losses
&	keras_api
~__call__
*&call_and_return_all_conditional_losses"ж
_tf_keras_layerМ{"class_name": "Dropout", "name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
ё

'kernel
(bias
)trainable_variables
*	variables
+regularization_losses
,	keras_api
__call__
+&call_and_return_all_conditional_losses"Ъ
_tf_keras_layerА{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 500}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 500]}}
ч
-trainable_variables
.	variables
/regularization_losses
0	keras_api
__call__
+&call_and_return_all_conditional_losses"ж
_tf_keras_layerМ{"class_name": "Dropout", "name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
ѕ

1kernel
2bias
3trainable_variables
4	variables
5regularization_losses
6	keras_api
__call__
+&call_and_return_all_conditional_losses"Ю
_tf_keras_layerД{"class_name": "Dense", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
I
	7decay
8learning_rate
9momentum
:iter"
	optimizer
X
0
1
2
3
'4
(5
16
27"
trackable_list_wrapper
X
0
1
2
3
'4
(5
16
27"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ

;layers
<metrics
=non_trainable_variables

trainable_variables
>layer_regularization_losses
	variables
regularization_losses
?layer_metrics
s__call__
t_default_save_signature
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

@layers
Ametrics
Bnon_trainable_variables
trainable_variables
Clayer_regularization_losses
	variables
regularization_losses
Dlayer_metrics
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
": 
ш2dense_1/kernel
:ш2dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­

Elayers
Fmetrics
Gnon_trainable_variables
trainable_variables
Hlayer_regularization_losses
	variables
regularization_losses
Ilayer_metrics
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

Jlayers
Kmetrics
Lnon_trainable_variables
trainable_variables
Mlayer_regularization_losses
	variables
regularization_losses
Nlayer_metrics
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
": 
шє2dense_2/kernel
:є2dense_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­

Olayers
Pmetrics
Qnon_trainable_variables
trainable_variables
Rlayer_regularization_losses
 	variables
!regularization_losses
Slayer_metrics
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

Tlayers
Umetrics
Vnon_trainable_variables
#trainable_variables
Wlayer_regularization_losses
$	variables
%regularization_losses
Xlayer_metrics
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
!:	єd2dense_3/kernel
:d2dense_3/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
А

Ylayers
Zmetrics
[non_trainable_variables
)trainable_variables
\layer_regularization_losses
*	variables
+regularization_losses
]layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А

^layers
_metrics
`non_trainable_variables
-trainable_variables
alayer_regularization_losses
.	variables
/regularization_losses
blayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:d
2output/kernel
:
2output/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
А

clayers
dmetrics
enon_trainable_variables
3trainable_variables
flayer_regularization_losses
4	variables
5regularization_losses
glayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
: (2decay
: (2learning_rate
: (2momentum
:	 (2SGD/iter
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Л
	jtotal
	kcount
l	variables
m	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}

	ntotal
	ocount
p
_fn_kwargs
q	variables
r	keras_api"П
_tf_keras_metricЄ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:  (2total
:  (2count
.
j0
k1"
trackable_list_wrapper
-
l	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
n0
o1"
trackable_list_wrapper
-
q	variables"
_generic_user_object
о2л
$__inference_MLP_layer_call_fn_141225
$__inference_MLP_layer_call_fn_141370
$__inference_MLP_layer_call_fn_141391
$__inference_MLP_layer_call_fn_141176Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ы2ш
!__inference__wrapped_model_140881Т
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *2Ђ/
-*
input_inputџџџџџџџџџ  
Ъ2Ч
?__inference_MLP_layer_call_and_return_conditional_losses_141349
?__inference_MLP_layer_call_and_return_conditional_losses_141098
?__inference_MLP_layer_call_and_return_conditional_losses_141126
?__inference_MLP_layer_call_and_return_conditional_losses_141312Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
&__inference_input_layer_call_fn_141402Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ы2ш
A__inference_input_layer_call_and_return_conditional_losses_141397Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_1_layer_call_fn_141422Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_1_layer_call_and_return_conditional_losses_141413Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
*__inference_dropout_1_layer_call_fn_141449
*__inference_dropout_1_layer_call_fn_141444Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ш2Х
E__inference_dropout_1_layer_call_and_return_conditional_losses_141434
E__inference_dropout_1_layer_call_and_return_conditional_losses_141439Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
в2Я
(__inference_dense_2_layer_call_fn_141469Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_2_layer_call_and_return_conditional_losses_141460Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
*__inference_dropout_2_layer_call_fn_141496
*__inference_dropout_2_layer_call_fn_141491Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ш2Х
E__inference_dropout_2_layer_call_and_return_conditional_losses_141486
E__inference_dropout_2_layer_call_and_return_conditional_losses_141481Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
в2Я
(__inference_dense_3_layer_call_fn_141516Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_3_layer_call_and_return_conditional_losses_141507Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
*__inference_dropout_3_layer_call_fn_141538
*__inference_dropout_3_layer_call_fn_141543Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ш2Х
E__inference_dropout_3_layer_call_and_return_conditional_losses_141528
E__inference_dropout_3_layer_call_and_return_conditional_losses_141533Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
б2Ю
'__inference_output_layer_call_fn_141563Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ь2щ
B__inference_output_layer_call_and_return_conditional_losses_141554Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЯBЬ
$__inference_signature_wrapper_141254input_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 К
?__inference_MLP_layer_call_and_return_conditional_losses_141098w'(12DЂA
:Ђ7
-*
input_inputџџџџџџџџџ  
p

 
Њ "%Ђ"

0џџџџџџџџџ

 К
?__inference_MLP_layer_call_and_return_conditional_losses_141126w'(12DЂA
:Ђ7
-*
input_inputџџџџџџџџџ  
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 Е
?__inference_MLP_layer_call_and_return_conditional_losses_141312r'(12?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ  
p

 
Њ "%Ђ"

0џџџџџџџџџ

 Е
?__inference_MLP_layer_call_and_return_conditional_losses_141349r'(12?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ  
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 
$__inference_MLP_layer_call_fn_141176j'(12DЂA
:Ђ7
-*
input_inputџџџџџџџџџ  
p

 
Њ "џџџџџџџџџ

$__inference_MLP_layer_call_fn_141225j'(12DЂA
:Ђ7
-*
input_inputџџџџџџџџџ  
p 

 
Њ "џџџџџџџџџ

$__inference_MLP_layer_call_fn_141370e'(12?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ  
p

 
Њ "џџџџџџџџџ

$__inference_MLP_layer_call_fn_141391e'(12?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ  
p 

 
Њ "џџџџџџџџџ

!__inference__wrapped_model_140881y'(12<Ђ9
2Ђ/
-*
input_inputџџџџџџџџџ  
Њ "/Њ,
*
output 
outputџџџџџџџџџ
Ѕ
C__inference_dense_1_layer_call_and_return_conditional_losses_141413^0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџш
 }
(__inference_dense_1_layer_call_fn_141422Q0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџшЅ
C__inference_dense_2_layer_call_and_return_conditional_losses_141460^0Ђ-
&Ђ#
!
inputsџџџџџџџџџш
Њ "&Ђ#

0џџџџџџџџџє
 }
(__inference_dense_2_layer_call_fn_141469Q0Ђ-
&Ђ#
!
inputsџџџџџџџџџш
Њ "џџџџџџџџџєЄ
C__inference_dense_3_layer_call_and_return_conditional_losses_141507]'(0Ђ-
&Ђ#
!
inputsџџџџџџџџџє
Њ "%Ђ"

0џџџџџџџџџd
 |
(__inference_dense_3_layer_call_fn_141516P'(0Ђ-
&Ђ#
!
inputsџџџџџџџџџє
Њ "џџџџџџџџџdЇ
E__inference_dropout_1_layer_call_and_return_conditional_losses_141434^4Ђ1
*Ђ'
!
inputsџџџџџџџџџш
p
Њ "&Ђ#

0џџџџџџџџџш
 Ї
E__inference_dropout_1_layer_call_and_return_conditional_losses_141439^4Ђ1
*Ђ'
!
inputsџџџџџџџџџш
p 
Њ "&Ђ#

0џџџџџџџџџш
 
*__inference_dropout_1_layer_call_fn_141444Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџш
p
Њ "џџџџџџџџџш
*__inference_dropout_1_layer_call_fn_141449Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџш
p 
Њ "џџџџџџџџџшЇ
E__inference_dropout_2_layer_call_and_return_conditional_losses_141481^4Ђ1
*Ђ'
!
inputsџџџџџџџџџє
p
Њ "&Ђ#

0џџџџџџџџџє
 Ї
E__inference_dropout_2_layer_call_and_return_conditional_losses_141486^4Ђ1
*Ђ'
!
inputsџџџџџџџџџє
p 
Њ "&Ђ#

0џџџџџџџџџє
 
*__inference_dropout_2_layer_call_fn_141491Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџє
p
Њ "џџџџџџџџџє
*__inference_dropout_2_layer_call_fn_141496Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџє
p 
Њ "џџџџџџџџџєЅ
E__inference_dropout_3_layer_call_and_return_conditional_losses_141528\3Ђ0
)Ђ&
 
inputsџџџџџџџџџd
p
Њ "%Ђ"

0џџџџџџџџџd
 Ѕ
E__inference_dropout_3_layer_call_and_return_conditional_losses_141533\3Ђ0
)Ђ&
 
inputsџџџџџџџџџd
p 
Њ "%Ђ"

0џџџџџџџџџd
 }
*__inference_dropout_3_layer_call_fn_141538O3Ђ0
)Ђ&
 
inputsџџџџџџџџџd
p
Њ "џџџџџџџџџd}
*__inference_dropout_3_layer_call_fn_141543O3Ђ0
)Ђ&
 
inputsџџџџџџџџџd
p 
Њ "џџџџџџџџџdІ
A__inference_input_layer_call_and_return_conditional_losses_141397a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ  
Њ "&Ђ#

0џџџџџџџџџ
 ~
&__inference_input_layer_call_fn_141402T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ  
Њ "џџџџџџџџџЂ
B__inference_output_layer_call_and_return_conditional_losses_141554\12/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "%Ђ"

0џџџџџџџџџ

 z
'__inference_output_layer_call_fn_141563O12/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "џџџџџџџџџ
Б
$__inference_signature_wrapper_141254'(12KЂH
Ђ 
AЊ>
<
input_input-*
input_inputџџџџџџџџџ  "/Њ,
*
output 
outputџџџџџџџџџ
