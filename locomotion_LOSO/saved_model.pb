йг
ѓФ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
і
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
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68Ўц
|
dense_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

'* 
shared_namedense_48/kernel
u
#dense_48/kernel/Read/ReadVariableOpReadVariableOpdense_48/kernel* 
_output_shapes
:

'*
dtype0
s
dense_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:'*
shared_namedense_48/bias
l
!dense_48/bias/Read/ReadVariableOpReadVariableOpdense_48/bias*
_output_shapes	
:'*
dtype0
|
dense_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
'м* 
shared_namedense_49/kernel
u
#dense_49/kernel/Read/ReadVariableOpReadVariableOpdense_49/kernel* 
_output_shapes
:
'м*
dtype0
s
dense_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:м*
shared_namedense_49/bias
l
!dense_49/bias/Read/ReadVariableOpReadVariableOpdense_49/bias*
_output_shapes	
:м*
dtype0
|
dense_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
м * 
shared_namedense_50/kernel
u
#dense_50/kernel/Read/ReadVariableOpReadVariableOpdense_50/kernel* 
_output_shapes
:
м *
dtype0
s
dense_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_50/bias
l
!dense_50/bias/Read/ReadVariableOpReadVariableOpdense_50/bias*
_output_shapes	
: *
dtype0
{
dense_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 * 
shared_namedense_51/kernel
t
#dense_51/kernel/Read/ReadVariableOpReadVariableOpdense_51/kernel*
_output_shapes
:	 *
dtype0
r
dense_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_51/bias
k
!dense_51/bias/Read/ReadVariableOpReadVariableOpdense_51/bias*
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

lstm_12/lstm_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*,
shared_namelstm_12/lstm_cell_12/kernel

/lstm_12/lstm_cell_12/kernel/Read/ReadVariableOpReadVariableOplstm_12/lstm_cell_12/kernel*
_output_shapes

:h*
dtype0
І
%lstm_12/lstm_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*6
shared_name'%lstm_12/lstm_cell_12/recurrent_kernel

9lstm_12/lstm_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_12/lstm_cell_12/recurrent_kernel*
_output_shapes

:h*
dtype0

lstm_12/lstm_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:h**
shared_namelstm_12/lstm_cell_12/bias

-lstm_12/lstm_cell_12/bias/Read/ReadVariableOpReadVariableOplstm_12/lstm_cell_12/bias*
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

Adam/dense_48/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

'*'
shared_nameAdam/dense_48/kernel/m

*Adam/dense_48/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_48/kernel/m* 
_output_shapes
:

'*
dtype0

Adam/dense_48/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:'*%
shared_nameAdam/dense_48/bias/m
z
(Adam/dense_48/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_48/bias/m*
_output_shapes	
:'*
dtype0

Adam/dense_49/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
'м*'
shared_nameAdam/dense_49/kernel/m

*Adam/dense_49/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_49/kernel/m* 
_output_shapes
:
'м*
dtype0

Adam/dense_49/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:м*%
shared_nameAdam/dense_49/bias/m
z
(Adam/dense_49/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_49/bias/m*
_output_shapes	
:м*
dtype0

Adam/dense_50/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
м *'
shared_nameAdam/dense_50/kernel/m

*Adam/dense_50/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_50/kernel/m* 
_output_shapes
:
м *
dtype0

Adam/dense_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_50/bias/m
z
(Adam/dense_50/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_50/bias/m*
_output_shapes	
: *
dtype0

Adam/dense_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *'
shared_nameAdam/dense_51/kernel/m

*Adam/dense_51/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_51/kernel/m*
_output_shapes
:	 *
dtype0

Adam/dense_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_51/bias/m
y
(Adam/dense_51/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_51/bias/m*
_output_shapes
:*
dtype0
 
"Adam/lstm_12/lstm_cell_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*3
shared_name$"Adam/lstm_12/lstm_cell_12/kernel/m

6Adam/lstm_12/lstm_cell_12/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_12/lstm_cell_12/kernel/m*
_output_shapes

:h*
dtype0
Д
,Adam/lstm_12/lstm_cell_12/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*=
shared_name.,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m
­
@Adam/lstm_12/lstm_cell_12/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m*
_output_shapes

:h*
dtype0

 Adam/lstm_12/lstm_cell_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:h*1
shared_name" Adam/lstm_12/lstm_cell_12/bias/m

4Adam/lstm_12/lstm_cell_12/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_12/lstm_cell_12/bias/m*
_output_shapes
:h*
dtype0

Adam/dense_48/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

'*'
shared_nameAdam/dense_48/kernel/v

*Adam/dense_48/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_48/kernel/v* 
_output_shapes
:

'*
dtype0

Adam/dense_48/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:'*%
shared_nameAdam/dense_48/bias/v
z
(Adam/dense_48/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_48/bias/v*
_output_shapes	
:'*
dtype0

Adam/dense_49/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
'м*'
shared_nameAdam/dense_49/kernel/v

*Adam/dense_49/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_49/kernel/v* 
_output_shapes
:
'м*
dtype0

Adam/dense_49/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:м*%
shared_nameAdam/dense_49/bias/v
z
(Adam/dense_49/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_49/bias/v*
_output_shapes	
:м*
dtype0

Adam/dense_50/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
м *'
shared_nameAdam/dense_50/kernel/v

*Adam/dense_50/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_50/kernel/v* 
_output_shapes
:
м *
dtype0

Adam/dense_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_50/bias/v
z
(Adam/dense_50/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_50/bias/v*
_output_shapes	
: *
dtype0

Adam/dense_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *'
shared_nameAdam/dense_51/kernel/v

*Adam/dense_51/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_51/kernel/v*
_output_shapes
:	 *
dtype0

Adam/dense_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_51/bias/v
y
(Adam/dense_51/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_51/bias/v*
_output_shapes
:*
dtype0
 
"Adam/lstm_12/lstm_cell_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*3
shared_name$"Adam/lstm_12/lstm_cell_12/kernel/v

6Adam/lstm_12/lstm_cell_12/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_12/lstm_cell_12/kernel/v*
_output_shapes

:h*
dtype0
Д
,Adam/lstm_12/lstm_cell_12/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*=
shared_name.,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v
­
@Adam/lstm_12/lstm_cell_12/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v*
_output_shapes

:h*
dtype0

 Adam/lstm_12/lstm_cell_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:h*1
shared_name" Adam/lstm_12/lstm_cell_12/bias/v

4Adam/lstm_12/lstm_cell_12/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_12/lstm_cell_12/bias/v*
_output_shapes
:h*
dtype0

NoOpNoOp
гZ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Z
valueZBZ BњY
У
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
С
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
 _random_generator
!__call__
*"&call_and_return_all_conditional_losses* 

#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
І

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*
Ѕ
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5_random_generator
6__call__
*7&call_and_return_all_conditional_losses* 
І

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses*
І

@kernel
Abias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses*
Ѕ
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L_random_generator
M__call__
*N&call_and_return_all_conditional_losses* 
І

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*
 
Witer

Xbeta_1

Ybeta_2
	Zdecay
[learning_rate)mЋ*mЌ8m­9mЎ@mЏAmАOmБPmВ\mГ]mД^mЕ)vЖ*vЗ8vИ9vЙ@vКAvЛOvМPvН\vО]vП^vР*
R
\0
]1
^2
)3
*4
85
96
@7
A8
O9
P10*
R
\0
]1
^2
)3
*4
85
96
@7
A8
O9
P10*
* 
А
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

dserving_default* 
у
e
state_size

\kernel
]recurrent_kernel
^bias
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j_random_generator
k__call__
*l&call_and_return_all_conditional_losses*
* 

\0
]1
^2*

\0
]1
^2*
* 


mstates
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_48/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_48/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

)0
*1*

)0
*1*
* 

}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
1	variables
2trainable_variables
3regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_49/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_49/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

80
91*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_50/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_50/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

@0
A1*

@0
A1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_51/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_51/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

O0
P1*

O0
P1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*
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
VARIABLE_VALUElstm_12/lstm_cell_12/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_12/lstm_cell_12/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_12/lstm_cell_12/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

0
1*
* 
* 
* 
* 

\0
]1
^2*

\0
]1
^2*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
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
* 
* 
* 
* 
* 
<

Ђtotal

Ѓcount
Є	variables
Ѕ	keras_api*
M

Іtotal

Їcount
Ј
_fn_kwargs
Љ	variables
Њ	keras_api*
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
Ђ0
Ѓ1*

Є	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

І0
Ї1*

Љ	variables*
|
VARIABLE_VALUEAdam/dense_48/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_48/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_49/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_49/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_50/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_50/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_51/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_51/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_12/lstm_cell_12/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_12/lstm_cell_12/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_12/lstm_cell_12/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_48/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_48/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_49/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_49/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_50/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_50/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_51/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_51/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_12/lstm_cell_12/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_12/lstm_cell_12/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_12/lstm_cell_12/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_12_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ2*
dtype0* 
shape:џџџџџџџџџ2
Ў
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_12_inputlstm_12/lstm_cell_12/kernel%lstm_12/lstm_cell_12/recurrent_kernellstm_12/lstm_cell_12/biasdense_48/kerneldense_48/biasdense_49/kerneldense_49/biasdense_50/kerneldense_50/biasdense_51/kerneldense_51/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_2700170
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Њ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_48/kernel/Read/ReadVariableOp!dense_48/bias/Read/ReadVariableOp#dense_49/kernel/Read/ReadVariableOp!dense_49/bias/Read/ReadVariableOp#dense_50/kernel/Read/ReadVariableOp!dense_50/bias/Read/ReadVariableOp#dense_51/kernel/Read/ReadVariableOp!dense_51/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_12/lstm_cell_12/kernel/Read/ReadVariableOp9lstm_12/lstm_cell_12/recurrent_kernel/Read/ReadVariableOp-lstm_12/lstm_cell_12/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_48/kernel/m/Read/ReadVariableOp(Adam/dense_48/bias/m/Read/ReadVariableOp*Adam/dense_49/kernel/m/Read/ReadVariableOp(Adam/dense_49/bias/m/Read/ReadVariableOp*Adam/dense_50/kernel/m/Read/ReadVariableOp(Adam/dense_50/bias/m/Read/ReadVariableOp*Adam/dense_51/kernel/m/Read/ReadVariableOp(Adam/dense_51/bias/m/Read/ReadVariableOp6Adam/lstm_12/lstm_cell_12/kernel/m/Read/ReadVariableOp@Adam/lstm_12/lstm_cell_12/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_12/lstm_cell_12/bias/m/Read/ReadVariableOp*Adam/dense_48/kernel/v/Read/ReadVariableOp(Adam/dense_48/bias/v/Read/ReadVariableOp*Adam/dense_49/kernel/v/Read/ReadVariableOp(Adam/dense_49/bias/v/Read/ReadVariableOp*Adam/dense_50/kernel/v/Read/ReadVariableOp(Adam/dense_50/bias/v/Read/ReadVariableOp*Adam/dense_51/kernel/v/Read/ReadVariableOp(Adam/dense_51/bias/v/Read/ReadVariableOp6Adam/lstm_12/lstm_cell_12/kernel/v/Read/ReadVariableOp@Adam/lstm_12/lstm_cell_12/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_12/lstm_cell_12/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_2701205
н	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_48/kerneldense_48/biasdense_49/kerneldense_49/biasdense_50/kerneldense_50/biasdense_51/kerneldense_51/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_12/lstm_cell_12/kernel%lstm_12/lstm_cell_12/recurrent_kernellstm_12/lstm_cell_12/biastotalcounttotal_1count_1Adam/dense_48/kernel/mAdam/dense_48/bias/mAdam/dense_49/kernel/mAdam/dense_49/bias/mAdam/dense_50/kernel/mAdam/dense_50/bias/mAdam/dense_51/kernel/mAdam/dense_51/bias/m"Adam/lstm_12/lstm_cell_12/kernel/m,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m Adam/lstm_12/lstm_cell_12/bias/mAdam/dense_48/kernel/vAdam/dense_48/bias/vAdam/dense_49/kernel/vAdam/dense_49/bias/vAdam/dense_50/kernel/vAdam/dense_50/bias/vAdam/dense_51/kernel/vAdam/dense_51/bias/v"Adam/lstm_12/lstm_cell_12/kernel/v,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v Adam/lstm_12/lstm_cell_12/bias/v*6
Tin/
-2+*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_2701341ѕ
8
Ы
while_body_2700416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_12_matmul_readvariableop_resource_0:hG
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_12_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_12_matmul_readvariableop_resource:hE
3while_lstm_cell_12_matmul_1_readvariableop_resource:h@
2while_lstm_cell_12_biasadd_readvariableop_resource:hЂ)while/lstm_cell_12/BiasAdd/ReadVariableOpЂ(while/lstm_cell_12/MatMul/ReadVariableOpЂ*while/lstm_cell_12/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0Й
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh 
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0 
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшвy
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџа

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ў+

J__inference_sequential_12_layer_call_and_return_conditional_losses_2699586

inputs!
lstm_12_2699554:h!
lstm_12_2699556:h
lstm_12_2699558:h$
dense_48_2699563:

'
dense_48_2699565:	'$
dense_49_2699569:
'м
dense_49_2699571:	м$
dense_50_2699574:
м 
dense_50_2699576:	 #
dense_51_2699580:	 
dense_51_2699582:
identityЂ dense_48/StatefulPartitionedCallЂ dense_49/StatefulPartitionedCallЂ dense_50/StatefulPartitionedCallЂ dense_51/StatefulPartitionedCallЂ"dropout_36/StatefulPartitionedCallЂ"dropout_37/StatefulPartitionedCallЂ"dropout_38/StatefulPartitionedCallЂlstm_12/StatefulPartitionedCall
lstm_12/StatefulPartitionedCallStatefulPartitionedCallinputslstm_12_2699554lstm_12_2699556lstm_12_2699558*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_2699513ѓ
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_2699354у
flatten_12/PartitionedCallPartitionedCall+dropout_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_12_layer_call_and_return_conditional_losses_2699132
 dense_48/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_48_2699563dense_48_2699565*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2699145
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_2699315
 dense_49/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0dense_49_2699569dense_49_2699571*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџм*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_49_layer_call_and_return_conditional_losses_2699169
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_2699574dense_50_2699576*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_2699186
"dropout_38/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0#^dropout_37/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_2699272
 dense_51/StatefulPartitionedCallStatefulPartitionedCall+dropout_38/StatefulPartitionedCall:output:0dense_51_2699580dense_51_2699582*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_2699210x
IdentityIdentity)dense_51/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџу
NoOpNoOp!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall#^dropout_38/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ2: : : : : : : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall2H
"dropout_38/StatefulPartitionedCall"dropout_38/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs


