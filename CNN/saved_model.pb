��
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
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
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
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
Ttype"
Indextype:
2	"

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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��
�
Adam/dense_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*%
shared_nameAdam/dense_27/bias/v
y
(Adam/dense_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/v*
_output_shapes
:$*
dtype0
�
Adam/dense_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: $*'
shared_nameAdam/dense_27/kernel/v
�
*Adam/dense_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/v*
_output_shapes

: $*
dtype0
�
Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_26/bias/v
y
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_26/kernel/v
�
*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v*
_output_shapes

:@ *
dtype0
�
Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_25/bias/v
y
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@*'
shared_nameAdam/dense_25/kernel/v
�
*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v* 
_output_shapes
:
��@*
dtype0
�
Adam/conv2d_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_29/bias/v
{
)Adam/conv2d_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_29/kernel/v
�
+Adam/conv2d_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_28/bias/v
{
)Adam/conv2d_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_28/kernel/v
�
+Adam/conv2d_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/v*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_27/bias/v
{
)Adam/conv2d_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv2d_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_27/kernel/v
�
+Adam/conv2d_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/v*&
_output_shapes
: *
dtype0
�
Adam/dense_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*%
shared_nameAdam/dense_27/bias/m
y
(Adam/dense_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/m*
_output_shapes
:$*
dtype0
�
Adam/dense_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: $*'
shared_nameAdam/dense_27/kernel/m
�
*Adam/dense_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/m*
_output_shapes

: $*
dtype0
�
Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_26/bias/m
y
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_26/kernel/m
�
*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m*
_output_shapes

:@ *
dtype0
�
Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_25/bias/m
y
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@*'
shared_nameAdam/dense_25/kernel/m
�
*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m* 
_output_shapes
:
��@*
dtype0
�
Adam/conv2d_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_29/bias/m
{
)Adam/conv2d_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_29/kernel/m
�
+Adam/conv2d_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_28/bias/m
{
)Adam/conv2d_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_28/kernel/m
�
+Adam/conv2d_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/m*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_27/bias/m
{
)Adam/conv2d_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv2d_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_27/kernel/m
�
+Adam/conv2d_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/m*&
_output_shapes
: *
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
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
:$*
dtype0
z
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: $* 
shared_namedense_27/kernel
s
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes

: $*
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
: *
dtype0
z
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_26/kernel
s
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes

:@ *
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:@*
dtype0
|
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@* 
shared_namedense_25/kernel
u
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel* 
_output_shapes
:
��@*
dtype0
t
conv2d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_29/bias
m
"conv2d_29/bias/Read/ReadVariableOpReadVariableOpconv2d_29/bias*
_output_shapes
:@*
dtype0
�
conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_29/kernel
}
$conv2d_29/kernel/Read/ReadVariableOpReadVariableOpconv2d_29/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_28/bias
m
"conv2d_28/bias/Read/ReadVariableOpReadVariableOpconv2d_28/bias*
_output_shapes
:@*
dtype0
�
conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_28/kernel
}
$conv2d_28/kernel/Read/ReadVariableOpReadVariableOpconv2d_28/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_27/bias
m
"conv2d_27/bias/Read/ReadVariableOpReadVariableOpconv2d_27/bias*
_output_shapes
: *
dtype0
�
conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_27/kernel
}
$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*&
_output_shapes
: *
dtype0
�
melspectrogram_9/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��**
shared_namemelspectrogram_9/Variable
�
-melspectrogram_9/Variable/Read/ReadVariableOpReadVariableOpmelspectrogram_9/Variable* 
_output_shapes
:
��*
dtype0
�
melspectrogram_9/imag_kernelsVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*.
shared_namemelspectrogram_9/imag_kernels
�
1melspectrogram_9/imag_kernels/Read/ReadVariableOpReadVariableOpmelspectrogram_9/imag_kernels*(
_output_shapes
:��*
dtype0
�
melspectrogram_9/real_kernelsVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*.
shared_namemelspectrogram_9/real_kernels
�
1melspectrogram_9/real_kernels/Read/ReadVariableOpReadVariableOpmelspectrogram_9/real_kernels*(
_output_shapes
:��*
dtype0

NoOpNoOp
�w
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�v
value�vB�v B�v
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$dft_real_kernels
%dft_imag_kernels
&freq2mel*
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op*
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses
<_random_generator* 
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias
 E_jit_compiled_convolution_op*
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses* 
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
R_random_generator* 
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

Ykernel
Zbias
 [_jit_compiled_convolution_op*
�
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses* 
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

hkernel
ibias*
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
p_random_generator* 
�
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

wkernel
xbias*
�
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

kernel
	�bias*
s
$0
%1
&2
-3
.4
C5
D6
Y7
Z8
h9
i10
w11
x12
13
�14*
[
-0
.1
C2
D3
Y4
Z5
h6
i7
w8
x9
10
�11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate-m�.m�Cm�Dm�Ym�Zm�hm�im�wm�xm�m�	�m�-v�.v�Cv�Dv�Yv�Zv�hv�iv�wv�xv�v�	�v�*

�serving_default* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

$0
%1
&2*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
wq
VARIABLE_VALUEmelspectrogram_9/real_kernels@layer_with_weights-0/dft_real_kernels/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEmelspectrogram_9/imag_kernels@layer_with_weights-0/dft_imag_kernels/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEmelspectrogram_9/Variable8layer_with_weights-0/freq2mel/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_27/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_27/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

C0
D1*

C0
D1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_28/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_28/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

Y0
Z1*

Y0
Z1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_29/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_29/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

h0
i1*

h0
i1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_25/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

w0
x1*

w0
x1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_26/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
�1*

0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_27/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_27/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1
&2*
j
0
1
2
3
4
5
6
7
	8

9
10
11
12
13*

�0
�1*
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
* 
* 
* 
* 
* 
* 
* 
* 

$0
%1
&2*
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
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�}
VARIABLE_VALUEAdam/conv2d_27/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_27/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_28/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_28/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_29/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_29/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_25/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_25/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_26/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_26/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_27/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_27/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_27/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_27/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_28/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_28/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_29/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_29/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_25/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_25/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_26/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_26/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_27/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_27/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
serving_default_input_10Placeholder*(
_output_shapes
:����������}*
dtype0*
shape:����������}
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_10melspectrogram_9/real_kernelsmelspectrogram_9/imag_kernelsmelspectrogram_9/Variableconv2d_27/kernelconv2d_27/biasconv2d_28/kernelconv2d_28/biasconv2d_29/kernelconv2d_29/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_217043
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename1melspectrogram_9/real_kernels/Read/ReadVariableOp1melspectrogram_9/imag_kernels/Read/ReadVariableOp-melspectrogram_9/Variable/Read/ReadVariableOp$conv2d_27/kernel/Read/ReadVariableOp"conv2d_27/bias/Read/ReadVariableOp$conv2d_28/kernel/Read/ReadVariableOp"conv2d_28/bias/Read/ReadVariableOp$conv2d_29/kernel/Read/ReadVariableOp"conv2d_29/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_27/kernel/m/Read/ReadVariableOp)Adam/conv2d_27/bias/m/Read/ReadVariableOp+Adam/conv2d_28/kernel/m/Read/ReadVariableOp)Adam/conv2d_28/bias/m/Read/ReadVariableOp+Adam/conv2d_29/kernel/m/Read/ReadVariableOp)Adam/conv2d_29/bias/m/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp*Adam/dense_27/kernel/m/Read/ReadVariableOp(Adam/dense_27/bias/m/Read/ReadVariableOp+Adam/conv2d_27/kernel/v/Read/ReadVariableOp)Adam/conv2d_27/bias/v/Read/ReadVariableOp+Adam/conv2d_28/kernel/v/Read/ReadVariableOp)Adam/conv2d_28/bias/v/Read/ReadVariableOp+Adam/conv2d_29/kernel/v/Read/ReadVariableOp)Adam/conv2d_29/bias/v/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp*Adam/dense_27/kernel/v/Read/ReadVariableOp(Adam/dense_27/bias/v/Read/ReadVariableOpConst*=
Tin6
422	*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_217849
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemelspectrogram_9/real_kernelsmelspectrogram_9/imag_kernelsmelspectrogram_9/Variableconv2d_27/kernelconv2d_27/biasconv2d_28/kernelconv2d_28/biasconv2d_29/kernelconv2d_29/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_27/kernel/mAdam/conv2d_27/bias/mAdam/conv2d_28/kernel/mAdam/conv2d_28/bias/mAdam/conv2d_29/kernel/mAdam/conv2d_29/bias/mAdam/dense_25/kernel/mAdam/dense_25/bias/mAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/dense_27/kernel/mAdam/dense_27/bias/mAdam/conv2d_27/kernel/vAdam/conv2d_27/bias/vAdam/conv2d_28/kernel/vAdam/conv2d_28/bias/vAdam/conv2d_29/kernel/vAdam/conv2d_29/bias/vAdam/dense_25/kernel/vAdam/dense_25/bias/vAdam/dense_26/kernel/vAdam/dense_26/bias/vAdam/dense_27/kernel/vAdam/dense_27/bias/v*<
Tin5
321*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_218003��
�
�
-__inference_sequential_9_layer_call_fn_216904
input_10#
unknown:��%
	unknown_0:��
	unknown_1:
��#
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@#
	unknown_6:@@
	unknown_7:@
	unknown_8:
��@
	unknown_9:@

unknown_10:@ 

unknown_11: 

unknown_12: $

unknown_13:$
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_216836o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������}: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:����������}
"
_user_specified_name
input_10
��
�
!__inference__wrapped_model_216320
input_10]
Asequential_9_melspectrogram_9_convolution_readvariableop_resource:��_
Csequential_9_melspectrogram_9_convolution_1_readvariableop_resource:��Q
=sequential_9_melspectrogram_9_shape_1_readvariableop_resource:
��O
5sequential_9_conv2d_27_conv2d_readvariableop_resource: D
6sequential_9_conv2d_27_biasadd_readvariableop_resource: O
5sequential_9_conv2d_28_conv2d_readvariableop_resource: @D
6sequential_9_conv2d_28_biasadd_readvariableop_resource:@O
5sequential_9_conv2d_29_conv2d_readvariableop_resource:@@D
6sequential_9_conv2d_29_biasadd_readvariableop_resource:@H
4sequential_9_dense_25_matmul_readvariableop_resource:
��@C
5sequential_9_dense_25_biasadd_readvariableop_resource:@F
4sequential_9_dense_26_matmul_readvariableop_resource:@ C
5sequential_9_dense_26_biasadd_readvariableop_resource: F
4sequential_9_dense_27_matmul_readvariableop_resource: $C
5sequential_9_dense_27_biasadd_readvariableop_resource:$
identity��-sequential_9/conv2d_27/BiasAdd/ReadVariableOp�,sequential_9/conv2d_27/Conv2D/ReadVariableOp�-sequential_9/conv2d_28/BiasAdd/ReadVariableOp�,sequential_9/conv2d_28/Conv2D/ReadVariableOp�-sequential_9/conv2d_29/BiasAdd/ReadVariableOp�,sequential_9/conv2d_29/Conv2D/ReadVariableOp�,sequential_9/dense_25/BiasAdd/ReadVariableOp�+sequential_9/dense_25/MatMul/ReadVariableOp�,sequential_9/dense_26/BiasAdd/ReadVariableOp�+sequential_9/dense_26/MatMul/ReadVariableOp�,sequential_9/dense_27/BiasAdd/ReadVariableOp�+sequential_9/dense_27/MatMul/ReadVariableOp�8sequential_9/melspectrogram_9/convolution/ReadVariableOp�:sequential_9/melspectrogram_9/convolution_1/ReadVariableOp�8sequential_9/melspectrogram_9/transpose_3/ReadVariableOpT
sequential_9/reshape_9/ShapeShapeinput_10*
T0*
_output_shapes
:t
*sequential_9/reshape_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_9/reshape_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_9/reshape_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential_9/reshape_9/strided_sliceStridedSlice%sequential_9/reshape_9/Shape:output:03sequential_9/reshape_9/strided_slice/stack:output:05sequential_9/reshape_9/strided_slice/stack_1:output:05sequential_9/reshape_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_9/reshape_9/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :q
&sequential_9/reshape_9/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
$sequential_9/reshape_9/Reshape/shapePack-sequential_9/reshape_9/strided_slice:output:0/sequential_9/reshape_9/Reshape/shape/1:output:0/sequential_9/reshape_9/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
sequential_9/reshape_9/ReshapeReshapeinput_10-sequential_9/reshape_9/Reshape/shape:output:0*
T0*,
_output_shapes
:����������}�
1sequential_9/melspectrogram_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
3sequential_9/melspectrogram_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
3sequential_9/melspectrogram_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
+sequential_9/melspectrogram_9/strided_sliceStridedSlice'sequential_9/reshape_9/Reshape:output:0:sequential_9/melspectrogram_9/strided_slice/stack:output:0<sequential_9/melspectrogram_9/strided_slice/stack_1:output:0<sequential_9/melspectrogram_9/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������}*

