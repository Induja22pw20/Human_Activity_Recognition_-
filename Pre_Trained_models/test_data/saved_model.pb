��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��
|
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�
�* 
shared_namedense_57/kernel
u
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel* 
_output_shapes
:
�
�*
dtype0
s
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_57/bias
l
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
_output_shapes	
:�*
dtype0
|
dense_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_58/kernel
u
#dense_58/kernel/Read/ReadVariableOpReadVariableOpdense_58/kernel* 
_output_shapes
:
��*
dtype0
s
dense_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_58/bias
l
!dense_58/bias/Read/ReadVariableOpReadVariableOpdense_58/bias*
_output_shapes	
:�*
dtype0
{
dense_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�* 
shared_namedense_59/kernel
t
#dense_59/kernel/Read/ReadVariableOpReadVariableOpdense_59/kernel*
_output_shapes
:	�*
dtype0
r
dense_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_59/bias
k
!dense_59/bias/Read/ReadVariableOpReadVariableOpdense_59/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
lstm_19/lstm_cell_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*,
shared_namelstm_19/lstm_cell_20/kernel
�
/lstm_19/lstm_cell_20/kernel/Read/ReadVariableOpReadVariableOplstm_19/lstm_cell_20/kernel*
_output_shapes

:h*
dtype0
�
%lstm_19/lstm_cell_20/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*6
shared_name'%lstm_19/lstm_cell_20/recurrent_kernel
�
9lstm_19/lstm_cell_20/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_19/lstm_cell_20/recurrent_kernel*
_output_shapes

:h*
dtype0
�
lstm_19/lstm_cell_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:h**
shared_namelstm_19/lstm_cell_20/bias
�
-lstm_19/lstm_cell_20/bias/Read/ReadVariableOpReadVariableOplstm_19/lstm_cell_20/bias*
_output_shapes
:h*
dtype0
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
�
Adam/dense_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�
�*'
shared_nameAdam/dense_57/kernel/m
�
*Adam/dense_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/m* 
_output_shapes
:
�
�*
dtype0
�
Adam/dense_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/dense_57/bias/m
z
(Adam/dense_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/dense_58/kernel/m
�
*Adam/dense_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/dense_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/dense_58/bias/m
z
(Adam/dense_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*'
shared_nameAdam/dense_59/kernel/m
�
*Adam/dense_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/dense_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_59/bias/m
y
(Adam/dense_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/m*
_output_shapes
:*
dtype0
�
"Adam/lstm_19/lstm_cell_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*3
shared_name$"Adam/lstm_19/lstm_cell_20/kernel/m
�
6Adam/lstm_19/lstm_cell_20/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_19/lstm_cell_20/kernel/m*
_output_shapes

:h*
dtype0
�
,Adam/lstm_19/lstm_cell_20/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*=
shared_name.,Adam/lstm_19/lstm_cell_20/recurrent_kernel/m
�
@Adam/lstm_19/lstm_cell_20/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_19/lstm_cell_20/recurrent_kernel/m*
_output_shapes

:h*
dtype0
�
 Adam/lstm_19/lstm_cell_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:h*1
shared_name" Adam/lstm_19/lstm_cell_20/bias/m
�
4Adam/lstm_19/lstm_cell_20/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_19/lstm_cell_20/bias/m*
_output_shapes
:h*
dtype0
�
Adam/dense_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�
�*'
shared_nameAdam/dense_57/kernel/v
�
*Adam/dense_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/v* 
_output_shapes
:
�
�*
dtype0
�
Adam/dense_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/dense_57/bias/v
z
(Adam/dense_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/dense_58/kernel/v
�
*Adam/dense_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/dense_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/dense_58/bias/v
z
(Adam/dense_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*'
shared_nameAdam/dense_59/kernel/v
�
*Adam/dense_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/dense_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_59/bias/v
y
(Adam/dense_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/v*
_output_shapes
:*
dtype0
�
"Adam/lstm_19/lstm_cell_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*3
shared_name$"Adam/lstm_19/lstm_cell_20/kernel/v
�
6Adam/lstm_19/lstm_cell_20/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_19/lstm_cell_20/kernel/v*
_output_shapes

:h*
dtype0
�
,Adam/lstm_19/lstm_cell_20/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*=
shared_name.,Adam/lstm_19/lstm_cell_20/recurrent_kernel/v
�
@Adam/lstm_19/lstm_cell_20/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_19/lstm_cell_20/recurrent_kernel/v*
_output_shapes

:h*
dtype0
�
 Adam/lstm_19/lstm_cell_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:h*1
shared_name" Adam/lstm_19/lstm_cell_20/bias/v
�
4Adam/lstm_19/lstm_cell_20/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_19/lstm_cell_20/bias/v*
_output_shapes
:h*
dtype0

NoOpNoOp
�P
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�O
value�OB�O B�O
�
layer_with_weights-0
layer-0
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

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
�
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
 __call__
*!&call_and_return_all_conditional_losses* 
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 
�

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses*
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4_random_generator
5__call__
*6&call_and_return_all_conditional_losses* 
�

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses*
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C_random_generator
D__call__
*E&call_and_return_all_conditional_losses* 
�

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
�
Niter

Obeta_1

Pbeta_2
	Qdecay
Rlearning_rate(m�)m�7m�8m�Fm�Gm�Sm�Tm�Um�(v�)v�7v�8v�Fv�Gv�Sv�Tv�Uv�*
C
S0
T1
U2
(3
)4
75
86
F7
G8*
C
S0
T1
U2
(3
)4
75
86
F7
G8*
* 
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

[serving_default* 
�
\
state_size

Skernel
Trecurrent_kernel
Ubias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a_random_generator
b__call__
*c&call_and_return_all_conditional_losses*
* 

S0
T1
U2*

S0
T1
U2*
* 
�

dstates
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_57/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_57/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

(0
)1*

(0
)1*
* 
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
0	variables
1trainable_variables
2regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_58/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_58/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

70
81*

70
81*
* 
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_59/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_59/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

F0
G1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_19/lstm_cell_20/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_19/lstm_cell_20/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_19/lstm_cell_20/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*

�0
�1*
* 
* 
* 
* 

S0
T1
U2*

S0
T1
U2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

�total

�count
�	variables
�	keras_api*
M

�total

�count
�
_fn_kwargs
�	variables
�	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
�|
VARIABLE_VALUEAdam/dense_57/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_57/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_58/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_58/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_59/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_59/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_19/lstm_cell_20/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/lstm_19/lstm_cell_20/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_19/lstm_cell_20/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_57/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_57/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_58/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_58/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_59/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_59/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_19/lstm_cell_20/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/lstm_19/lstm_cell_20/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_19/lstm_cell_20/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_lstm_19_inputPlaceholder*+
_output_shapes
:���������2*
dtype0* 
shape:���������2
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_19_inputlstm_19/lstm_cell_20/kernel%lstm_19/lstm_cell_20/recurrent_kernellstm_19/lstm_cell_20/biasdense_57/kerneldense_57/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1170828
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_57/kernel/Read/ReadVariableOp!dense_57/bias/Read/ReadVariableOp#dense_58/kernel/Read/ReadVariableOp!dense_58/bias/Read/ReadVariableOp#dense_59/kernel/Read/ReadVariableOp!dense_59/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_19/lstm_cell_20/kernel/Read/ReadVariableOp9lstm_19/lstm_cell_20/recurrent_kernel/Read/ReadVariableOp-lstm_19/lstm_cell_20/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_57/kernel/m/Read/ReadVariableOp(Adam/dense_57/bias/m/Read/ReadVariableOp*Adam/dense_58/kernel/m/Read/ReadVariableOp(Adam/dense_58/bias/m/Read/ReadVariableOp*Adam/dense_59/kernel/m/Read/ReadVariableOp(Adam/dense_59/bias/m/Read/ReadVariableOp6Adam/lstm_19/lstm_cell_20/kernel/m/Read/ReadVariableOp@Adam/lstm_19/lstm_cell_20/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_19/lstm_cell_20/bias/m/Read/ReadVariableOp*Adam/dense_57/kernel/v/Read/ReadVariableOp(Adam/dense_57/bias/v/Read/ReadVariableOp*Adam/dense_58/kernel/v/Read/ReadVariableOp(Adam/dense_58/bias/v/Read/ReadVariableOp*Adam/dense_59/kernel/v/Read/ReadVariableOp(Adam/dense_59/bias/v/Read/ReadVariableOp6Adam/lstm_19/lstm_cell_20/kernel/v/Read/ReadVariableOp@Adam/lstm_19/lstm_cell_20/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_19/lstm_cell_20/bias/v/Read/ReadVariableOpConst*1
Tin*
(2&	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_save_1171825
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_57/kerneldense_57/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_19/lstm_cell_20/kernel%lstm_19/lstm_cell_20/recurrent_kernellstm_19/lstm_cell_20/biastotalcounttotal_1count_1Adam/dense_57/kernel/mAdam/dense_57/bias/mAdam/dense_58/kernel/mAdam/dense_58/bias/mAdam/dense_59/kernel/mAdam/dense_59/bias/m"Adam/lstm_19/lstm_cell_20/kernel/m,Adam/lstm_19/lstm_cell_20/recurrent_kernel/m Adam/lstm_19/lstm_cell_20/bias/mAdam/dense_57/kernel/vAdam/dense_57/bias/vAdam/dense_58/kernel/vAdam/dense_58/bias/vAdam/dense_59/kernel/vAdam/dense_59/bias/v"Adam/lstm_19/lstm_cell_20/kernel/v,Adam/lstm_19/lstm_cell_20/recurrent_kernel/v Adam/lstm_19/lstm_cell_20/bias/v*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__traced_restore_1171943��
�

�
/__inference_sequential_19_layer_call_fn_1169963
lstm_19_input
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:
�
�
	unknown_3:	�
	unknown_4:
��
	unknown_5:	�
	unknown_6:	�
	unknown_7:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_19_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_19_layer_call_and_return_conditional_losses_1169942o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������2: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������2
'
_user_specified_namelstm_19_input
�#
�
while_body_1169626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_20_1169650_0:h.
while_lstm_cell_20_1169652_0:h*
while_lstm_cell_20_1169654_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_20_1169650:h,
while_lstm_cell_20_1169652:h(
while_lstm_cell_20_1169654:h��*while/lstm_cell_20/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_20_1169650_0while_lstm_cell_20_1169652_0while_lstm_cell_20_1169654_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1169567�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_20/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity3while/lstm_cell_20/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������
while/Identity_5Identity3while/lstm_cell_20/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������y

while/NoOpNoOp+^while/lstm_cell_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_20_1169650while_lstm_cell_20_1169650_0":
while_lstm_cell_20_1169652while_lstm_cell_20_1169652_0":
while_lstm_cell_20_1169654while_lstm_cell_20_1169654_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_20/StatefulPartitionedCall*while/lstm_cell_20/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
H
,__inference_flatten_19_layer_call_fn_1171476

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_1169874a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
e
G__inference_dropout_58_layer_call_and_return_conditional_losses_1171517

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_flatten_19_layer_call_and_return_conditional_losses_1169874

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������
Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�8
�
while_body_1171360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_20_matmul_readvariableop_resource_0:hG
5while_lstm_cell_20_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_20_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_20_matmul_readvariableop_resource:hE
3while_lstm_cell_20_matmul_1_readvariableop_resource:h@
2while_lstm_cell_20_biasadd_readvariableop_resource:h��)while/lstm_cell_20/BiasAdd/ReadVariableOp�(while/lstm_cell_20/MatMul/ReadVariableOp�*while/lstm_cell_20/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0�
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hd
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:���������|
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������t
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:���������|
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������q
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������y
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
e
G__inference_dropout_57_layer_call_and_return_conditional_losses_1171459

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�8
�
while_body_1170140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_20_matmul_readvariableop_resource_0:hG
5while_lstm_cell_20_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_20_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_20_matmul_readvariableop_resource:hE
3while_lstm_cell_20_matmul_1_readvariableop_resource:h@
2while_lstm_cell_20_biasadd_readvariableop_resource:h��)while/lstm_cell_20/BiasAdd/ReadVariableOp�(while/lstm_cell_20/MatMul/ReadVariableOp�*while/lstm_cell_20/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0�
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hd
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:���������|
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������t
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:���������|
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������q
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������y
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�J
�
D__inference_lstm_19_layer_call_and_return_conditional_losses_1171301

inputs=
+lstm_cell_20_matmul_readvariableop_resource:h?
-lstm_cell_20_matmul_1_readvariableop_resource:h:
,lstm_cell_20_biasadd_readvariableop_resource:h
identity��#lstm_cell_20/BiasAdd/ReadVariableOp�"lstm_cell_20/MatMul/ReadVariableOp�$lstm_cell_20/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0�
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:���������p
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:���������w
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������h
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:���������{
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:���������p
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������e
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1171217*
condR
while_cond_1171216*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2���������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
)__inference_lstm_19_layer_call_fn_1170850
inputs_0
unknown:h
	unknown_0:h
	unknown_1:h
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_1169695|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
e
,__inference_dropout_57_layer_call_fn_1171454

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_57_layer_call_and_return_conditional_losses_1170065s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
.__inference_lstm_cell_20_layer_call_fn_1171613

inputs
states_0
states_1
unknown:h
	unknown_0:h
	unknown_1:h
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1169421o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�
e
,__inference_dropout_59_layer_call_fn_1171559

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_59_layer_call_and_return_conditional_losses_1169993p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_lstm_19_layer_call_fn_1170872

inputs
unknown:h
	unknown_0:h
	unknown_1:h
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_1170224s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�J
�
D__inference_lstm_19_layer_call_and_return_conditional_losses_1171158
inputs_0=
+lstm_cell_20_matmul_readvariableop_resource:h?
-lstm_cell_20_matmul_1_readvariableop_resource:h:
,lstm_cell_20_biasadd_readvariableop_resource:h
identity��#lstm_cell_20/BiasAdd/ReadVariableOp�"lstm_cell_20/MatMul/ReadVariableOp�$lstm_cell_20/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0�
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:���������p
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:���������w
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������h
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:���������{
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:���������p
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������e
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1171074*
condR
while_cond_1171073*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_1171073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1171073___redundant_placeholder05
1while_while_cond_1171073___redundant_placeholder15
1while_while_cond_1171073___redundant_placeholder25
1while_while_cond_1171073___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�A
�

lstm_19_while_body_1170503,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3+
'lstm_19_while_lstm_19_strided_slice_1_0g
clstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_19_while_lstm_cell_20_matmul_readvariableop_resource_0:hO
=lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource_0:hJ
<lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource_0:h
lstm_19_while_identity
lstm_19_while_identity_1
lstm_19_while_identity_2
lstm_19_while_identity_3
lstm_19_while_identity_4
lstm_19_while_identity_5)
%lstm_19_while_lstm_19_strided_slice_1e
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorK
9lstm_19_while_lstm_cell_20_matmul_readvariableop_resource:hM
;lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource:hH
:lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource:h��1lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp�0lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp�2lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp�
?lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_19/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0lstm_19_while_placeholderHlstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0lstm_19/while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp;lstm_19_while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
!lstm_19/while/lstm_cell_20/MatMulMatMul8lstm_19/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
2lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp=lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
#lstm_19/while/lstm_cell_20/MatMul_1MatMullstm_19_while_placeholder_2:lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
lstm_19/while/lstm_cell_20/addAddV2+lstm_19/while/lstm_cell_20/MatMul:product:0-lstm_19/while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
1lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp<lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0�
"lstm_19/while/lstm_cell_20/BiasAddBiasAdd"lstm_19/while/lstm_cell_20/add:z:09lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hl
*lstm_19/while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_19/while/lstm_cell_20/splitSplit3lstm_19/while/lstm_cell_20/split/split_dim:output:0+lstm_19/while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split�
"lstm_19/while/lstm_cell_20/SigmoidSigmoid)lstm_19/while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:����������
$lstm_19/while/lstm_cell_20/Sigmoid_1Sigmoid)lstm_19/while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:����������
lstm_19/while/lstm_cell_20/mulMul(lstm_19/while/lstm_cell_20/Sigmoid_1:y:0lstm_19_while_placeholder_3*
T0*'
_output_shapes
:����������
lstm_19/while/lstm_cell_20/ReluRelu)lstm_19/while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
 lstm_19/while/lstm_cell_20/mul_1Mul&lstm_19/while/lstm_cell_20/Sigmoid:y:0-lstm_19/while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:����������
 lstm_19/while/lstm_cell_20/add_1AddV2"lstm_19/while/lstm_cell_20/mul:z:0$lstm_19/while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:����������
$lstm_19/while/lstm_cell_20/Sigmoid_2Sigmoid)lstm_19/while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:����������
!lstm_19/while/lstm_cell_20/Relu_1Relu$lstm_19/while/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
 lstm_19/while/lstm_cell_20/mul_2Mul(lstm_19/while/lstm_cell_20/Sigmoid_2:y:0/lstm_19/while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:����������
2lstm_19/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_19_while_placeholder_1lstm_19_while_placeholder$lstm_19/while/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_19/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_19/while/addAddV2lstm_19_while_placeholderlstm_19/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_19/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_19/while/add_1AddV2(lstm_19_while_lstm_19_while_loop_counterlstm_19/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_19/while/IdentityIdentitylstm_19/while/add_1:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: �
lstm_19/while/Identity_1Identity.lstm_19_while_lstm_19_while_maximum_iterations^lstm_19/while/NoOp*
T0*
_output_shapes
: q
lstm_19/while/Identity_2Identitylstm_19/while/add:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: �
lstm_19/while/Identity_3IdentityBlstm_19/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_19/while/NoOp*
T0*
_output_shapes
: :����
lstm_19/while/Identity_4Identity$lstm_19/while/lstm_cell_20/mul_2:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:����������
lstm_19/while/Identity_5Identity$lstm_19/while/lstm_cell_20/add_1:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:����������
lstm_19/while/NoOpNoOp2^lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp1^lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp3^lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_19_while_identitylstm_19/while/Identity:output:0"=
lstm_19_while_identity_1!lstm_19/while/Identity_1:output:0"=
lstm_19_while_identity_2!lstm_19/while/Identity_2:output:0"=
lstm_19_while_identity_3!lstm_19/while/Identity_3:output:0"=
lstm_19_while_identity_4!lstm_19/while/Identity_4:output:0"=
lstm_19_while_identity_5!lstm_19/while/Identity_5:output:0"P
%lstm_19_while_lstm_19_strided_slice_1'lstm_19_while_lstm_19_strided_slice_1_0"z
:lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource<lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource_0"|
;lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource=lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource_0"x
9lstm_19_while_lstm_cell_20_matmul_readvariableop_resource;lstm_19_while_lstm_cell_20_matmul_readvariableop_resource_0"�
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2f
1lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp1lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp2d
0lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp0lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp2h
2lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp2lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
H
,__inference_dropout_59_layer_call_fn_1171554

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_59_layer_call_and_return_conditional_losses_1169922a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1169421

inputs

states
states_10
matmul_readvariableop_resource:h2
 matmul_1_readvariableop_resource:h-
biasadd_readvariableop_resource:h
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������hr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:h*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates:OK
'
_output_shapes
:���������
 
_user_specified_namestates
�"
�
J__inference_sequential_19_layer_call_and_return_conditional_losses_1169942

inputs!
lstm_19_1169854:h!
lstm_19_1169856:h
lstm_19_1169858:h$
dense_57_1169888:
�
�
dense_57_1169890:	�$
dense_58_1169912:
��
dense_58_1169914:	�#
dense_59_1169936:	�
dense_59_1169938:
identity�� dense_57/StatefulPartitionedCall� dense_58/StatefulPartitionedCall� dense_59/StatefulPartitionedCall�lstm_19/StatefulPartitionedCall�
lstm_19/StatefulPartitionedCallStatefulPartitionedCallinputslstm_19_1169854lstm_19_1169856lstm_19_1169858*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_1169853�
dropout_57/PartitionedCallPartitionedCall(lstm_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_57_layer_call_and_return_conditional_losses_1169866�
flatten_19/PartitionedCallPartitionedCall#dropout_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_1169874�
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_57_1169888dense_57_1169890*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_1169887�
dropout_58/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_58_layer_call_and_return_conditional_losses_1169898�
 dense_58/StatefulPartitionedCallStatefulPartitionedCall#dropout_58/PartitionedCall:output:0dense_58_1169912dense_58_1169914*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_1169911�
dropout_59/PartitionedCallPartitionedCall)dense_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_59_layer_call_and_return_conditional_losses_1169922�
 dense_59/StatefulPartitionedCallStatefulPartitionedCall#dropout_59/PartitionedCall:output:0dense_59_1169936dense_59_1169938*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_1169935x
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������2: : : : : : : : : 2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�J
�
D__inference_lstm_19_layer_call_and_return_conditional_losses_1170224

inputs=
+lstm_cell_20_matmul_readvariableop_resource:h?
-lstm_cell_20_matmul_1_readvariableop_resource:h:
,lstm_cell_20_biasadd_readvariableop_resource:h
identity��#lstm_cell_20/BiasAdd/ReadVariableOp�"lstm_cell_20/MatMul/ReadVariableOp�$lstm_cell_20/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0�
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:���������p
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:���������w
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������h
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:���������{
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:���������p
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������e
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1170140*
condR
while_cond_1170139*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2���������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
/__inference_sequential_19_layer_call_fn_1170332
lstm_19_input
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:
�
�
	unknown_3:	�
	unknown_4:
��
	unknown_5:	�
	unknown_6:	�
	unknown_7:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_19_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170288o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������2: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������2
'
_user_specified_namelstm_19_input
�8
�
while_body_1171217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_20_matmul_readvariableop_resource_0:hG
5while_lstm_cell_20_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_20_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_20_matmul_readvariableop_resource:hE
3while_lstm_cell_20_matmul_1_readvariableop_resource:h@
2while_lstm_cell_20_biasadd_readvariableop_resource:h��)while/lstm_cell_20/BiasAdd/ReadVariableOp�(while/lstm_cell_20/MatMul/ReadVariableOp�*while/lstm_cell_20/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0�
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hd
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:���������|
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������t
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:���������|
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������q
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������y
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�

�
E__inference_dense_57_layer_call_and_return_conditional_losses_1171502

inputs2
matmul_readvariableop_resource:
�
�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�
�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������

 
_user_specified_nameinputs
�
�
*__inference_dense_58_layer_call_fn_1171538

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_1169911p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
while_cond_1170139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1170139___redundant_placeholder05
1while_while_cond_1170139___redundant_placeholder15
1while_while_cond_1170139___redundant_placeholder25
1while_while_cond_1170139___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�

�
lstm_19_while_cond_1170671,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3.
*lstm_19_while_less_lstm_19_strided_slice_1E
Alstm_19_while_lstm_19_while_cond_1170671___redundant_placeholder0E
Alstm_19_while_lstm_19_while_cond_1170671___redundant_placeholder1E
Alstm_19_while_lstm_19_while_cond_1170671___redundant_placeholder2E
Alstm_19_while_lstm_19_while_cond_1170671___redundant_placeholder3
lstm_19_while_identity
�
lstm_19/while/LessLesslstm_19_while_placeholder*lstm_19_while_less_lstm_19_strided_slice_1*
T0*
_output_shapes
: [
lstm_19/while/IdentityIdentitylstm_19/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_19_while_identitylstm_19/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�

�
E__inference_dense_57_layer_call_and_return_conditional_losses_1169887

inputs2
matmul_readvariableop_resource:
�
�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�
�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������

 
_user_specified_nameinputs
�
�
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1171662

inputs
states_0
states_10
matmul_readvariableop_resource:h2
 matmul_1_readvariableop_resource:h-
biasadd_readvariableop_resource:h
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������hr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:h*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�
e
G__inference_dropout_58_layer_call_and_return_conditional_losses_1169898

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
/__inference_sequential_19_layer_call_fn_1170421

inputs
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:
�
�
	unknown_3:	�
	unknown_4:
��
	unknown_5:	�
	unknown_6:	�
	unknown_7:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_19_layer_call_and_return_conditional_losses_1169942o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������2: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
e
G__inference_dropout_59_layer_call_and_return_conditional_losses_1169922

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
f
G__inference_dropout_59_layer_call_and_return_conditional_losses_1171576

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�L
�
 __inference__traced_save_1171825
file_prefix.
*savev2_dense_57_kernel_read_readvariableop,
(savev2_dense_57_bias_read_readvariableop.
*savev2_dense_58_kernel_read_readvariableop,
(savev2_dense_58_bias_read_readvariableop.
*savev2_dense_59_kernel_read_readvariableop,
(savev2_dense_59_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_19_lstm_cell_20_kernel_read_readvariableopD
@savev2_lstm_19_lstm_cell_20_recurrent_kernel_read_readvariableop8
4savev2_lstm_19_lstm_cell_20_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_57_kernel_m_read_readvariableop3
/savev2_adam_dense_57_bias_m_read_readvariableop5
1savev2_adam_dense_58_kernel_m_read_readvariableop3
/savev2_adam_dense_58_bias_m_read_readvariableop5
1savev2_adam_dense_59_kernel_m_read_readvariableop3
/savev2_adam_dense_59_bias_m_read_readvariableopA
=savev2_adam_lstm_19_lstm_cell_20_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_19_lstm_cell_20_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_19_lstm_cell_20_bias_m_read_readvariableop5
1savev2_adam_dense_57_kernel_v_read_readvariableop3
/savev2_adam_dense_57_bias_v_read_readvariableop5
1savev2_adam_dense_58_kernel_v_read_readvariableop3
/savev2_adam_dense_58_bias_v_read_readvariableop5
1savev2_adam_dense_59_kernel_v_read_readvariableop3
/savev2_adam_dense_59_bias_v_read_readvariableopA
=savev2_adam_lstm_19_lstm_cell_20_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_19_lstm_cell_20_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_19_lstm_cell_20_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*�
value�B�%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_57_kernel_read_readvariableop(savev2_dense_57_bias_read_readvariableop*savev2_dense_58_kernel_read_readvariableop(savev2_dense_58_bias_read_readvariableop*savev2_dense_59_kernel_read_readvariableop(savev2_dense_59_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_19_lstm_cell_20_kernel_read_readvariableop@savev2_lstm_19_lstm_cell_20_recurrent_kernel_read_readvariableop4savev2_lstm_19_lstm_cell_20_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_57_kernel_m_read_readvariableop/savev2_adam_dense_57_bias_m_read_readvariableop1savev2_adam_dense_58_kernel_m_read_readvariableop/savev2_adam_dense_58_bias_m_read_readvariableop1savev2_adam_dense_59_kernel_m_read_readvariableop/savev2_adam_dense_59_bias_m_read_readvariableop=savev2_adam_lstm_19_lstm_cell_20_kernel_m_read_readvariableopGsavev2_adam_lstm_19_lstm_cell_20_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_19_lstm_cell_20_bias_m_read_readvariableop1savev2_adam_dense_57_kernel_v_read_readvariableop/savev2_adam_dense_57_bias_v_read_readvariableop1savev2_adam_dense_58_kernel_v_read_readvariableop/savev2_adam_dense_58_bias_v_read_readvariableop1savev2_adam_dense_59_kernel_v_read_readvariableop/savev2_adam_dense_59_bias_v_read_readvariableop=savev2_adam_lstm_19_lstm_cell_20_kernel_v_read_readvariableopGsavev2_adam_lstm_19_lstm_cell_20_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_19_lstm_cell_20_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :
�
�:�:
��:�:	�:: : : : : :h:h:h: : : : :
�
�:�:
��:�:	�::h:h:h:
�
�:�:
��:�:	�::h:h:h: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
�
�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:h:$ 

_output_shapes

:h: 

_output_shapes
:h:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
�
�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::$ 

_output_shapes

:h:$ 

_output_shapes

:h: 

_output_shapes
:h:&"
 
_output_shapes
:
�
�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:% !

_output_shapes
:	�: !

_output_shapes
::$" 

_output_shapes

:h:$# 

_output_shapes

:h: $

_output_shapes
:h:%

_output_shapes
: 
�
�
(sequential_19_lstm_19_while_cond_1169243H
Dsequential_19_lstm_19_while_sequential_19_lstm_19_while_loop_counterN
Jsequential_19_lstm_19_while_sequential_19_lstm_19_while_maximum_iterations+
'sequential_19_lstm_19_while_placeholder-
)sequential_19_lstm_19_while_placeholder_1-
)sequential_19_lstm_19_while_placeholder_2-
)sequential_19_lstm_19_while_placeholder_3J
Fsequential_19_lstm_19_while_less_sequential_19_lstm_19_strided_slice_1a
]sequential_19_lstm_19_while_sequential_19_lstm_19_while_cond_1169243___redundant_placeholder0a
]sequential_19_lstm_19_while_sequential_19_lstm_19_while_cond_1169243___redundant_placeholder1a
]sequential_19_lstm_19_while_sequential_19_lstm_19_while_cond_1169243___redundant_placeholder2a
]sequential_19_lstm_19_while_sequential_19_lstm_19_while_cond_1169243___redundant_placeholder3(
$sequential_19_lstm_19_while_identity
�
 sequential_19/lstm_19/while/LessLess'sequential_19_lstm_19_while_placeholderFsequential_19_lstm_19_while_less_sequential_19_lstm_19_strided_slice_1*
T0*
_output_shapes
: w
$sequential_19/lstm_19/while/IdentityIdentity$sequential_19/lstm_19/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_19_lstm_19_while_identity-sequential_19/lstm_19/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1171216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1171216___redundant_placeholder05
1while_while_cond_1171216___redundant_placeholder15
1while_while_cond_1171216___redundant_placeholder25
1while_while_cond_1171216___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�J
�
D__inference_lstm_19_layer_call_and_return_conditional_losses_1171015
inputs_0=
+lstm_cell_20_matmul_readvariableop_resource:h?
-lstm_cell_20_matmul_1_readvariableop_resource:h:
,lstm_cell_20_biasadd_readvariableop_resource:h
identity��#lstm_cell_20/BiasAdd/ReadVariableOp�"lstm_cell_20/MatMul/ReadVariableOp�$lstm_cell_20/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0�
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:���������p
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:���������w
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������h
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:���������{
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:���������p
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������e
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1170931*
condR
while_cond_1170930*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�

�
E__inference_dense_59_layer_call_and_return_conditional_losses_1171596

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_lstm_19_layer_call_fn_1170839
inputs_0
unknown:h
	unknown_0:h
	unknown_1:h
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_1169504|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
ʈ
�
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170803

inputsE
3lstm_19_lstm_cell_20_matmul_readvariableop_resource:hG
5lstm_19_lstm_cell_20_matmul_1_readvariableop_resource:hB
4lstm_19_lstm_cell_20_biasadd_readvariableop_resource:h;
'dense_57_matmul_readvariableop_resource:
�
�7
(dense_57_biasadd_readvariableop_resource:	�;
'dense_58_matmul_readvariableop_resource:
��7
(dense_58_biasadd_readvariableop_resource:	�:
'dense_59_matmul_readvariableop_resource:	�6
(dense_59_biasadd_readvariableop_resource:
identity��dense_57/BiasAdd/ReadVariableOp�dense_57/MatMul/ReadVariableOp�dense_58/BiasAdd/ReadVariableOp�dense_58/MatMul/ReadVariableOp�dense_59/BiasAdd/ReadVariableOp�dense_59/MatMul/ReadVariableOp�+lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp�*lstm_19/lstm_cell_20/MatMul/ReadVariableOp�,lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp�lstm_19/whileC
lstm_19/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_19/strided_sliceStridedSlicelstm_19/Shape:output:0$lstm_19/strided_slice/stack:output:0&lstm_19/strided_slice/stack_1:output:0&lstm_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_19/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
lstm_19/zeros/packedPacklstm_19/strided_slice:output:0lstm_19/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_19/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_19/zerosFilllstm_19/zeros/packed:output:0lstm_19/zeros/Const:output:0*
T0*'
_output_shapes
:���������Z
lstm_19/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
lstm_19/zeros_1/packedPacklstm_19/strided_slice:output:0!lstm_19/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_19/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_19/zeros_1Filllstm_19/zeros_1/packed:output:0lstm_19/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������k
lstm_19/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_19/transpose	Transposeinputslstm_19/transpose/perm:output:0*
T0*+
_output_shapes
:2���������T
lstm_19/Shape_1Shapelstm_19/transpose:y:0*
T0*
_output_shapes
:g
lstm_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_19/strided_slice_1StridedSlicelstm_19/Shape_1:output:0&lstm_19/strided_slice_1/stack:output:0(lstm_19/strided_slice_1/stack_1:output:0(lstm_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_19/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_19/TensorArrayV2TensorListReserve,lstm_19/TensorArrayV2/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_19/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_19/transpose:y:0Flstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_19/strided_slice_2StridedSlicelstm_19/transpose:y:0&lstm_19/strided_slice_2/stack:output:0(lstm_19/strided_slice_2/stack_1:output:0(lstm_19/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
*lstm_19/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3lstm_19_lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_19/lstm_cell_20/MatMulMatMul lstm_19/strided_slice_2:output:02lstm_19/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
,lstm_19/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5lstm_19_lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_19/lstm_cell_20/MatMul_1MatMullstm_19/zeros:output:04lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
lstm_19/lstm_cell_20/addAddV2%lstm_19/lstm_cell_20/MatMul:product:0'lstm_19/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
+lstm_19/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4lstm_19_lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0�
lstm_19/lstm_cell_20/BiasAddBiasAddlstm_19/lstm_cell_20/add:z:03lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hf
$lstm_19/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_19/lstm_cell_20/splitSplit-lstm_19/lstm_cell_20/split/split_dim:output:0%lstm_19/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split~
lstm_19/lstm_cell_20/SigmoidSigmoid#lstm_19/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:����������
lstm_19/lstm_cell_20/Sigmoid_1Sigmoid#lstm_19/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:����������
lstm_19/lstm_cell_20/mulMul"lstm_19/lstm_cell_20/Sigmoid_1:y:0lstm_19/zeros_1:output:0*
T0*'
_output_shapes
:���������x
lstm_19/lstm_cell_20/ReluRelu#lstm_19/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
lstm_19/lstm_cell_20/mul_1Mul lstm_19/lstm_cell_20/Sigmoid:y:0'lstm_19/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:����������
lstm_19/lstm_cell_20/add_1AddV2lstm_19/lstm_cell_20/mul:z:0lstm_19/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:����������
lstm_19/lstm_cell_20/Sigmoid_2Sigmoid#lstm_19/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������u
lstm_19/lstm_cell_20/Relu_1Relulstm_19/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_19/lstm_cell_20/mul_2Mul"lstm_19/lstm_cell_20/Sigmoid_2:y:0)lstm_19/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:���������v
%lstm_19/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
lstm_19/TensorArrayV2_1TensorListReserve.lstm_19/TensorArrayV2_1/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_19/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_19/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_19/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_19/whileWhile#lstm_19/while/loop_counter:output:0)lstm_19/while/maximum_iterations:output:0lstm_19/time:output:0 lstm_19/TensorArrayV2_1:handle:0lstm_19/zeros:output:0lstm_19/zeros_1:output:0 lstm_19/strided_slice_1:output:0?lstm_19/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_19_lstm_cell_20_matmul_readvariableop_resource5lstm_19_lstm_cell_20_matmul_1_readvariableop_resource4lstm_19_lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_19_while_body_1170672*&
condR
lstm_19_while_cond_1170671*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
8lstm_19/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
*lstm_19/TensorArrayV2Stack/TensorListStackTensorListStacklstm_19/while:output:3Alstm_19/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2���������*
element_dtype0p
lstm_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_19/strided_slice_3StridedSlice3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_19/strided_slice_3/stack:output:0(lstm_19/strided_slice_3/stack_1:output:0(lstm_19/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskm
lstm_19/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_19/transpose_1	Transpose3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_19/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2c
lstm_19/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_57/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout_57/dropout/MulMullstm_19/transpose_1:y:0!dropout_57/dropout/Const:output:0*
T0*+
_output_shapes
:���������2_
dropout_57/dropout/ShapeShapelstm_19/transpose_1:y:0*
T0*
_output_shapes
:�
/dropout_57/dropout/random_uniform/RandomUniformRandomUniform!dropout_57/dropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0f
!dropout_57/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout_57/dropout/GreaterEqualGreaterEqual8dropout_57/dropout/random_uniform/RandomUniform:output:0*dropout_57/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2�
dropout_57/dropout/CastCast#dropout_57/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2�
dropout_57/dropout/Mul_1Muldropout_57/dropout/Mul:z:0dropout_57/dropout/Cast:y:0*
T0*+
_output_shapes
:���������2a
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
flatten_19/ReshapeReshapedropout_57/dropout/Mul_1:z:0flatten_19/Const:output:0*
T0*(
_output_shapes
:����������
�
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource* 
_output_shapes
:
�
�*
dtype0�
dense_57/MatMulMatMulflatten_19/Reshape:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_57/ReluReludense_57/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_58/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_58/dropout/MulMuldense_57/Relu:activations:0!dropout_58/dropout/Const:output:0*
T0*(
_output_shapes
:����������c
dropout_58/dropout/ShapeShapedense_57/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_58/dropout/random_uniform/RandomUniformRandomUniform!dropout_58/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_58/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_58/dropout/GreaterEqualGreaterEqual8dropout_58/dropout/random_uniform/RandomUniform:output:0*dropout_58/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_58/dropout/CastCast#dropout_58/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout_58/dropout/Mul_1Muldropout_58/dropout/Mul:z:0dropout_58/dropout/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_58/MatMulMatMuldropout_58/dropout/Mul_1:z:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_58/ReluReludense_58/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_59/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_59/dropout/MulMuldense_58/Relu:activations:0!dropout_59/dropout/Const:output:0*
T0*(
_output_shapes
:����������c
dropout_59/dropout/ShapeShapedense_58/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_59/dropout/random_uniform/RandomUniformRandomUniform!dropout_59/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_59/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_59/dropout/GreaterEqualGreaterEqual8dropout_59/dropout/random_uniform/RandomUniform:output:0*dropout_59/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_59/dropout/CastCast#dropout_59/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout_59/dropout/Mul_1Muldropout_59/dropout/Mul:z:0dropout_59/dropout/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_59/MatMulMatMuldropout_59/dropout/Mul_1:z:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_59/SoftmaxSoftmaxdense_59/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_59/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp,^lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp+^lstm_19/lstm_cell_20/MatMul/ReadVariableOp-^lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp^lstm_19/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������2: : : : : : : : : 2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2Z
+lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp+lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp2X
*lstm_19/lstm_cell_20/MatMul/ReadVariableOp*lstm_19/lstm_cell_20/MatMul/ReadVariableOp2\
,lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp,lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp2
lstm_19/whilelstm_19/while:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�'
�
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170288

inputs!
lstm_19_1170261:h!
lstm_19_1170263:h
lstm_19_1170265:h$
dense_57_1170270:
�
�
dense_57_1170272:	�$
dense_58_1170276:
��
dense_58_1170278:	�#
dense_59_1170282:	�
dense_59_1170284:
identity�� dense_57/StatefulPartitionedCall� dense_58/StatefulPartitionedCall� dense_59/StatefulPartitionedCall�"dropout_57/StatefulPartitionedCall�"dropout_58/StatefulPartitionedCall�"dropout_59/StatefulPartitionedCall�lstm_19/StatefulPartitionedCall�
lstm_19/StatefulPartitionedCallStatefulPartitionedCallinputslstm_19_1170261lstm_19_1170263lstm_19_1170265*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_1170224�
"dropout_57/StatefulPartitionedCallStatefulPartitionedCall(lstm_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_57_layer_call_and_return_conditional_losses_1170065�
flatten_19/PartitionedCallPartitionedCall+dropout_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_1169874�
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_57_1170270dense_57_1170272*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_1169887�
"dropout_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0#^dropout_57/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_58_layer_call_and_return_conditional_losses_1170026�
 dense_58/StatefulPartitionedCallStatefulPartitionedCall+dropout_58/StatefulPartitionedCall:output:0dense_58_1170276dense_58_1170278*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_1169911�
"dropout_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0#^dropout_58/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_59_layer_call_and_return_conditional_losses_1169993�
 dense_59/StatefulPartitionedCallStatefulPartitionedCall+dropout_59/StatefulPartitionedCall:output:0dense_59_1170282dense_59_1170284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_1169935x
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall#^dropout_57/StatefulPartitionedCall#^dropout_58/StatefulPartitionedCall#^dropout_59/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������2: : : : : : : : : 2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2H
"dropout_57/StatefulPartitionedCall"dropout_57/StatefulPartitionedCall2H
"dropout_58/StatefulPartitionedCall"dropout_58/StatefulPartitionedCall2H
"dropout_59/StatefulPartitionedCall"dropout_59/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�A
�

lstm_19_while_body_1170672,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3+
'lstm_19_while_lstm_19_strided_slice_1_0g
clstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_19_while_lstm_cell_20_matmul_readvariableop_resource_0:hO
=lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource_0:hJ
<lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource_0:h
lstm_19_while_identity
lstm_19_while_identity_1
lstm_19_while_identity_2
lstm_19_while_identity_3
lstm_19_while_identity_4
lstm_19_while_identity_5)
%lstm_19_while_lstm_19_strided_slice_1e
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorK
9lstm_19_while_lstm_cell_20_matmul_readvariableop_resource:hM
;lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource:hH
:lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource:h��1lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp�0lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp�2lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp�
?lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_19/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0lstm_19_while_placeholderHlstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0lstm_19/while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp;lstm_19_while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
!lstm_19/while/lstm_cell_20/MatMulMatMul8lstm_19/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
2lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp=lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
#lstm_19/while/lstm_cell_20/MatMul_1MatMullstm_19_while_placeholder_2:lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
lstm_19/while/lstm_cell_20/addAddV2+lstm_19/while/lstm_cell_20/MatMul:product:0-lstm_19/while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
1lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp<lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0�
"lstm_19/while/lstm_cell_20/BiasAddBiasAdd"lstm_19/while/lstm_cell_20/add:z:09lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hl
*lstm_19/while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_19/while/lstm_cell_20/splitSplit3lstm_19/while/lstm_cell_20/split/split_dim:output:0+lstm_19/while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split�
"lstm_19/while/lstm_cell_20/SigmoidSigmoid)lstm_19/while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:����������
$lstm_19/while/lstm_cell_20/Sigmoid_1Sigmoid)lstm_19/while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:����������
lstm_19/while/lstm_cell_20/mulMul(lstm_19/while/lstm_cell_20/Sigmoid_1:y:0lstm_19_while_placeholder_3*
T0*'
_output_shapes
:����������
lstm_19/while/lstm_cell_20/ReluRelu)lstm_19/while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
 lstm_19/while/lstm_cell_20/mul_1Mul&lstm_19/while/lstm_cell_20/Sigmoid:y:0-lstm_19/while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:����������
 lstm_19/while/lstm_cell_20/add_1AddV2"lstm_19/while/lstm_cell_20/mul:z:0$lstm_19/while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:����������
$lstm_19/while/lstm_cell_20/Sigmoid_2Sigmoid)lstm_19/while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:����������
!lstm_19/while/lstm_cell_20/Relu_1Relu$lstm_19/while/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
 lstm_19/while/lstm_cell_20/mul_2Mul(lstm_19/while/lstm_cell_20/Sigmoid_2:y:0/lstm_19/while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:����������
2lstm_19/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_19_while_placeholder_1lstm_19_while_placeholder$lstm_19/while/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_19/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_19/while/addAddV2lstm_19_while_placeholderlstm_19/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_19/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_19/while/add_1AddV2(lstm_19_while_lstm_19_while_loop_counterlstm_19/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_19/while/IdentityIdentitylstm_19/while/add_1:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: �
lstm_19/while/Identity_1Identity.lstm_19_while_lstm_19_while_maximum_iterations^lstm_19/while/NoOp*
T0*
_output_shapes
: q
lstm_19/while/Identity_2Identitylstm_19/while/add:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: �
lstm_19/while/Identity_3IdentityBlstm_19/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_19/while/NoOp*
T0*
_output_shapes
: :����
lstm_19/while/Identity_4Identity$lstm_19/while/lstm_cell_20/mul_2:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:����������
lstm_19/while/Identity_5Identity$lstm_19/while/lstm_cell_20/add_1:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:����������
lstm_19/while/NoOpNoOp2^lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp1^lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp3^lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_19_while_identitylstm_19/while/Identity:output:0"=
lstm_19_while_identity_1!lstm_19/while/Identity_1:output:0"=
lstm_19_while_identity_2!lstm_19/while/Identity_2:output:0"=
lstm_19_while_identity_3!lstm_19/while/Identity_3:output:0"=
lstm_19_while_identity_4!lstm_19/while/Identity_4:output:0"=
lstm_19_while_identity_5!lstm_19/while/Identity_5:output:0"P
%lstm_19_while_lstm_19_strided_slice_1'lstm_19_while_lstm_19_strided_slice_1_0"z
:lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource<lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource_0"|
;lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource=lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource_0"x
9lstm_19_while_lstm_cell_20_matmul_readvariableop_resource;lstm_19_while_lstm_cell_20_matmul_readvariableop_resource_0"�
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2f
1lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp1lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp2d
0lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp0lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp2h
2lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp2lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_1171074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_20_matmul_readvariableop_resource_0:hG
5while_lstm_cell_20_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_20_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_20_matmul_readvariableop_resource:hE
3while_lstm_cell_20_matmul_1_readvariableop_resource:h@
2while_lstm_cell_20_biasadd_readvariableop_resource:h��)while/lstm_cell_20/BiasAdd/ReadVariableOp�(while/lstm_cell_20/MatMul/ReadVariableOp�*while/lstm_cell_20/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0�
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hd
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:���������|
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������t
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:���������|
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������q
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������y
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_dense_57_layer_call_fn_1171491

inputs
unknown:
�
�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_1169887p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������

 
_user_specified_nameinputs
�R
�
(sequential_19_lstm_19_while_body_1169244H
Dsequential_19_lstm_19_while_sequential_19_lstm_19_while_loop_counterN
Jsequential_19_lstm_19_while_sequential_19_lstm_19_while_maximum_iterations+
'sequential_19_lstm_19_while_placeholder-
)sequential_19_lstm_19_while_placeholder_1-
)sequential_19_lstm_19_while_placeholder_2-
)sequential_19_lstm_19_while_placeholder_3G
Csequential_19_lstm_19_while_sequential_19_lstm_19_strided_slice_1_0�
sequential_19_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_19_lstm_19_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_19_lstm_19_while_lstm_cell_20_matmul_readvariableop_resource_0:h]
Ksequential_19_lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource_0:hX
Jsequential_19_lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource_0:h(
$sequential_19_lstm_19_while_identity*
&sequential_19_lstm_19_while_identity_1*
&sequential_19_lstm_19_while_identity_2*
&sequential_19_lstm_19_while_identity_3*
&sequential_19_lstm_19_while_identity_4*
&sequential_19_lstm_19_while_identity_5E
Asequential_19_lstm_19_while_sequential_19_lstm_19_strided_slice_1�
}sequential_19_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_19_lstm_19_tensorarrayunstack_tensorlistfromtensorY
Gsequential_19_lstm_19_while_lstm_cell_20_matmul_readvariableop_resource:h[
Isequential_19_lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource:hV
Hsequential_19_lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource:h��?sequential_19/lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp�>sequential_19/lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp�@sequential_19/lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp�
Msequential_19/lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
?sequential_19/lstm_19/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_19_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_19_lstm_19_tensorarrayunstack_tensorlistfromtensor_0'sequential_19_lstm_19_while_placeholderVsequential_19/lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
>sequential_19/lstm_19/while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOpIsequential_19_lstm_19_while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
/sequential_19/lstm_19/while/lstm_cell_20/MatMulMatMulFsequential_19/lstm_19/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_19/lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
@sequential_19/lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOpKsequential_19_lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
1sequential_19/lstm_19/while/lstm_cell_20/MatMul_1MatMul)sequential_19_lstm_19_while_placeholder_2Hsequential_19/lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
,sequential_19/lstm_19/while/lstm_cell_20/addAddV29sequential_19/lstm_19/while/lstm_cell_20/MatMul:product:0;sequential_19/lstm_19/while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
?sequential_19/lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOpJsequential_19_lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0�
0sequential_19/lstm_19/while/lstm_cell_20/BiasAddBiasAdd0sequential_19/lstm_19/while/lstm_cell_20/add:z:0Gsequential_19/lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hz
8sequential_19/lstm_19/while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
.sequential_19/lstm_19/while/lstm_cell_20/splitSplitAsequential_19/lstm_19/while/lstm_cell_20/split/split_dim:output:09sequential_19/lstm_19/while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split�
0sequential_19/lstm_19/while/lstm_cell_20/SigmoidSigmoid7sequential_19/lstm_19/while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:����������
2sequential_19/lstm_19/while/lstm_cell_20/Sigmoid_1Sigmoid7sequential_19/lstm_19/while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:����������
,sequential_19/lstm_19/while/lstm_cell_20/mulMul6sequential_19/lstm_19/while/lstm_cell_20/Sigmoid_1:y:0)sequential_19_lstm_19_while_placeholder_3*
T0*'
_output_shapes
:����������
-sequential_19/lstm_19/while/lstm_cell_20/ReluRelu7sequential_19/lstm_19/while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
.sequential_19/lstm_19/while/lstm_cell_20/mul_1Mul4sequential_19/lstm_19/while/lstm_cell_20/Sigmoid:y:0;sequential_19/lstm_19/while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:����������
.sequential_19/lstm_19/while/lstm_cell_20/add_1AddV20sequential_19/lstm_19/while/lstm_cell_20/mul:z:02sequential_19/lstm_19/while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:����������
2sequential_19/lstm_19/while/lstm_cell_20/Sigmoid_2Sigmoid7sequential_19/lstm_19/while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:����������
/sequential_19/lstm_19/while/lstm_cell_20/Relu_1Relu2sequential_19/lstm_19/while/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
.sequential_19/lstm_19/while/lstm_cell_20/mul_2Mul6sequential_19/lstm_19/while/lstm_cell_20/Sigmoid_2:y:0=sequential_19/lstm_19/while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:����������
@sequential_19/lstm_19/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_19_lstm_19_while_placeholder_1'sequential_19_lstm_19_while_placeholder2sequential_19/lstm_19/while/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:���c
!sequential_19/lstm_19/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_19/lstm_19/while/addAddV2'sequential_19_lstm_19_while_placeholder*sequential_19/lstm_19/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_19/lstm_19/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential_19/lstm_19/while/add_1AddV2Dsequential_19_lstm_19_while_sequential_19_lstm_19_while_loop_counter,sequential_19/lstm_19/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential_19/lstm_19/while/IdentityIdentity%sequential_19/lstm_19/while/add_1:z:0!^sequential_19/lstm_19/while/NoOp*
T0*
_output_shapes
: �
&sequential_19/lstm_19/while/Identity_1IdentityJsequential_19_lstm_19_while_sequential_19_lstm_19_while_maximum_iterations!^sequential_19/lstm_19/while/NoOp*
T0*
_output_shapes
: �
&sequential_19/lstm_19/while/Identity_2Identity#sequential_19/lstm_19/while/add:z:0!^sequential_19/lstm_19/while/NoOp*
T0*
_output_shapes
: �
&sequential_19/lstm_19/while/Identity_3IdentityPsequential_19/lstm_19/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_19/lstm_19/while/NoOp*
T0*
_output_shapes
: :����
&sequential_19/lstm_19/while/Identity_4Identity2sequential_19/lstm_19/while/lstm_cell_20/mul_2:z:0!^sequential_19/lstm_19/while/NoOp*
T0*'
_output_shapes
:����������
&sequential_19/lstm_19/while/Identity_5Identity2sequential_19/lstm_19/while/lstm_cell_20/add_1:z:0!^sequential_19/lstm_19/while/NoOp*
T0*'
_output_shapes
:����������
 sequential_19/lstm_19/while/NoOpNoOp@^sequential_19/lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp?^sequential_19/lstm_19/while/lstm_cell_20/MatMul/ReadVariableOpA^sequential_19/lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_19_lstm_19_while_identity-sequential_19/lstm_19/while/Identity:output:0"Y
&sequential_19_lstm_19_while_identity_1/sequential_19/lstm_19/while/Identity_1:output:0"Y
&sequential_19_lstm_19_while_identity_2/sequential_19/lstm_19/while/Identity_2:output:0"Y
&sequential_19_lstm_19_while_identity_3/sequential_19/lstm_19/while/Identity_3:output:0"Y
&sequential_19_lstm_19_while_identity_4/sequential_19/lstm_19/while/Identity_4:output:0"Y
&sequential_19_lstm_19_while_identity_5/sequential_19/lstm_19/while/Identity_5:output:0"�
Hsequential_19_lstm_19_while_lstm_cell_20_biasadd_readvariableop_resourceJsequential_19_lstm_19_while_lstm_cell_20_biasadd_readvariableop_resource_0"�
Isequential_19_lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resourceKsequential_19_lstm_19_while_lstm_cell_20_matmul_1_readvariableop_resource_0"�
Gsequential_19_lstm_19_while_lstm_cell_20_matmul_readvariableop_resourceIsequential_19_lstm_19_while_lstm_cell_20_matmul_readvariableop_resource_0"�
Asequential_19_lstm_19_while_sequential_19_lstm_19_strided_slice_1Csequential_19_lstm_19_while_sequential_19_lstm_19_strided_slice_1_0"�
}sequential_19_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_19_lstm_19_tensorarrayunstack_tensorlistfromtensorsequential_19_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_19_lstm_19_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2�
?sequential_19/lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp?sequential_19/lstm_19/while/lstm_cell_20/BiasAdd/ReadVariableOp2�
>sequential_19/lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp>sequential_19/lstm_19/while/lstm_cell_20/MatMul/ReadVariableOp2�
@sequential_19/lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp@sequential_19/lstm_19/while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_1169768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1169768___redundant_placeholder05
1while_while_cond_1169768___redundant_placeholder15
1while_while_cond_1169768___redundant_placeholder25
1while_while_cond_1169768___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�#
�
while_body_1169435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_20_1169459_0:h.
while_lstm_cell_20_1169461_0:h*
while_lstm_cell_20_1169463_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_20_1169459:h,
while_lstm_cell_20_1169461:h(
while_lstm_cell_20_1169463:h��*while/lstm_cell_20/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_20_1169459_0while_lstm_cell_20_1169461_0while_lstm_cell_20_1169463_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1169421�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_20/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity3while/lstm_cell_20/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������
while/Identity_5Identity3while/lstm_cell_20/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������y

while/NoOpNoOp+^while/lstm_cell_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_20_1169459while_lstm_cell_20_1169459_0":
while_lstm_cell_20_1169461while_lstm_cell_20_1169461_0":
while_lstm_cell_20_1169463while_lstm_cell_20_1169463_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2X
*while/lstm_cell_20/StatefulPartitionedCall*while/lstm_cell_20/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_lstm_19_layer_call_fn_1170861

inputs
unknown:h
	unknown_0:h
	unknown_1:h
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_1169853s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�8
�
D__inference_lstm_19_layer_call_and_return_conditional_losses_1169695

inputs&
lstm_cell_20_1169613:h&
lstm_cell_20_1169615:h"
lstm_cell_20_1169617:h
identity��$lstm_cell_20/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
$lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_20_1169613lstm_cell_20_1169615lstm_cell_20_1169617*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1169567n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_20_1169613lstm_cell_20_1169615lstm_cell_20_1169617*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1169626*
condR
while_cond_1169625*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������u
NoOpNoOp%^lstm_cell_20/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_20/StatefulPartitionedCall$lstm_cell_20/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
��
�
#__inference__traced_restore_1171943
file_prefix4
 assignvariableop_dense_57_kernel:
�
�/
 assignvariableop_1_dense_57_bias:	�6
"assignvariableop_2_dense_58_kernel:
��/
 assignvariableop_3_dense_58_bias:	�5
"assignvariableop_4_dense_59_kernel:	�.
 assignvariableop_5_dense_59_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: A
/assignvariableop_11_lstm_19_lstm_cell_20_kernel:hK
9assignvariableop_12_lstm_19_lstm_cell_20_recurrent_kernel:h;
-assignvariableop_13_lstm_19_lstm_cell_20_bias:h#
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: >
*assignvariableop_18_adam_dense_57_kernel_m:
�
�7
(assignvariableop_19_adam_dense_57_bias_m:	�>
*assignvariableop_20_adam_dense_58_kernel_m:
��7
(assignvariableop_21_adam_dense_58_bias_m:	�=
*assignvariableop_22_adam_dense_59_kernel_m:	�6
(assignvariableop_23_adam_dense_59_bias_m:H
6assignvariableop_24_adam_lstm_19_lstm_cell_20_kernel_m:hR
@assignvariableop_25_adam_lstm_19_lstm_cell_20_recurrent_kernel_m:hB
4assignvariableop_26_adam_lstm_19_lstm_cell_20_bias_m:h>
*assignvariableop_27_adam_dense_57_kernel_v:
�
�7
(assignvariableop_28_adam_dense_57_bias_v:	�>
*assignvariableop_29_adam_dense_58_kernel_v:
��7
(assignvariableop_30_adam_dense_58_bias_v:	�=
*assignvariableop_31_adam_dense_59_kernel_v:	�6
(assignvariableop_32_adam_dense_59_bias_v:H
6assignvariableop_33_adam_lstm_19_lstm_cell_20_kernel_v:hR
@assignvariableop_34_adam_lstm_19_lstm_cell_20_recurrent_kernel_v:hB
4assignvariableop_35_adam_lstm_19_lstm_cell_20_bias_v:h
identity_37��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*�
value�B�%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_dense_57_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_57_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_58_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_58_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_59_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_59_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_19_lstm_cell_20_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp9assignvariableop_12_lstm_19_lstm_cell_20_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp-assignvariableop_13_lstm_19_lstm_cell_20_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_57_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_57_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_58_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_58_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_59_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_59_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_lstm_19_lstm_cell_20_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp@assignvariableop_25_adam_lstm_19_lstm_cell_20_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_lstm_19_lstm_cell_20_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_57_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_57_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_58_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_58_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_59_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_59_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_19_lstm_cell_20_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp@assignvariableop_34_adam_lstm_19_lstm_cell_20_recurrent_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp4assignvariableop_35_adam_lstm_19_lstm_cell_20_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
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
�
c
G__inference_flatten_19_layer_call_and_return_conditional_losses_1171482

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������
Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�8
�
while_body_1170931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_20_matmul_readvariableop_resource_0:hG
5while_lstm_cell_20_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_20_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_20_matmul_readvariableop_resource:hE
3while_lstm_cell_20_matmul_1_readvariableop_resource:h@
2while_lstm_cell_20_biasadd_readvariableop_resource:h��)while/lstm_cell_20/BiasAdd/ReadVariableOp�(while/lstm_cell_20/MatMul/ReadVariableOp�*while/lstm_cell_20/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0�
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hd
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:���������|
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������t
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:���������|
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������q
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������y
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�
e
G__inference_dropout_59_layer_call_and_return_conditional_losses_1171564

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�J
�
D__inference_lstm_19_layer_call_and_return_conditional_losses_1171444

inputs=
+lstm_cell_20_matmul_readvariableop_resource:h?
-lstm_cell_20_matmul_1_readvariableop_resource:h:
,lstm_cell_20_biasadd_readvariableop_resource:h
identity��#lstm_cell_20/BiasAdd/ReadVariableOp�"lstm_cell_20/MatMul/ReadVariableOp�$lstm_cell_20/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0�
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:���������p
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:���������w
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������h
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:���������{
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:���������p
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������e
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1171360*
condR
while_cond_1171359*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2���������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
while_cond_1169434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1169434___redundant_placeholder05
1while_while_cond_1169434___redundant_placeholder15
1while_while_cond_1169434___redundant_placeholder25
1while_while_cond_1169434___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�
�	
"__inference__wrapped_model_1169354
lstm_19_inputS
Asequential_19_lstm_19_lstm_cell_20_matmul_readvariableop_resource:hU
Csequential_19_lstm_19_lstm_cell_20_matmul_1_readvariableop_resource:hP
Bsequential_19_lstm_19_lstm_cell_20_biasadd_readvariableop_resource:hI
5sequential_19_dense_57_matmul_readvariableop_resource:
�
�E
6sequential_19_dense_57_biasadd_readvariableop_resource:	�I
5sequential_19_dense_58_matmul_readvariableop_resource:
��E
6sequential_19_dense_58_biasadd_readvariableop_resource:	�H
5sequential_19_dense_59_matmul_readvariableop_resource:	�D
6sequential_19_dense_59_biasadd_readvariableop_resource:
identity��-sequential_19/dense_57/BiasAdd/ReadVariableOp�,sequential_19/dense_57/MatMul/ReadVariableOp�-sequential_19/dense_58/BiasAdd/ReadVariableOp�,sequential_19/dense_58/MatMul/ReadVariableOp�-sequential_19/dense_59/BiasAdd/ReadVariableOp�,sequential_19/dense_59/MatMul/ReadVariableOp�9sequential_19/lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp�8sequential_19/lstm_19/lstm_cell_20/MatMul/ReadVariableOp�:sequential_19/lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp�sequential_19/lstm_19/whileX
sequential_19/lstm_19/ShapeShapelstm_19_input*
T0*
_output_shapes
:s
)sequential_19/lstm_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_19/lstm_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_19/lstm_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential_19/lstm_19/strided_sliceStridedSlice$sequential_19/lstm_19/Shape:output:02sequential_19/lstm_19/strided_slice/stack:output:04sequential_19/lstm_19/strided_slice/stack_1:output:04sequential_19/lstm_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_19/lstm_19/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
"sequential_19/lstm_19/zeros/packedPack,sequential_19/lstm_19/strided_slice:output:0-sequential_19/lstm_19/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_19/lstm_19/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_19/lstm_19/zerosFill+sequential_19/lstm_19/zeros/packed:output:0*sequential_19/lstm_19/zeros/Const:output:0*
T0*'
_output_shapes
:���������h
&sequential_19/lstm_19/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
$sequential_19/lstm_19/zeros_1/packedPack,sequential_19/lstm_19/strided_slice:output:0/sequential_19/lstm_19/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_19/lstm_19/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_19/lstm_19/zeros_1Fill-sequential_19/lstm_19/zeros_1/packed:output:0,sequential_19/lstm_19/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������y
$sequential_19/lstm_19/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_19/lstm_19/transpose	Transposelstm_19_input-sequential_19/lstm_19/transpose/perm:output:0*
T0*+
_output_shapes
:2���������p
sequential_19/lstm_19/Shape_1Shape#sequential_19/lstm_19/transpose:y:0*
T0*
_output_shapes
:u
+sequential_19/lstm_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_19/lstm_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/lstm_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_19/lstm_19/strided_slice_1StridedSlice&sequential_19/lstm_19/Shape_1:output:04sequential_19/lstm_19/strided_slice_1/stack:output:06sequential_19/lstm_19/strided_slice_1/stack_1:output:06sequential_19/lstm_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_19/lstm_19/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential_19/lstm_19/TensorArrayV2TensorListReserve:sequential_19/lstm_19/TensorArrayV2/element_shape:output:0.sequential_19/lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential_19/lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
=sequential_19/lstm_19/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_19/lstm_19/transpose:y:0Tsequential_19/lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential_19/lstm_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_19/lstm_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/lstm_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_19/lstm_19/strided_slice_2StridedSlice#sequential_19/lstm_19/transpose:y:04sequential_19/lstm_19/strided_slice_2/stack:output:06sequential_19/lstm_19/strided_slice_2/stack_1:output:06sequential_19/lstm_19/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
8sequential_19/lstm_19/lstm_cell_20/MatMul/ReadVariableOpReadVariableOpAsequential_19_lstm_19_lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0�
)sequential_19/lstm_19/lstm_cell_20/MatMulMatMul.sequential_19/lstm_19/strided_slice_2:output:0@sequential_19/lstm_19/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
:sequential_19/lstm_19/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOpCsequential_19_lstm_19_lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0�
+sequential_19/lstm_19/lstm_cell_20/MatMul_1MatMul$sequential_19/lstm_19/zeros:output:0Bsequential_19/lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
&sequential_19/lstm_19/lstm_cell_20/addAddV23sequential_19/lstm_19/lstm_cell_20/MatMul:product:05sequential_19/lstm_19/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
9sequential_19/lstm_19/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOpBsequential_19_lstm_19_lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0�
*sequential_19/lstm_19/lstm_cell_20/BiasAddBiasAdd*sequential_19/lstm_19/lstm_cell_20/add:z:0Asequential_19/lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������ht
2sequential_19/lstm_19/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
(sequential_19/lstm_19/lstm_cell_20/splitSplit;sequential_19/lstm_19/lstm_cell_20/split/split_dim:output:03sequential_19/lstm_19/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split�
*sequential_19/lstm_19/lstm_cell_20/SigmoidSigmoid1sequential_19/lstm_19/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:����������
,sequential_19/lstm_19/lstm_cell_20/Sigmoid_1Sigmoid1sequential_19/lstm_19/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:����������
&sequential_19/lstm_19/lstm_cell_20/mulMul0sequential_19/lstm_19/lstm_cell_20/Sigmoid_1:y:0&sequential_19/lstm_19/zeros_1:output:0*
T0*'
_output_shapes
:����������
'sequential_19/lstm_19/lstm_cell_20/ReluRelu1sequential_19/lstm_19/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
(sequential_19/lstm_19/lstm_cell_20/mul_1Mul.sequential_19/lstm_19/lstm_cell_20/Sigmoid:y:05sequential_19/lstm_19/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:����������
(sequential_19/lstm_19/lstm_cell_20/add_1AddV2*sequential_19/lstm_19/lstm_cell_20/mul:z:0,sequential_19/lstm_19/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:����������
,sequential_19/lstm_19/lstm_cell_20/Sigmoid_2Sigmoid1sequential_19/lstm_19/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:����������
)sequential_19/lstm_19/lstm_cell_20/Relu_1Relu,sequential_19/lstm_19/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
(sequential_19/lstm_19/lstm_cell_20/mul_2Mul0sequential_19/lstm_19/lstm_cell_20/Sigmoid_2:y:07sequential_19/lstm_19/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:����������
3sequential_19/lstm_19/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
%sequential_19/lstm_19/TensorArrayV2_1TensorListReserve<sequential_19/lstm_19/TensorArrayV2_1/element_shape:output:0.sequential_19/lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential_19/lstm_19/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_19/lstm_19/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential_19/lstm_19/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_19/lstm_19/whileWhile1sequential_19/lstm_19/while/loop_counter:output:07sequential_19/lstm_19/while/maximum_iterations:output:0#sequential_19/lstm_19/time:output:0.sequential_19/lstm_19/TensorArrayV2_1:handle:0$sequential_19/lstm_19/zeros:output:0&sequential_19/lstm_19/zeros_1:output:0.sequential_19/lstm_19/strided_slice_1:output:0Msequential_19/lstm_19/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_19_lstm_19_lstm_cell_20_matmul_readvariableop_resourceCsequential_19_lstm_19_lstm_cell_20_matmul_1_readvariableop_resourceBsequential_19_lstm_19_lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_19_lstm_19_while_body_1169244*4
cond,R*
(sequential_19_lstm_19_while_cond_1169243*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
Fsequential_19/lstm_19/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8sequential_19/lstm_19/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_19/lstm_19/while:output:3Osequential_19/lstm_19/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2���������*
element_dtype0~
+sequential_19/lstm_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential_19/lstm_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_19/lstm_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential_19/lstm_19/strided_slice_3StridedSliceAsequential_19/lstm_19/TensorArrayV2Stack/TensorListStack:tensor:04sequential_19/lstm_19/strided_slice_3/stack:output:06sequential_19/lstm_19/strided_slice_3/stack_1:output:06sequential_19/lstm_19/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask{
&sequential_19/lstm_19/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential_19/lstm_19/transpose_1	TransposeAsequential_19/lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_19/lstm_19/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2q
sequential_19/lstm_19/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
!sequential_19/dropout_57/IdentityIdentity%sequential_19/lstm_19/transpose_1:y:0*
T0*+
_output_shapes
:���������2o
sequential_19/flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
 sequential_19/flatten_19/ReshapeReshape*sequential_19/dropout_57/Identity:output:0'sequential_19/flatten_19/Const:output:0*
T0*(
_output_shapes
:����������
�
,sequential_19/dense_57/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_57_matmul_readvariableop_resource* 
_output_shapes
:
�
�*
dtype0�
sequential_19/dense_57/MatMulMatMul)sequential_19/flatten_19/Reshape:output:04sequential_19/dense_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_19/dense_57/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_57_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_19/dense_57/BiasAddBiasAdd'sequential_19/dense_57/MatMul:product:05sequential_19/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
sequential_19/dense_57/ReluRelu'sequential_19/dense_57/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
!sequential_19/dropout_58/IdentityIdentity)sequential_19/dense_57/Relu:activations:0*
T0*(
_output_shapes
:�����������
,sequential_19/dense_58/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_58_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_19/dense_58/MatMulMatMul*sequential_19/dropout_58/Identity:output:04sequential_19/dense_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_19/dense_58/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_58_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_19/dense_58/BiasAddBiasAdd'sequential_19/dense_58/MatMul:product:05sequential_19/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
sequential_19/dense_58/ReluRelu'sequential_19/dense_58/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
!sequential_19/dropout_59/IdentityIdentity)sequential_19/dense_58/Relu:activations:0*
T0*(
_output_shapes
:�����������
,sequential_19/dense_59/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_59_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_19/dense_59/MatMulMatMul*sequential_19/dropout_59/Identity:output:04sequential_19/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_19/dense_59/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_19/dense_59/BiasAddBiasAdd'sequential_19/dense_59/MatMul:product:05sequential_19/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_19/dense_59/SoftmaxSoftmax'sequential_19/dense_59/BiasAdd:output:0*
T0*'
_output_shapes
:���������w
IdentityIdentity(sequential_19/dense_59/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_19/dense_57/BiasAdd/ReadVariableOp-^sequential_19/dense_57/MatMul/ReadVariableOp.^sequential_19/dense_58/BiasAdd/ReadVariableOp-^sequential_19/dense_58/MatMul/ReadVariableOp.^sequential_19/dense_59/BiasAdd/ReadVariableOp-^sequential_19/dense_59/MatMul/ReadVariableOp:^sequential_19/lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp9^sequential_19/lstm_19/lstm_cell_20/MatMul/ReadVariableOp;^sequential_19/lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp^sequential_19/lstm_19/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������2: : : : : : : : : 2^
-sequential_19/dense_57/BiasAdd/ReadVariableOp-sequential_19/dense_57/BiasAdd/ReadVariableOp2\
,sequential_19/dense_57/MatMul/ReadVariableOp,sequential_19/dense_57/MatMul/ReadVariableOp2^
-sequential_19/dense_58/BiasAdd/ReadVariableOp-sequential_19/dense_58/BiasAdd/ReadVariableOp2\
,sequential_19/dense_58/MatMul/ReadVariableOp,sequential_19/dense_58/MatMul/ReadVariableOp2^
-sequential_19/dense_59/BiasAdd/ReadVariableOp-sequential_19/dense_59/BiasAdd/ReadVariableOp2\
,sequential_19/dense_59/MatMul/ReadVariableOp,sequential_19/dense_59/MatMul/ReadVariableOp2v
9sequential_19/lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp9sequential_19/lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp2t
8sequential_19/lstm_19/lstm_cell_20/MatMul/ReadVariableOp8sequential_19/lstm_19/lstm_cell_20/MatMul/ReadVariableOp2x
:sequential_19/lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp:sequential_19/lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp2:
sequential_19/lstm_19/whilesequential_19/lstm_19/while:Z V
+
_output_shapes
:���������2
'
_user_specified_namelstm_19_input
�
�
while_cond_1171359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1171359___redundant_placeholder05
1while_while_cond_1171359___redundant_placeholder15
1while_while_cond_1171359___redundant_placeholder25
1while_while_cond_1171359___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�8
�
D__inference_lstm_19_layer_call_and_return_conditional_losses_1169504

inputs&
lstm_cell_20_1169422:h&
lstm_cell_20_1169424:h"
lstm_cell_20_1169426:h
identity��$lstm_cell_20/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
$lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_20_1169422lstm_cell_20_1169424lstm_cell_20_1169426*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1169421n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_20_1169422lstm_cell_20_1169424lstm_cell_20_1169426*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1169435*
condR
while_cond_1169434*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������u
NoOpNoOp%^lstm_cell_20/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_20/StatefulPartitionedCall$lstm_cell_20/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�8
�
while_body_1169769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_20_matmul_readvariableop_resource_0:hG
5while_lstm_cell_20_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_20_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_20_matmul_readvariableop_resource:hE
3while_lstm_cell_20_matmul_1_readvariableop_resource:h@
2while_lstm_cell_20_biasadd_readvariableop_resource:h��)while/lstm_cell_20/BiasAdd/ReadVariableOp�(while/lstm_cell_20/MatMul/ReadVariableOp�*while/lstm_cell_20/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0�
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0�
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hd
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:���������|
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������t
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:����������
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:���������|
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������q
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������y
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������:���������: : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
: 
�

�
E__inference_dense_58_layer_call_and_return_conditional_losses_1169911

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1169567

inputs

states
states_10
matmul_readvariableop_resource:h2
 matmul_1_readvariableop_resource:h-
biasadd_readvariableop_resource:h
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������hr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:h*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates:OK
'
_output_shapes
:���������
 
_user_specified_namestates
�"
�
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170362
lstm_19_input!
lstm_19_1170335:h!
lstm_19_1170337:h
lstm_19_1170339:h$
dense_57_1170344:
�
�
dense_57_1170346:	�$
dense_58_1170350:
��
dense_58_1170352:	�#
dense_59_1170356:	�
dense_59_1170358:
identity�� dense_57/StatefulPartitionedCall� dense_58/StatefulPartitionedCall� dense_59/StatefulPartitionedCall�lstm_19/StatefulPartitionedCall�
lstm_19/StatefulPartitionedCallStatefulPartitionedCalllstm_19_inputlstm_19_1170335lstm_19_1170337lstm_19_1170339*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_1169853�
dropout_57/PartitionedCallPartitionedCall(lstm_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_57_layer_call_and_return_conditional_losses_1169866�
flatten_19/PartitionedCallPartitionedCall#dropout_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_1169874�
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_57_1170344dense_57_1170346*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_1169887�
dropout_58/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_58_layer_call_and_return_conditional_losses_1169898�
 dense_58/StatefulPartitionedCallStatefulPartitionedCall#dropout_58/PartitionedCall:output:0dense_58_1170350dense_58_1170352*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_1169911�
dropout_59/PartitionedCallPartitionedCall)dense_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_59_layer_call_and_return_conditional_losses_1169922�
 dense_59/StatefulPartitionedCallStatefulPartitionedCall#dropout_59/PartitionedCall:output:0dense_59_1170356dense_59_1170358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_1169935x
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������2: : : : : : : : : 2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall:Z V
+
_output_shapes
:���������2
'
_user_specified_namelstm_19_input
�

�
/__inference_sequential_19_layer_call_fn_1170444

inputs
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:
�
�
	unknown_3:	�
	unknown_4:
��
	unknown_5:	�
	unknown_6:	�
	unknown_7:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170288o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������2: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�	
f
G__inference_dropout_59_layer_call_and_return_conditional_losses_1169993

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_57_layer_call_fn_1171449

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_57_layer_call_and_return_conditional_losses_1169866d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
e
,__inference_dropout_58_layer_call_fn_1171512

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_58_layer_call_and_return_conditional_losses_1170026p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_57_layer_call_and_return_conditional_losses_1170065

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������2]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
H
,__inference_dropout_58_layer_call_fn_1171507

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_58_layer_call_and_return_conditional_losses_1169898a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_dense_59_layer_call_fn_1171585

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_1169935o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
while_cond_1170930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1170930___redundant_placeholder05
1while_while_cond_1170930___redundant_placeholder15
1while_while_cond_1170930___redundant_placeholder25
1while_while_cond_1170930___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�q
�
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170613

inputsE
3lstm_19_lstm_cell_20_matmul_readvariableop_resource:hG
5lstm_19_lstm_cell_20_matmul_1_readvariableop_resource:hB
4lstm_19_lstm_cell_20_biasadd_readvariableop_resource:h;
'dense_57_matmul_readvariableop_resource:
�
�7
(dense_57_biasadd_readvariableop_resource:	�;
'dense_58_matmul_readvariableop_resource:
��7
(dense_58_biasadd_readvariableop_resource:	�:
'dense_59_matmul_readvariableop_resource:	�6
(dense_59_biasadd_readvariableop_resource:
identity��dense_57/BiasAdd/ReadVariableOp�dense_57/MatMul/ReadVariableOp�dense_58/BiasAdd/ReadVariableOp�dense_58/MatMul/ReadVariableOp�dense_59/BiasAdd/ReadVariableOp�dense_59/MatMul/ReadVariableOp�+lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp�*lstm_19/lstm_cell_20/MatMul/ReadVariableOp�,lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp�lstm_19/whileC
lstm_19/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_19/strided_sliceStridedSlicelstm_19/Shape:output:0$lstm_19/strided_slice/stack:output:0&lstm_19/strided_slice/stack_1:output:0&lstm_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_19/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
lstm_19/zeros/packedPacklstm_19/strided_slice:output:0lstm_19/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_19/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_19/zerosFilllstm_19/zeros/packed:output:0lstm_19/zeros/Const:output:0*
T0*'
_output_shapes
:���������Z
lstm_19/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
lstm_19/zeros_1/packedPacklstm_19/strided_slice:output:0!lstm_19/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_19/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_19/zeros_1Filllstm_19/zeros_1/packed:output:0lstm_19/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������k
lstm_19/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_19/transpose	Transposeinputslstm_19/transpose/perm:output:0*
T0*+
_output_shapes
:2���������T
lstm_19/Shape_1Shapelstm_19/transpose:y:0*
T0*
_output_shapes
:g
lstm_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_19/strided_slice_1StridedSlicelstm_19/Shape_1:output:0&lstm_19/strided_slice_1/stack:output:0(lstm_19/strided_slice_1/stack_1:output:0(lstm_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_19/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_19/TensorArrayV2TensorListReserve,lstm_19/TensorArrayV2/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_19/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_19/transpose:y:0Flstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_19/strided_slice_2StridedSlicelstm_19/transpose:y:0&lstm_19/strided_slice_2/stack:output:0(lstm_19/strided_slice_2/stack_1:output:0(lstm_19/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
*lstm_19/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3lstm_19_lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_19/lstm_cell_20/MatMulMatMul lstm_19/strided_slice_2:output:02lstm_19/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
,lstm_19/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5lstm_19_lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_19/lstm_cell_20/MatMul_1MatMullstm_19/zeros:output:04lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
lstm_19/lstm_cell_20/addAddV2%lstm_19/lstm_cell_20/MatMul:product:0'lstm_19/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
+lstm_19/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4lstm_19_lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0�
lstm_19/lstm_cell_20/BiasAddBiasAddlstm_19/lstm_cell_20/add:z:03lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hf
$lstm_19/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_19/lstm_cell_20/splitSplit-lstm_19/lstm_cell_20/split/split_dim:output:0%lstm_19/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_split~
lstm_19/lstm_cell_20/SigmoidSigmoid#lstm_19/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:����������
lstm_19/lstm_cell_20/Sigmoid_1Sigmoid#lstm_19/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:����������
lstm_19/lstm_cell_20/mulMul"lstm_19/lstm_cell_20/Sigmoid_1:y:0lstm_19/zeros_1:output:0*
T0*'
_output_shapes
:���������x
lstm_19/lstm_cell_20/ReluRelu#lstm_19/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
lstm_19/lstm_cell_20/mul_1Mul lstm_19/lstm_cell_20/Sigmoid:y:0'lstm_19/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:����������
lstm_19/lstm_cell_20/add_1AddV2lstm_19/lstm_cell_20/mul:z:0lstm_19/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:����������
lstm_19/lstm_cell_20/Sigmoid_2Sigmoid#lstm_19/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������u
lstm_19/lstm_cell_20/Relu_1Relulstm_19/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_19/lstm_cell_20/mul_2Mul"lstm_19/lstm_cell_20/Sigmoid_2:y:0)lstm_19/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:���������v
%lstm_19/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
lstm_19/TensorArrayV2_1TensorListReserve.lstm_19/TensorArrayV2_1/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_19/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_19/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_19/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_19/whileWhile#lstm_19/while/loop_counter:output:0)lstm_19/while/maximum_iterations:output:0lstm_19/time:output:0 lstm_19/TensorArrayV2_1:handle:0lstm_19/zeros:output:0lstm_19/zeros_1:output:0 lstm_19/strided_slice_1:output:0?lstm_19/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_19_lstm_cell_20_matmul_readvariableop_resource5lstm_19_lstm_cell_20_matmul_1_readvariableop_resource4lstm_19_lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_19_while_body_1170503*&
condR
lstm_19_while_cond_1170502*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
8lstm_19/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
*lstm_19/TensorArrayV2Stack/TensorListStackTensorListStacklstm_19/while:output:3Alstm_19/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2���������*
element_dtype0p
lstm_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_19/strided_slice_3StridedSlice3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_19/strided_slice_3/stack:output:0(lstm_19/strided_slice_3/stack_1:output:0(lstm_19/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskm
lstm_19/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_19/transpose_1	Transpose3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_19/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2c
lstm_19/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
dropout_57/IdentityIdentitylstm_19/transpose_1:y:0*
T0*+
_output_shapes
:���������2a
flatten_19/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
flatten_19/ReshapeReshapedropout_57/Identity:output:0flatten_19/Const:output:0*
T0*(
_output_shapes
:����������
�
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource* 
_output_shapes
:
�
�*
dtype0�
dense_57/MatMulMatMulflatten_19/Reshape:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_57/ReluReludense_57/BiasAdd:output:0*
T0*(
_output_shapes
:����������o
dropout_58/IdentityIdentitydense_57/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_58/MatMulMatMuldropout_58/Identity:output:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
dense_58/ReluReludense_58/BiasAdd:output:0*
T0*(
_output_shapes
:����������o
dropout_59/IdentityIdentitydense_58/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_59/MatMulMatMuldropout_59/Identity:output:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_59/SoftmaxSoftmaxdense_59/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_59/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp,^lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp+^lstm_19/lstm_cell_20/MatMul/ReadVariableOp-^lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp^lstm_19/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������2: : : : : : : : : 2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2Z
+lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp+lstm_19/lstm_cell_20/BiasAdd/ReadVariableOp2X
*lstm_19/lstm_cell_20/MatMul/ReadVariableOp*lstm_19/lstm_cell_20/MatMul/ReadVariableOp2\
,lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp,lstm_19/lstm_cell_20/MatMul_1/ReadVariableOp2
lstm_19/whilelstm_19/while:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�J
�
D__inference_lstm_19_layer_call_and_return_conditional_losses_1169853

inputs=
+lstm_cell_20_matmul_readvariableop_resource:h?
-lstm_cell_20_matmul_1_readvariableop_resource:h:
,lstm_cell_20_biasadd_readvariableop_resource:h
identity��#lstm_cell_20/BiasAdd/ReadVariableOp�"lstm_cell_20/MatMul/ReadVariableOp�$lstm_cell_20/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0�
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h�
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:���������h�
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0�
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:���������p
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:���������w
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������h
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:����������
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:���������{
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:���������p
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:���������e
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:����������
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������:���������: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1169769*
condR
while_cond_1169768*K
output_shapes:
8: : : : :���������:���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2���������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������2�
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������2: : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
.__inference_lstm_cell_20_layer_call_fn_1171630

inputs
states_0
states_1
unknown:h
	unknown_0:h
	unknown_1:h
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1169567o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�	
f
G__inference_dropout_58_layer_call_and_return_conditional_losses_1171529

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1171694

inputs
states_0
states_10
matmul_readvariableop_resource:h2
 matmul_1_readvariableop_resource:h-
biasadd_readvariableop_resource:h
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:���������hr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:h*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������hQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������:���������:���������:���������*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������
"
_user_specified_name
states/1
�

�
E__inference_dense_58_layer_call_and_return_conditional_losses_1171549

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
%__inference_signature_wrapper_1170828
lstm_19_input
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:
�
�
	unknown_3:	�
	unknown_4:
��
	unknown_5:	�
	unknown_6:	�
	unknown_7:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_19_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_1169354o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������2: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������2
'
_user_specified_namelstm_19_input
�

�
E__inference_dense_59_layer_call_and_return_conditional_losses_1169935

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
while_cond_1169625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1169625___redundant_placeholder05
1while_while_cond_1169625___redundant_placeholder15
1while_while_cond_1169625___redundant_placeholder25
1while_while_cond_1169625___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�

�
lstm_19_while_cond_1170502,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3.
*lstm_19_while_less_lstm_19_strided_slice_1E
Alstm_19_while_lstm_19_while_cond_1170502___redundant_placeholder0E
Alstm_19_while_lstm_19_while_cond_1170502___redundant_placeholder1E
Alstm_19_while_lstm_19_while_cond_1170502___redundant_placeholder2E
Alstm_19_while_lstm_19_while_cond_1170502___redundant_placeholder3
lstm_19_while_identity
�
lstm_19/while/LessLesslstm_19_while_placeholder*lstm_19_while_less_lstm_19_strided_slice_1*
T0*
_output_shapes
: [
lstm_19/while/IdentityIdentitylstm_19/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_19_while_identitylstm_19/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������:���������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:

_output_shapes
: :

_output_shapes
:
�'
�
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170392
lstm_19_input!
lstm_19_1170365:h!
lstm_19_1170367:h
lstm_19_1170369:h$
dense_57_1170374:
�
�
dense_57_1170376:	�$
dense_58_1170380:
��
dense_58_1170382:	�#
dense_59_1170386:	�
dense_59_1170388:
identity�� dense_57/StatefulPartitionedCall� dense_58/StatefulPartitionedCall� dense_59/StatefulPartitionedCall�"dropout_57/StatefulPartitionedCall�"dropout_58/StatefulPartitionedCall�"dropout_59/StatefulPartitionedCall�lstm_19/StatefulPartitionedCall�
lstm_19/StatefulPartitionedCallStatefulPartitionedCalllstm_19_inputlstm_19_1170365lstm_19_1170367lstm_19_1170369*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lstm_19_layer_call_and_return_conditional_losses_1170224�
"dropout_57/StatefulPartitionedCallStatefulPartitionedCall(lstm_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_57_layer_call_and_return_conditional_losses_1170065�
flatten_19/PartitionedCallPartitionedCall+dropout_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_19_layer_call_and_return_conditional_losses_1169874�
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#flatten_19/PartitionedCall:output:0dense_57_1170374dense_57_1170376*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_1169887�
"dropout_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0#^dropout_57/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_58_layer_call_and_return_conditional_losses_1170026�
 dense_58/StatefulPartitionedCallStatefulPartitionedCall+dropout_58/StatefulPartitionedCall:output:0dense_58_1170380dense_58_1170382*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_1169911�
"dropout_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0#^dropout_58/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_59_layer_call_and_return_conditional_losses_1169993�
 dense_59/StatefulPartitionedCallStatefulPartitionedCall+dropout_59/StatefulPartitionedCall:output:0dense_59_1170386dense_59_1170388*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_1169935x
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall#^dropout_57/StatefulPartitionedCall#^dropout_58/StatefulPartitionedCall#^dropout_59/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������2: : : : : : : : : 2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2H
"dropout_57/StatefulPartitionedCall"dropout_57/StatefulPartitionedCall2H
"dropout_58/StatefulPartitionedCall"dropout_58/StatefulPartitionedCall2H
"dropout_59/StatefulPartitionedCall"dropout_59/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall:Z V
+
_output_shapes
:���������2
'
_user_specified_namelstm_19_input
�
e
G__inference_dropout_57_layer_call_and_return_conditional_losses_1169866

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

f
G__inference_dropout_57_layer_call_and_return_conditional_losses_1171471

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������2]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�	
f
G__inference_dropout_58_layer_call_and_return_conditional_losses_1170026

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
lstm_19_input:
serving_default_lstm_19_input:0���������2<
dense_590
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
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

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
�

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4_random_generator
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
�

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C_random_generator
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Niter

Obeta_1

Pbeta_2
	Qdecay
Rlearning_rate(m�)m�7m�8m�Fm�Gm�Sm�Tm�Um�(v�)v�7v�8v�Fv�Gv�Sv�Tv�Uv�"
	optimizer
_
S0
T1
U2
(3
)4
75
86
F7
G8"
trackable_list_wrapper
_
S0
T1
U2
(3
)4
75
86
F7
G8"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
/__inference_sequential_19_layer_call_fn_1169963
/__inference_sequential_19_layer_call_fn_1170421
/__inference_sequential_19_layer_call_fn_1170444
/__inference_sequential_19_layer_call_fn_1170332�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170613
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170803
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170362
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170392�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
"__inference__wrapped_model_1169354lstm_19_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
[serving_default"
signature_map
�
\
state_size

Skernel
Trecurrent_kernel
Ubias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a_random_generator
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

dstates
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
)__inference_lstm_19_layer_call_fn_1170839
)__inference_lstm_19_layer_call_fn_1170850
)__inference_lstm_19_layer_call_fn_1170861
)__inference_lstm_19_layer_call_fn_1170872�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_lstm_19_layer_call_and_return_conditional_losses_1171015
D__inference_lstm_19_layer_call_and_return_conditional_losses_1171158
D__inference_lstm_19_layer_call_and_return_conditional_losses_1171301
D__inference_lstm_19_layer_call_and_return_conditional_losses_1171444�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
,__inference_dropout_57_layer_call_fn_1171449
,__inference_dropout_57_layer_call_fn_1171454�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_dropout_57_layer_call_and_return_conditional_losses_1171459
G__inference_dropout_57_layer_call_and_return_conditional_losses_1171471�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�2�
,__inference_flatten_19_layer_call_fn_1171476�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_flatten_19_layer_call_and_return_conditional_losses_1171482�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
#:!
�
�2dense_57/kernel
:�2dense_57/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_dense_57_layer_call_fn_1171491�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_57_layer_call_and_return_conditional_losses_1171502�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
0	variables
1trainable_variables
2regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
,__inference_dropout_58_layer_call_fn_1171507
,__inference_dropout_58_layer_call_fn_1171512�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_dropout_58_layer_call_and_return_conditional_losses_1171517
G__inference_dropout_58_layer_call_and_return_conditional_losses_1171529�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
#:!
��2dense_58/kernel
:�2dense_58/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_dense_58_layer_call_fn_1171538�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_58_layer_call_and_return_conditional_losses_1171549�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
,__inference_dropout_59_layer_call_fn_1171554
,__inference_dropout_59_layer_call_fn_1171559�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_dropout_59_layer_call_and_return_conditional_losses_1171564
G__inference_dropout_59_layer_call_and_return_conditional_losses_1171576�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
": 	�2dense_59/kernel
:2dense_59/bias
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_dense_59_layer_call_fn_1171585�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_59_layer_call_and_return_conditional_losses_1171596�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+h2lstm_19/lstm_cell_20/kernel
7:5h2%lstm_19/lstm_cell_20/recurrent_kernel
':%h2lstm_19/lstm_cell_20/bias
 "
trackable_list_wrapper
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_signature_wrapper_1170828lstm_19_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
.__inference_lstm_cell_20_layer_call_fn_1171613
.__inference_lstm_cell_20_layer_call_fn_1171630�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1171662
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1171694�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
(:&
�
�2Adam/dense_57/kernel/m
!:�2Adam/dense_57/bias/m
(:&
��2Adam/dense_58/kernel/m
!:�2Adam/dense_58/bias/m
':%	�2Adam/dense_59/kernel/m
 :2Adam/dense_59/bias/m
2:0h2"Adam/lstm_19/lstm_cell_20/kernel/m
<::h2,Adam/lstm_19/lstm_cell_20/recurrent_kernel/m
,:*h2 Adam/lstm_19/lstm_cell_20/bias/m
(:&
�
�2Adam/dense_57/kernel/v
!:�2Adam/dense_57/bias/v
(:&
��2Adam/dense_58/kernel/v
!:�2Adam/dense_58/bias/v
':%	�2Adam/dense_59/kernel/v
 :2Adam/dense_59/bias/v
2:0h2"Adam/lstm_19/lstm_cell_20/kernel/v
<::h2,Adam/lstm_19/lstm_cell_20/recurrent_kernel/v
,:*h2 Adam/lstm_19/lstm_cell_20/bias/v�
"__inference__wrapped_model_1169354|	STU()78FG:�7
0�-
+�(
lstm_19_input���������2
� "3�0
.
dense_59"�
dense_59����������
E__inference_dense_57_layer_call_and_return_conditional_losses_1171502^()0�-
&�#
!�
inputs����������

� "&�#
�
0����������
� 
*__inference_dense_57_layer_call_fn_1171491Q()0�-
&�#
!�
inputs����������

� "������������
E__inference_dense_58_layer_call_and_return_conditional_losses_1171549^780�-
&�#
!�
inputs����������
� "&�#
�
0����������
� 
*__inference_dense_58_layer_call_fn_1171538Q780�-
&�#
!�
inputs����������
� "������������
E__inference_dense_59_layer_call_and_return_conditional_losses_1171596]FG0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� ~
*__inference_dense_59_layer_call_fn_1171585PFG0�-
&�#
!�
inputs����������
� "�����������
G__inference_dropout_57_layer_call_and_return_conditional_losses_1171459d7�4
-�*
$�!
inputs���������2
p 
� ")�&
�
0���������2
� �
G__inference_dropout_57_layer_call_and_return_conditional_losses_1171471d7�4
-�*
$�!
inputs���������2
p
� ")�&
�
0���������2
� �
,__inference_dropout_57_layer_call_fn_1171449W7�4
-�*
$�!
inputs���������2
p 
� "����������2�
,__inference_dropout_57_layer_call_fn_1171454W7�4
-�*
$�!
inputs���������2
p
� "����������2�
G__inference_dropout_58_layer_call_and_return_conditional_losses_1171517^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
G__inference_dropout_58_layer_call_and_return_conditional_losses_1171529^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
,__inference_dropout_58_layer_call_fn_1171507Q4�1
*�'
!�
inputs����������
p 
� "������������
,__inference_dropout_58_layer_call_fn_1171512Q4�1
*�'
!�
inputs����������
p
� "������������
G__inference_dropout_59_layer_call_and_return_conditional_losses_1171564^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
G__inference_dropout_59_layer_call_and_return_conditional_losses_1171576^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
,__inference_dropout_59_layer_call_fn_1171554Q4�1
*�'
!�
inputs����������
p 
� "������������
,__inference_dropout_59_layer_call_fn_1171559Q4�1
*�'
!�
inputs����������
p
� "������������
G__inference_flatten_19_layer_call_and_return_conditional_losses_1171482]3�0
)�&
$�!
inputs���������2
� "&�#
�
0����������

� �
,__inference_flatten_19_layer_call_fn_1171476P3�0
)�&
$�!
inputs���������2
� "�����������
�
D__inference_lstm_19_layer_call_and_return_conditional_losses_1171015�STUO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "2�/
(�%
0������������������
� �
D__inference_lstm_19_layer_call_and_return_conditional_losses_1171158�STUO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "2�/
(�%
0������������������
� �
D__inference_lstm_19_layer_call_and_return_conditional_losses_1171301qSTU?�<
5�2
$�!
inputs���������2

 
p 

 
� ")�&
�
0���������2
� �
D__inference_lstm_19_layer_call_and_return_conditional_losses_1171444qSTU?�<
5�2
$�!
inputs���������2

 
p

 
� ")�&
�
0���������2
� �
)__inference_lstm_19_layer_call_fn_1170839}STUO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"�������������������
)__inference_lstm_19_layer_call_fn_1170850}STUO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"�������������������
)__inference_lstm_19_layer_call_fn_1170861dSTU?�<
5�2
$�!
inputs���������2

 
p 

 
� "����������2�
)__inference_lstm_19_layer_call_fn_1170872dSTU?�<
5�2
$�!
inputs���������2

 
p

 
� "����������2�
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1171662�STU��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p 
� "s�p
i�f
�
0/0���������
E�B
�
0/1/0���������
�
0/1/1���������
� �
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_1171694�STU��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p
� "s�p
i�f
�
0/0���������
E�B
�
0/1/0���������
�
0/1/1���������
� �
.__inference_lstm_cell_20_layer_call_fn_1171613�STU��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p 
� "c�`
�
0���������
A�>
�
1/0���������
�
1/1����������
.__inference_lstm_cell_20_layer_call_fn_1171630�STU��}
v�s
 �
inputs���������
K�H
"�
states/0���������
"�
states/1���������
p
� "c�`
�
0���������
A�>
�
1/0���������
�
1/1����������
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170362v	STU()78FGB�?
8�5
+�(
lstm_19_input���������2
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170392v	STU()78FGB�?
8�5
+�(
lstm_19_input���������2
p

 
� "%�"
�
0���������
� �
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170613o	STU()78FG;�8
1�.
$�!
inputs���������2
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_19_layer_call_and_return_conditional_losses_1170803o	STU()78FG;�8
1�.
$�!
inputs���������2
p

 
� "%�"
�
0���������
� �
/__inference_sequential_19_layer_call_fn_1169963i	STU()78FGB�?
8�5
+�(
lstm_19_input���������2
p 

 
� "�����������
/__inference_sequential_19_layer_call_fn_1170332i	STU()78FGB�?
8�5
+�(
lstm_19_input���������2
p

 
� "�����������
/__inference_sequential_19_layer_call_fn_1170421b	STU()78FG;�8
1�.
$�!
inputs���������2
p 

 
� "�����������
/__inference_sequential_19_layer_call_fn_1170444b	STU()78FG;�8
1�.
$�!
inputs���������2
p

 
� "�����������
%__inference_signature_wrapper_1170828�	STU()78FGK�H
� 
A�>
<
lstm_19_input+�(
lstm_19_input���������2"3�0
.
dense_59"�
dense_59���������