ш
lstm_12_while_cond_2700002,
(lstm_12_while_lstm_12_while_loop_counter2
.lstm_12_while_lstm_12_while_maximum_iterations
lstm_12_while_placeholder
lstm_12_while_placeholder_1
lstm_12_while_placeholder_2
lstm_12_while_placeholder_3.
*lstm_12_while_less_lstm_12_strided_slice_1E
Alstm_12_while_lstm_12_while_cond_2700002___redundant_placeholder0E
Alstm_12_while_lstm_12_while_cond_2700002___redundant_placeholder1E
Alstm_12_while_lstm_12_while_cond_2700002___redundant_placeholder2E
Alstm_12_while_lstm_12_while_cond_2700002___redundant_placeholder3
lstm_12_while_identity

lstm_12/while/LessLesslstm_12_while_placeholder*lstm_12_while_less_lstm_12_strided_slice_1*
T0*
_output_shapes
: [
lstm_12/while/IdentityIdentitylstm_12/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_12_while_identitylstm_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
Ы

*__inference_dense_50_layer_call_fn_2700900

inputs
unknown:
м 
	unknown_0:	 
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_2699186p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџм: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџм
 
_user_specified_nameinputs

e
,__inference_dropout_36_layer_call_fn_2700796

inputs
identityЂStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_2699354s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ъ
e
G__inference_dropout_36_layer_call_and_return_conditional_losses_2699124

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
о
e
G__inference_dropout_38_layer_call_and_return_conditional_losses_2699197

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџ \

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ :P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ј

љ
E__inference_dense_50_layer_call_and_return_conditional_losses_2699186

inputs2
matmul_readvariableop_resource:
м .
biasadd_readvariableop_resource:	 
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
м *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
: *
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџм: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџм
 
_user_specified_nameinputs
А'

J__inference_sequential_12_layer_call_and_return_conditional_losses_2699217

inputs!
lstm_12_2699112:h!
lstm_12_2699114:h
lstm_12_2699116:h$
dense_48_2699146:

'
dense_48_2699148:	'$
dense_49_2699170:
'м
dense_49_2699172:	м$
dense_50_2699187:
м 
dense_50_2699189:	 #
dense_51_2699211:	 
dense_51_2699213:
identityЂ dense_48/StatefulPartitionedCallЂ dense_49/StatefulPartitionedCallЂ dense_50/StatefulPartitionedCallЂ dense_51/StatefulPartitionedCallЂlstm_12/StatefulPartitionedCall
lstm_12/StatefulPartitionedCallStatefulPartitionedCallinputslstm_12_2699112lstm_12_2699114lstm_12_2699116*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_2699111у
dropout_36/PartitionedCallPartitionedCall(lstm_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_2699124л
flatten_12/PartitionedCallPartitionedCall#dropout_36/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_12_layer_call_and_return_conditional_losses_2699132
 dense_48/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_48_2699146dense_48_2699148*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2699145с
dropout_37/PartitionedCallPartitionedCall)dense_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_2699156
 dense_49/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0dense_49_2699170dense_49_2699172*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџм*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_49_layer_call_and_return_conditional_losses_2699169
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_2699187dense_50_2699189*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_2699186с
dropout_38/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_2699197
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#dropout_38/PartitionedCall:output:0dense_51_2699211dense_51_2699213*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_2699210x
IdentityIdentity)dense_51/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџє
NoOpNoOp!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ2: : : : : : : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs


f
G__inference_dropout_36_layer_call_and_return_conditional_losses_2699354

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Њ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ј

љ
E__inference_dense_49_layer_call_and_return_conditional_losses_2699169

inputs2
matmul_readvariableop_resource:
'м.
biasadd_readvariableop_resource:	м
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
'м*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџмs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:м*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџмQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџмb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџмw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ': : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ'
 
_user_specified_nameinputs
§	
f
G__inference_dropout_37_layer_call_and_return_conditional_losses_2700871

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ'j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ'Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ'"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ':P L
(
_output_shapes
:џџџџџџџџџ'
 
_user_specified_nameinputs
о
e
G__inference_dropout_37_layer_call_and_return_conditional_losses_2699156

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџ'\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ':P L
(
_output_shapes
:џџџџџџџџџ'
 
_user_specified_nameinputs
К
Ш
while_cond_2700558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2700558___redundant_placeholder05
1while_while_cond_2700558___redundant_placeholder15
1while_while_cond_2700558___redundant_placeholder25
1while_while_cond_2700558___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
м


/__inference_sequential_12_layer_call_fn_2699768

inputs
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:

'
	unknown_3:	'
	unknown_4:
'м
	unknown_5:	м
	unknown_6:
м 
	unknown_7:	 
	unknown_8:	 
	unknown_9:
identityЂStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_2699586o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ2: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
К
Ш
while_cond_2700701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2700701___redundant_placeholder05
1while_while_cond_2700701___redundant_placeholder15
1while_while_cond_2700701___redundant_placeholder25
1while_while_cond_2700701___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
К
Ш
while_cond_2700415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2700415___redundant_placeholder05
1while_while_cond_2700415___redundant_placeholder15
1while_while_cond_2700415___redundant_placeholder25
1while_while_cond_2700415___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:


f
G__inference_dropout_36_layer_call_and_return_conditional_losses_2700813

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Њ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
о
e
G__inference_dropout_38_layer_call_and_return_conditional_losses_2700926

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџ \

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ :P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
К
Ш
while_cond_2699026
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2699026___redundant_placeholder05
1while_while_cond_2699026___redundant_placeholder15
1while_while_cond_2699026___redundant_placeholder25
1while_while_cond_2699026___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
К
Ш
while_cond_2698692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2698692___redundant_placeholder05
1while_while_cond_2698692___redundant_placeholder15
1while_while_cond_2698692___redundant_placeholder25
1while_while_cond_2698692___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
кJ

D__inference_lstm_12_layer_call_and_return_conditional_losses_2700357
inputs_0=
+lstm_cell_12_matmul_readvariableop_resource:h?
-lstm_cell_12_matmul_1_readvariableop_resource:h:
,lstm_cell_12_biasadd_readvariableop_resource:h
identityЂ#lstm_cell_12/BiasAdd/ReadVariableOpЂ"lstm_cell_12/MatMul/ReadVariableOpЂ$lstm_cell_12/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџe
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2700273*
condR
while_cond_2700272*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџР
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Ѓ

(sequential_12_lstm_12_while_cond_2698494H
Dsequential_12_lstm_12_while_sequential_12_lstm_12_while_loop_counterN
Jsequential_12_lstm_12_while_sequential_12_lstm_12_while_maximum_iterations+
'sequential_12_lstm_12_while_placeholder-
)sequential_12_lstm_12_while_placeholder_1-
)sequential_12_lstm_12_while_placeholder_2-
)sequential_12_lstm_12_while_placeholder_3J
Fsequential_12_lstm_12_while_less_sequential_12_lstm_12_strided_slice_1a
]sequential_12_lstm_12_while_sequential_12_lstm_12_while_cond_2698494___redundant_placeholder0a
]sequential_12_lstm_12_while_sequential_12_lstm_12_while_cond_2698494___redundant_placeholder1a
]sequential_12_lstm_12_while_sequential_12_lstm_12_while_cond_2698494___redundant_placeholder2a
]sequential_12_lstm_12_while_sequential_12_lstm_12_while_cond_2698494___redundant_placeholder3(
$sequential_12_lstm_12_while_identity
К
 sequential_12/lstm_12/while/LessLess'sequential_12_lstm_12_while_placeholderFsequential_12_lstm_12_while_less_sequential_12_lstm_12_strided_slice_1*
T0*
_output_shapes
: w
$sequential_12/lstm_12/while/IdentityIdentity$sequential_12/lstm_12/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_12_lstm_12_while_identity-sequential_12/lstm_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
W

 __inference__traced_save_2701205
file_prefix.
*savev2_dense_48_kernel_read_readvariableop,
(savev2_dense_48_bias_read_readvariableop.
*savev2_dense_49_kernel_read_readvariableop,
(savev2_dense_49_bias_read_readvariableop.
*savev2_dense_50_kernel_read_readvariableop,
(savev2_dense_50_bias_read_readvariableop.
*savev2_dense_51_kernel_read_readvariableop,
(savev2_dense_51_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_12_lstm_cell_12_kernel_read_readvariableopD
@savev2_lstm_12_lstm_cell_12_recurrent_kernel_read_readvariableop8
4savev2_lstm_12_lstm_cell_12_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_48_kernel_m_read_readvariableop3
/savev2_adam_dense_48_bias_m_read_readvariableop5
1savev2_adam_dense_49_kernel_m_read_readvariableop3
/savev2_adam_dense_49_bias_m_read_readvariableop5
1savev2_adam_dense_50_kernel_m_read_readvariableop3
/savev2_adam_dense_50_bias_m_read_readvariableop5
1savev2_adam_dense_51_kernel_m_read_readvariableop3
/savev2_adam_dense_51_bias_m_read_readvariableopA
=savev2_adam_lstm_12_lstm_cell_12_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_12_lstm_cell_12_bias_m_read_readvariableop5
1savev2_adam_dense_48_kernel_v_read_readvariableop3
/savev2_adam_dense_48_bias_v_read_readvariableop5
1savev2_adam_dense_49_kernel_v_read_readvariableop3
/savev2_adam_dense_49_bias_v_read_readvariableop5
1savev2_adam_dense_50_kernel_v_read_readvariableop3
/savev2_adam_dense_50_bias_v_read_readvariableop5
1savev2_adam_dense_51_kernel_v_read_readvariableop3
/savev2_adam_dense_51_bias_v_read_readvariableopA
=savev2_adam_lstm_12_lstm_cell_12_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_12_lstm_cell_12_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: П
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*ш
valueоBл+B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHУ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ф
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_48_kernel_read_readvariableop(savev2_dense_48_bias_read_readvariableop*savev2_dense_49_kernel_read_readvariableop(savev2_dense_49_bias_read_readvariableop*savev2_dense_50_kernel_read_readvariableop(savev2_dense_50_bias_read_readvariableop*savev2_dense_51_kernel_read_readvariableop(savev2_dense_51_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_12_lstm_cell_12_kernel_read_readvariableop@savev2_lstm_12_lstm_cell_12_recurrent_kernel_read_readvariableop4savev2_lstm_12_lstm_cell_12_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_48_kernel_m_read_readvariableop/savev2_adam_dense_48_bias_m_read_readvariableop1savev2_adam_dense_49_kernel_m_read_readvariableop/savev2_adam_dense_49_bias_m_read_readvariableop1savev2_adam_dense_50_kernel_m_read_readvariableop/savev2_adam_dense_50_bias_m_read_readvariableop1savev2_adam_dense_51_kernel_m_read_readvariableop/savev2_adam_dense_51_bias_m_read_readvariableop=savev2_adam_lstm_12_lstm_cell_12_kernel_m_read_readvariableopGsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_12_lstm_cell_12_bias_m_read_readvariableop1savev2_adam_dense_48_kernel_v_read_readvariableop/savev2_adam_dense_48_bias_v_read_readvariableop1savev2_adam_dense_49_kernel_v_read_readvariableop/savev2_adam_dense_49_bias_v_read_readvariableop1savev2_adam_dense_50_kernel_v_read_readvariableop/savev2_adam_dense_50_bias_v_read_readvariableop1savev2_adam_dense_51_kernel_v_read_readvariableop/savev2_adam_dense_51_bias_v_read_readvariableop=savev2_adam_lstm_12_lstm_cell_12_kernel_v_read_readvariableopGsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_12_lstm_cell_12_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*з
_input_shapesХ
Т: :

':':
'м:м:
м : :	 :: : : : : :h:h:h: : : : :

':':
'м:м:
м : :	 ::h:h:h:

':':
'м:м:
м : :	 ::h:h:h: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:

':!

_output_shapes	
:':&"
 
_output_shapes
:
'м:!

_output_shapes	
:м:&"
 
_output_shapes
:
м :!

_output_shapes	
: :%!

_output_shapes
:	 : 

_output_shapes
::	
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
: :$ 

_output_shapes

:h:$ 

_output_shapes

:h: 

_output_shapes
:h:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:

':!

_output_shapes	
:':&"
 
_output_shapes
:
'м:!

_output_shapes	
:м:&"
 
_output_shapes
:
м :!

_output_shapes	
: :%!

_output_shapes
:	 : 

_output_shapes
::$ 

_output_shapes

:h:$ 

_output_shapes

:h: 

_output_shapes
:h:& "
 
_output_shapes
:

':!!

_output_shapes	
:':&""
 
_output_shapes
:
'м:!#

_output_shapes	
:м:&$"
 
_output_shapes
:
м :!%

_output_shapes	
: :%&!

_output_shapes
:	 : '

_output_shapes
::$( 

_output_shapes

:h:$) 

_output_shapes

:h: *

_output_shapes
:h:+

_output_shapes
: 
кJ

D__inference_lstm_12_layer_call_and_return_conditional_losses_2700500
inputs_0=
+lstm_cell_12_matmul_readvariableop_resource:h?
-lstm_cell_12_matmul_1_readvariableop_resource:h:
,lstm_cell_12_biasadd_readvariableop_resource:h
identityЂ#lstm_cell_12/BiasAdd/ReadVariableOpЂ"lstm_cell_12/MatMul/ReadVariableOpЂ$lstm_cell_12/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџe
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2700416*
condR
while_cond_2700415*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџР
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
чy
Й	
J__inference_sequential_12_layer_call_and_return_conditional_losses_2699944

inputsE
3lstm_12_lstm_cell_12_matmul_readvariableop_resource:hG
5lstm_12_lstm_cell_12_matmul_1_readvariableop_resource:hB
4lstm_12_lstm_cell_12_biasadd_readvariableop_resource:h;
'dense_48_matmul_readvariableop_resource:

'7
(dense_48_biasadd_readvariableop_resource:	';
'dense_49_matmul_readvariableop_resource:
'м7
(dense_49_biasadd_readvariableop_resource:	м;
'dense_50_matmul_readvariableop_resource:
м 7
(dense_50_biasadd_readvariableop_resource:	 :
'dense_51_matmul_readvariableop_resource:	 6
(dense_51_biasadd_readvariableop_resource:
identityЂdense_48/BiasAdd/ReadVariableOpЂdense_48/MatMul/ReadVariableOpЂdense_49/BiasAdd/ReadVariableOpЂdense_49/MatMul/ReadVariableOpЂdense_50/BiasAdd/ReadVariableOpЂdense_50/MatMul/ReadVariableOpЂdense_51/BiasAdd/ReadVariableOpЂdense_51/MatMul/ReadVariableOpЂ+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOpЂ*lstm_12/lstm_cell_12/MatMul/ReadVariableOpЂ,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOpЂlstm_12/whileC
lstm_12/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_12/strided_sliceStridedSlicelstm_12/Shape:output:0$lstm_12/strided_slice/stack:output:0&lstm_12/strided_slice/stack_1:output:0&lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_12/zeros/packedPacklstm_12/strided_slice:output:0lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_12/zerosFilllstm_12/zeros/packed:output:0lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_12/zeros_1/packedPacklstm_12/strided_slice:output:0!lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_12/zeros_1Filllstm_12/zeros_1/packed:output:0lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
lstm_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_12/transpose	Transposeinputslstm_12/transpose/perm:output:0*
T0*+
_output_shapes
:2џџџџџџџџџT
lstm_12/Shape_1Shapelstm_12/transpose:y:0*
T0*
_output_shapes
:g
lstm_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_12/strided_slice_1StridedSlicelstm_12/Shape_1:output:0&lstm_12/strided_slice_1/stack:output:0(lstm_12/strided_slice_1/stack_1:output:0(lstm_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_12/TensorArrayV2TensorListReserve,lstm_12/TensorArrayV2/element_shape:output:0 lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ј
/lstm_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_12/transpose:y:0Flstm_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_12/strided_slice_2StridedSlicelstm_12/transpose:y:0&lstm_12/strided_slice_2/stack:output:0(lstm_12/strided_slice_2/stack_1:output:0(lstm_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
*lstm_12/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3lstm_12_lstm_cell_12_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0­
lstm_12/lstm_cell_12/MatMulMatMul lstm_12/strided_slice_2:output:02lstm_12/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhЂ
,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5lstm_12_lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0Ї
lstm_12/lstm_cell_12/MatMul_1MatMullstm_12/zeros:output:04lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhЃ
lstm_12/lstm_cell_12/addAddV2%lstm_12/lstm_cell_12/MatMul:product:0'lstm_12/lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4lstm_12_lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0Ќ
lstm_12/lstm_cell_12/BiasAddBiasAddlstm_12/lstm_cell_12/add:z:03lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhf
$lstm_12/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_12/lstm_cell_12/splitSplit-lstm_12/lstm_cell_12/split/split_dim:output:0%lstm_12/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split~
lstm_12/lstm_cell_12/SigmoidSigmoid#lstm_12/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/lstm_cell_12/Sigmoid_1Sigmoid#lstm_12/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/lstm_cell_12/mulMul"lstm_12/lstm_cell_12/Sigmoid_1:y:0lstm_12/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџx
lstm_12/lstm_cell_12/ReluRelu#lstm_12/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/lstm_cell_12/mul_1Mul lstm_12/lstm_cell_12/Sigmoid:y:0'lstm_12/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/lstm_cell_12/add_1AddV2lstm_12/lstm_cell_12/mul:z:0lstm_12/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/lstm_cell_12/Sigmoid_2Sigmoid#lstm_12/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџu
lstm_12/lstm_cell_12/Relu_1Relulstm_12/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЂ
lstm_12/lstm_cell_12/mul_2Mul"lstm_12/lstm_cell_12/Sigmoid_2:y:0)lstm_12/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџv
%lstm_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   а
lstm_12/TensorArrayV2_1TensorListReserve.lstm_12/TensorArrayV2_1/element_shape:output:0 lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_12/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : є
lstm_12/whileWhile#lstm_12/while/loop_counter:output:0)lstm_12/while/maximum_iterations:output:0lstm_12/time:output:0 lstm_12/TensorArrayV2_1:handle:0lstm_12/zeros:output:0lstm_12/zeros_1:output:0 lstm_12/strided_slice_1:output:0?lstm_12/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_12_lstm_cell_12_matmul_readvariableop_resource5lstm_12_lstm_cell_12_matmul_1_readvariableop_resource4lstm_12_lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_12_while_body_2699827*&
condR
lstm_12_while_cond_2699826*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
8lstm_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   к
*lstm_12/TensorArrayV2Stack/TensorListStackTensorListStacklstm_12/while:output:3Alstm_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2џџџџџџџџџ*
element_dtype0p
lstm_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_12/strided_slice_3StridedSlice3lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_12/strided_slice_3/stack:output:0(lstm_12/strided_slice_3/stack_1:output:0(lstm_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskm
lstm_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_12/transpose_1	Transpose3lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2c
lstm_12/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
dropout_36/IdentityIdentitylstm_12/transpose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2a
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  
flatten_12/ReshapeReshapedropout_36/Identity:output:0flatten_12/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ

dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource* 
_output_shapes
:

'*
dtype0
dense_48/MatMulMatMulflatten_12/Reshape:output:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ'
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes	
:'*
dtype0
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ'c
dense_48/ReluReludense_48/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'o
dropout_37/IdentityIdentitydense_48/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ'
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource* 
_output_shapes
:
'м*
dtype0
dense_49/MatMulMatMuldropout_37/Identity:output:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџм
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes	
:м*
dtype0
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџмc
dense_49/ReluReludense_49/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџм
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource* 
_output_shapes
:
м *
dtype0
dense_50/MatMulMatMuldense_49/Relu:activations:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ c
dense_50/ReluReludense_50/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ o
dropout_38/IdentityIdentitydense_50/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ 
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
dense_51/MatMulMatMuldropout_38/Identity:output:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
dense_51/SoftmaxSoftmaxdense_51/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџi
IdentityIdentitydense_51/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџь
NoOpNoOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp,^lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp+^lstm_12/lstm_cell_12/MatMul/ReadVariableOp-^lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp^lstm_12/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ2: : : : : : : : : : : 2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2Z
+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp2X
*lstm_12/lstm_cell_12/MatMul/ReadVariableOp*lstm_12/lstm_cell_12/MatMul/ReadVariableOp2\
,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp2
lstm_12/whilelstm_12/while:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ѕ

ї
E__inference_dense_51_layer_call_and_return_conditional_losses_2700958

inputs1
matmul_readvariableop_resource:	 -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ъ
e
G__inference_dropout_36_layer_call_and_return_conditional_losses_2700801

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
К
Ш
while_cond_2700272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2700272___redundant_placeholder05
1while_while_cond_2700272___redundant_placeholder15
1while_while_cond_2700272___redundant_placeholder25
1while_while_cond_2700272___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
J

D__inference_lstm_12_layer_call_and_return_conditional_losses_2699513

inputs=
+lstm_cell_12_matmul_readvariableop_resource:h?
-lstm_cell_12_matmul_1_readvariableop_resource:h:
,lstm_cell_12_biasadd_readvariableop_resource:h
identityЂ#lstm_cell_12/BiasAdd/ReadVariableOpЂ"lstm_cell_12/MatMul/ReadVariableOpЂ$lstm_cell_12/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџe
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2699429*
condR
while_cond_2699428*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2џџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
#
ф
while_body_2698884
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_12_2698908_0:h.
while_lstm_cell_12_2698910_0:h*
while_lstm_cell_12_2698912_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_12_2698908:h,
while_lstm_cell_12_2698910:h(
while_lstm_cell_12_2698912:hЂ*while/lstm_cell_12/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0З
*while/lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_12_2698908_0while_lstm_cell_12_2698910_0while_lstm_cell_12_2698912_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2698825м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_12/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшв
while/Identity_4Identity3while/lstm_cell_12/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
while/Identity_5Identity3while/lstm_cell_12/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџy

while/NoOpNoOp+^while/lstm_cell_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_12_2698908while_lstm_cell_12_2698908_0":
while_lstm_cell_12_2698910while_lstm_cell_12_2698910_0":
while_lstm_cell_12_2698912while_lstm_cell_12_2698912_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2X
*while/lstm_cell_12/StatefulPartitionedCall*while/lstm_cell_12/StatefulPartitionedCall: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
Ы

*__inference_dense_48_layer_call_fn_2700833

inputs
unknown:

'
	unknown_0:	'
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2699145p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ'`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ч

*__inference_dense_51_layer_call_fn_2700947

inputs
unknown:	 
	unknown_0:
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_2699210o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ь

I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2698679

inputs

states
states_10
matmul_readvariableop_resource:h2
 matmul_1_readvariableop_resource:h-
biasadd_readvariableop_resource:h
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџhr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:h*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates
8

D__inference_lstm_12_layer_call_and_return_conditional_losses_2698762

inputs&
lstm_cell_12_2698680:h&
lstm_cell_12_2698682:h"
lstm_cell_12_2698684:h
identityЂ$lstm_cell_12/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskљ
$lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_12_2698680lstm_cell_12_2698682lstm_cell_12_2698684*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2698679n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : М
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_12_2698680lstm_cell_12_2698682lstm_cell_12_2698684*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2698693*
condR
while_cond_2698692*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџu
NoOpNoOp%^lstm_cell_12/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_12/StatefulPartitionedCall$lstm_cell_12/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
8
Ы
while_body_2699429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_12_matmul_readvariableop_resource_0:hG
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_12_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_12_matmul_readvariableop_resource:hE
3while_lstm_cell_12_matmul_1_readvariableop_resource:h@
2while_lstm_cell_12_biasadd_readvariableop_resource:hЂ)while/lstm_cell_12/BiasAdd/ReadVariableOpЂ(while/lstm_cell_12/MatMul/ReadVariableOpЂ*while/lstm_cell_12/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0Й
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh 
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0 
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшвy
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџа

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
8

D__inference_lstm_12_layer_call_and_return_conditional_losses_2698953

inputs&
lstm_cell_12_2698871:h&
lstm_cell_12_2698873:h"
lstm_cell_12_2698875:h
identityЂ$lstm_cell_12/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskљ
$lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_12_2698871lstm_cell_12_2698873lstm_cell_12_2698875*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2698825n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : М
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_12_2698871lstm_cell_12_2698873lstm_cell_12_2698875*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2698884*
condR
while_cond_2698883*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџu
NoOpNoOp%^lstm_cell_12/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_12/StatefulPartitionedCall$lstm_cell_12/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
П


%__inference_signature_wrapper_2700170
lstm_12_input
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:

'
	unknown_3:	'
	unknown_4:
'м
	unknown_5:	м
	unknown_6:
м 
	unknown_7:	 
	unknown_8:	 
	unknown_9:
identityЂStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_2698612o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ2: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ2
'
_user_specified_namelstm_12_input
ё
Й	
J__inference_sequential_12_layer_call_and_return_conditional_losses_2700141

inputsE
3lstm_12_lstm_cell_12_matmul_readvariableop_resource:hG
5lstm_12_lstm_cell_12_matmul_1_readvariableop_resource:hB
4lstm_12_lstm_cell_12_biasadd_readvariableop_resource:h;
'dense_48_matmul_readvariableop_resource:

'7
(dense_48_biasadd_readvariableop_resource:	';
'dense_49_matmul_readvariableop_resource:
'м7
(dense_49_biasadd_readvariableop_resource:	м;
'dense_50_matmul_readvariableop_resource:
м 7
(dense_50_biasadd_readvariableop_resource:	 :
'dense_51_matmul_readvariableop_resource:	 6
(dense_51_biasadd_readvariableop_resource:
identityЂdense_48/BiasAdd/ReadVariableOpЂdense_48/MatMul/ReadVariableOpЂdense_49/BiasAdd/ReadVariableOpЂdense_49/MatMul/ReadVariableOpЂdense_50/BiasAdd/ReadVariableOpЂdense_50/MatMul/ReadVariableOpЂdense_51/BiasAdd/ReadVariableOpЂdense_51/MatMul/ReadVariableOpЂ+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOpЂ*lstm_12/lstm_cell_12/MatMul/ReadVariableOpЂ,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOpЂlstm_12/whileC
lstm_12/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_12/strided_sliceStridedSlicelstm_12/Shape:output:0$lstm_12/strided_slice/stack:output:0&lstm_12/strided_slice/stack_1:output:0&lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_12/zeros/packedPacklstm_12/strided_slice:output:0lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_12/zerosFilllstm_12/zeros/packed:output:0lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_12/zeros_1/packedPacklstm_12/strided_slice:output:0!lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_12/zeros_1Filllstm_12/zeros_1/packed:output:0lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
lstm_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_12/transpose	Transposeinputslstm_12/transpose/perm:output:0*
T0*+
_output_shapes
:2џџџџџџџџџT
lstm_12/Shape_1Shapelstm_12/transpose:y:0*
T0*
_output_shapes
:g
lstm_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_12/strided_slice_1StridedSlicelstm_12/Shape_1:output:0&lstm_12/strided_slice_1/stack:output:0(lstm_12/strided_slice_1/stack_1:output:0(lstm_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_12/TensorArrayV2TensorListReserve,lstm_12/TensorArrayV2/element_shape:output:0 lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ј
/lstm_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_12/transpose:y:0Flstm_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_12/strided_slice_2StridedSlicelstm_12/transpose:y:0&lstm_12/strided_slice_2/stack:output:0(lstm_12/strided_slice_2/stack_1:output:0(lstm_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
*lstm_12/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3lstm_12_lstm_cell_12_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0­
lstm_12/lstm_cell_12/MatMulMatMul lstm_12/strided_slice_2:output:02lstm_12/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhЂ
,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5lstm_12_lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0Ї
lstm_12/lstm_cell_12/MatMul_1MatMullstm_12/zeros:output:04lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhЃ
lstm_12/lstm_cell_12/addAddV2%lstm_12/lstm_cell_12/MatMul:product:0'lstm_12/lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4lstm_12_lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0Ќ
lstm_12/lstm_cell_12/BiasAddBiasAddlstm_12/lstm_cell_12/add:z:03lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhf
$lstm_12/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_12/lstm_cell_12/splitSplit-lstm_12/lstm_cell_12/split/split_dim:output:0%lstm_12/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split~
lstm_12/lstm_cell_12/SigmoidSigmoid#lstm_12/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/lstm_cell_12/Sigmoid_1Sigmoid#lstm_12/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/lstm_cell_12/mulMul"lstm_12/lstm_cell_12/Sigmoid_1:y:0lstm_12/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџx
lstm_12/lstm_cell_12/ReluRelu#lstm_12/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/lstm_cell_12/mul_1Mul lstm_12/lstm_cell_12/Sigmoid:y:0'lstm_12/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/lstm_cell_12/add_1AddV2lstm_12/lstm_cell_12/mul:z:0lstm_12/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/lstm_cell_12/Sigmoid_2Sigmoid#lstm_12/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџu
lstm_12/lstm_cell_12/Relu_1Relulstm_12/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЂ
lstm_12/lstm_cell_12/mul_2Mul"lstm_12/lstm_cell_12/Sigmoid_2:y:0)lstm_12/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџv
%lstm_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   а
lstm_12/TensorArrayV2_1TensorListReserve.lstm_12/TensorArrayV2_1/element_shape:output:0 lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_12/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : є
lstm_12/whileWhile#lstm_12/while/loop_counter:output:0)lstm_12/while/maximum_iterations:output:0lstm_12/time:output:0 lstm_12/TensorArrayV2_1:handle:0lstm_12/zeros:output:0lstm_12/zeros_1:output:0 lstm_12/strided_slice_1:output:0?lstm_12/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_12_lstm_cell_12_matmul_readvariableop_resource5lstm_12_lstm_cell_12_matmul_1_readvariableop_resource4lstm_12_lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_12_while_body_2700003*&
condR
lstm_12_while_cond_2700002*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
8lstm_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   к
*lstm_12/TensorArrayV2Stack/TensorListStackTensorListStacklstm_12/while:output:3Alstm_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2џџџџџџџџџ*
element_dtype0p
lstm_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_12/strided_slice_3StridedSlice3lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_12/strided_slice_3/stack:output:0(lstm_12/strided_slice_3/stack_1:output:0(lstm_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskm
lstm_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_12/transpose_1	Transpose3lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2c
lstm_12/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?
dropout_36/dropout/MulMullstm_12/transpose_1:y:0!dropout_36/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2_
dropout_36/dropout/ShapeShapelstm_12/transpose_1:y:0*
T0*
_output_shapes
:І
/dropout_36/dropout/random_uniform/RandomUniformRandomUniform!dropout_36/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2*
dtype0f
!dropout_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=Ы
dropout_36/dropout/GreaterEqualGreaterEqual8dropout_36/dropout/random_uniform/RandomUniform:output:0*dropout_36/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
dropout_36/dropout/CastCast#dropout_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџ2
dropout_36/dropout/Mul_1Muldropout_36/dropout/Mul:z:0dropout_36/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2a
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  
flatten_12/ReshapeReshapedropout_36/dropout/Mul_1:z:0flatten_12/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ

dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource* 
_output_shapes
:

'*
dtype0
dense_48/MatMulMatMulflatten_12/Reshape:output:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ'
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes	
:'*
dtype0
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ'c
dense_48/ReluReludense_48/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ']
dropout_37/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_37/dropout/MulMuldense_48/Relu:activations:0!dropout_37/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'c
dropout_37/dropout/ShapeShapedense_48/Relu:activations:0*
T0*
_output_shapes
:Ѓ
/dropout_37/dropout/random_uniform/RandomUniformRandomUniform!dropout_37/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'*
dtype0f
!dropout_37/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ш
dropout_37/dropout/GreaterEqualGreaterEqual8dropout_37/dropout/random_uniform/RandomUniform:output:0*dropout_37/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'
dropout_37/dropout/CastCast#dropout_37/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ'
dropout_37/dropout/Mul_1Muldropout_37/dropout/Mul:z:0dropout_37/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ'
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource* 
_output_shapes
:
'м*
dtype0
dense_49/MatMulMatMuldropout_37/dropout/Mul_1:z:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџм
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes	
:м*
dtype0
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџмc
dense_49/ReluReludense_49/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџм
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource* 
_output_shapes
:
м *
dtype0
dense_50/MatMulMatMuldense_49/Relu:activations:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ c
dense_50/ReluReludense_50/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ ]
dropout_38/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?
dropout_38/dropout/MulMuldense_50/Relu:activations:0!dropout_38/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ c
dropout_38/dropout/ShapeShapedense_50/Relu:activations:0*
T0*
_output_shapes
:Ѓ
/dropout_38/dropout/random_uniform/RandomUniformRandomUniform!dropout_38/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ *
dtype0f
!dropout_38/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ш
dropout_38/dropout/GreaterEqualGreaterEqual8dropout_38/dropout/random_uniform/RandomUniform:output:0*dropout_38/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 
dropout_38/dropout/CastCast#dropout_38/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ 
dropout_38/dropout/Mul_1Muldropout_38/dropout/Mul:z:0dropout_38/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ 
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
dense_51/MatMulMatMuldropout_38/dropout/Mul_1:z:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
dense_51/SoftmaxSoftmaxdense_51/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџi
IdentityIdentitydense_51/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџь
NoOpNoOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp,^lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp+^lstm_12/lstm_cell_12/MatMul/ReadVariableOp-^lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp^lstm_12/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ2: : : : : : : : : : : 2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2Z
+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp+lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp2X
*lstm_12/lstm_cell_12/MatMul/ReadVariableOp*lstm_12/lstm_cell_12/MatMul/ReadVariableOp2\
,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp,lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp2
lstm_12/whilelstm_12/while:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
J

D__inference_lstm_12_layer_call_and_return_conditional_losses_2700786

inputs=
+lstm_cell_12_matmul_readvariableop_resource:h?
-lstm_cell_12_matmul_1_readvariableop_resource:h:
,lstm_cell_12_biasadd_readvariableop_resource:h
identityЂ#lstm_cell_12/BiasAdd/ReadVariableOpЂ"lstm_cell_12/MatMul/ReadVariableOpЂ$lstm_cell_12/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџe
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2700702*
condR
while_cond_2700701*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2џџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
R

(sequential_12_lstm_12_while_body_2698495H
Dsequential_12_lstm_12_while_sequential_12_lstm_12_while_loop_counterN
Jsequential_12_lstm_12_while_sequential_12_lstm_12_while_maximum_iterations+
'sequential_12_lstm_12_while_placeholder-
)sequential_12_lstm_12_while_placeholder_1-
)sequential_12_lstm_12_while_placeholder_2-
)sequential_12_lstm_12_while_placeholder_3G
Csequential_12_lstm_12_while_sequential_12_lstm_12_strided_slice_1_0
sequential_12_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_12_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_12_lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0:h]
Ksequential_12_lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0:hX
Jsequential_12_lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0:h(
$sequential_12_lstm_12_while_identity*
&sequential_12_lstm_12_while_identity_1*
&sequential_12_lstm_12_while_identity_2*
&sequential_12_lstm_12_while_identity_3*
&sequential_12_lstm_12_while_identity_4*
&sequential_12_lstm_12_while_identity_5E
Asequential_12_lstm_12_while_sequential_12_lstm_12_strided_slice_1
}sequential_12_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_12_tensorarrayunstack_tensorlistfromtensorY
Gsequential_12_lstm_12_while_lstm_cell_12_matmul_readvariableop_resource:h[
Isequential_12_lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource:hV
Hsequential_12_lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource:hЂ?sequential_12/lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOpЂ>sequential_12/lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpЂ@sequential_12/lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp
Msequential_12/lstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
?sequential_12/lstm_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_12_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_12_tensorarrayunstack_tensorlistfromtensor_0'sequential_12_lstm_12_while_placeholderVsequential_12/lstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ш
>sequential_12/lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOpIsequential_12_lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0ћ
/sequential_12/lstm_12/while/lstm_cell_12/MatMulMatMulFsequential_12/lstm_12/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_12/lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhЬ
@sequential_12/lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOpKsequential_12_lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0т
1sequential_12/lstm_12/while/lstm_cell_12/MatMul_1MatMul)sequential_12_lstm_12_while_placeholder_2Hsequential_12/lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhп
,sequential_12/lstm_12/while/lstm_cell_12/addAddV29sequential_12/lstm_12/while/lstm_cell_12/MatMul:product:0;sequential_12/lstm_12/while/lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџhЦ
?sequential_12/lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOpJsequential_12_lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0ш
0sequential_12/lstm_12/while/lstm_cell_12/BiasAddBiasAdd0sequential_12/lstm_12/while/lstm_cell_12/add:z:0Gsequential_12/lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhz
8sequential_12/lstm_12/while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
.sequential_12/lstm_12/while/lstm_cell_12/splitSplitAsequential_12/lstm_12/while/lstm_cell_12/split/split_dim:output:09sequential_12/lstm_12/while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitІ
0sequential_12/lstm_12/while/lstm_cell_12/SigmoidSigmoid7sequential_12/lstm_12/while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџЈ
2sequential_12/lstm_12/while/lstm_cell_12/Sigmoid_1Sigmoid7sequential_12/lstm_12/while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџШ
,sequential_12/lstm_12/while/lstm_cell_12/mulMul6sequential_12/lstm_12/while/lstm_cell_12/Sigmoid_1:y:0)sequential_12_lstm_12_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_12/lstm_12/while/lstm_cell_12/ReluRelu7sequential_12/lstm_12/while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџк
.sequential_12/lstm_12/while/lstm_cell_12/mul_1Mul4sequential_12/lstm_12/while/lstm_cell_12/Sigmoid:y:0;sequential_12/lstm_12/while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџЯ
.sequential_12/lstm_12/while/lstm_cell_12/add_1AddV20sequential_12/lstm_12/while/lstm_cell_12/mul:z:02sequential_12/lstm_12/while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЈ
2sequential_12/lstm_12/while/lstm_cell_12/Sigmoid_2Sigmoid7sequential_12/lstm_12/while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
/sequential_12/lstm_12/while/lstm_cell_12/Relu_1Relu2sequential_12/lstm_12/while/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџо
.sequential_12/lstm_12/while/lstm_cell_12/mul_2Mul6sequential_12/lstm_12/while/lstm_cell_12/Sigmoid_2:y:0=sequential_12/lstm_12/while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
@sequential_12/lstm_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_12_lstm_12_while_placeholder_1'sequential_12_lstm_12_while_placeholder2sequential_12/lstm_12/while/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвc
!sequential_12/lstm_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_12/lstm_12/while/addAddV2'sequential_12_lstm_12_while_placeholder*sequential_12/lstm_12/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_12/lstm_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!sequential_12/lstm_12/while/add_1AddV2Dsequential_12_lstm_12_while_sequential_12_lstm_12_while_loop_counter,sequential_12/lstm_12/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_12/lstm_12/while/IdentityIdentity%sequential_12/lstm_12/while/add_1:z:0!^sequential_12/lstm_12/while/NoOp*
T0*
_output_shapes
: Т
&sequential_12/lstm_12/while/Identity_1IdentityJsequential_12_lstm_12_while_sequential_12_lstm_12_while_maximum_iterations!^sequential_12/lstm_12/while/NoOp*
T0*
_output_shapes
: 
&sequential_12/lstm_12/while/Identity_2Identity#sequential_12/lstm_12/while/add:z:0!^sequential_12/lstm_12/while/NoOp*
T0*
_output_shapes
: л
&sequential_12/lstm_12/while/Identity_3IdentityPsequential_12/lstm_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_12/lstm_12/while/NoOp*
T0*
_output_shapes
: :щшвЛ
&sequential_12/lstm_12/while/Identity_4Identity2sequential_12/lstm_12/while/lstm_cell_12/mul_2:z:0!^sequential_12/lstm_12/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЛ
&sequential_12/lstm_12/while/Identity_5Identity2sequential_12/lstm_12/while/lstm_cell_12/add_1:z:0!^sequential_12/lstm_12/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЈ
 sequential_12/lstm_12/while/NoOpNoOp@^sequential_12/lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp?^sequential_12/lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpA^sequential_12/lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_12_lstm_12_while_identity-sequential_12/lstm_12/while/Identity:output:0"Y
&sequential_12_lstm_12_while_identity_1/sequential_12/lstm_12/while/Identity_1:output:0"Y
&sequential_12_lstm_12_while_identity_2/sequential_12/lstm_12/while/Identity_2:output:0"Y
&sequential_12_lstm_12_while_identity_3/sequential_12/lstm_12/while/Identity_3:output:0"Y
&sequential_12_lstm_12_while_identity_4/sequential_12/lstm_12/while/Identity_4:output:0"Y
&sequential_12_lstm_12_while_identity_5/sequential_12/lstm_12/while/Identity_5:output:0"
Hsequential_12_lstm_12_while_lstm_cell_12_biasadd_readvariableop_resourceJsequential_12_lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0"
Isequential_12_lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resourceKsequential_12_lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0"
Gsequential_12_lstm_12_while_lstm_cell_12_matmul_readvariableop_resourceIsequential_12_lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0"
Asequential_12_lstm_12_while_sequential_12_lstm_12_strided_slice_1Csequential_12_lstm_12_while_sequential_12_lstm_12_strided_slice_1_0"
}sequential_12_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_12_tensorarrayunstack_tensorlistfromtensorsequential_12_lstm_12_while_tensorarrayv2read_tensorlistgetitem_sequential_12_lstm_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2
?sequential_12/lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp?sequential_12/lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp2
>sequential_12/lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp>sequential_12/lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp2
@sequential_12/lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp@sequential_12/lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ё

Ђ
/__inference_sequential_12_layer_call_fn_2699242
lstm_12_input
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:

'
	unknown_3:	'
	unknown_4:
'м
	unknown_5:	м
	unknown_6:
м 
	unknown_7:	 
	unknown_8:	 
	unknown_9:
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_2699217o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ2: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ2
'
_user_specified_namelstm_12_input
Г
H
,__inference_dropout_36_layer_call_fn_2700791

inputs
identityЖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_2699124d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
,

J__inference_sequential_12_layer_call_and_return_conditional_losses_2699708
lstm_12_input!
lstm_12_2699676:h!
lstm_12_2699678:h
lstm_12_2699680:h$
dense_48_2699685:

'
dense_48_2699687:	'$
dense_49_2699691:
'м
dense_49_2699693:	м$
dense_50_2699696:
м 
dense_50_2699698:	 #
dense_51_2699702:	 
dense_51_2699704:
identityЂ dense_48/StatefulPartitionedCallЂ dense_49/StatefulPartitionedCallЂ dense_50/StatefulPartitionedCallЂ dense_51/StatefulPartitionedCallЂ"dropout_36/StatefulPartitionedCallЂ"dropout_37/StatefulPartitionedCallЂ"dropout_38/StatefulPartitionedCallЂlstm_12/StatefulPartitionedCall
lstm_12/StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputlstm_12_2699676lstm_12_2699678lstm_12_2699680*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_2699513ѓ
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_2699354у
flatten_12/PartitionedCallPartitionedCall+dropout_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_12_layer_call_and_return_conditional_losses_2699132
 dense_48/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_48_2699685dense_48_2699687*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2699145
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_2699315
 dense_49/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0dense_49_2699691dense_49_2699693*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџм*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_49_layer_call_and_return_conditional_losses_2699169
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_2699696dense_50_2699698*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_2699186
"dropout_38/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0#^dropout_37/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_2699272
 dense_51/StatefulPartitionedCallStatefulPartitionedCall+dropout_38/StatefulPartitionedCall:output:0dense_51_2699702dense_51_2699704*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_2699210x
IdentityIdentity)dense_51/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџу
NoOpNoOp!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall#^dropout_38/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ2: : : : : : : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall2H
"dropout_38/StatefulPartitionedCall"dropout_38/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ2
'
_user_specified_namelstm_12_input
љ
e
,__inference_dropout_37_layer_call_fn_2700854

inputs
identityЂStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_2699315p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ'`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ'22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ'
 
_user_specified_nameinputs
С
c
G__inference_flatten_12_layer_call_and_return_conditional_losses_2699132

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
§	
f
G__inference_dropout_37_layer_call_and_return_conditional_losses_2699315

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ'j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ'Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ'"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ':P L
(
_output_shapes
:џџџџџџџџџ'
 
_user_specified_nameinputs
Ь

I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2698825

inputs

states
states_10
matmul_readvariableop_resource:h2
 matmul_1_readvariableop_resource:h-
biasadd_readvariableop_resource:h
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџhr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:h*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates
§	
f
G__inference_dropout_38_layer_call_and_return_conditional_losses_2700938

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ :P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
8
Ы
while_body_2700559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_12_matmul_readvariableop_resource_0:hG
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_12_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_12_matmul_readvariableop_resource:hE
3while_lstm_cell_12_matmul_1_readvariableop_resource:h@
2while_lstm_cell_12_biasadd_readvariableop_resource:hЂ)while/lstm_cell_12/BiasAdd/ReadVariableOpЂ(while/lstm_cell_12/MatMul/ReadVariableOpЂ*while/lstm_cell_12/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0Й
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh 
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0 
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшвy
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџа

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_2699428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2699428___redundant_placeholder05
1while_while_cond_2699428___redundant_placeholder15
1while_while_cond_2699428___redundant_placeholder25
1while_while_cond_2699428___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
Ї
H
,__inference_dropout_38_layer_call_fn_2700916

inputs
identityГ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_2699197a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ :P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
8
Ы
while_body_2699027
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_12_matmul_readvariableop_resource_0:hG
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_12_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_12_matmul_readvariableop_resource:hE
3while_lstm_cell_12_matmul_1_readvariableop_resource:h@
2while_lstm_cell_12_biasadd_readvariableop_resource:hЂ)while/lstm_cell_12/BiasAdd/ReadVariableOpЂ(while/lstm_cell_12/MatMul/ReadVariableOpЂ*while/lstm_cell_12/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0Й
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh 
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0 
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшвy
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџа

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_2698883
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2698883___redundant_placeholder05
1while_while_cond_2698883___redundant_placeholder15
1while_while_cond_2698883___redundant_placeholder25
1while_while_cond_2698883___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
J

D__inference_lstm_12_layer_call_and_return_conditional_losses_2699111

inputs=
+lstm_cell_12_matmul_readvariableop_resource:h?
-lstm_cell_12_matmul_1_readvariableop_resource:h:
,lstm_cell_12_biasadd_readvariableop_resource:h
identityЂ#lstm_cell_12/BiasAdd/ReadVariableOpЂ"lstm_cell_12/MatMul/ReadVariableOpЂ$lstm_cell_12/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџe
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2699027*
condR
while_cond_2699026*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2џџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
8
Ы
while_body_2700273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_12_matmul_readvariableop_resource_0:hG
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_12_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_12_matmul_readvariableop_resource:hE
3while_lstm_cell_12_matmul_1_readvariableop_resource:h@
2while_lstm_cell_12_biasadd_readvariableop_resource:hЂ)while/lstm_cell_12/BiasAdd/ReadVariableOpЂ(while/lstm_cell_12/MatMul/ReadVariableOpЂ*while/lstm_cell_12/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0Й
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh 
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0 
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшвy
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџа

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
#
ф
while_body_2698693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_12_2698717_0:h.
while_lstm_cell_12_2698719_0:h*
while_lstm_cell_12_2698721_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_12_2698717:h,
while_lstm_cell_12_2698719:h(
while_lstm_cell_12_2698721:hЂ*while/lstm_cell_12/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0З
*while/lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_12_2698717_0while_lstm_cell_12_2698719_0while_lstm_cell_12_2698721_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2698679м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_12/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшв
while/Identity_4Identity3while/lstm_cell_12/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
while/Identity_5Identity3while/lstm_cell_12/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџy

while/NoOpNoOp+^while/lstm_cell_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_12_2698717while_lstm_cell_12_2698717_0":
while_lstm_cell_12_2698719while_lstm_cell_12_2698719_0":
while_lstm_cell_12_2698721while_lstm_cell_12_2698721_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2X
*while/lstm_cell_12/StatefulPartitionedCall*while/lstm_cell_12/StatefulPartitionedCall: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
С
c
G__inference_flatten_12_layer_call_and_return_conditional_losses_2700824

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
љ
e
,__inference_dropout_38_layer_call_fn_2700921

inputs
identityЂStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_2699272p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ъ
є
.__inference_lstm_cell_12_layer_call_fn_2700975

inputs
states_0
states_1
unknown:h
	unknown_0:h
	unknown_1:h
identity

identity_1

identity_2ЂStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2698679o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
ЬA
Ы

lstm_12_while_body_2700003,
(lstm_12_while_lstm_12_while_loop_counter2
.lstm_12_while_lstm_12_while_maximum_iterations
lstm_12_while_placeholder
lstm_12_while_placeholder_1
lstm_12_while_placeholder_2
lstm_12_while_placeholder_3+
'lstm_12_while_lstm_12_strided_slice_1_0g
clstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0:hO
=lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0:hJ
<lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0:h
lstm_12_while_identity
lstm_12_while_identity_1
lstm_12_while_identity_2
lstm_12_while_identity_3
lstm_12_while_identity_4
lstm_12_while_identity_5)
%lstm_12_while_lstm_12_strided_slice_1e
alstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensorK
9lstm_12_while_lstm_cell_12_matmul_readvariableop_resource:hM
;lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource:hH
:lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource:hЂ1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOpЂ0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpЂ2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp
?lstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ю
1lstm_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0lstm_12_while_placeholderHlstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ќ
0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp;lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0б
!lstm_12/while/lstm_cell_12/MatMulMatMul8lstm_12/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhА
2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp=lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0И
#lstm_12/while/lstm_cell_12/MatMul_1MatMullstm_12_while_placeholder_2:lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhЕ
lstm_12/while/lstm_cell_12/addAddV2+lstm_12/while/lstm_cell_12/MatMul:product:0-lstm_12/while/lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџhЊ
1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp<lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0О
"lstm_12/while/lstm_cell_12/BiasAddBiasAdd"lstm_12/while/lstm_cell_12/add:z:09lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhl
*lstm_12/while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_12/while/lstm_cell_12/splitSplit3lstm_12/while/lstm_cell_12/split/split_dim:output:0+lstm_12/while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
"lstm_12/while/lstm_cell_12/SigmoidSigmoid)lstm_12/while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
$lstm_12/while/lstm_cell_12/Sigmoid_1Sigmoid)lstm_12/while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/while/lstm_cell_12/mulMul(lstm_12/while/lstm_cell_12/Sigmoid_1:y:0lstm_12_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/while/lstm_cell_12/ReluRelu)lstm_12/while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџА
 lstm_12/while/lstm_cell_12/mul_1Mul&lstm_12/while/lstm_cell_12/Sigmoid:y:0-lstm_12/while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџЅ
 lstm_12/while/lstm_cell_12/add_1AddV2"lstm_12/while/lstm_cell_12/mul:z:0$lstm_12/while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
$lstm_12/while/lstm_cell_12/Sigmoid_2Sigmoid)lstm_12/while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_12/while/lstm_cell_12/Relu_1Relu$lstm_12/while/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџД
 lstm_12/while/lstm_cell_12/mul_2Mul(lstm_12/while/lstm_cell_12/Sigmoid_2:y:0/lstm_12/while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџх
2lstm_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_12_while_placeholder_1lstm_12_while_placeholder$lstm_12/while/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_12/while/addAddV2lstm_12_while_placeholderlstm_12/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_12/while/add_1AddV2(lstm_12_while_lstm_12_while_loop_counterlstm_12/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_12/while/IdentityIdentitylstm_12/while/add_1:z:0^lstm_12/while/NoOp*
T0*
_output_shapes
: 
lstm_12/while/Identity_1Identity.lstm_12_while_lstm_12_while_maximum_iterations^lstm_12/while/NoOp*
T0*
_output_shapes
: q
lstm_12/while/Identity_2Identitylstm_12/while/add:z:0^lstm_12/while/NoOp*
T0*
_output_shapes
: Б
lstm_12/while/Identity_3IdentityBlstm_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_12/while/NoOp*
T0*
_output_shapes
: :щшв
lstm_12/while/Identity_4Identity$lstm_12/while/lstm_cell_12/mul_2:z:0^lstm_12/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/while/Identity_5Identity$lstm_12/while/lstm_cell_12/add_1:z:0^lstm_12/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ№
lstm_12/while/NoOpNoOp2^lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp1^lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp3^lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_12_while_identitylstm_12/while/Identity:output:0"=
lstm_12_while_identity_1!lstm_12/while/Identity_1:output:0"=
lstm_12_while_identity_2!lstm_12/while/Identity_2:output:0"=
lstm_12_while_identity_3!lstm_12/while/Identity_3:output:0"=
lstm_12_while_identity_4!lstm_12/while/Identity_4:output:0"=
lstm_12_while_identity_5!lstm_12/while/Identity_5:output:0"P
%lstm_12_while_lstm_12_strided_slice_1'lstm_12_while_lstm_12_strided_slice_1_0"z
:lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource<lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0"|
;lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource=lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0"x
9lstm_12_while_lstm_cell_12_matmul_readvariableop_resource;lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0"Ш
alstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensorclstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2f
1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp2d
0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp2h
2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
Ј

љ
E__inference_dense_50_layer_call_and_return_conditional_losses_2700911

inputs2
matmul_readvariableop_resource:
м .
biasadd_readvariableop_resource:	 
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
м *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
: *
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџм: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџм
 
_user_specified_nameinputs


ш
lstm_12_while_cond_2699826,
(lstm_12_while_lstm_12_while_loop_counter2
.lstm_12_while_lstm_12_while_maximum_iterations
lstm_12_while_placeholder
lstm_12_while_placeholder_1
lstm_12_while_placeholder_2
lstm_12_while_placeholder_3.
*lstm_12_while_less_lstm_12_strided_slice_1E
Alstm_12_while_lstm_12_while_cond_2699826___redundant_placeholder0E
Alstm_12_while_lstm_12_while_cond_2699826___redundant_placeholder1E
Alstm_12_while_lstm_12_while_cond_2699826___redundant_placeholder2E
Alstm_12_while_lstm_12_while_cond_2699826___redundant_placeholder3
lstm_12_while_identity

lstm_12/while/LessLesslstm_12_while_placeholder*lstm_12_while_less_lstm_12_strided_slice_1*
T0*
_output_shapes
: [
lstm_12/while/IdentityIdentitylstm_12/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_12_while_identitylstm_12/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: ::::: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
Ј

љ
E__inference_dense_49_layer_call_and_return_conditional_losses_2700891

inputs2
matmul_readvariableop_resource:
'м.
biasadd_readvariableop_resource:	м
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
'м*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџмs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:м*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџмQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџмb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџмw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ': : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ'
 
_user_specified_nameinputs
Ѕ

ї
E__inference_dense_51_layer_call_and_return_conditional_losses_2699210

inputs1
matmul_readvariableop_resource:	 -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ў
Г
)__inference_lstm_12_layer_call_fn_2700214

inputs
unknown:h
	unknown_0:h
	unknown_1:h
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_2699513s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ъ
є
.__inference_lstm_cell_12_layer_call_fn_2700992

inputs
states_0
states_1
unknown:h
	unknown_0:h
	unknown_1:h
identity

identity_1

identity_2ЂStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2698825o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
8
Ы
while_body_2700702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_12_matmul_readvariableop_resource_0:hG
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_12_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_12_matmul_readvariableop_resource:hE
3while_lstm_cell_12_matmul_1_readvariableop_resource:h@
2while_lstm_cell_12_biasadd_readvariableop_resource:hЂ)while/lstm_cell_12/BiasAdd/ReadVariableOpЂ(while/lstm_cell_12/MatMul/ReadVariableOpЂ*while/lstm_cell_12/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0Й
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh 
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0 
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшвy
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџа

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
J

D__inference_lstm_12_layer_call_and_return_conditional_losses_2700643

inputs=
+lstm_cell_12_matmul_readvariableop_resource:h?
-lstm_cell_12_matmul_1_readvariableop_resource:h:
,lstm_cell_12_biasadd_readvariableop_resource:h
identityЂ#lstm_cell_12/BiasAdd/ReadVariableOpЂ"lstm_cell_12/MatMul/ReadVariableOpЂ$lstm_cell_12/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџh
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџe
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2700559*
condR
while_cond_2700558*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2џџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ј

љ
E__inference_dense_48_layer_call_and_return_conditional_losses_2700844

inputs2
matmul_readvariableop_resource:

'.
biasadd_readvariableop_resource:	'
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:

'*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ's
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:'*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ'Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ'w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ы

*__inference_dense_49_layer_call_fn_2700880

inputs
unknown:
'м
	unknown_0:	м
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџм*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_49_layer_call_and_return_conditional_losses_2699169p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџм`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ': : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ'
 
_user_specified_nameinputs
оЈ
Р
#__inference__traced_restore_2701341
file_prefix4
 assignvariableop_dense_48_kernel:

'/
 assignvariableop_1_dense_48_bias:	'6
"assignvariableop_2_dense_49_kernel:
'м/
 assignvariableop_3_dense_49_bias:	м6
"assignvariableop_4_dense_50_kernel:
м /
 assignvariableop_5_dense_50_bias:	 5
"assignvariableop_6_dense_51_kernel:	 .
 assignvariableop_7_dense_51_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: A
/assignvariableop_13_lstm_12_lstm_cell_12_kernel:hK
9assignvariableop_14_lstm_12_lstm_cell_12_recurrent_kernel:h;
-assignvariableop_15_lstm_12_lstm_cell_12_bias:h#
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: >
*assignvariableop_20_adam_dense_48_kernel_m:

'7
(assignvariableop_21_adam_dense_48_bias_m:	'>
*assignvariableop_22_adam_dense_49_kernel_m:
'м7
(assignvariableop_23_adam_dense_49_bias_m:	м>
*assignvariableop_24_adam_dense_50_kernel_m:
м 7
(assignvariableop_25_adam_dense_50_bias_m:	 =
*assignvariableop_26_adam_dense_51_kernel_m:	 6
(assignvariableop_27_adam_dense_51_bias_m:H
6assignvariableop_28_adam_lstm_12_lstm_cell_12_kernel_m:hR
@assignvariableop_29_adam_lstm_12_lstm_cell_12_recurrent_kernel_m:hB
4assignvariableop_30_adam_lstm_12_lstm_cell_12_bias_m:h>
*assignvariableop_31_adam_dense_48_kernel_v:

'7
(assignvariableop_32_adam_dense_48_bias_v:	'>
*assignvariableop_33_adam_dense_49_kernel_v:
'м7
(assignvariableop_34_adam_dense_49_bias_v:	м>
*assignvariableop_35_adam_dense_50_kernel_v:
м 7
(assignvariableop_36_adam_dense_50_bias_v:	 =
*assignvariableop_37_adam_dense_51_kernel_v:	 6
(assignvariableop_38_adam_dense_51_bias_v:H
6assignvariableop_39_adam_lstm_12_lstm_cell_12_kernel_v:hR
@assignvariableop_40_adam_lstm_12_lstm_cell_12_recurrent_kernel_v:hB
4assignvariableop_41_adam_lstm_12_lstm_cell_12_bias_v:h
identity_43ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Т
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*ш
valueоBл+B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЦ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ј
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Т
_output_shapesЏ
Ќ:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_48_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_48_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_49_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_49_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_50_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_50_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_51_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_51_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_12_lstm_cell_12_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_12_lstm_cell_12_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_12_lstm_cell_12_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_48_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_48_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_49_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_49_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_50_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_dense_50_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_51_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_dense_51_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_12_lstm_cell_12_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_29AssignVariableOp@assignvariableop_29_adam_lstm_12_lstm_cell_12_recurrent_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_lstm_12_lstm_cell_12_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_48_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_48_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_49_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_49_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_50_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_50_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_51_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_51_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_12_lstm_cell_12_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_40AssignVariableOp@assignvariableop_40_adam_lstm_12_lstm_cell_12_recurrent_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adam_lstm_12_lstm_cell_12_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ы
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: и
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
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
Х'

J__inference_sequential_12_layer_call_and_return_conditional_losses_2699673
lstm_12_input!
lstm_12_2699641:h!
lstm_12_2699643:h
lstm_12_2699645:h$
dense_48_2699650:

'
dense_48_2699652:	'$
dense_49_2699656:
'м
dense_49_2699658:	м$
dense_50_2699661:
м 
dense_50_2699663:	 #
dense_51_2699667:	 
dense_51_2699669:
identityЂ dense_48/StatefulPartitionedCallЂ dense_49/StatefulPartitionedCallЂ dense_50/StatefulPartitionedCallЂ dense_51/StatefulPartitionedCallЂlstm_12/StatefulPartitionedCall
lstm_12/StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputlstm_12_2699641lstm_12_2699643lstm_12_2699645*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_2699111у
dropout_36/PartitionedCallPartitionedCall(lstm_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_36_layer_call_and_return_conditional_losses_2699124л
flatten_12/PartitionedCallPartitionedCall#dropout_36/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_12_layer_call_and_return_conditional_losses_2699132
 dense_48/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_48_2699650dense_48_2699652*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2699145с
dropout_37/PartitionedCallPartitionedCall)dense_48/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_2699156
 dense_49/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0dense_49_2699656dense_49_2699658*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџм*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_49_layer_call_and_return_conditional_losses_2699169
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_2699661dense_50_2699663*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_2699186с
dropout_38/PartitionedCallPartitionedCall)dense_50/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_38_layer_call_and_return_conditional_losses_2699197
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#dropout_38/PartitionedCall:output:0dense_51_2699667dense_51_2699669*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_2699210x
IdentityIdentity)dense_51/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџє
NoOpNoOp!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ2: : : : : : : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ2
'
_user_specified_namelstm_12_input
Ї
H
,__inference_dropout_37_layer_call_fn_2700849

inputs
identityГ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_37_layer_call_and_return_conditional_losses_2699156a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ':P L
(
_output_shapes
:џџџџџџџџџ'
 
_user_specified_nameinputs
д

I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2701056

inputs
states_0
states_10
matmul_readvariableop_resource:h2
 matmul_1_readvariableop_resource:h-
biasadd_readvariableop_resource:h
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџhr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:h*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
д

I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2701024

inputs
states_0
states_10
matmul_readvariableop_resource:h2
 matmul_1_readvariableop_resource:h-
biasadd_readvariableop_resource:h
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџhr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:h*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/1
ЬA
Ы

lstm_12_while_body_2699827,
(lstm_12_while_lstm_12_while_loop_counter2
.lstm_12_while_lstm_12_while_maximum_iterations
lstm_12_while_placeholder
lstm_12_while_placeholder_1
lstm_12_while_placeholder_2
lstm_12_while_placeholder_3+
'lstm_12_while_lstm_12_strided_slice_1_0g
clstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0:hO
=lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0:hJ
<lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0:h
lstm_12_while_identity
lstm_12_while_identity_1
lstm_12_while_identity_2
lstm_12_while_identity_3
lstm_12_while_identity_4
lstm_12_while_identity_5)
%lstm_12_while_lstm_12_strided_slice_1e
alstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensorK
9lstm_12_while_lstm_cell_12_matmul_readvariableop_resource:hM
;lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource:hH
:lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource:hЂ1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOpЂ0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpЂ2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp
?lstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ю
1lstm_12/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0lstm_12_while_placeholderHlstm_12/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ќ
0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp;lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0б
!lstm_12/while/lstm_cell_12/MatMulMatMul8lstm_12/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhА
2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp=lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0И
#lstm_12/while/lstm_cell_12/MatMul_1MatMullstm_12_while_placeholder_2:lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhЕ
lstm_12/while/lstm_cell_12/addAddV2+lstm_12/while/lstm_cell_12/MatMul:product:0-lstm_12/while/lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџhЊ
1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp<lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0О
"lstm_12/while/lstm_cell_12/BiasAddBiasAdd"lstm_12/while/lstm_cell_12/add:z:09lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhl
*lstm_12/while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_12/while/lstm_cell_12/splitSplit3lstm_12/while/lstm_cell_12/split/split_dim:output:0+lstm_12/while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
"lstm_12/while/lstm_cell_12/SigmoidSigmoid)lstm_12/while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
$lstm_12/while/lstm_cell_12/Sigmoid_1Sigmoid)lstm_12/while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/while/lstm_cell_12/mulMul(lstm_12/while/lstm_cell_12/Sigmoid_1:y:0lstm_12_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/while/lstm_cell_12/ReluRelu)lstm_12/while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџА
 lstm_12/while/lstm_cell_12/mul_1Mul&lstm_12/while/lstm_cell_12/Sigmoid:y:0-lstm_12/while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџЅ
 lstm_12/while/lstm_cell_12/add_1AddV2"lstm_12/while/lstm_cell_12/mul:z:0$lstm_12/while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
$lstm_12/while/lstm_cell_12/Sigmoid_2Sigmoid)lstm_12/while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
!lstm_12/while/lstm_cell_12/Relu_1Relu$lstm_12/while/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџД
 lstm_12/while/lstm_cell_12/mul_2Mul(lstm_12/while/lstm_cell_12/Sigmoid_2:y:0/lstm_12/while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџх
2lstm_12/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_12_while_placeholder_1lstm_12_while_placeholder$lstm_12/while/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_12/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_12/while/addAddV2lstm_12_while_placeholderlstm_12/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_12/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_12/while/add_1AddV2(lstm_12_while_lstm_12_while_loop_counterlstm_12/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_12/while/IdentityIdentitylstm_12/while/add_1:z:0^lstm_12/while/NoOp*
T0*
_output_shapes
: 
lstm_12/while/Identity_1Identity.lstm_12_while_lstm_12_while_maximum_iterations^lstm_12/while/NoOp*
T0*
_output_shapes
: q
lstm_12/while/Identity_2Identitylstm_12/while/add:z:0^lstm_12/while/NoOp*
T0*
_output_shapes
: Б
lstm_12/while/Identity_3IdentityBlstm_12/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_12/while/NoOp*
T0*
_output_shapes
: :щшв
lstm_12/while/Identity_4Identity$lstm_12/while/lstm_cell_12/mul_2:z:0^lstm_12/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_12/while/Identity_5Identity$lstm_12/while/lstm_cell_12/add_1:z:0^lstm_12/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ№
lstm_12/while/NoOpNoOp2^lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp1^lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp3^lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_12_while_identitylstm_12/while/Identity:output:0"=
lstm_12_while_identity_1!lstm_12/while/Identity_1:output:0"=
lstm_12_while_identity_2!lstm_12/while/Identity_2:output:0"=
lstm_12_while_identity_3!lstm_12/while/Identity_3:output:0"=
lstm_12_while_identity_4!lstm_12/while/Identity_4:output:0"=
lstm_12_while_identity_5!lstm_12/while/Identity_5:output:0"P
%lstm_12_while_lstm_12_strided_slice_1'lstm_12_while_lstm_12_strided_slice_1_0"z
:lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource<lstm_12_while_lstm_cell_12_biasadd_readvariableop_resource_0"|
;lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource=lstm_12_while_lstm_cell_12_matmul_1_readvariableop_resource_0"x
9lstm_12_while_lstm_cell_12_matmul_readvariableop_resource;lstm_12_while_lstm_cell_12_matmul_readvariableop_resource_0"Ш
alstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensorclstm_12_while_tensorarrayv2read_tensorlistgetitem_lstm_12_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2f
1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp1lstm_12/while/lstm_cell_12/BiasAdd/ReadVariableOp2d
0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp0lstm_12/while/lstm_cell_12/MatMul/ReadVariableOp2h
2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp2lstm_12/while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
м


/__inference_sequential_12_layer_call_fn_2699741

inputs
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:

'
	unknown_3:	'
	unknown_4:
'м
	unknown_5:	м
	unknown_6:
м 
	unknown_7:	 
	unknown_8:	 
	unknown_9:
identityЂStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_2699217o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ2: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ў
Г
)__inference_lstm_12_layer_call_fn_2700203

inputs
unknown:h
	unknown_0:h
	unknown_1:h
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_2699111s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ј
Е
)__inference_lstm_12_layer_call_fn_2700181
inputs_0
unknown:h
	unknown_0:h
	unknown_1:h
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_2698762|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
­
H
,__inference_flatten_12_layer_call_fn_2700818

inputs
identityГ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_12_layer_call_and_return_conditional_losses_2699132a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
о
e
G__inference_dropout_37_layer_call_and_return_conditional_losses_2700859

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџ'\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ':P L
(
_output_shapes
:џџџџџџџџџ'
 
_user_specified_nameinputs
Ј

љ
E__inference_dense_48_layer_call_and_return_conditional_losses_2699145

inputs2
matmul_readvariableop_resource:

'.
biasadd_readvariableop_resource:	'
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:

'*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ's
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:'*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ'Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ'w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ё

Ђ
/__inference_sequential_12_layer_call_fn_2699638
lstm_12_input
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:

'
	unknown_3:	'
	unknown_4:
'м
	unknown_5:	м
	unknown_6:
м 
	unknown_7:	 
	unknown_8:	 
	unknown_9:
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_2699586o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ2: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ2
'
_user_specified_namelstm_12_input
Ј
Е
)__inference_lstm_12_layer_call_fn_2700192
inputs_0
unknown:h
	unknown_0:h
	unknown_1:h
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_12_layer_call_and_return_conditional_losses_2698953|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
§	
f
G__inference_dropout_38_layer_call_and_return_conditional_losses_2699272

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ :P L
(
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ш
к
"__inference__wrapped_model_2698612
lstm_12_inputS
Asequential_12_lstm_12_lstm_cell_12_matmul_readvariableop_resource:hU
Csequential_12_lstm_12_lstm_cell_12_matmul_1_readvariableop_resource:hP
Bsequential_12_lstm_12_lstm_cell_12_biasadd_readvariableop_resource:hI
5sequential_12_dense_48_matmul_readvariableop_resource:

'E
6sequential_12_dense_48_biasadd_readvariableop_resource:	'I
5sequential_12_dense_49_matmul_readvariableop_resource:
'мE
6sequential_12_dense_49_biasadd_readvariableop_resource:	мI
5sequential_12_dense_50_matmul_readvariableop_resource:
м E
6sequential_12_dense_50_biasadd_readvariableop_resource:	 H
5sequential_12_dense_51_matmul_readvariableop_resource:	 D
6sequential_12_dense_51_biasadd_readvariableop_resource:
identityЂ-sequential_12/dense_48/BiasAdd/ReadVariableOpЂ,sequential_12/dense_48/MatMul/ReadVariableOpЂ-sequential_12/dense_49/BiasAdd/ReadVariableOpЂ,sequential_12/dense_49/MatMul/ReadVariableOpЂ-sequential_12/dense_50/BiasAdd/ReadVariableOpЂ,sequential_12/dense_50/MatMul/ReadVariableOpЂ-sequential_12/dense_51/BiasAdd/ReadVariableOpЂ,sequential_12/dense_51/MatMul/ReadVariableOpЂ9sequential_12/lstm_12/lstm_cell_12/BiasAdd/ReadVariableOpЂ8sequential_12/lstm_12/lstm_cell_12/MatMul/ReadVariableOpЂ:sequential_12/lstm_12/lstm_cell_12/MatMul_1/ReadVariableOpЂsequential_12/lstm_12/whileX
sequential_12/lstm_12/ShapeShapelstm_12_input*
T0*
_output_shapes
:s
)sequential_12/lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_12/lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_12/lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential_12/lstm_12/strided_sliceStridedSlice$sequential_12/lstm_12/Shape:output:02sequential_12/lstm_12/strided_slice/stack:output:04sequential_12/lstm_12/strided_slice/stack_1:output:04sequential_12/lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_12/lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Е
"sequential_12/lstm_12/zeros/packedPack,sequential_12/lstm_12/strided_slice:output:0-sequential_12/lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_12/lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
sequential_12/lstm_12/zerosFill+sequential_12/lstm_12/zeros/packed:output:0*sequential_12/lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
&sequential_12/lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Й
$sequential_12/lstm_12/zeros_1/packedPack,sequential_12/lstm_12/strided_slice:output:0/sequential_12/lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_12/lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_12/lstm_12/zeros_1Fill-sequential_12/lstm_12/zeros_1/packed:output:0,sequential_12/lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџy
$sequential_12/lstm_12/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_12/lstm_12/transpose	Transposelstm_12_input-sequential_12/lstm_12/transpose/perm:output:0*
T0*+
_output_shapes
:2џџџџџџџџџp
sequential_12/lstm_12/Shape_1Shape#sequential_12/lstm_12/transpose:y:0*
T0*
_output_shapes
:u
+sequential_12/lstm_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_12/lstm_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_12/lstm_12/strided_slice_1StridedSlice&sequential_12/lstm_12/Shape_1:output:04sequential_12/lstm_12/strided_slice_1/stack:output:06sequential_12/lstm_12/strided_slice_1/stack_1:output:06sequential_12/lstm_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_12/lstm_12/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#sequential_12/lstm_12/TensorArrayV2TensorListReserve:sequential_12/lstm_12/TensorArrayV2/element_shape:output:0.sequential_12/lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Ksequential_12/lstm_12/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ђ
=sequential_12/lstm_12/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_12/lstm_12/transpose:y:0Tsequential_12/lstm_12/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+sequential_12/lstm_12/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_12/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_12/lstm_12/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
%sequential_12/lstm_12/strided_slice_2StridedSlice#sequential_12/lstm_12/transpose:y:04sequential_12/lstm_12/strided_slice_2/stack:output:06sequential_12/lstm_12/strided_slice_2/stack_1:output:06sequential_12/lstm_12/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskК
8sequential_12/lstm_12/lstm_cell_12/MatMul/ReadVariableOpReadVariableOpAsequential_12_lstm_12_lstm_cell_12_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0з
)sequential_12/lstm_12/lstm_cell_12/MatMulMatMul.sequential_12/lstm_12/strided_slice_2:output:0@sequential_12/lstm_12/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhО
:sequential_12/lstm_12/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOpCsequential_12_lstm_12_lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0б
+sequential_12/lstm_12/lstm_cell_12/MatMul_1MatMul$sequential_12/lstm_12/zeros:output:0Bsequential_12/lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџhЭ
&sequential_12/lstm_12/lstm_cell_12/addAddV23sequential_12/lstm_12/lstm_cell_12/MatMul:product:05sequential_12/lstm_12/lstm_cell_12/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџhИ
9sequential_12/lstm_12/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOpBsequential_12_lstm_12_lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0ж
*sequential_12/lstm_12/lstm_cell_12/BiasAddBiasAdd*sequential_12/lstm_12/lstm_cell_12/add:z:0Asequential_12/lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџht
2sequential_12/lstm_12/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_12/lstm_12/lstm_cell_12/splitSplit;sequential_12/lstm_12/lstm_cell_12/split/split_dim:output:03sequential_12/lstm_12/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
*sequential_12/lstm_12/lstm_cell_12/SigmoidSigmoid1sequential_12/lstm_12/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
,sequential_12/lstm_12/lstm_cell_12/Sigmoid_1Sigmoid1sequential_12/lstm_12/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџЙ
&sequential_12/lstm_12/lstm_cell_12/mulMul0sequential_12/lstm_12/lstm_cell_12/Sigmoid_1:y:0&sequential_12/lstm_12/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential_12/lstm_12/lstm_cell_12/ReluRelu1sequential_12/lstm_12/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџШ
(sequential_12/lstm_12/lstm_cell_12/mul_1Mul.sequential_12/lstm_12/lstm_cell_12/Sigmoid:y:05sequential_12/lstm_12/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџН
(sequential_12/lstm_12/lstm_cell_12/add_1AddV2*sequential_12/lstm_12/lstm_cell_12/mul:z:0,sequential_12/lstm_12/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
,sequential_12/lstm_12/lstm_cell_12/Sigmoid_2Sigmoid1sequential_12/lstm_12/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
)sequential_12/lstm_12/lstm_cell_12/Relu_1Relu,sequential_12/lstm_12/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЬ
(sequential_12/lstm_12/lstm_cell_12/mul_2Mul0sequential_12/lstm_12/lstm_cell_12/Sigmoid_2:y:07sequential_12/lstm_12/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
3sequential_12/lstm_12/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   њ
%sequential_12/lstm_12/TensorArrayV2_1TensorListReserve<sequential_12/lstm_12/TensorArrayV2_1/element_shape:output:0.sequential_12/lstm_12/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
sequential_12/lstm_12/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_12/lstm_12/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(sequential_12/lstm_12/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : И
sequential_12/lstm_12/whileWhile1sequential_12/lstm_12/while/loop_counter:output:07sequential_12/lstm_12/while/maximum_iterations:output:0#sequential_12/lstm_12/time:output:0.sequential_12/lstm_12/TensorArrayV2_1:handle:0$sequential_12/lstm_12/zeros:output:0&sequential_12/lstm_12/zeros_1:output:0.sequential_12/lstm_12/strided_slice_1:output:0Msequential_12/lstm_12/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_12_lstm_12_lstm_cell_12_matmul_readvariableop_resourceCsequential_12_lstm_12_lstm_cell_12_matmul_1_readvariableop_resourceBsequential_12_lstm_12_lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_12_lstm_12_while_body_2698495*4
cond,R*
(sequential_12_lstm_12_while_cond_2698494*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
Fsequential_12/lstm_12/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
8sequential_12/lstm_12/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_12/lstm_12/while:output:3Osequential_12/lstm_12/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2џџџџџџџџџ*
element_dtype0~
+sequential_12/lstm_12/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-sequential_12/lstm_12/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_12/lstm_12/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
%sequential_12/lstm_12/strided_slice_3StridedSliceAsequential_12/lstm_12/TensorArrayV2Stack/TensorListStack:tensor:04sequential_12/lstm_12/strided_slice_3/stack:output:06sequential_12/lstm_12/strided_slice_3/stack_1:output:06sequential_12/lstm_12/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask{
&sequential_12/lstm_12/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          и
!sequential_12/lstm_12/transpose_1	TransposeAsequential_12/lstm_12/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_12/lstm_12/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2q
sequential_12/lstm_12/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
!sequential_12/dropout_36/IdentityIdentity%sequential_12/lstm_12/transpose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2o
sequential_12/flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  Г
 sequential_12/flatten_12/ReshapeReshape*sequential_12/dropout_36/Identity:output:0'sequential_12/flatten_12/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
Є
,sequential_12/dense_48/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_48_matmul_readvariableop_resource* 
_output_shapes
:

'*
dtype0Л
sequential_12/dense_48/MatMulMatMul)sequential_12/flatten_12/Reshape:output:04sequential_12/dense_48/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ'Ё
-sequential_12/dense_48/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_48_biasadd_readvariableop_resource*
_output_shapes	
:'*
dtype0М
sequential_12/dense_48/BiasAddBiasAdd'sequential_12/dense_48/MatMul:product:05sequential_12/dense_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ'
sequential_12/dense_48/ReluRelu'sequential_12/dense_48/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ'
!sequential_12/dropout_37/IdentityIdentity)sequential_12/dense_48/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ'Є
,sequential_12/dense_49/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_49_matmul_readvariableop_resource* 
_output_shapes
:
'м*
dtype0М
sequential_12/dense_49/MatMulMatMul*sequential_12/dropout_37/Identity:output:04sequential_12/dense_49/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџмЁ
-sequential_12/dense_49/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_49_biasadd_readvariableop_resource*
_output_shapes	
:м*
dtype0М
sequential_12/dense_49/BiasAddBiasAdd'sequential_12/dense_49/MatMul:product:05sequential_12/dense_49/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџм
sequential_12/dense_49/ReluRelu'sequential_12/dense_49/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџмЄ
,sequential_12/dense_50/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_50_matmul_readvariableop_resource* 
_output_shapes
:
м *
dtype0Л
sequential_12/dense_50/MatMulMatMul)sequential_12/dense_49/Relu:activations:04sequential_12/dense_50/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Ё
-sequential_12/dense_50/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_50_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0М
sequential_12/dense_50/BiasAddBiasAdd'sequential_12/dense_50/MatMul:product:05sequential_12/dense_50/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
sequential_12/dense_50/ReluRelu'sequential_12/dense_50/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ 
!sequential_12/dropout_38/IdentityIdentity)sequential_12/dense_50/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ Ѓ
,sequential_12/dense_51/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_51_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0Л
sequential_12/dense_51/MatMulMatMul*sequential_12/dropout_38/Identity:output:04sequential_12/dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_12/dense_51/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_12/dense_51/BiasAddBiasAdd'sequential_12/dense_51/MatMul:product:05sequential_12/dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
sequential_12/dense_51/SoftmaxSoftmax'sequential_12/dense_51/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
IdentityIdentity(sequential_12/dense_51/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp.^sequential_12/dense_48/BiasAdd/ReadVariableOp-^sequential_12/dense_48/MatMul/ReadVariableOp.^sequential_12/dense_49/BiasAdd/ReadVariableOp-^sequential_12/dense_49/MatMul/ReadVariableOp.^sequential_12/dense_50/BiasAdd/ReadVariableOp-^sequential_12/dense_50/MatMul/ReadVariableOp.^sequential_12/dense_51/BiasAdd/ReadVariableOp-^sequential_12/dense_51/MatMul/ReadVariableOp:^sequential_12/lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp9^sequential_12/lstm_12/lstm_cell_12/MatMul/ReadVariableOp;^sequential_12/lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp^sequential_12/lstm_12/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ2: : : : : : : : : : : 2^
-sequential_12/dense_48/BiasAdd/ReadVariableOp-sequential_12/dense_48/BiasAdd/ReadVariableOp2\
,sequential_12/dense_48/MatMul/ReadVariableOp,sequential_12/dense_48/MatMul/ReadVariableOp2^
-sequential_12/dense_49/BiasAdd/ReadVariableOp-sequential_12/dense_49/BiasAdd/ReadVariableOp2\
,sequential_12/dense_49/MatMul/ReadVariableOp,sequential_12/dense_49/MatMul/ReadVariableOp2^
-sequential_12/dense_50/BiasAdd/ReadVariableOp-sequential_12/dense_50/BiasAdd/ReadVariableOp2\
,sequential_12/dense_50/MatMul/ReadVariableOp,sequential_12/dense_50/MatMul/ReadVariableOp2^
-sequential_12/dense_51/BiasAdd/ReadVariableOp-sequential_12/dense_51/BiasAdd/ReadVariableOp2\
,sequential_12/dense_51/MatMul/ReadVariableOp,sequential_12/dense_51/MatMul/ReadVariableOp2v
9sequential_12/lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp9sequential_12/lstm_12/lstm_cell_12/BiasAdd/ReadVariableOp2t
8sequential_12/lstm_12/lstm_cell_12/MatMul/ReadVariableOp8sequential_12/lstm_12/lstm_cell_12/MatMul/ReadVariableOp2x
:sequential_12/lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp:sequential_12/lstm_12/lstm_cell_12/MatMul_1/ReadVariableOp2:
sequential_12/lstm_12/whilesequential_12/lstm_12/while:Z V
+
_output_shapes
:џџџџџџџџџ2
'
_user_specified_namelstm_12_input"лL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Л
serving_defaultЇ
K
lstm_12_input:
serving_default_lstm_12_input:0џџџџџџџџџ2<
dense_510
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Ра
н
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
к
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
М
	variables
trainable_variables
regularization_losses
	keras_api
 _random_generator
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
М
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5_random_generator
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

@kernel
Abias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
М
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L_random_generator
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
Џ
Witer

Xbeta_1

Ybeta_2
	Zdecay
[learning_rate)mЋ*mЌ8m­9mЎ@mЏAmАOmБPmВ\mГ]mД^mЕ)vЖ*vЗ8vИ9vЙ@vКAvЛOvМPvН\vО]vП^vР"
	optimizer
n
\0
]1
^2
)3
*4
85
96
@7
A8
O9
P10"
trackable_list_wrapper
n
\0
]1
^2
)3
*4
85
96
@7
A8
O9
P10"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
/__inference_sequential_12_layer_call_fn_2699242
/__inference_sequential_12_layer_call_fn_2699741
/__inference_sequential_12_layer_call_fn_2699768
/__inference_sequential_12_layer_call_fn_2699638Р
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
і2ѓ
J__inference_sequential_12_layer_call_and_return_conditional_losses_2699944
J__inference_sequential_12_layer_call_and_return_conditional_losses_2700141
J__inference_sequential_12_layer_call_and_return_conditional_losses_2699673
J__inference_sequential_12_layer_call_and_return_conditional_losses_2699708Р
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
гBа
"__inference__wrapped_model_2698612lstm_12_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
,
dserving_default"
signature_map
ј
e
state_size

\kernel
]recurrent_kernel
^bias
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j_random_generator
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
\0
]1
^2"
trackable_list_wrapper
5
\0
]1
^2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

mstates
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
)__inference_lstm_12_layer_call_fn_2700181
)__inference_lstm_12_layer_call_fn_2700192
)__inference_lstm_12_layer_call_fn_2700203
)__inference_lstm_12_layer_call_fn_2700214е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ѓ2№
D__inference_lstm_12_layer_call_and_return_conditional_losses_2700357
D__inference_lstm_12_layer_call_and_return_conditional_losses_2700500
D__inference_lstm_12_layer_call_and_return_conditional_losses_2700643
D__inference_lstm_12_layer_call_and_return_conditional_losses_2700786е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_36_layer_call_fn_2700791
,__inference_dropout_36_layer_call_fn_2700796Д
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
Ь2Щ
G__inference_dropout_36_layer_call_and_return_conditional_losses_2700801
G__inference_dropout_36_layer_call_and_return_conditional_losses_2700813Д
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
ж2г
,__inference_flatten_12_layer_call_fn_2700818Ђ
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
ё2ю
G__inference_flatten_12_layer_call_and_return_conditional_losses_2700824Ђ
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
#:!

'2dense_48/kernel
:'2dense_48/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
Џ
}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
д2б
*__inference_dense_48_layer_call_fn_2700833Ђ
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
я2ь
E__inference_dense_48_layer_call_and_return_conditional_losses_2700844Ђ
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
1	variables
2trainable_variables
3regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_37_layer_call_fn_2700849
,__inference_dropout_37_layer_call_fn_2700854Д
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
Ь2Щ
G__inference_dropout_37_layer_call_and_return_conditional_losses_2700859
G__inference_dropout_37_layer_call_and_return_conditional_losses_2700871Д
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
#:!
'м2dense_49/kernel
:м2dense_49/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
д2б
*__inference_dense_49_layer_call_fn_2700880Ђ
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
я2ь
E__inference_dense_49_layer_call_and_return_conditional_losses_2700891Ђ
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
#:!
м 2dense_50/kernel
: 2dense_50/bias
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
д2б
*__inference_dense_50_layer_call_fn_2700900Ђ
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
я2ь
E__inference_dense_50_layer_call_and_return_conditional_losses_2700911Ђ
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_38_layer_call_fn_2700916
,__inference_dropout_38_layer_call_fn_2700921Д
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
Ь2Щ
G__inference_dropout_38_layer_call_and_return_conditional_losses_2700926
G__inference_dropout_38_layer_call_and_return_conditional_losses_2700938Д
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
": 	 2dense_51/kernel
:2dense_51/bias
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
д2б
*__inference_dense_51_layer_call_fn_2700947Ђ
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
я2ь
E__inference_dense_51_layer_call_and_return_conditional_losses_2700958Ђ
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+h2lstm_12/lstm_cell_12/kernel
7:5h2%lstm_12/lstm_cell_12/recurrent_kernel
':%h2lstm_12/lstm_cell_12/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
вBЯ
%__inference_signature_wrapper_2700170lstm_12_input"
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
 
 "
trackable_list_wrapper
5
\0
]1
^2"
trackable_list_wrapper
5
\0
]1
^2"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Є2Ё
.__inference_lstm_cell_12_layer_call_fn_2700975
.__inference_lstm_cell_12_layer_call_fn_2700992О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

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
к2з
I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2701024
I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2701056О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
R

Ђtotal

Ѓcount
Є	variables
Ѕ	keras_api"
_tf_keras_metric
c

Іtotal

Їcount
Ј
_fn_kwargs
Љ	variables
Њ	keras_api"
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
Ђ0
Ѓ1"
trackable_list_wrapper
.
Є	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
І0
Ї1"
trackable_list_wrapper
.
Љ	variables"
_generic_user_object
(:&

'2Adam/dense_48/kernel/m
!:'2Adam/dense_48/bias/m
(:&
'м2Adam/dense_49/kernel/m
!:м2Adam/dense_49/bias/m
(:&
м 2Adam/dense_50/kernel/m
!: 2Adam/dense_50/bias/m
':%	 2Adam/dense_51/kernel/m
 :2Adam/dense_51/bias/m
2:0h2"Adam/lstm_12/lstm_cell_12/kernel/m
<::h2,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m
,:*h2 Adam/lstm_12/lstm_cell_12/bias/m
(:&

'2Adam/dense_48/kernel/v
!:'2Adam/dense_48/bias/v
(:&
'м2Adam/dense_49/kernel/v
!:м2Adam/dense_49/bias/v
(:&
м 2Adam/dense_50/kernel/v
!: 2Adam/dense_50/bias/v
':%	 2Adam/dense_51/kernel/v
 :2Adam/dense_51/bias/v
2:0h2"Adam/lstm_12/lstm_cell_12/kernel/v
<::h2,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v
,:*h2 Adam/lstm_12/lstm_cell_12/bias/vЄ
"__inference__wrapped_model_2698612~\]^)*89@AOP:Ђ7
0Ђ-
+(
lstm_12_inputџџџџџџџџџ2
Њ "3Њ0
.
dense_51"
dense_51џџџџџџџџџЇ
E__inference_dense_48_layer_call_and_return_conditional_losses_2700844^)*0Ђ-
&Ђ#
!
inputsџџџџџџџџџ

Њ "&Ђ#

0џџџџџџџџџ'
 
*__inference_dense_48_layer_call_fn_2700833Q)*0Ђ-
&Ђ#
!
inputsџџџџџџџџџ

Њ "џџџџџџџџџ'Ї
E__inference_dense_49_layer_call_and_return_conditional_losses_2700891^890Ђ-
&Ђ#
!
inputsџџџџџџџџџ'
Њ "&Ђ#

0џџџџџџџџџм
 
*__inference_dense_49_layer_call_fn_2700880Q890Ђ-
&Ђ#
!
inputsџџџџџџџџџ'
Њ "џџџџџџџџџмЇ
E__inference_dense_50_layer_call_and_return_conditional_losses_2700911^@A0Ђ-
&Ђ#
!
inputsџџџџџџџџџм
Њ "&Ђ#

0џџџџџџџџџ 
 
*__inference_dense_50_layer_call_fn_2700900Q@A0Ђ-
&Ђ#
!
inputsџџџџџџџџџм
Њ "џџџџџџџџџ І
E__inference_dense_51_layer_call_and_return_conditional_losses_2700958]OP0Ђ-
&Ђ#
!
inputsџџџџџџџџџ 
Њ "%Ђ"

0џџџџџџџџџ
 ~
*__inference_dense_51_layer_call_fn_2700947POP0Ђ-
&Ђ#
!
inputsџџџџџџџџџ 
Њ "џџџџџџџџџЏ
G__inference_dropout_36_layer_call_and_return_conditional_losses_2700801d7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p 
Њ ")Ђ&

0џџџџџџџџџ2
 Џ
G__inference_dropout_36_layer_call_and_return_conditional_losses_2700813d7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p
Њ ")Ђ&

0џџџџџџџџџ2
 
,__inference_dropout_36_layer_call_fn_2700791W7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p 
Њ "џџџџџџџџџ2
,__inference_dropout_36_layer_call_fn_2700796W7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p
Њ "џџџџџџџџџ2Љ
G__inference_dropout_37_layer_call_and_return_conditional_losses_2700859^4Ђ1
*Ђ'
!
inputsџџџџџџџџџ'
p 
Њ "&Ђ#

0џџџџџџџџџ'
 Љ
G__inference_dropout_37_layer_call_and_return_conditional_losses_2700871^4Ђ1
*Ђ'
!
inputsџџџџџџџџџ'
p
Њ "&Ђ#

0џџџџџџџџџ'
 
,__inference_dropout_37_layer_call_fn_2700849Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџ'
p 
Њ "џџџџџџџџџ'
,__inference_dropout_37_layer_call_fn_2700854Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџ'
p
Њ "џџџџџџџџџ'Љ
G__inference_dropout_38_layer_call_and_return_conditional_losses_2700926^4Ђ1
*Ђ'
!
inputsџџџџџџџџџ 
p 
Њ "&Ђ#

0џџџџџџџџџ 
 Љ
G__inference_dropout_38_layer_call_and_return_conditional_losses_2700938^4Ђ1
*Ђ'
!
inputsџџџџџџџџџ 
p
Њ "&Ђ#

0џџџџџџџџџ 
 
,__inference_dropout_38_layer_call_fn_2700916Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџ 
p 
Њ "џџџџџџџџџ 
,__inference_dropout_38_layer_call_fn_2700921Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџ 
p
Њ "џџџџџџџџџ Ј
G__inference_flatten_12_layer_call_and_return_conditional_losses_2700824]3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ2
Њ "&Ђ#

0џџџџџџџџџ

 
,__inference_flatten_12_layer_call_fn_2700818P3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ2
Њ "џџџџџџџџџ
г
D__inference_lstm_12_layer_call_and_return_conditional_losses_2700357\]^OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ
 г
D__inference_lstm_12_layer_call_and_return_conditional_losses_2700500\]^OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ
 Й
D__inference_lstm_12_layer_call_and_return_conditional_losses_2700643q\]^?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ ")Ђ&

0џџџџџџџџџ2
 Й
D__inference_lstm_12_layer_call_and_return_conditional_losses_2700786q\]^?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ ")Ђ&

0џџџџџџџџџ2
 Њ
)__inference_lstm_12_layer_call_fn_2700181}\]^OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџЊ
)__inference_lstm_12_layer_call_fn_2700192}\]^OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџ
)__inference_lstm_12_layer_call_fn_2700203d\]^?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ "џџџџџџџџџ2
)__inference_lstm_12_layer_call_fn_2700214d\]^?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "џџџџџџџџџ2Ы
I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2701024§\]^Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ
"
states/1џџџџџџџџџ
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџ
EB

0/1/0џџџџџџџџџ

0/1/1џџџџџџџџџ
 Ы
I__inference_lstm_cell_12_layer_call_and_return_conditional_losses_2701056§\]^Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ
"
states/1џџџџџџџџџ
p
Њ "sЂp
iЂf

0/0џџџџџџџџџ
EB

0/1/0џџџџџџџџџ

0/1/1џџџџџџџџџ
  
.__inference_lstm_cell_12_layer_call_fn_2700975э\]^Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ
"
states/1џџџџџџџџџ
p 
Њ "cЂ`

0џџџџџџџџџ
A>

1/0џџџџџџџџџ

1/1џџџџџџџџџ 
.__inference_lstm_cell_12_layer_call_fn_2700992э\]^Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ
"
states/1џџџџџџџџџ
p
Њ "cЂ`

0џџџџџџџџџ
A>

1/0џџџџџџџџџ

1/1џџџџџџџџџЦ
J__inference_sequential_12_layer_call_and_return_conditional_losses_2699673x\]^)*89@AOPBЂ?
8Ђ5
+(
lstm_12_inputџџџџџџџџџ2
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ц
J__inference_sequential_12_layer_call_and_return_conditional_losses_2699708x\]^)*89@AOPBЂ?
8Ђ5
+(
lstm_12_inputџџџџџџџџџ2
p

 
Њ "%Ђ"

0џџџџџџџџџ
 П
J__inference_sequential_12_layer_call_and_return_conditional_losses_2699944q\]^)*89@AOP;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ2
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 П
J__inference_sequential_12_layer_call_and_return_conditional_losses_2700141q\]^)*89@AOP;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ2
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
/__inference_sequential_12_layer_call_fn_2699242k\]^)*89@AOPBЂ?
8Ђ5
+(
lstm_12_inputџџџџџџџџџ2
p 

 
Њ "џџџџџџџџџ
/__inference_sequential_12_layer_call_fn_2699638k\]^)*89@AOPBЂ?
8Ђ5
+(
lstm_12_inputџџџџџџџџџ2
p

 
Њ "џџџџџџџџџ
/__inference_sequential_12_layer_call_fn_2699741d\]^)*89@AOP;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ2
p 

 
Њ "џџџџџџџџџ
/__inference_sequential_12_layer_call_fn_2699768d\]^)*89@AOP;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ2
p

 
Њ "џџџџџџџџџЙ
%__inference_signature_wrapper_2700170\]^)*89@AOPKЂH
Ђ 
AЊ>
<
lstm_12_input+(
lstm_12_inputџџџџџџџџџ2"3Њ0
.
dense_51"
dense_51џџџџџџџџџ