begin_mask*
end_mask�
,sequential_9/melspectrogram_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'sequential_9/melspectrogram_9/transpose	Transpose4sequential_9/melspectrogram_9/strided_slice:output:05sequential_9/melspectrogram_9/transpose/perm:output:0*
T0*,
_output_shapes
:����������}n
,sequential_9/melspectrogram_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
(sequential_9/melspectrogram_9/ExpandDims
ExpandDims+sequential_9/melspectrogram_9/transpose:y:05sequential_9/melspectrogram_9/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������}�
8sequential_9/melspectrogram_9/convolution/ReadVariableOpReadVariableOpAsequential_9_melspectrogram_9_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
)sequential_9/melspectrogram_9/convolutionConv2D1sequential_9/melspectrogram_9/ExpandDims:output:0@sequential_9/melspectrogram_9/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������?�*
paddingSAME*
strides	
��
:sequential_9/melspectrogram_9/convolution_1/ReadVariableOpReadVariableOpCsequential_9_melspectrogram_9_convolution_1_readvariableop_resource*(
_output_shapes
:��*
dtype0�
+sequential_9/melspectrogram_9/convolution_1Conv2D1sequential_9/melspectrogram_9/ExpandDims:output:0Bsequential_9/melspectrogram_9/convolution_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������?�*
paddingSAME*
strides	
�h
#sequential_9/melspectrogram_9/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
!sequential_9/melspectrogram_9/powPow2sequential_9/melspectrogram_9/convolution:output:0,sequential_9/melspectrogram_9/pow/y:output:0*
T0*0
_output_shapes
:���������?�j
%sequential_9/melspectrogram_9/pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
#sequential_9/melspectrogram_9/pow_1Pow4sequential_9/melspectrogram_9/convolution_1:output:0.sequential_9/melspectrogram_9/pow_1/y:output:0*
T0*0
_output_shapes
:���������?��
!sequential_9/melspectrogram_9/addAddV2%sequential_9/melspectrogram_9/pow:z:0'sequential_9/melspectrogram_9/pow_1:z:0*
T0*0
_output_shapes
:���������?��
.sequential_9/melspectrogram_9/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
)sequential_9/melspectrogram_9/transpose_1	Transpose%sequential_9/melspectrogram_9/add:z:07sequential_9/melspectrogram_9/transpose_1/perm:output:0*
T0*0
_output_shapes
:����������?�
.sequential_9/melspectrogram_9/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
)sequential_9/melspectrogram_9/transpose_2	Transpose-sequential_9/melspectrogram_9/transpose_1:y:07sequential_9/melspectrogram_9/transpose_2/perm:output:0*
T0*0
_output_shapes
:���������?��
#sequential_9/melspectrogram_9/ShapeShape-sequential_9/melspectrogram_9/transpose_2:y:0*
T0*
_output_shapes
:�
%sequential_9/melspectrogram_9/unstackUnpack,sequential_9/melspectrogram_9/Shape:output:0*
T0*
_output_shapes

: : : : *	
num�
4sequential_9/melspectrogram_9/Shape_1/ReadVariableOpReadVariableOp=sequential_9_melspectrogram_9_shape_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0v
%sequential_9/melspectrogram_9/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"  �   �
'sequential_9/melspectrogram_9/unstack_1Unpack.sequential_9/melspectrogram_9/Shape_1:output:0*
T0*
_output_shapes
: : *	
num|
+sequential_9/melspectrogram_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����  �
%sequential_9/melspectrogram_9/ReshapeReshape-sequential_9/melspectrogram_9/transpose_2:y:04sequential_9/melspectrogram_9/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
8sequential_9/melspectrogram_9/transpose_3/ReadVariableOpReadVariableOp=sequential_9_melspectrogram_9_shape_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0
.sequential_9/melspectrogram_9/transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
)sequential_9/melspectrogram_9/transpose_3	Transpose@sequential_9/melspectrogram_9/transpose_3/ReadVariableOp:value:07sequential_9/melspectrogram_9/transpose_3/perm:output:0*
T0* 
_output_shapes
:
��~
-sequential_9/melspectrogram_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"  �����
'sequential_9/melspectrogram_9/Reshape_1Reshape-sequential_9/melspectrogram_9/transpose_3:y:06sequential_9/melspectrogram_9/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
���
$sequential_9/melspectrogram_9/MatMulMatMul.sequential_9/melspectrogram_9/Reshape:output:00sequential_9/melspectrogram_9/Reshape_1:output:0*
T0*(
_output_shapes
:����������q
/sequential_9/melspectrogram_9/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :q
/sequential_9/melspectrogram_9/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?r
/sequential_9/melspectrogram_9/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
-sequential_9/melspectrogram_9/Reshape_2/shapePack.sequential_9/melspectrogram_9/unstack:output:08sequential_9/melspectrogram_9/Reshape_2/shape/1:output:08sequential_9/melspectrogram_9/Reshape_2/shape/2:output:08sequential_9/melspectrogram_9/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
'sequential_9/melspectrogram_9/Reshape_2Reshape.sequential_9/melspectrogram_9/MatMul:product:06sequential_9/melspectrogram_9/Reshape_2/shape:output:0*
T0*0
_output_shapes
:���������?��
.sequential_9/melspectrogram_9/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
)sequential_9/melspectrogram_9/transpose_4	Transpose0sequential_9/melspectrogram_9/Reshape_2:output:07sequential_9/melspectrogram_9/transpose_4/perm:output:0*
T0*0
_output_shapes
:����������?h
#sequential_9/melspectrogram_9/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%sequential_9/melspectrogram_9/MaximumMaximum-sequential_9/melspectrogram_9/transpose_4:y:0,sequential_9/melspectrogram_9/Const:output:0*
T0*0
_output_shapes
:����������?�
"sequential_9/melspectrogram_9/SqrtSqrt)sequential_9/melspectrogram_9/Maximum:z:0*
T0*0
_output_shapes
:����������?j
%sequential_9/melspectrogram_9/Pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#sequential_9/melspectrogram_9/Pow_2Pow&sequential_9/melspectrogram_9/Sqrt:y:0.sequential_9/melspectrogram_9/Pow_2/y:output:0*
T0*0
_output_shapes
:����������?�
,sequential_9/conv2d_27/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_9/conv2d_27/Conv2DConv2D'sequential_9/melspectrogram_9/Pow_2:z:04sequential_9/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~= *
paddingVALID*
strides
�
-sequential_9/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_9/conv2d_27/BiasAddBiasAdd&sequential_9/conv2d_27/Conv2D:output:05sequential_9/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~= �
sequential_9/conv2d_27/ReluRelu'sequential_9/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:���������~= �
%sequential_9/max_pooling2d_16/MaxPoolMaxPool)sequential_9/conv2d_27/Relu:activations:0*/
_output_shapes
:���������? *
ksize
*
paddingVALID*
strides
�
 sequential_9/dropout_23/IdentityIdentity.sequential_9/max_pooling2d_16/MaxPool:output:0*
T0*/
_output_shapes
:���������? �
,sequential_9/conv2d_28/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
sequential_9/conv2d_28/Conv2DConv2D)sequential_9/dropout_23/Identity:output:04sequential_9/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������=@*
paddingVALID*
strides
�
-sequential_9/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_9/conv2d_28/BiasAddBiasAdd&sequential_9/conv2d_28/Conv2D:output:05sequential_9/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������=@�
sequential_9/conv2d_28/ReluRelu'sequential_9/conv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:���������=@�
%sequential_9/max_pooling2d_17/MaxPoolMaxPool)sequential_9/conv2d_28/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
 sequential_9/dropout_24/IdentityIdentity.sequential_9/max_pooling2d_17/MaxPool:output:0*
T0*/
_output_shapes
:���������@�
,sequential_9/conv2d_29/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential_9/conv2d_29/Conv2DConv2D)sequential_9/dropout_24/Identity:output:04sequential_9/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
-sequential_9/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_9/conv2d_29/BiasAddBiasAdd&sequential_9/conv2d_29/Conv2D:output:05sequential_9/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential_9/conv2d_29/ReluRelu'sequential_9/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:���������@m
sequential_9/flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� T  �
sequential_9/flatten_8/ReshapeReshape)sequential_9/conv2d_29/Relu:activations:0%sequential_9/flatten_8/Const:output:0*
T0*)
_output_shapes
:������������
+sequential_9/dense_25/MatMul/ReadVariableOpReadVariableOp4sequential_9_dense_25_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0�
sequential_9/dense_25/MatMulMatMul'sequential_9/flatten_8/Reshape:output:03sequential_9/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
,sequential_9/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_9_dense_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_9/dense_25/BiasAddBiasAdd&sequential_9/dense_25/MatMul:product:04sequential_9/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@|
sequential_9/dense_25/ReluRelu&sequential_9/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
 sequential_9/dropout_25/IdentityIdentity(sequential_9/dense_25/Relu:activations:0*
T0*'
_output_shapes
:���������@�
+sequential_9/dense_26/MatMul/ReadVariableOpReadVariableOp4sequential_9_dense_26_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
sequential_9/dense_26/MatMulMatMul)sequential_9/dropout_25/Identity:output:03sequential_9/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
,sequential_9/dense_26/BiasAdd/ReadVariableOpReadVariableOp5sequential_9_dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_9/dense_26/BiasAddBiasAdd&sequential_9/dense_26/MatMul:product:04sequential_9/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� |
sequential_9/dense_26/ReluRelu&sequential_9/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
+sequential_9/dense_27/MatMul/ReadVariableOpReadVariableOp4sequential_9_dense_27_matmul_readvariableop_resource*
_output_shapes

: $*
dtype0�
sequential_9/dense_27/MatMulMatMul(sequential_9/dense_26/Relu:activations:03sequential_9/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$�
,sequential_9/dense_27/BiasAdd/ReadVariableOpReadVariableOp5sequential_9_dense_27_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0�
sequential_9/dense_27/BiasAddBiasAdd&sequential_9/dense_27/MatMul:product:04sequential_9/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$�
sequential_9/dense_27/SoftmaxSoftmax&sequential_9/dense_27/BiasAdd:output:0*
T0*'
_output_shapes
:���������$v
IdentityIdentity'sequential_9/dense_27/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������$�
NoOpNoOp.^sequential_9/conv2d_27/BiasAdd/ReadVariableOp-^sequential_9/conv2d_27/Conv2D/ReadVariableOp.^sequential_9/conv2d_28/BiasAdd/ReadVariableOp-^sequential_9/conv2d_28/Conv2D/ReadVariableOp.^sequential_9/conv2d_29/BiasAdd/ReadVariableOp-^sequential_9/conv2d_29/Conv2D/ReadVariableOp-^sequential_9/dense_25/BiasAdd/ReadVariableOp,^sequential_9/dense_25/MatMul/ReadVariableOp-^sequential_9/dense_26/BiasAdd/ReadVariableOp,^sequential_9/dense_26/MatMul/ReadVariableOp-^sequential_9/dense_27/BiasAdd/ReadVariableOp,^sequential_9/dense_27/MatMul/ReadVariableOp9^sequential_9/melspectrogram_9/convolution/ReadVariableOp;^sequential_9/melspectrogram_9/convolution_1/ReadVariableOp9^sequential_9/melspectrogram_9/transpose_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������}: : : : : : : : : : : : : : : 2^
-sequential_9/conv2d_27/BiasAdd/ReadVariableOp-sequential_9/conv2d_27/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_27/Conv2D/ReadVariableOp,sequential_9/conv2d_27/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_28/BiasAdd/ReadVariableOp-sequential_9/conv2d_28/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_28/Conv2D/ReadVariableOp,sequential_9/conv2d_28/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_29/BiasAdd/ReadVariableOp-sequential_9/conv2d_29/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_29/Conv2D/ReadVariableOp,sequential_9/conv2d_29/Conv2D/ReadVariableOp2\
,sequential_9/dense_25/BiasAdd/ReadVariableOp,sequential_9/dense_25/BiasAdd/ReadVariableOp2Z
+sequential_9/dense_25/MatMul/ReadVariableOp+sequential_9/dense_25/MatMul/ReadVariableOp2\
,sequential_9/dense_26/BiasAdd/ReadVariableOp,sequential_9/dense_26/BiasAdd/ReadVariableOp2Z
+sequential_9/dense_26/MatMul/ReadVariableOp+sequential_9/dense_26/MatMul/ReadVariableOp2\
,sequential_9/dense_27/BiasAdd/ReadVariableOp,sequential_9/dense_27/BiasAdd/ReadVariableOp2Z
+sequential_9/dense_27/MatMul/ReadVariableOp+sequential_9/dense_27/MatMul/ReadVariableOp2t
8sequential_9/melspectrogram_9/convolution/ReadVariableOp8sequential_9/melspectrogram_9/convolution/ReadVariableOp2x
:sequential_9/melspectrogram_9/convolution_1/ReadVariableOp:sequential_9/melspectrogram_9/convolution_1/ReadVariableOp2t
8sequential_9/melspectrogram_9/transpose_3/ReadVariableOp8sequential_9/melspectrogram_9/transpose_3/ReadVariableOp:R N
(
_output_shapes
:����������}
"
_user_specified_name
input_10
�
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_217630

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_216504

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� T  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

e
F__inference_dropout_23_layer_call_and_return_conditional_losses_216720

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������? *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������? w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������? q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������? a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������? :W S
/
_output_shapes
:���������? 
 
_user_specified_nameinputs
�
�
*__inference_conv2d_28_layer_call_fn_217516

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������=@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_216467w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������=@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������? 
 
_user_specified_nameinputs
˃
�
H__inference_sequential_9_layer_call_and_return_conditional_losses_217228

inputsP
4melspectrogram_9_convolution_readvariableop_resource:��R
6melspectrogram_9_convolution_1_readvariableop_resource:��D
0melspectrogram_9_shape_1_readvariableop_resource:
��B
(conv2d_27_conv2d_readvariableop_resource: 7
)conv2d_27_biasadd_readvariableop_resource: B
(conv2d_28_conv2d_readvariableop_resource: @7
)conv2d_28_biasadd_readvariableop_resource:@B
(conv2d_29_conv2d_readvariableop_resource:@@7
)conv2d_29_biasadd_readvariableop_resource:@;
'dense_25_matmul_readvariableop_resource:
��@6
(dense_25_biasadd_readvariableop_resource:@9
'dense_26_matmul_readvariableop_resource:@ 6
(dense_26_biasadd_readvariableop_resource: 9
'dense_27_matmul_readvariableop_resource: $6
(dense_27_biasadd_readvariableop_resource:$
identity�� conv2d_27/BiasAdd/ReadVariableOp�conv2d_27/Conv2D/ReadVariableOp� conv2d_28/BiasAdd/ReadVariableOp�conv2d_28/Conv2D/ReadVariableOp� conv2d_29/BiasAdd/ReadVariableOp�conv2d_29/Conv2D/ReadVariableOp�dense_25/BiasAdd/ReadVariableOp�dense_25/MatMul/ReadVariableOp�dense_26/BiasAdd/ReadVariableOp�dense_26/MatMul/ReadVariableOp�dense_27/BiasAdd/ReadVariableOp�dense_27/MatMul/ReadVariableOp�+melspectrogram_9/convolution/ReadVariableOp�-melspectrogram_9/convolution_1/ReadVariableOp�+melspectrogram_9/transpose_3/ReadVariableOpE
reshape_9/ShapeShapeinputs*
T0*
_output_shapes
:g
reshape_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_9/strided_sliceStridedSlicereshape_9/Shape:output:0&reshape_9/strided_slice/stack:output:0(reshape_9/strided_slice/stack_1:output:0(reshape_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_9/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d
reshape_9/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
reshape_9/Reshape/shapePack reshape_9/strided_slice:output:0"reshape_9/Reshape/shape/1:output:0"reshape_9/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:}
reshape_9/ReshapeReshapeinputs reshape_9/Reshape/shape:output:0*
T0*,
_output_shapes
:����������}y
$melspectrogram_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            {
&melspectrogram_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           {
&melspectrogram_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
melspectrogram_9/strided_sliceStridedSlicereshape_9/Reshape:output:0-melspectrogram_9/strided_slice/stack:output:0/melspectrogram_9/strided_slice/stack_1:output:0/melspectrogram_9/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������}*

begin_mask*
end_maskt
melspectrogram_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
melspectrogram_9/transpose	Transpose'melspectrogram_9/strided_slice:output:0(melspectrogram_9/transpose/perm:output:0*
T0*,
_output_shapes
:����������}a
melspectrogram_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
melspectrogram_9/ExpandDims
ExpandDimsmelspectrogram_9/transpose:y:0(melspectrogram_9/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������}�
+melspectrogram_9/convolution/ReadVariableOpReadVariableOp4melspectrogram_9_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
melspectrogram_9/convolutionConv2D$melspectrogram_9/ExpandDims:output:03melspectrogram_9/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������?�*
paddingSAME*
strides	
��
-melspectrogram_9/convolution_1/ReadVariableOpReadVariableOp6melspectrogram_9_convolution_1_readvariableop_resource*(
_output_shapes
:��*
dtype0�
melspectrogram_9/convolution_1Conv2D$melspectrogram_9/ExpandDims:output:05melspectrogram_9/convolution_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������?�*
paddingSAME*
strides	
�[
melspectrogram_9/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
melspectrogram_9/powPow%melspectrogram_9/convolution:output:0melspectrogram_9/pow/y:output:0*
T0*0
_output_shapes
:���������?�]
melspectrogram_9/pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
melspectrogram_9/pow_1Pow'melspectrogram_9/convolution_1:output:0!melspectrogram_9/pow_1/y:output:0*
T0*0
_output_shapes
:���������?��
melspectrogram_9/addAddV2melspectrogram_9/pow:z:0melspectrogram_9/pow_1:z:0*
T0*0
_output_shapes
:���������?�z
!melspectrogram_9/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
melspectrogram_9/transpose_1	Transposemelspectrogram_9/add:z:0*melspectrogram_9/transpose_1/perm:output:0*
T0*0
_output_shapes
:����������?z
!melspectrogram_9/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
melspectrogram_9/transpose_2	Transpose melspectrogram_9/transpose_1:y:0*melspectrogram_9/transpose_2/perm:output:0*
T0*0
_output_shapes
:���������?�f
melspectrogram_9/ShapeShape melspectrogram_9/transpose_2:y:0*
T0*
_output_shapes
:u
melspectrogram_9/unstackUnpackmelspectrogram_9/Shape:output:0*
T0*
_output_shapes

: : : : *	
num�
'melspectrogram_9/Shape_1/ReadVariableOpReadVariableOp0melspectrogram_9_shape_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0i
melspectrogram_9/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"  �   u
melspectrogram_9/unstack_1Unpack!melspectrogram_9/Shape_1:output:0*
T0*
_output_shapes
: : *	
numo
melspectrogram_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����  �
melspectrogram_9/ReshapeReshape melspectrogram_9/transpose_2:y:0'melspectrogram_9/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
+melspectrogram_9/transpose_3/ReadVariableOpReadVariableOp0melspectrogram_9_shape_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0r
!melspectrogram_9/transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
melspectrogram_9/transpose_3	Transpose3melspectrogram_9/transpose_3/ReadVariableOp:value:0*melspectrogram_9/transpose_3/perm:output:0*
T0* 
_output_shapes
:
��q
 melspectrogram_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"  �����
melspectrogram_9/Reshape_1Reshape melspectrogram_9/transpose_3:y:0)melspectrogram_9/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
���
melspectrogram_9/MatMulMatMul!melspectrogram_9/Reshape:output:0#melspectrogram_9/Reshape_1:output:0*
T0*(
_output_shapes
:����������d
"melspectrogram_9/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d
"melspectrogram_9/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?e
"melspectrogram_9/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
 melspectrogram_9/Reshape_2/shapePack!melspectrogram_9/unstack:output:0+melspectrogram_9/Reshape_2/shape/1:output:0+melspectrogram_9/Reshape_2/shape/2:output:0+melspectrogram_9/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
melspectrogram_9/Reshape_2Reshape!melspectrogram_9/MatMul:product:0)melspectrogram_9/Reshape_2/shape:output:0*
T0*0
_output_shapes
:���������?�z
!melspectrogram_9/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
melspectrogram_9/transpose_4	Transpose#melspectrogram_9/Reshape_2:output:0*melspectrogram_9/transpose_4/perm:output:0*
T0*0
_output_shapes
:����������?[
melspectrogram_9/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
melspectrogram_9/MaximumMaximum melspectrogram_9/transpose_4:y:0melspectrogram_9/Const:output:0*
T0*0
_output_shapes
:����������?v
melspectrogram_9/SqrtSqrtmelspectrogram_9/Maximum:z:0*
T0*0
_output_shapes
:����������?]
melspectrogram_9/Pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
melspectrogram_9/Pow_2Powmelspectrogram_9/Sqrt:y:0!melspectrogram_9/Pow_2/y:output:0*
T0*0
_output_shapes
:����������?�
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_27/Conv2DConv2Dmelspectrogram_9/Pow_2:z:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~= *
paddingVALID*
strides
�
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~= l
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:���������~= �
max_pooling2d_16/MaxPoolMaxPoolconv2d_27/Relu:activations:0*/
_output_shapes
:���������? *
ksize
*
paddingVALID*
strides
|
dropout_23/IdentityIdentity!max_pooling2d_16/MaxPool:output:0*
T0*/
_output_shapes
:���������? �
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_28/Conv2DConv2Ddropout_23/Identity:output:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������=@*
paddingVALID*
strides
�
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������=@l
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:���������=@�
max_pooling2d_17/MaxPoolMaxPoolconv2d_28/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
|
dropout_24/IdentityIdentity!max_pooling2d_17/MaxPool:output:0*
T0*/
_output_shapes
:���������@�
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_29/Conv2DConv2Ddropout_24/Identity:output:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:���������@`
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� T  �
flatten_8/ReshapeReshapeconv2d_29/Relu:activations:0flatten_8/Const:output:0*
T0*)
_output_shapes
:������������
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0�
dense_25/MatMulMatMulflatten_8/Reshape:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:���������@n
dropout_25/IdentityIdentitydense_25/Relu:activations:0*
T0*'
_output_shapes
:���������@�
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_26/MatMulMatMuldropout_25/Identity:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

: $*
dtype0�
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$�
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0�
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$h
dense_27/SoftmaxSoftmaxdense_27/BiasAdd:output:0*
T0*'
_output_shapes
:���������$i
IdentityIdentitydense_27/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������$�
NoOpNoOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp,^melspectrogram_9/convolution/ReadVariableOp.^melspectrogram_9/convolution_1/ReadVariableOp,^melspectrogram_9/transpose_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������}: : : : : : : : : : : : : : : 2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2Z
+melspectrogram_9/convolution/ReadVariableOp+melspectrogram_9/convolution/ReadVariableOp2^
-melspectrogram_9/convolution_1/ReadVariableOp-melspectrogram_9/convolution_1/ReadVariableOp2Z
+melspectrogram_9/transpose_3/ReadVariableOp+melspectrogram_9/transpose_3/ReadVariableOp:P L
(
_output_shapes
:����������}
 
_user_specified_nameinputs
�
F
*__inference_flatten_8_layer_call_fn_217589

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_216504b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�;
�
H__inference_sequential_9_layer_call_and_return_conditional_losses_216952
input_103
melspectrogram_9_216908:��3
melspectrogram_9_216910:��+
melspectrogram_9_216912:
��*
conv2d_27_216915: 
conv2d_27_216917: *
conv2d_28_216922: @
conv2d_28_216924:@*
conv2d_29_216929:@@
conv2d_29_216931:@#
dense_25_216935:
��@
dense_25_216937:@!
dense_26_216941:@ 
dense_26_216943: !
dense_27_216946: $
dense_27_216948:$
identity��!conv2d_27/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall�!conv2d_29/StatefulPartitionedCall� dense_25/StatefulPartitionedCall� dense_26/StatefulPartitionedCall� dense_27/StatefulPartitionedCall�(melspectrogram_9/StatefulPartitionedCall�
reshape_9/PartitionedCallPartitionedCallinput_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������}* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_9_layer_call_and_return_conditional_losses_216364�
(melspectrogram_9/StatefulPartitionedCallStatefulPartitionedCall"reshape_9/PartitionedCall:output:0melspectrogram_9_216908melspectrogram_9_216910melspectrogram_9_216912*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������?*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_melspectrogram_9_layer_call_and_return_conditional_losses_216423�
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall1melspectrogram_9/StatefulPartitionedCall:output:0conv2d_27_216915conv2d_27_216917*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~= *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_216442�
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_216329�
dropout_23/PartitionedCallPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_216454�
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0conv2d_28_216922conv2d_28_216924*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������=@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_216467�
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_216341�
dropout_24/PartitionedCallPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_216479�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0conv2d_29_216929conv2d_29_216931*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_216492�
flatten_8/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_216504�
 dense_25/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_25_216935dense_25_216937*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_216517�
dropout_25/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_216528�
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0dense_26_216941dense_26_216943*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_216541�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_216946dense_27_216948*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_216558x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������$�
NoOpNoOp"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall)^melspectrogram_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������}: : : : : : : : : : : : : : : 2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2T
(melspectrogram_9/StatefulPartitionedCall(melspectrogram_9/StatefulPartitionedCall:R N
(
_output_shapes
:����������}
"
_user_specified_name
input_10
�
�
*__inference_conv2d_27_layer_call_fn_217459

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~= *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_216442w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������~= `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������?
 
_user_specified_nameinputs
�?
�
H__inference_sequential_9_layer_call_and_return_conditional_losses_217000
input_103
melspectrogram_9_216956:��3
melspectrogram_9_216958:��+
melspectrogram_9_216960:
��*
conv2d_27_216963: 
conv2d_27_216965: *
conv2d_28_216970: @
conv2d_28_216972:@*
conv2d_29_216977:@@
conv2d_29_216979:@#
dense_25_216983:
��@
dense_25_216985:@!
dense_26_216989:@ 
dense_26_216991: !
dense_27_216994: $
dense_27_216996:$
identity��!conv2d_27/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall�!conv2d_29/StatefulPartitionedCall� dense_25/StatefulPartitionedCall� dense_26/StatefulPartitionedCall� dense_27/StatefulPartitionedCall�"dropout_23/StatefulPartitionedCall�"dropout_24/StatefulPartitionedCall�"dropout_25/StatefulPartitionedCall�(melspectrogram_9/StatefulPartitionedCall�
reshape_9/PartitionedCallPartitionedCallinput_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������}* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_9_layer_call_and_return_conditional_losses_216364�
(melspectrogram_9/StatefulPartitionedCallStatefulPartitionedCall"reshape_9/PartitionedCall:output:0melspectrogram_9_216956melspectrogram_9_216958melspectrogram_9_216960*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������?*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_melspectrogram_9_layer_call_and_return_conditional_losses_216423�
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall1melspectrogram_9/StatefulPartitionedCall:output:0conv2d_27_216963conv2d_27_216965*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~= *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_216442�
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_216329�
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_216720�
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0conv2d_28_216970conv2d_28_216972*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������=@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_216467�
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_216341�
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0#^dropout_23/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_216687�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0conv2d_29_216977conv2d_29_216979*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_216492�
flatten_8/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_216504�
 dense_25/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_25_216983dense_25_216985*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_216517�
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_216638�
 dense_26/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0dense_26_216989dense_26_216991*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_216541�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_216994dense_27_216996*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_216558x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������$�
NoOpNoOp"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall)^melspectrogram_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������}: : : : : : : : : : : : : : : 2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2T
(melspectrogram_9/StatefulPartitionedCall(melspectrogram_9/StatefulPartitionedCall:R N
(
_output_shapes
:����������}
"
_user_specified_name
input_10
�

�
D__inference_dense_26_layer_call_and_return_conditional_losses_217662

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
E__inference_conv2d_27_layer_call_and_return_conditional_losses_216442

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~= *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~= X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������~= i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������~= w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������?
 
_user_specified_nameinputs
�
�
E__inference_conv2d_29_layer_call_and_return_conditional_losses_217584

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
D__inference_dense_27_layer_call_and_return_conditional_losses_217682

inputs0
matmul_readvariableop_resource: $-
biasadd_readvariableop_resource:$
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: $*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������$`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������$w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_216454

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������? c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������? :W S
/
_output_shapes
:���������? 
 
_user_specified_nameinputs
�
�
E__inference_conv2d_28_layer_call_and_return_conditional_losses_216467

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������=@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������=@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������=@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������=@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������? 
 
_user_specified_nameinputs
�
�
1__inference_melspectrogram_9_layer_call_fn_217393
x#
unknown:��%
	unknown_0:��
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������?*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_melspectrogram_9_layer_call_and_return_conditional_losses_216423x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������}: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
,
_output_shapes
:����������}

_user_specified_namex
�

e
F__inference_dropout_24_layer_call_and_return_conditional_losses_217564

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
)__inference_dense_25_layer_call_fn_217604

inputs
unknown:
��@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_216517o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_27_layer_call_and_return_conditional_losses_217470

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~= *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~= X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������~= i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������~= w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������?
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_217537

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_dense_27_layer_call_fn_217671

inputs
unknown: $
	unknown_0:$
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_216558o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

e
F__inference_dropout_23_layer_call_and_return_conditional_losses_217507

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������? *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������? w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������? q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������? a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������? :W S
/
_output_shapes
:���������? 
 
_user_specified_nameinputs
�

e
F__inference_dropout_24_layer_call_and_return_conditional_losses_216687

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_218003
file_prefixJ
.assignvariableop_melspectrogram_9_real_kernels:��L
0assignvariableop_1_melspectrogram_9_imag_kernels:��@
,assignvariableop_2_melspectrogram_9_variable:
��=
#assignvariableop_3_conv2d_27_kernel: /
!assignvariableop_4_conv2d_27_bias: =
#assignvariableop_5_conv2d_28_kernel: @/
!assignvariableop_6_conv2d_28_bias:@=
#assignvariableop_7_conv2d_29_kernel:@@/
!assignvariableop_8_conv2d_29_bias:@6
"assignvariableop_9_dense_25_kernel:
��@/
!assignvariableop_10_dense_25_bias:@5
#assignvariableop_11_dense_26_kernel:@ /
!assignvariableop_12_dense_26_bias: 5
#assignvariableop_13_dense_27_kernel: $/
!assignvariableop_14_dense_27_bias:$'
assignvariableop_15_adam_iter:	 )
assignvariableop_16_adam_beta_1: )
assignvariableop_17_adam_beta_2: (
assignvariableop_18_adam_decay: 0
&assignvariableop_19_adam_learning_rate: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: #
assignvariableop_22_total: #
assignvariableop_23_count: E
+assignvariableop_24_adam_conv2d_27_kernel_m: 7
)assignvariableop_25_adam_conv2d_27_bias_m: E
+assignvariableop_26_adam_conv2d_28_kernel_m: @7
)assignvariableop_27_adam_conv2d_28_bias_m:@E
+assignvariableop_28_adam_conv2d_29_kernel_m:@@7
)assignvariableop_29_adam_conv2d_29_bias_m:@>
*assignvariableop_30_adam_dense_25_kernel_m:
��@6
(assignvariableop_31_adam_dense_25_bias_m:@<
*assignvariableop_32_adam_dense_26_kernel_m:@ 6
(assignvariableop_33_adam_dense_26_bias_m: <
*assignvariableop_34_adam_dense_27_kernel_m: $6
(assignvariableop_35_adam_dense_27_bias_m:$E
+assignvariableop_36_adam_conv2d_27_kernel_v: 7
)assignvariableop_37_adam_conv2d_27_bias_v: E
+assignvariableop_38_adam_conv2d_28_kernel_v: @7
)assignvariableop_39_adam_conv2d_28_bias_v:@E
+assignvariableop_40_adam_conv2d_29_kernel_v:@@7
)assignvariableop_41_adam_conv2d_29_bias_v:@>
*assignvariableop_42_adam_dense_25_kernel_v:
��@6
(assignvariableop_43_adam_dense_25_bias_v:@<
*assignvariableop_44_adam_dense_26_kernel_v:@ 6
(assignvariableop_45_adam_dense_26_bias_v: <
*assignvariableop_46_adam_dense_27_kernel_v: $6
(assignvariableop_47_adam_dense_27_bias_v:$
identity_49��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*�
value�B�1B@layer_with_weights-0/dft_real_kernels/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/dft_imag_kernels/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/freq2mel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes5
321	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp.assignvariableop_melspectrogram_9_real_kernelsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp0assignvariableop_1_melspectrogram_9_imag_kernelsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp,assignvariableop_2_melspectrogram_9_variableIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv2d_27_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_conv2d_27_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp#assignvariableop_5_conv2d_28_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_conv2d_28_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv2d_29_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_conv2d_29_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_25_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_25_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_dense_26_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp!assignvariableop_12_dense_26_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_27_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp!assignvariableop_14_dense_27_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_iterIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_decayIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_learning_rateIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_27_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_conv2d_27_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_28_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_conv2d_28_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv2d_29_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_conv2d_29_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_25_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_dense_25_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_dense_26_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_dense_26_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_dense_27_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_dense_27_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_27_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_27_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_conv2d_28_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_conv2d_28_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_conv2d_29_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_conv2d_29_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_dense_25_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_dense_25_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_dense_26_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_dense_26_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_dense_27_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_dense_27_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_48Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_49IdentityIdentity_48:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_49Identity_49:output:0*u
_input_shapesd
b: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472(
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
�

e
F__inference_dropout_25_layer_call_and_return_conditional_losses_216638

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_dropout_23_layer_call_fn_217485

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_216454h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������? :W S
/
_output_shapes
:���������? 
 
_user_specified_nameinputs
�0
�
L__inference_melspectrogram_9_layer_call_and_return_conditional_losses_217450
x?
#convolution_readvariableop_resource:��A
%convolution_1_readvariableop_resource:��3
shape_1_readvariableop_resource:
��
identity��convolution/ReadVariableOp�convolution_1/ReadVariableOp�transpose_3/ReadVariableOph
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_sliceStridedSlicexstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������}*

begin_mask*
end_maskc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	transpose	Transposestrided_slice:output:0transpose/perm:output:0*
T0*,
_output_shapes
:����������}P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :{

ExpandDims
ExpandDimstranspose:y:0ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������}�
convolution/ReadVariableOpReadVariableOp#convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
convolutionConv2DExpandDims:output:0"convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������?�*
paddingSAME*
strides	
��
convolution_1/ReadVariableOpReadVariableOp%convolution_1_readvariableop_resource*(
_output_shapes
:��*
dtype0�
convolution_1Conv2DExpandDims:output:0$convolution_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������?�*
paddingSAME*
strides	
�J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @k
powPowconvolution:output:0pow/y:output:0*
T0*0
_output_shapes
:���������?�L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @q
pow_1Powconvolution_1:output:0pow_1/y:output:0*
T0*0
_output_shapes
:���������?�[
addAddV2pow:z:0	pow_1:z:0*
T0*0
_output_shapes
:���������?�i
transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             w
transpose_1	Transposeadd:z:0transpose_1/perm:output:0*
T0*0
_output_shapes
:����������?i
transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             
transpose_2	Transposetranspose_1:y:0transpose_2/perm:output:0*
T0*0
_output_shapes
:���������?�D
ShapeShapetranspose_2:y:0*
T0*
_output_shapes
:S
unstackUnpackShape:output:0*
T0*
_output_shapes

: : : : *	
numx
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"  �   S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����  n
ReshapeReshapetranspose_2:y:0Reshape/shape:output:0*
T0*(
_output_shapes
:����������|
transpose_3/ReadVariableOpReadVariableOpshape_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
transpose_3	Transpose"transpose_3/ReadVariableOp:value:0transpose_3/perm:output:0*
T0* 
_output_shapes
:
��`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"  ����j
	Reshape_1Reshapetranspose_3:y:0Reshape_1/shape:output:0*
T0* 
_output_shapes
:
��i
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*(
_output_shapes
:����������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?T
Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:{
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*0
_output_shapes
:���������?�i
transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
transpose_4	TransposeReshape_2:output:0transpose_4/perm:output:0*
T0*0
_output_shapes
:����������?J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    n
MaximumMaximumtranspose_4:y:0Const:output:0*
T0*0
_output_shapes
:����������?T
SqrtSqrtMaximum:z:0*
T0*0
_output_shapes
:����������?L
Pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
Pow_2PowSqrt:y:0Pow_2/y:output:0*
T0*0
_output_shapes
:����������?a
IdentityIdentity	Pow_2:z:0^NoOp*
T0*0
_output_shapes
:����������?�
NoOpNoOp^convolution/ReadVariableOp^convolution_1/ReadVariableOp^transpose_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������}: : : 28
convolution/ReadVariableOpconvolution/ReadVariableOp2<
convolution_1/ReadVariableOpconvolution_1/ReadVariableOp28
transpose_3/ReadVariableOptranspose_3/ReadVariableOp:O K
,
_output_shapes
:����������}

_user_specified_namex
�0
�
L__inference_melspectrogram_9_layer_call_and_return_conditional_losses_216423
x?
#convolution_readvariableop_resource:��A
%convolution_1_readvariableop_resource:��3
shape_1_readvariableop_resource:
��
identity��convolution/ReadVariableOp�convolution_1/ReadVariableOp�transpose_3/ReadVariableOph
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_sliceStridedSlicexstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������}*

begin_mask*
end_maskc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	transpose	Transposestrided_slice:output:0transpose/perm:output:0*
T0*,
_output_shapes
:����������}P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :{

ExpandDims
ExpandDimstranspose:y:0ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������}�
convolution/ReadVariableOpReadVariableOp#convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
convolutionConv2DExpandDims:output:0"convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������?�*
paddingSAME*
strides	
��
convolution_1/ReadVariableOpReadVariableOp%convolution_1_readvariableop_resource*(
_output_shapes
:��*
dtype0�
convolution_1Conv2DExpandDims:output:0$convolution_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������?�*
paddingSAME*
strides	
�J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @k
powPowconvolution:output:0pow/y:output:0*
T0*0
_output_shapes
:���������?�L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @q
pow_1Powconvolution_1:output:0pow_1/y:output:0*
T0*0
_output_shapes
:���������?�[
addAddV2pow:z:0	pow_1:z:0*
T0*0
_output_shapes
:���������?�i
transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             w
transpose_1	Transposeadd:z:0transpose_1/perm:output:0*
T0*0
_output_shapes
:����������?i
transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             
transpose_2	Transposetranspose_1:y:0transpose_2/perm:output:0*
T0*0
_output_shapes
:���������?�D
ShapeShapetranspose_2:y:0*
T0*
_output_shapes
:S
unstackUnpackShape:output:0*
T0*
_output_shapes

: : : : *	
numx
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"  �   S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����  n
ReshapeReshapetranspose_2:y:0Reshape/shape:output:0*
T0*(
_output_shapes
:����������|
transpose_3/ReadVariableOpReadVariableOpshape_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
transpose_3	Transpose"transpose_3/ReadVariableOp:value:0transpose_3/perm:output:0*
T0* 
_output_shapes
:
��`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"  ����j
	Reshape_1Reshapetranspose_3:y:0Reshape_1/shape:output:0*
T0* 
_output_shapes
:
��i
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*(
_output_shapes
:����������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?T
Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:{
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*0
_output_shapes
:���������?�i
transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
transpose_4	TransposeReshape_2:output:0transpose_4/perm:output:0*
T0*0
_output_shapes
:����������?J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    n
MaximumMaximumtranspose_4:y:0Const:output:0*
T0*0
_output_shapes
:����������?T
SqrtSqrtMaximum:z:0*
T0*0
_output_shapes
:����������?L
Pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
Pow_2PowSqrt:y:0Pow_2/y:output:0*
T0*0
_output_shapes
:����������?a
IdentityIdentity	Pow_2:z:0^NoOp*
T0*0
_output_shapes
:����������?�
NoOpNoOp^convolution/ReadVariableOp^convolution_1/ReadVariableOp^transpose_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������}: : : 28
convolution/ReadVariableOpconvolution/ReadVariableOp2<
convolution_1/ReadVariableOpconvolution_1/ReadVariableOp28
transpose_3/ReadVariableOptranspose_3/ReadVariableOp:O K
,
_output_shapes
:����������}

_user_specified_namex
�
d
+__inference_dropout_23_layer_call_fn_217490

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_216720w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������? 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������? 
 
_user_specified_nameinputs
�
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_217595

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� T  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_dropout_25_layer_call_fn_217620

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_216528`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_217043
input_10#
unknown:��%
	unknown_0:��
	unknown_1:
��#
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@#
	unknown_6:@@
	unknown_7:@
	unknown_8:
��@
	unknown_9:@

unknown_10:@ 

unknown_11: 

unknown_12: $

unknown_13:$
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_216320o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������}: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:����������}
"
_user_specified_name
input_10
�
�
*__inference_conv2d_29_layer_call_fn_217573

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_216492w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
F__inference_dropout_24_layer_call_and_return_conditional_losses_217552

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
F__inference_dropout_24_layer_call_and_return_conditional_losses_216479

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
E__inference_conv2d_28_layer_call_and_return_conditional_losses_217527

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������=@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������=@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������=@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������=@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������? 
 
_user_specified_nameinputs
�
�
-__inference_sequential_9_layer_call_fn_216598
input_10#
unknown:��%
	unknown_0:��
	unknown_1:
��#
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@#
	unknown_6:@@
	unknown_7:@
	unknown_8:
��@
	unknown_9:@

unknown_10:@ 

unknown_11: 

unknown_12: $

unknown_13:$
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_216565o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������}: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:����������}
"
_user_specified_name
input_10
�
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_217495

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������? c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������? :W S
/
_output_shapes
:���������? 
 
_user_specified_nameinputs
�;
�
H__inference_sequential_9_layer_call_and_return_conditional_losses_216565

inputs3
melspectrogram_9_216424:��3
melspectrogram_9_216426:��+
melspectrogram_9_216428:
��*
conv2d_27_216443: 
conv2d_27_216445: *
conv2d_28_216468: @
conv2d_28_216470:@*
conv2d_29_216493:@@
conv2d_29_216495:@#
dense_25_216518:
��@
dense_25_216520:@!
dense_26_216542:@ 
dense_26_216544: !
dense_27_216559: $
dense_27_216561:$
identity��!conv2d_27/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall�!conv2d_29/StatefulPartitionedCall� dense_25/StatefulPartitionedCall� dense_26/StatefulPartitionedCall� dense_27/StatefulPartitionedCall�(melspectrogram_9/StatefulPartitionedCall�
reshape_9/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������}* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_9_layer_call_and_return_conditional_losses_216364�
(melspectrogram_9/StatefulPartitionedCallStatefulPartitionedCall"reshape_9/PartitionedCall:output:0melspectrogram_9_216424melspectrogram_9_216426melspectrogram_9_216428*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������?*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_melspectrogram_9_layer_call_and_return_conditional_losses_216423�
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall1melspectrogram_9/StatefulPartitionedCall:output:0conv2d_27_216443conv2d_27_216445*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~= *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_216442�
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_216329�
dropout_23/PartitionedCallPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_216454�
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0conv2d_28_216468conv2d_28_216470*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������=@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_216467�
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_216341�
dropout_24/PartitionedCallPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_216479�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0conv2d_29_216493conv2d_29_216495*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_216492�
flatten_8/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_216504�
 dense_25/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_25_216518dense_25_216520*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_216517�
dropout_25/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_216528�
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0dense_26_216542dense_26_216544*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_216541�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_216559dense_27_216561*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_216558x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������$�
NoOpNoOp"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall)^melspectrogram_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������}: : : : : : : : : : : : : : : 2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2T
(melspectrogram_9/StatefulPartitionedCall(melspectrogram_9/StatefulPartitionedCall:P L
(
_output_shapes
:����������}
 
_user_specified_nameinputs
�

a
E__inference_reshape_9_layer_call_and_return_conditional_losses_217382

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Z
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:����������}]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:����������}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������}:P L
(
_output_shapes
:����������}
 
_user_specified_nameinputs
�

e
F__inference_dropout_25_layer_call_and_return_conditional_losses_217642

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_17_layer_call_fn_217532

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_216341�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_dense_26_layer_call_fn_217651

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_216541o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_216329

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_216341

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_29_layer_call_and_return_conditional_losses_216492

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
-__inference_sequential_9_layer_call_fn_217113

inputs#
unknown:��%
	unknown_0:��
	unknown_1:
��#
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@#
	unknown_6:@@
	unknown_7:@
	unknown_8:
��@
	unknown_9:@

unknown_10:@ 

unknown_11: 

unknown_12: $

unknown_13:$
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_216836o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������}: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������}
 
_user_specified_nameinputs
�
d
+__inference_dropout_24_layer_call_fn_217547

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_216687w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
F
*__inference_reshape_9_layer_call_fn_217369

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������}* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_9_layer_call_and_return_conditional_losses_216364e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������}:P L
(
_output_shapes
:����������}
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_16_layer_call_fn_217475

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_216329�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_27_layer_call_and_return_conditional_losses_216558

inputs0
matmul_readvariableop_resource: $-
biasadd_readvariableop_resource:$
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: $*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������$`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������$w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
-__inference_sequential_9_layer_call_fn_217078

inputs#
unknown:��%
	unknown_0:��
	unknown_1:
��#
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@#
	unknown_6:@@
	unknown_7:@
	unknown_8:
��@
	unknown_9:@

unknown_10:@ 

unknown_11: 

unknown_12: $

unknown_13:$
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_216565o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������}: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������}
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_217480

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_26_layer_call_and_return_conditional_losses_216541

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_216528

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
D__inference_dense_25_layer_call_and_return_conditional_losses_217615

inputs2
matmul_readvariableop_resource:
��@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�a
�
__inference__traced_save_217849
file_prefix<
8savev2_melspectrogram_9_real_kernels_read_readvariableop<
8savev2_melspectrogram_9_imag_kernels_read_readvariableop8
4savev2_melspectrogram_9_variable_read_readvariableop/
+savev2_conv2d_27_kernel_read_readvariableop-
)savev2_conv2d_27_bias_read_readvariableop/
+savev2_conv2d_28_kernel_read_readvariableop-
)savev2_conv2d_28_bias_read_readvariableop/
+savev2_conv2d_29_kernel_read_readvariableop-
)savev2_conv2d_29_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_27_kernel_m_read_readvariableop4
0savev2_adam_conv2d_27_bias_m_read_readvariableop6
2savev2_adam_conv2d_28_kernel_m_read_readvariableop4
0savev2_adam_conv2d_28_bias_m_read_readvariableop6
2savev2_adam_conv2d_29_kernel_m_read_readvariableop4
0savev2_adam_conv2d_29_bias_m_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop5
1savev2_adam_dense_27_kernel_m_read_readvariableop3
/savev2_adam_dense_27_bias_m_read_readvariableop6
2savev2_adam_conv2d_27_kernel_v_read_readvariableop4
0savev2_adam_conv2d_27_bias_v_read_readvariableop6
2savev2_adam_conv2d_28_kernel_v_read_readvariableop4
0savev2_adam_conv2d_28_bias_v_read_readvariableop6
2savev2_adam_conv2d_29_kernel_v_read_readvariableop4
0savev2_adam_conv2d_29_bias_v_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop5
1savev2_adam_dense_27_kernel_v_read_readvariableop3
/savev2_adam_dense_27_bias_v_read_readvariableop
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*�
value�B�1B@layer_with_weights-0/dft_real_kernels/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/dft_imag_kernels/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/freq2mel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:08savev2_melspectrogram_9_real_kernels_read_readvariableop8savev2_melspectrogram_9_imag_kernels_read_readvariableop4savev2_melspectrogram_9_variable_read_readvariableop+savev2_conv2d_27_kernel_read_readvariableop)savev2_conv2d_27_bias_read_readvariableop+savev2_conv2d_28_kernel_read_readvariableop)savev2_conv2d_28_bias_read_readvariableop+savev2_conv2d_29_kernel_read_readvariableop)savev2_conv2d_29_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_27_kernel_m_read_readvariableop0savev2_adam_conv2d_27_bias_m_read_readvariableop2savev2_adam_conv2d_28_kernel_m_read_readvariableop0savev2_adam_conv2d_28_bias_m_read_readvariableop2savev2_adam_conv2d_29_kernel_m_read_readvariableop0savev2_adam_conv2d_29_bias_m_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop1savev2_adam_dense_27_kernel_m_read_readvariableop/savev2_adam_dense_27_bias_m_read_readvariableop2savev2_adam_conv2d_27_kernel_v_read_readvariableop0savev2_adam_conv2d_27_bias_v_read_readvariableop2savev2_adam_conv2d_28_kernel_v_read_readvariableop0savev2_adam_conv2d_28_bias_v_read_readvariableop2savev2_adam_conv2d_29_kernel_v_read_readvariableop0savev2_adam_conv2d_29_bias_v_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop1savev2_adam_dense_27_kernel_v_read_readvariableop/savev2_adam_dense_27_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes5
321	�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :��:��:
��: : : @:@:@@:@:
��@:@:@ : : $:$: : : : : : : : : : : : @:@:@@:@:
��@:@:@ : : $:$: : : @:@:@@:@:
��@:@:@ : : $:$: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_output_shapes
:��:.*
(
_output_shapes
:��:&"
 
_output_shapes
:
��:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 	

_output_shapes
:@:&
"
 
_output_shapes
:
��@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: $: 

_output_shapes
:$:

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
��@:  

_output_shapes
:@:$! 

_output_shapes

:@ : "

_output_shapes
: :$# 

_output_shapes

: $: $

_output_shapes
:$:,%(
&
_output_shapes
: : &

_output_shapes
: :,'(
&
_output_shapes
: @: (

_output_shapes
:@:,)(
&
_output_shapes
:@@: *

_output_shapes
:@:&+"
 
_output_shapes
:
��@: ,

_output_shapes
:@:$- 

_output_shapes

:@ : .

_output_shapes
: :$/ 

_output_shapes

: $: 0

_output_shapes
:$:1

_output_shapes
: 
�

a
E__inference_reshape_9_layer_call_and_return_conditional_losses_216364

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Z
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:����������}]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:����������}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������}:P L
(
_output_shapes
:����������}
 
_user_specified_nameinputs
�
G
+__inference_dropout_24_layer_call_fn_217542

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_216479h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
+__inference_dropout_25_layer_call_fn_217625

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_216638o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
D__inference_dense_25_layer_call_and_return_conditional_losses_216517

inputs2
matmul_readvariableop_resource:
��@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
˛
�
H__inference_sequential_9_layer_call_and_return_conditional_losses_217364

inputsP
4melspectrogram_9_convolution_readvariableop_resource:��R
6melspectrogram_9_convolution_1_readvariableop_resource:��D
0melspectrogram_9_shape_1_readvariableop_resource:
��B
(conv2d_27_conv2d_readvariableop_resource: 7
)conv2d_27_biasadd_readvariableop_resource: B
(conv2d_28_conv2d_readvariableop_resource: @7
)conv2d_28_biasadd_readvariableop_resource:@B
(conv2d_29_conv2d_readvariableop_resource:@@7
)conv2d_29_biasadd_readvariableop_resource:@;
'dense_25_matmul_readvariableop_resource:
��@6
(dense_25_biasadd_readvariableop_resource:@9
'dense_26_matmul_readvariableop_resource:@ 6
(dense_26_biasadd_readvariableop_resource: 9
'dense_27_matmul_readvariableop_resource: $6
(dense_27_biasadd_readvariableop_resource:$
identity�� conv2d_27/BiasAdd/ReadVariableOp�conv2d_27/Conv2D/ReadVariableOp� conv2d_28/BiasAdd/ReadVariableOp�conv2d_28/Conv2D/ReadVariableOp� conv2d_29/BiasAdd/ReadVariableOp�conv2d_29/Conv2D/ReadVariableOp�dense_25/BiasAdd/ReadVariableOp�dense_25/MatMul/ReadVariableOp�dense_26/BiasAdd/ReadVariableOp�dense_26/MatMul/ReadVariableOp�dense_27/BiasAdd/ReadVariableOp�dense_27/MatMul/ReadVariableOp�+melspectrogram_9/convolution/ReadVariableOp�-melspectrogram_9/convolution_1/ReadVariableOp�+melspectrogram_9/transpose_3/ReadVariableOpE
reshape_9/ShapeShapeinputs*
T0*
_output_shapes
:g
reshape_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_9/strided_sliceStridedSlicereshape_9/Shape:output:0&reshape_9/strided_slice/stack:output:0(reshape_9/strided_slice/stack_1:output:0(reshape_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_9/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d
reshape_9/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
reshape_9/Reshape/shapePack reshape_9/strided_slice:output:0"reshape_9/Reshape/shape/1:output:0"reshape_9/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:}
reshape_9/ReshapeReshapeinputs reshape_9/Reshape/shape:output:0*
T0*,
_output_shapes
:����������}y
$melspectrogram_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            {
&melspectrogram_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           {
&melspectrogram_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
melspectrogram_9/strided_sliceStridedSlicereshape_9/Reshape:output:0-melspectrogram_9/strided_slice/stack:output:0/melspectrogram_9/strided_slice/stack_1:output:0/melspectrogram_9/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������}*

begin_mask*
end_maskt
melspectrogram_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
melspectrogram_9/transpose	Transpose'melspectrogram_9/strided_slice:output:0(melspectrogram_9/transpose/perm:output:0*
T0*,
_output_shapes
:����������}a
melspectrogram_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
melspectrogram_9/ExpandDims
ExpandDimsmelspectrogram_9/transpose:y:0(melspectrogram_9/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������}�
+melspectrogram_9/convolution/ReadVariableOpReadVariableOp4melspectrogram_9_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
melspectrogram_9/convolutionConv2D$melspectrogram_9/ExpandDims:output:03melspectrogram_9/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������?�*
paddingSAME*
strides	
��
-melspectrogram_9/convolution_1/ReadVariableOpReadVariableOp6melspectrogram_9_convolution_1_readvariableop_resource*(
_output_shapes
:��*
dtype0�
melspectrogram_9/convolution_1Conv2D$melspectrogram_9/ExpandDims:output:05melspectrogram_9/convolution_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������?�*
paddingSAME*
strides	
�[
melspectrogram_9/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
melspectrogram_9/powPow%melspectrogram_9/convolution:output:0melspectrogram_9/pow/y:output:0*
T0*0
_output_shapes
:���������?�]
melspectrogram_9/pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
melspectrogram_9/pow_1Pow'melspectrogram_9/convolution_1:output:0!melspectrogram_9/pow_1/y:output:0*
T0*0
_output_shapes
:���������?��
melspectrogram_9/addAddV2melspectrogram_9/pow:z:0melspectrogram_9/pow_1:z:0*
T0*0
_output_shapes
:���������?�z
!melspectrogram_9/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
melspectrogram_9/transpose_1	Transposemelspectrogram_9/add:z:0*melspectrogram_9/transpose_1/perm:output:0*
T0*0
_output_shapes
:����������?z
!melspectrogram_9/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
melspectrogram_9/transpose_2	Transpose melspectrogram_9/transpose_1:y:0*melspectrogram_9/transpose_2/perm:output:0*
T0*0
_output_shapes
:���������?�f
melspectrogram_9/ShapeShape melspectrogram_9/transpose_2:y:0*
T0*
_output_shapes
:u
melspectrogram_9/unstackUnpackmelspectrogram_9/Shape:output:0*
T0*
_output_shapes

: : : : *	
num�
'melspectrogram_9/Shape_1/ReadVariableOpReadVariableOp0melspectrogram_9_shape_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0i
melspectrogram_9/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"  �   u
melspectrogram_9/unstack_1Unpack!melspectrogram_9/Shape_1:output:0*
T0*
_output_shapes
: : *	
numo
melspectrogram_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����  �
melspectrogram_9/ReshapeReshape melspectrogram_9/transpose_2:y:0'melspectrogram_9/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
+melspectrogram_9/transpose_3/ReadVariableOpReadVariableOp0melspectrogram_9_shape_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0r
!melspectrogram_9/transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
melspectrogram_9/transpose_3	Transpose3melspectrogram_9/transpose_3/ReadVariableOp:value:0*melspectrogram_9/transpose_3/perm:output:0*
T0* 
_output_shapes
:
��q
 melspectrogram_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"  �����
melspectrogram_9/Reshape_1Reshape melspectrogram_9/transpose_3:y:0)melspectrogram_9/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
���
melspectrogram_9/MatMulMatMul!melspectrogram_9/Reshape:output:0#melspectrogram_9/Reshape_1:output:0*
T0*(
_output_shapes
:����������d
"melspectrogram_9/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d
"melspectrogram_9/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?e
"melspectrogram_9/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value
B :��
 melspectrogram_9/Reshape_2/shapePack!melspectrogram_9/unstack:output:0+melspectrogram_9/Reshape_2/shape/1:output:0+melspectrogram_9/Reshape_2/shape/2:output:0+melspectrogram_9/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
melspectrogram_9/Reshape_2Reshape!melspectrogram_9/MatMul:product:0)melspectrogram_9/Reshape_2/shape:output:0*
T0*0
_output_shapes
:���������?�z
!melspectrogram_9/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
melspectrogram_9/transpose_4	Transpose#melspectrogram_9/Reshape_2:output:0*melspectrogram_9/transpose_4/perm:output:0*
T0*0
_output_shapes
:����������?[
melspectrogram_9/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
melspectrogram_9/MaximumMaximum melspectrogram_9/transpose_4:y:0melspectrogram_9/Const:output:0*
T0*0
_output_shapes
:����������?v
melspectrogram_9/SqrtSqrtmelspectrogram_9/Maximum:z:0*
T0*0
_output_shapes
:����������?]
melspectrogram_9/Pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
melspectrogram_9/Pow_2Powmelspectrogram_9/Sqrt:y:0!melspectrogram_9/Pow_2/y:output:0*
T0*0
_output_shapes
:����������?�
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_27/Conv2DConv2Dmelspectrogram_9/Pow_2:z:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~= *
paddingVALID*
strides
�
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~= l
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:���������~= �
max_pooling2d_16/MaxPoolMaxPoolconv2d_27/Relu:activations:0*/
_output_shapes
:���������? *
ksize
*
paddingVALID*
strides
]
dropout_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_23/dropout/MulMul!max_pooling2d_16/MaxPool:output:0!dropout_23/dropout/Const:output:0*
T0*/
_output_shapes
:���������? i
dropout_23/dropout/ShapeShape!max_pooling2d_16/MaxPool:output:0*
T0*
_output_shapes
:�
/dropout_23/dropout/random_uniform/RandomUniformRandomUniform!dropout_23/dropout/Shape:output:0*
T0*/
_output_shapes
:���������? *
dtype0*

seed*f
!dropout_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_23/dropout/GreaterEqualGreaterEqual8dropout_23/dropout/random_uniform/RandomUniform:output:0*dropout_23/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������? �
dropout_23/dropout/CastCast#dropout_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������? �
dropout_23/dropout/Mul_1Muldropout_23/dropout/Mul:z:0dropout_23/dropout/Cast:y:0*
T0*/
_output_shapes
:���������? �
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_28/Conv2DConv2Ddropout_23/dropout/Mul_1:z:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������=@*
paddingVALID*
strides
�
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������=@l
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:���������=@�
max_pooling2d_17/MaxPoolMaxPoolconv2d_28/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
]
dropout_24/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_24/dropout/MulMul!max_pooling2d_17/MaxPool:output:0!dropout_24/dropout/Const:output:0*
T0*/
_output_shapes
:���������@i
dropout_24/dropout/ShapeShape!max_pooling2d_17/MaxPool:output:0*
T0*
_output_shapes
:�
/dropout_24/dropout/random_uniform/RandomUniformRandomUniform!dropout_24/dropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0*

seed**
seed2f
!dropout_24/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_24/dropout/GreaterEqualGreaterEqual8dropout_24/dropout/random_uniform/RandomUniform:output:0*dropout_24/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@�
dropout_24/dropout/CastCast#dropout_24/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@�
dropout_24/dropout/Mul_1Muldropout_24/dropout/Mul:z:0dropout_24/dropout/Cast:y:0*
T0*/
_output_shapes
:���������@�
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_29/Conv2DConv2Ddropout_24/dropout/Mul_1:z:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:���������@`
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� T  �
flatten_8/ReshapeReshapeconv2d_29/Relu:activations:0flatten_8/Const:output:0*
T0*)
_output_shapes
:������������
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0�
dense_25/MatMulMatMulflatten_8/Reshape:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:���������@]
dropout_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_25/dropout/MulMuldense_25/Relu:activations:0!dropout_25/dropout/Const:output:0*
T0*'
_output_shapes
:���������@c
dropout_25/dropout/ShapeShapedense_25/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_25/dropout/random_uniform/RandomUniformRandomUniform!dropout_25/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0*

seed**
seed2f
!dropout_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_25/dropout/GreaterEqualGreaterEqual8dropout_25/dropout/random_uniform/RandomUniform:output:0*dropout_25/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@�
dropout_25/dropout/CastCast#dropout_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@�
dropout_25/dropout/Mul_1Muldropout_25/dropout/Mul:z:0dropout_25/dropout/Cast:y:0*
T0*'
_output_shapes
:���������@�
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_26/MatMulMatMuldropout_25/dropout/Mul_1:z:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

: $*
dtype0�
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$�
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0�
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������$h
dense_27/SoftmaxSoftmaxdense_27/BiasAdd:output:0*
T0*'
_output_shapes
:���������$i
IdentityIdentitydense_27/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������$�
NoOpNoOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp,^melspectrogram_9/convolution/ReadVariableOp.^melspectrogram_9/convolution_1/ReadVariableOp,^melspectrogram_9/transpose_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������}: : : : : : : : : : : : : : : 2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2Z
+melspectrogram_9/convolution/ReadVariableOp+melspectrogram_9/convolution/ReadVariableOp2^
-melspectrogram_9/convolution_1/ReadVariableOp-melspectrogram_9/convolution_1/ReadVariableOp2Z
+melspectrogram_9/transpose_3/ReadVariableOp+melspectrogram_9/transpose_3/ReadVariableOp:P L
(
_output_shapes
:����������}
 
_user_specified_nameinputs
�?
�
H__inference_sequential_9_layer_call_and_return_conditional_losses_216836

inputs3
melspectrogram_9_216792:��3
melspectrogram_9_216794:��+
melspectrogram_9_216796:
��*
conv2d_27_216799: 
conv2d_27_216801: *
conv2d_28_216806: @
conv2d_28_216808:@*
conv2d_29_216813:@@
conv2d_29_216815:@#
dense_25_216819:
��@
dense_25_216821:@!
dense_26_216825:@ 
dense_26_216827: !
dense_27_216830: $
dense_27_216832:$
identity��!conv2d_27/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall�!conv2d_29/StatefulPartitionedCall� dense_25/StatefulPartitionedCall� dense_26/StatefulPartitionedCall� dense_27/StatefulPartitionedCall�"dropout_23/StatefulPartitionedCall�"dropout_24/StatefulPartitionedCall�"dropout_25/StatefulPartitionedCall�(melspectrogram_9/StatefulPartitionedCall�
reshape_9/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������}* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reshape_9_layer_call_and_return_conditional_losses_216364�
(melspectrogram_9/StatefulPartitionedCallStatefulPartitionedCall"reshape_9/PartitionedCall:output:0melspectrogram_9_216792melspectrogram_9_216794melspectrogram_9_216796*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������?*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_melspectrogram_9_layer_call_and_return_conditional_losses_216423�
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall1melspectrogram_9/StatefulPartitionedCall:output:0conv2d_27_216799conv2d_27_216801*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������~= *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_216442�
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_216329�
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_216720�
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0conv2d_28_216806conv2d_28_216808*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������=@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_216467�
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_216341�
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0#^dropout_23/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_216687�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0conv2d_29_216813conv2d_29_216815*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_216492�
flatten_8/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_216504�
 dense_25/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_25_216819dense_25_216821*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_216517�
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_216638�
 dense_26/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0dense_26_216825dense_26_216827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_216541�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_216830dense_27_216832*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_216558x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������$�
NoOpNoOp"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall)^melspectrogram_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������}: : : : : : : : : : : : : : : 2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2T
(melspectrogram_9/StatefulPartitionedCall(melspectrogram_9/StatefulPartitionedCall:P L
(
_output_shapes
:����������}
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
>
input_102
serving_default_input_10:0����������}<
dense_270
StatefulPartitionedCall:0���������$tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$dft_real_kernels
%dft_imag_kernels
&freq2mel"
_tf_keras_layer
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op"
_tf_keras_layer
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses
<_random_generator"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias
 E_jit_compiled_convolution_op"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_layer
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
R_random_generator"
_tf_keras_layer
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

Ykernel
Zbias
 [_jit_compiled_convolution_op"
_tf_keras_layer
�
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

hkernel
ibias"
_tf_keras_layer
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
p_random_generator"
_tf_keras_layer
�
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

wkernel
xbias"
_tf_keras_layer
�
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

kernel
	�bias"
_tf_keras_layer
�
$0
%1
&2
-3
.4
C5
D6
Y7
Z8
h9
i10
w11
x12
13
�14"
trackable_list_wrapper
w
-0
.1
C2
D3
Y4
Z5
h6
i7
w8
x9
10
�11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
-__inference_sequential_9_layer_call_fn_216598
-__inference_sequential_9_layer_call_fn_217078
-__inference_sequential_9_layer_call_fn_217113
-__inference_sequential_9_layer_call_fn_216904�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
H__inference_sequential_9_layer_call_and_return_conditional_losses_217228
H__inference_sequential_9_layer_call_and_return_conditional_losses_217364
H__inference_sequential_9_layer_call_and_return_conditional_losses_216952
H__inference_sequential_9_layer_call_and_return_conditional_losses_217000�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
!__inference__wrapped_model_216320input_10"�
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
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate-m�.m�Cm�Dm�Ym�Zm�hm�im�wm�xm�m�	�m�-v�.v�Cv�Dv�Yv�Zv�hv�iv�wv�xv�v�	�v�"
	optimizer
-
�serving_default"
signature_map
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
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_reshape_9_layer_call_fn_217369�
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
 z�trace_0
�
�trace_02�
E__inference_reshape_9_layer_call_and_return_conditional_losses_217382�
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
 z�trace_0
5
$0
%1
&2"
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
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_melspectrogram_9_layer_call_fn_217393�
���
FullArgSpec
args�
jself
jx
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
 z�trace_0
�
�trace_02�
L__inference_melspectrogram_9_layer_call_and_return_conditional_losses_217450�
���
FullArgSpec
args�
jself
jx
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
 z�trace_0
9:7��2melspectrogram_9/real_kernels
9:7��2melspectrogram_9/imag_kernels
-:+
��2melspectrogram_9/Variable
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_27_layer_call_fn_217459�
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
 z�trace_0
�
�trace_02�
E__inference_conv2d_27_layer_call_and_return_conditional_losses_217470�
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
 z�trace_0
*:( 2conv2d_27/kernel
: 2conv2d_27/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
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
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_16_layer_call_fn_217475�
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
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_217480�
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
 z�trace_0
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
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_23_layer_call_fn_217485
+__inference_dropout_23_layer_call_fn_217490�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_23_layer_call_and_return_conditional_losses_217495
F__inference_dropout_23_layer_call_and_return_conditional_losses_217507�
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
 z�trace_0z�trace_1
"
_generic_user_object
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_28_layer_call_fn_217516�
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
 z�trace_0
�
�trace_02�
E__inference_conv2d_28_layer_call_and_return_conditional_losses_217527�
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
 z�trace_0
*:( @2conv2d_28/kernel
:@2conv2d_28/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
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
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_17_layer_call_fn_217532�
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
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_217537�
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
 z�trace_0
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
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_24_layer_call_fn_217542
+__inference_dropout_24_layer_call_fn_217547�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_24_layer_call_and_return_conditional_losses_217552
F__inference_dropout_24_layer_call_and_return_conditional_losses_217564�
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
 z�trace_0z�trace_1
"
_generic_user_object
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_29_layer_call_fn_217573�
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
 z�trace_0
�
�trace_02�
E__inference_conv2d_29_layer_call_and_return_conditional_losses_217584�
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
 z�trace_0
*:(@@2conv2d_29/kernel
:@2conv2d_29/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
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
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_8_layer_call_fn_217589�
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
 z�trace_0
�
�trace_02�
E__inference_flatten_8_layer_call_and_return_conditional_losses_217595�
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
 z�trace_0
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_25_layer_call_fn_217604�
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
 z�trace_0
�
�trace_02�
D__inference_dense_25_layer_call_and_return_conditional_losses_217615�
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
 z�trace_0
#:!
��@2dense_25/kernel
:@2dense_25/bias
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
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_25_layer_call_fn_217620
+__inference_dropout_25_layer_call_fn_217625�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_25_layer_call_and_return_conditional_losses_217630
F__inference_dropout_25_layer_call_and_return_conditional_losses_217642�
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
 z�trace_0z�trace_1
"
_generic_user_object
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_26_layer_call_fn_217651�
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
 z�trace_0
�
�trace_02�
D__inference_dense_26_layer_call_and_return_conditional_losses_217662�
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
 z�trace_0
!:@ 2dense_26/kernel
: 2dense_26/bias
/
0
�1"
trackable_list_wrapper
/
0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_27_layer_call_fn_217671�
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
 z�trace_0
�
�trace_02�
D__inference_dense_27_layer_call_and_return_conditional_losses_217682�
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
 z�trace_0
!: $2dense_27/kernel
:$2dense_27/bias
5
$0
%1
&2"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_sequential_9_layer_call_fn_216598input_10"�
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
-__inference_sequential_9_layer_call_fn_217078inputs"�
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
-__inference_sequential_9_layer_call_fn_217113inputs"�
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
�B�
-__inference_sequential_9_layer_call_fn_216904input_10"�
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
�B�
H__inference_sequential_9_layer_call_and_return_conditional_losses_217228inputs"�
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
�B�
H__inference_sequential_9_layer_call_and_return_conditional_losses_217364inputs"�
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
�B�
H__inference_sequential_9_layer_call_and_return_conditional_losses_216952input_10"�
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
�B�
H__inference_sequential_9_layer_call_and_return_conditional_losses_217000input_10"�
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
$__inference_signature_wrapper_217043input_10"�
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_reshape_9_layer_call_fn_217369inputs"�
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
�B�
E__inference_reshape_9_layer_call_and_return_conditional_losses_217382inputs"�
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
5
$0
%1
&2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_melspectrogram_9_layer_call_fn_217393x"�
���
FullArgSpec
args�
jself
jx
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
�B�
L__inference_melspectrogram_9_layer_call_and_return_conditional_losses_217450x"�
���
FullArgSpec
args�
jself
jx
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_27_layer_call_fn_217459inputs"�
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
�B�
E__inference_conv2d_27_layer_call_and_return_conditional_losses_217470inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_max_pooling2d_16_layer_call_fn_217475inputs"�
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
�B�
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_217480inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_dropout_23_layer_call_fn_217485inputs"�
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
�B�
+__inference_dropout_23_layer_call_fn_217490inputs"�
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
�B�
F__inference_dropout_23_layer_call_and_return_conditional_losses_217495inputs"�
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
�B�
F__inference_dropout_23_layer_call_and_return_conditional_losses_217507inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_28_layer_call_fn_217516inputs"�
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
�B�
E__inference_conv2d_28_layer_call_and_return_conditional_losses_217527inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_max_pooling2d_17_layer_call_fn_217532inputs"�
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
�B�
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_217537inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_dropout_24_layer_call_fn_217542inputs"�
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
�B�
+__inference_dropout_24_layer_call_fn_217547inputs"�
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
�B�
F__inference_dropout_24_layer_call_and_return_conditional_losses_217552inputs"�
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
�B�
F__inference_dropout_24_layer_call_and_return_conditional_losses_217564inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_29_layer_call_fn_217573inputs"�
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
�B�
E__inference_conv2d_29_layer_call_and_return_conditional_losses_217584inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_flatten_8_layer_call_fn_217589inputs"�
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
�B�
E__inference_flatten_8_layer_call_and_return_conditional_losses_217595inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_25_layer_call_fn_217604inputs"�
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
�B�
D__inference_dense_25_layer_call_and_return_conditional_losses_217615inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_dropout_25_layer_call_fn_217620inputs"�
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
�B�
+__inference_dropout_25_layer_call_fn_217625inputs"�
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
�B�
F__inference_dropout_25_layer_call_and_return_conditional_losses_217630inputs"�
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
�B�
F__inference_dropout_25_layer_call_and_return_conditional_losses_217642inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_26_layer_call_fn_217651inputs"�
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
�B�
D__inference_dense_26_layer_call_and_return_conditional_losses_217662inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_27_layer_call_fn_217671inputs"�
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
�B�
D__inference_dense_27_layer_call_and_return_conditional_losses_217682inputs"�
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
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/:- 2Adam/conv2d_27/kernel/m
!: 2Adam/conv2d_27/bias/m
/:- @2Adam/conv2d_28/kernel/m
!:@2Adam/conv2d_28/bias/m
/:-@@2Adam/conv2d_29/kernel/m
!:@2Adam/conv2d_29/bias/m
(:&
��@2Adam/dense_25/kernel/m
 :@2Adam/dense_25/bias/m
&:$@ 2Adam/dense_26/kernel/m
 : 2Adam/dense_26/bias/m
&:$ $2Adam/dense_27/kernel/m
 :$2Adam/dense_27/bias/m
/:- 2Adam/conv2d_27/kernel/v
!: 2Adam/conv2d_27/bias/v
/:- @2Adam/conv2d_28/kernel/v
!:@2Adam/conv2d_28/bias/v
/:-@@2Adam/conv2d_29/kernel/v
!:@2Adam/conv2d_29/bias/v
(:&
��@2Adam/dense_25/kernel/v
 :@2Adam/dense_25/bias/v
&:$@ 2Adam/dense_26/kernel/v
 : 2Adam/dense_26/bias/v
&:$ $2Adam/dense_27/kernel/v
 :$2Adam/dense_27/bias/v�
!__inference__wrapped_model_216320{$%&-.CDYZhiwx�2�/
(�%
#� 
input_10����������}
� "3�0
.
dense_27"�
dense_27���������$�
E__inference_conv2d_27_layer_call_and_return_conditional_losses_217470m-.8�5
.�+
)�&
inputs����������?
� "-�*
#� 
0���������~= 
� �
*__inference_conv2d_27_layer_call_fn_217459`-.8�5
.�+
)�&
inputs����������?
� " ����������~= �
E__inference_conv2d_28_layer_call_and_return_conditional_losses_217527lCD7�4
-�*
(�%
inputs���������? 
� "-�*
#� 
0���������=@
� �
*__inference_conv2d_28_layer_call_fn_217516_CD7�4
-�*
(�%
inputs���������? 
� " ����������=@�
E__inference_conv2d_29_layer_call_and_return_conditional_losses_217584lYZ7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
*__inference_conv2d_29_layer_call_fn_217573_YZ7�4
-�*
(�%
inputs���������@
� " ����������@�
D__inference_dense_25_layer_call_and_return_conditional_losses_217615^hi1�.
'�$
"�
inputs�����������
� "%�"
�
0���������@
� ~
)__inference_dense_25_layer_call_fn_217604Qhi1�.
'�$
"�
inputs�����������
� "����������@�
D__inference_dense_26_layer_call_and_return_conditional_losses_217662\wx/�,
%�"
 �
inputs���������@
� "%�"
�
0��������� 
� |
)__inference_dense_26_layer_call_fn_217651Owx/�,
%�"
 �
inputs���������@
� "���������� �
D__inference_dense_27_layer_call_and_return_conditional_losses_217682]�/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������$
� }
)__inference_dense_27_layer_call_fn_217671P�/�,
%�"
 �
inputs��������� 
� "����������$�
F__inference_dropout_23_layer_call_and_return_conditional_losses_217495l;�8
1�.
(�%
inputs���������? 
p 
� "-�*
#� 
0���������? 
� �
F__inference_dropout_23_layer_call_and_return_conditional_losses_217507l;�8
1�.
(�%
inputs���������? 
p
� "-�*
#� 
0���������? 
� �
+__inference_dropout_23_layer_call_fn_217485_;�8
1�.
(�%
inputs���������? 
p 
� " ����������? �
+__inference_dropout_23_layer_call_fn_217490_;�8
1�.
(�%
inputs���������? 
p
� " ����������? �
F__inference_dropout_24_layer_call_and_return_conditional_losses_217552l;�8
1�.
(�%
inputs���������@
p 
� "-�*
#� 
0���������@
� �
F__inference_dropout_24_layer_call_and_return_conditional_losses_217564l;�8
1�.
(�%
inputs���������@
p
� "-�*
#� 
0���������@
� �
+__inference_dropout_24_layer_call_fn_217542_;�8
1�.
(�%
inputs���������@
p 
� " ����������@�
+__inference_dropout_24_layer_call_fn_217547_;�8
1�.
(�%
inputs���������@
p
� " ����������@�
F__inference_dropout_25_layer_call_and_return_conditional_losses_217630\3�0
)�&
 �
inputs���������@
p 
� "%�"
�
0���������@
� �
F__inference_dropout_25_layer_call_and_return_conditional_losses_217642\3�0
)�&
 �
inputs���������@
p
� "%�"
�
0���������@
� ~
+__inference_dropout_25_layer_call_fn_217620O3�0
)�&
 �
inputs���������@
p 
� "����������@~
+__inference_dropout_25_layer_call_fn_217625O3�0
)�&
 �
inputs���������@
p
� "����������@�
E__inference_flatten_8_layer_call_and_return_conditional_losses_217595b7�4
-�*
(�%
inputs���������@
� "'�$
�
0�����������
� �
*__inference_flatten_8_layer_call_fn_217589U7�4
-�*
(�%
inputs���������@
� "�������������
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_217480�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_16_layer_call_fn_217475�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_217537�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_17_layer_call_fn_217532�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_melspectrogram_9_layer_call_and_return_conditional_losses_217450f$%&/�,
%�"
 �
x����������}
� ".�+
$�!
0����������?
� �
1__inference_melspectrogram_9_layer_call_fn_217393Y$%&/�,
%�"
 �
x����������}
� "!�����������?�
E__inference_reshape_9_layer_call_and_return_conditional_losses_217382^0�-
&�#
!�
inputs����������}
� "*�'
 �
0����������}
� 
*__inference_reshape_9_layer_call_fn_217369Q0�-
&�#
!�
inputs����������}
� "�����������}�
H__inference_sequential_9_layer_call_and_return_conditional_losses_216952u$%&-.CDYZhiwx�:�7
0�-
#� 
input_10����������}
p 

 
� "%�"
�
0���������$
� �
H__inference_sequential_9_layer_call_and_return_conditional_losses_217000u$%&-.CDYZhiwx�:�7
0�-
#� 
input_10����������}
p

 
� "%�"
�
0���������$
� �
H__inference_sequential_9_layer_call_and_return_conditional_losses_217228s$%&-.CDYZhiwx�8�5
.�+
!�
inputs����������}
p 

 
� "%�"
�
0���������$
� �
H__inference_sequential_9_layer_call_and_return_conditional_losses_217364s$%&-.CDYZhiwx�8�5
.�+
!�
inputs����������}
p

 
� "%�"
�
0���������$
� �
-__inference_sequential_9_layer_call_fn_216598h$%&-.CDYZhiwx�:�7
0�-
#� 
input_10����������}
p 

 
� "����������$�
-__inference_sequential_9_layer_call_fn_216904h$%&-.CDYZhiwx�:�7
0�-
#� 
input_10����������}
p

 
� "����������$�
-__inference_sequential_9_layer_call_fn_217078f$%&-.CDYZhiwx�8�5
.�+
!�
inputs����������}
p 

 
� "����������$�
-__inference_sequential_9_layer_call_fn_217113f$%&-.CDYZhiwx�8�5
.�+
!�
inputs����������}
p

 
� "����������$�
$__inference_signature_wrapper_217043�$%&-.CDYZhiwx�>�;
� 
4�1
/
input_10#� 
input_10����������}"3�0
.
dense_27"�
dense_27���������$