ó3
Ñ§
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
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

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

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

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
¾
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
 "serve*2.5.02v2.5.0-0-ga4dfb8d1a718ÕÎ$
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:  *
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:@@*
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:@@*
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:@@*
dtype0

conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:@ *
dtype0

conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:@ *
dtype0

conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:  *
dtype0

conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:@ *
dtype0

conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:  *
dtype0

conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:  *
dtype0

conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`@*!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
:`@*
dtype0

conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
:@@*
dtype0

conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
:@@*
dtype0

conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_13/kernel
~
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*'
_output_shapes
:@*
dtype0

conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
:@@*
dtype0

conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_18/kernel

$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*(
_output_shapes
:*
dtype0

conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_19/kernel

$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*(
_output_shapes
:*
dtype0

conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_17/kernel

$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*(
_output_shapes
:*
dtype0

conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_20/kernel

$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*(
_output_shapes
:*
dtype0

conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_21/kernel

$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*(
_output_shapes
:*
dtype0

conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_23/kernel

$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*(
_output_shapes
:*
dtype0

conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_24/kernel

$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*(
_output_shapes
:*
dtype0

conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_22/kernel

$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*(
_output_shapes
:*
dtype0

conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_25/kernel

$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*(
_output_shapes
:*
dtype0

conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_26/kernel

$conv2d_26/kernel/Read/ReadVariableOpReadVariableOpconv2d_26/kernel*(
_output_shapes
:*
dtype0

conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_31/kernel
~
$conv2d_31/kernel/Read/ReadVariableOpReadVariableOpconv2d_31/kernel*'
_output_shapes
:@*
dtype0

conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*!
shared_nameconv2d_27/kernel
~
$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*'
_output_shapes
:`*
dtype0

conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_29/kernel
~
$conv2d_29/kernel/Read/ReadVariableOpReadVariableOpconv2d_29/kernel*'
_output_shapes
:@*
dtype0

conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_32/kernel
}
$conv2d_32/kernel/Read/ReadVariableOpReadVariableOpconv2d_32/kernel*&
_output_shapes
:@@*
dtype0

conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:``*!
shared_nameconv2d_28/kernel
}
$conv2d_28/kernel/Read/ReadVariableOpReadVariableOpconv2d_28/kernel*&
_output_shapes
:``*
dtype0

conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_30/kernel
}
$conv2d_30/kernel/Read/ReadVariableOpReadVariableOpconv2d_30/kernel*&
_output_shapes
:@@*
dtype0

conv2d_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_33/kernel
}
$conv2d_33/kernel/Read/ReadVariableOpReadVariableOpconv2d_33/kernel*&
_output_shapes
:@@*
dtype0

conv2d_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:àÀ*!
shared_nameconv2d_35/kernel

$conv2d_35/kernel/Read/ReadVariableOpReadVariableOpconv2d_35/kernel*(
_output_shapes
:àÀ*
dtype0

conv2d_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ÀÀ*!
shared_nameconv2d_36/kernel

$conv2d_36/kernel/Read/ReadVariableOpReadVariableOpconv2d_36/kernel*(
_output_shapes
:ÀÀ*
dtype0

conv2d_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:àÀ*!
shared_nameconv2d_34/kernel

$conv2d_34/kernel/Read/ReadVariableOpReadVariableOpconv2d_34/kernel*(
_output_shapes
:àÀ*
dtype0

conv2d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ÀÀ*!
shared_nameconv2d_37/kernel

$conv2d_37/kernel/Read/ReadVariableOpReadVariableOpconv2d_37/kernel*(
_output_shapes
:ÀÀ*
dtype0

conv2d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:à*!
shared_nameconv2d_38/kernel

$conv2d_38/kernel/Read/ReadVariableOpReadVariableOpconv2d_38/kernel*(
_output_shapes
:à*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	à5*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	à5*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:5*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:5*
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

Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/m

(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/conv2d_1/kernel/m

*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
:  *
dtype0

Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_2/kernel/m

*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_3/kernel/m

*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_4/kernel/m

*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_5/kernel/m

*Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_9/kernel/m

*Adam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/m*&
_output_shapes
:@ *
dtype0

Adam/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_7/kernel/m

*Adam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/m*&
_output_shapes
:@ *
dtype0

Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_10/kernel/m

+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*&
_output_shapes
:  *
dtype0

Adam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_6/kernel/m

*Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/m*&
_output_shapes
:@ *
dtype0

Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/conv2d_8/kernel/m

*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*&
_output_shapes
:  *
dtype0

Adam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_11/kernel/m

+Adam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/m*&
_output_shapes
:  *
dtype0

Adam/conv2d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`@*(
shared_nameAdam/conv2d_12/kernel/m

+Adam/conv2d_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/m*&
_output_shapes
:`@*
dtype0

Adam/conv2d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_14/kernel/m

+Adam/conv2d_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_15/kernel/m

+Adam/conv2d_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_13/kernel/m

+Adam/conv2d_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_16/kernel/m

+Adam/conv2d_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_18/kernel/m

+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_19/kernel/m

+Adam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_17/kernel/m

+Adam/conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_20/kernel/m

+Adam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_21/kernel/m

+Adam/conv2d_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_23/kernel/m

+Adam/conv2d_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_24/kernel/m

+Adam/conv2d_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_22/kernel/m

+Adam/conv2d_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_25/kernel/m

+Adam/conv2d_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_26/kernel/m

+Adam/conv2d_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_31/kernel/m

+Adam/conv2d_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*(
shared_nameAdam/conv2d_27/kernel/m

+Adam/conv2d_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/m*'
_output_shapes
:`*
dtype0

Adam/conv2d_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_29/kernel/m

+Adam/conv2d_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_32/kernel/m

+Adam/conv2d_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:``*(
shared_nameAdam/conv2d_28/kernel/m

+Adam/conv2d_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/m*&
_output_shapes
:``*
dtype0

Adam/conv2d_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_30/kernel/m

+Adam/conv2d_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_33/kernel/m

+Adam/conv2d_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:àÀ*(
shared_nameAdam/conv2d_35/kernel/m

+Adam/conv2d_35/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_35/kernel/m*(
_output_shapes
:àÀ*
dtype0

Adam/conv2d_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ÀÀ*(
shared_nameAdam/conv2d_36/kernel/m

+Adam/conv2d_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/kernel/m*(
_output_shapes
:ÀÀ*
dtype0

Adam/conv2d_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:àÀ*(
shared_nameAdam/conv2d_34/kernel/m

+Adam/conv2d_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_34/kernel/m*(
_output_shapes
:àÀ*
dtype0

Adam/conv2d_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ÀÀ*(
shared_nameAdam/conv2d_37/kernel/m

+Adam/conv2d_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/kernel/m*(
_output_shapes
:ÀÀ*
dtype0

Adam/conv2d_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:à*(
shared_nameAdam/conv2d_38/kernel/m

+Adam/conv2d_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/kernel/m*(
_output_shapes
:à*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	à5*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	à5*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:5*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:5*
dtype0

Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/v

(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/conv2d_1/kernel/v

*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
:  *
dtype0

Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_2/kernel/v

*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_3/kernel/v

*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_4/kernel/v

*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_5/kernel/v

*Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_9/kernel/v

*Adam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/v*&
_output_shapes
:@ *
dtype0

Adam/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_7/kernel/v

*Adam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/v*&
_output_shapes
:@ *
dtype0

Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_10/kernel/v

+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*&
_output_shapes
:  *
dtype0

Adam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_6/kernel/v

*Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/v*&
_output_shapes
:@ *
dtype0

Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/conv2d_8/kernel/v

*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*&
_output_shapes
:  *
dtype0

Adam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_11/kernel/v

+Adam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/v*&
_output_shapes
:  *
dtype0

Adam/conv2d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`@*(
shared_nameAdam/conv2d_12/kernel/v

+Adam/conv2d_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/v*&
_output_shapes
:`@*
dtype0

Adam/conv2d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_14/kernel/v

+Adam/conv2d_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_15/kernel/v

+Adam/conv2d_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_13/kernel/v

+Adam/conv2d_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_16/kernel/v

+Adam/conv2d_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_18/kernel/v

+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_19/kernel/v

+Adam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_17/kernel/v

+Adam/conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_20/kernel/v

+Adam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_21/kernel/v

+Adam/conv2d_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_23/kernel/v

+Adam/conv2d_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_24/kernel/v

+Adam/conv2d_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_22/kernel/v

+Adam/conv2d_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_25/kernel/v

+Adam/conv2d_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_26/kernel/v

+Adam/conv2d_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_31/kernel/v

+Adam/conv2d_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*(
shared_nameAdam/conv2d_27/kernel/v

+Adam/conv2d_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/v*'
_output_shapes
:`*
dtype0

Adam/conv2d_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_29/kernel/v

+Adam/conv2d_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_32/kernel/v

+Adam/conv2d_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:``*(
shared_nameAdam/conv2d_28/kernel/v

+Adam/conv2d_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/v*&
_output_shapes
:``*
dtype0

Adam/conv2d_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_30/kernel/v

+Adam/conv2d_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_33/kernel/v

+Adam/conv2d_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:àÀ*(
shared_nameAdam/conv2d_35/kernel/v

+Adam/conv2d_35/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_35/kernel/v*(
_output_shapes
:àÀ*
dtype0

Adam/conv2d_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ÀÀ*(
shared_nameAdam/conv2d_36/kernel/v

+Adam/conv2d_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/kernel/v*(
_output_shapes
:ÀÀ*
dtype0

Adam/conv2d_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:àÀ*(
shared_nameAdam/conv2d_34/kernel/v

+Adam/conv2d_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_34/kernel/v*(
_output_shapes
:àÀ*
dtype0

Adam/conv2d_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ÀÀ*(
shared_nameAdam/conv2d_37/kernel/v

+Adam/conv2d_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/kernel/v*(
_output_shapes
:ÀÀ*
dtype0

Adam/conv2d_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:à*(
shared_nameAdam/conv2d_38/kernel/v

+Adam/conv2d_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/kernel/v*(
_output_shapes
:à*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	à5*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	à5*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:5*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:5*
dtype0

NoOpNoOp
Î
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueýBù Bñ
Ï
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
layer_with_weights-10
layer-11
layer_with_weights-11
layer-12
layer-13
layer_with_weights-12
layer-14
layer-15
layer-16
layer_with_weights-13
layer-17
layer_with_weights-14
layer-18
layer-19
layer_with_weights-15
layer-20
layer_with_weights-16
layer-21
layer-22
layer_with_weights-17
layer-23
layer_with_weights-18
layer-24
layer_with_weights-19
layer-25
layer_with_weights-20
layer-26
layer-27
layer_with_weights-21
layer-28
layer-29
layer-30
 layer_with_weights-22
 layer-31
!layer_with_weights-23
!layer-32
"layer_with_weights-24
"layer-33
#layer_with_weights-25
#layer-34
$layer-35
%layer_with_weights-26
%layer-36
&layer-37
'layer-38
(layer_with_weights-27
(layer-39
)layer_with_weights-28
)layer-40
*layer_with_weights-29
*layer-41
+layer_with_weights-30
+layer-42
,layer-43
-layer_with_weights-31
-layer-44
.layer_with_weights-32
.layer-45
/layer_with_weights-33
/layer-46
0layer-47
1layer_with_weights-34
1layer-48
2layer_with_weights-35
2layer-49
3layer_with_weights-36
3layer-50
4layer_with_weights-37
4layer-51
5layer-52
6layer_with_weights-38
6layer-53
7layer-54
8layer-55
9layer-56
:layer-57
;layer_with_weights-39
;layer-58
<	optimizer
=regularization_losses
>	variables
?trainable_variables
@	keras_api
A
signatures
 
^

Bkernel
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
^

Gkernel
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
^

Lkernel
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
^

Qkernel
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
^

Vkernel
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
^

[kernel
\regularization_losses
]	variables
^trainable_variables
_	keras_api
^

`kernel
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
^

ekernel
fregularization_losses
g	variables
htrainable_variables
i	keras_api
^

jkernel
kregularization_losses
l	variables
mtrainable_variables
n	keras_api
^

okernel
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
^

tkernel
uregularization_losses
v	variables
wtrainable_variables
x	keras_api
^

ykernel
zregularization_losses
{	variables
|trainable_variables
}	keras_api
T
~regularization_losses
	variables
trainable_variables
	keras_api
c
kernel
regularization_losses
	variables
trainable_variables
	keras_api

	keras_api
V
regularization_losses
	variables
trainable_variables
	keras_api
c
kernel
regularization_losses
	variables
trainable_variables
	keras_api
c
kernel
regularization_losses
	variables
trainable_variables
	keras_api
V
regularization_losses
	variables
trainable_variables
	keras_api
c
kernel
regularization_losses
	variables
trainable_variables
	keras_api
c
kernel
 regularization_losses
¡	variables
¢trainable_variables
£	keras_api
V
¤regularization_losses
¥	variables
¦trainable_variables
§	keras_api
c
¨kernel
©regularization_losses
ª	variables
«trainable_variables
¬	keras_api
c
­kernel
®regularization_losses
¯	variables
°trainable_variables
±	keras_api
c
²kernel
³regularization_losses
´	variables
µtrainable_variables
¶	keras_api
c
·kernel
¸regularization_losses
¹	variables
ºtrainable_variables
»	keras_api
V
¼regularization_losses
½	variables
¾trainable_variables
¿	keras_api
c
Àkernel
Áregularization_losses
Â	variables
Ãtrainable_variables
Ä	keras_api

Å	keras_api
V
Æregularization_losses
Ç	variables
Ètrainable_variables
É	keras_api
c
Êkernel
Ëregularization_losses
Ì	variables
Ítrainable_variables
Î	keras_api
c
Ïkernel
Ðregularization_losses
Ñ	variables
Òtrainable_variables
Ó	keras_api
c
Ôkernel
Õregularization_losses
Ö	variables
×trainable_variables
Ø	keras_api
c
Ùkernel
Úregularization_losses
Û	variables
Ütrainable_variables
Ý	keras_api
V
Þregularization_losses
ß	variables
àtrainable_variables
á	keras_api
c
âkernel
ãregularization_losses
ä	variables
åtrainable_variables
æ	keras_api

ç	keras_api
V
èregularization_losses
é	variables
êtrainable_variables
ë	keras_api
c
ìkernel
íregularization_losses
î	variables
ïtrainable_variables
ð	keras_api
c
ñkernel
òregularization_losses
ó	variables
ôtrainable_variables
õ	keras_api
c
ökernel
÷regularization_losses
ø	variables
ùtrainable_variables
ú	keras_api
c
ûkernel
üregularization_losses
ý	variables
þtrainable_variables
ÿ	keras_api
V
regularization_losses
	variables
trainable_variables
	keras_api
c
kernel
regularization_losses
	variables
trainable_variables
	keras_api
c
kernel
regularization_losses
	variables
trainable_variables
	keras_api
c
kernel
regularization_losses
	variables
trainable_variables
	keras_api
V
regularization_losses
	variables
trainable_variables
	keras_api
c
kernel
regularization_losses
	variables
trainable_variables
	keras_api
c
kernel
regularization_losses
	variables
trainable_variables
 	keras_api
c
¡kernel
¢regularization_losses
£	variables
¤trainable_variables
¥	keras_api
c
¦kernel
§regularization_losses
¨	variables
©trainable_variables
ª	keras_api
V
«regularization_losses
¬	variables
­trainable_variables
®	keras_api
c
¯kernel
°regularization_losses
±	variables
²trainable_variables
³	keras_api

´	keras_api
V
µregularization_losses
¶	variables
·trainable_variables
¸	keras_api
V
¹regularization_losses
º	variables
»trainable_variables
¼	keras_api
V
½regularization_losses
¾	variables
¿trainable_variables
À	keras_api
n
Ákernel
	Âbias
Ãregularization_losses
Ä	variables
Åtrainable_variables
Æ	keras_api
³
	Çiter
Èbeta_1
Ébeta_2

Êdecay
Ëlearning_rateBmêGmëLmìQmíVmî[mï`mðemñjmòomótmôymõ	mö	m÷	mø	mù	mú	¨mû	­mü	²mý	·mþ	Àmÿ	Êm	Ïm	Ôm	Ùm	âm	ìm	ñm	öm	ûm	m	m	m	m	m	¡m	¦m	¯m	Ám	ÂmBvGvLvQvVv[v`vevjvovtvyv	v	v 	v¡	v¢	v£	¨v¤	­v¥	²v¦	·v§	Àv¨	Êv©	Ïvª	Ôv«	Ùv¬	âv­	ìv®	ñv¯	öv°	ûv±	v²	v³	v´	vµ	v¶	¡v·	¦v¸	¯v¹	Ávº	Âv»
 
Û
B0
G1
L2
Q3
V4
[5
`6
e7
j8
o9
t10
y11
12
13
14
15
16
¨17
­18
²19
·20
À21
Ê22
Ï23
Ô24
Ù25
â26
ì27
ñ28
ö29
û30
31
32
33
34
35
¡36
¦37
¯38
Á39
Â40
Û
B0
G1
L2
Q3
V4
[5
`6
e7
j8
o9
t10
y11
12
13
14
15
16
¨17
­18
²19
·20
À21
Ê22
Ï23
Ô24
Ù25
â26
ì27
ñ28
ö29
û30
31
32
33
34
35
¡36
¦37
¯38
Á39
Â40
²
=regularization_losses
Ìnon_trainable_variables
>	variables
Ímetrics
 Îlayer_regularization_losses
Ïlayers
Ðlayer_metrics
?trainable_variables
 
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

B0

B0
²
Cregularization_losses
Ñnon_trainable_variables
D	variables
Òmetrics
 Ólayer_regularization_losses
Ôlayers
Õlayer_metrics
Etrainable_variables
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

G0

G0
²
Hregularization_losses
Önon_trainable_variables
I	variables
×metrics
 Ølayer_regularization_losses
Ùlayers
Úlayer_metrics
Jtrainable_variables
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

L0

L0
²
Mregularization_losses
Ûnon_trainable_variables
N	variables
Ümetrics
 Ýlayer_regularization_losses
Þlayers
ßlayer_metrics
Otrainable_variables
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

Q0

Q0
²
Rregularization_losses
ànon_trainable_variables
S	variables
ámetrics
 âlayer_regularization_losses
ãlayers
älayer_metrics
Ttrainable_variables
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

V0

V0
²
Wregularization_losses
ånon_trainable_variables
X	variables
æmetrics
 çlayer_regularization_losses
èlayers
élayer_metrics
Ytrainable_variables
[Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

[0

[0
²
\regularization_losses
ênon_trainable_variables
]	variables
ëmetrics
 ìlayer_regularization_losses
ílayers
îlayer_metrics
^trainable_variables
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

`0

`0
²
aregularization_losses
ïnon_trainable_variables
b	variables
ðmetrics
 ñlayer_regularization_losses
òlayers
ólayer_metrics
ctrainable_variables
[Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

e0

e0
²
fregularization_losses
ônon_trainable_variables
g	variables
õmetrics
 ölayer_regularization_losses
÷layers
ølayer_metrics
htrainable_variables
\Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

j0

j0
²
kregularization_losses
ùnon_trainable_variables
l	variables
úmetrics
 ûlayer_regularization_losses
ülayers
ýlayer_metrics
mtrainable_variables
[Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

o0

o0
²
pregularization_losses
þnon_trainable_variables
q	variables
ÿmetrics
 layer_regularization_losses
layers
layer_metrics
rtrainable_variables
\Z
VARIABLE_VALUEconv2d_8/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

t0

t0
²
uregularization_losses
non_trainable_variables
v	variables
metrics
 layer_regularization_losses
layers
layer_metrics
wtrainable_variables
][
VARIABLE_VALUEconv2d_11/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

y0

y0
²
zregularization_losses
non_trainable_variables
{	variables
metrics
 layer_regularization_losses
layers
layer_metrics
|trainable_variables
 
 
 
³
~regularization_losses
non_trainable_variables
	variables
metrics
 layer_regularization_losses
layers
layer_metrics
trainable_variables
][
VARIABLE_VALUEconv2d_12/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
µ
regularization_losses
non_trainable_variables
	variables
metrics
 layer_regularization_losses
layers
layer_metrics
trainable_variables
 
 
 
 
µ
regularization_losses
non_trainable_variables
	variables
metrics
 layer_regularization_losses
layers
layer_metrics
trainable_variables
][
VARIABLE_VALUEconv2d_14/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
µ
regularization_losses
non_trainable_variables
	variables
metrics
 layer_regularization_losses
layers
 layer_metrics
trainable_variables
][
VARIABLE_VALUEconv2d_15/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
µ
regularization_losses
¡non_trainable_variables
	variables
¢metrics
 £layer_regularization_losses
¤layers
¥layer_metrics
trainable_variables
 
 
 
µ
regularization_losses
¦non_trainable_variables
	variables
§metrics
 ¨layer_regularization_losses
©layers
ªlayer_metrics
trainable_variables
][
VARIABLE_VALUEconv2d_13/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
µ
regularization_losses
«non_trainable_variables
	variables
¬metrics
 ­layer_regularization_losses
®layers
¯layer_metrics
trainable_variables
][
VARIABLE_VALUEconv2d_16/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
µ
 regularization_losses
°non_trainable_variables
¡	variables
±metrics
 ²layer_regularization_losses
³layers
´layer_metrics
¢trainable_variables
 
 
 
µ
¤regularization_losses
µnon_trainable_variables
¥	variables
¶metrics
 ·layer_regularization_losses
¸layers
¹layer_metrics
¦trainable_variables
][
VARIABLE_VALUEconv2d_18/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

¨0

¨0
µ
©regularization_losses
ºnon_trainable_variables
ª	variables
»metrics
 ¼layer_regularization_losses
½layers
¾layer_metrics
«trainable_variables
][
VARIABLE_VALUEconv2d_19/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

­0

­0
µ
®regularization_losses
¿non_trainable_variables
¯	variables
Àmetrics
 Álayer_regularization_losses
Âlayers
Ãlayer_metrics
°trainable_variables
][
VARIABLE_VALUEconv2d_17/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

²0

²0
µ
³regularization_losses
Änon_trainable_variables
´	variables
Åmetrics
 Ælayer_regularization_losses
Çlayers
Èlayer_metrics
µtrainable_variables
][
VARIABLE_VALUEconv2d_20/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

·0

·0
µ
¸regularization_losses
Énon_trainable_variables
¹	variables
Êmetrics
 Ëlayer_regularization_losses
Ìlayers
Ílayer_metrics
ºtrainable_variables
 
 
 
µ
¼regularization_losses
Înon_trainable_variables
½	variables
Ïmetrics
 Ðlayer_regularization_losses
Ñlayers
Òlayer_metrics
¾trainable_variables
][
VARIABLE_VALUEconv2d_21/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

À0

À0
µ
Áregularization_losses
Ónon_trainable_variables
Â	variables
Ômetrics
 Õlayer_regularization_losses
Ölayers
×layer_metrics
Ãtrainable_variables
 
 
 
 
µ
Æregularization_losses
Ønon_trainable_variables
Ç	variables
Ùmetrics
 Úlayer_regularization_losses
Ûlayers
Ülayer_metrics
Ètrainable_variables
][
VARIABLE_VALUEconv2d_23/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

Ê0

Ê0
µ
Ëregularization_losses
Ýnon_trainable_variables
Ì	variables
Þmetrics
 ßlayer_regularization_losses
àlayers
álayer_metrics
Ítrainable_variables
][
VARIABLE_VALUEconv2d_24/kernel7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

Ï0

Ï0
µ
Ðregularization_losses
ânon_trainable_variables
Ñ	variables
ãmetrics
 älayer_regularization_losses
ålayers
ælayer_metrics
Òtrainable_variables
][
VARIABLE_VALUEconv2d_22/kernel7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

Ô0

Ô0
µ
Õregularization_losses
çnon_trainable_variables
Ö	variables
èmetrics
 élayer_regularization_losses
êlayers
ëlayer_metrics
×trainable_variables
][
VARIABLE_VALUEconv2d_25/kernel7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

Ù0

Ù0
µ
Úregularization_losses
ìnon_trainable_variables
Û	variables
ímetrics
 îlayer_regularization_losses
ïlayers
ðlayer_metrics
Ütrainable_variables
 
 
 
µ
Þregularization_losses
ñnon_trainable_variables
ß	variables
òmetrics
 ólayer_regularization_losses
ôlayers
õlayer_metrics
àtrainable_variables
][
VARIABLE_VALUEconv2d_26/kernel7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

â0

â0
µ
ãregularization_losses
önon_trainable_variables
ä	variables
÷metrics
 ølayer_regularization_losses
ùlayers
úlayer_metrics
åtrainable_variables
 
 
 
 
µ
èregularization_losses
ûnon_trainable_variables
é	variables
ümetrics
 ýlayer_regularization_losses
þlayers
ÿlayer_metrics
êtrainable_variables
][
VARIABLE_VALUEconv2d_31/kernel7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

ì0

ì0
µ
íregularization_losses
non_trainable_variables
î	variables
metrics
 layer_regularization_losses
layers
layer_metrics
ïtrainable_variables
][
VARIABLE_VALUEconv2d_27/kernel7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

ñ0

ñ0
µ
òregularization_losses
non_trainable_variables
ó	variables
metrics
 layer_regularization_losses
layers
layer_metrics
ôtrainable_variables
][
VARIABLE_VALUEconv2d_29/kernel7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

ö0

ö0
µ
÷regularization_losses
non_trainable_variables
ø	variables
metrics
 layer_regularization_losses
layers
layer_metrics
ùtrainable_variables
][
VARIABLE_VALUEconv2d_32/kernel7layer_with_weights-30/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

û0

û0
µ
üregularization_losses
non_trainable_variables
ý	variables
metrics
 layer_regularization_losses
layers
layer_metrics
þtrainable_variables
 
 
 
µ
regularization_losses
non_trainable_variables
	variables
metrics
 layer_regularization_losses
layers
layer_metrics
trainable_variables
][
VARIABLE_VALUEconv2d_28/kernel7layer_with_weights-31/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
µ
regularization_losses
non_trainable_variables
	variables
metrics
 layer_regularization_losses
layers
layer_metrics
trainable_variables
][
VARIABLE_VALUEconv2d_30/kernel7layer_with_weights-32/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
µ
regularization_losses
non_trainable_variables
	variables
metrics
  layer_regularization_losses
¡layers
¢layer_metrics
trainable_variables
][
VARIABLE_VALUEconv2d_33/kernel7layer_with_weights-33/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
µ
regularization_losses
£non_trainable_variables
	variables
¤metrics
 ¥layer_regularization_losses
¦layers
§layer_metrics
trainable_variables
 
 
 
µ
regularization_losses
¨non_trainable_variables
	variables
©metrics
 ªlayer_regularization_losses
«layers
¬layer_metrics
trainable_variables
][
VARIABLE_VALUEconv2d_35/kernel7layer_with_weights-34/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
µ
regularization_losses
­non_trainable_variables
	variables
®metrics
 ¯layer_regularization_losses
°layers
±layer_metrics
trainable_variables
][
VARIABLE_VALUEconv2d_36/kernel7layer_with_weights-35/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
µ
regularization_losses
²non_trainable_variables
	variables
³metrics
 ´layer_regularization_losses
µlayers
¶layer_metrics
trainable_variables
][
VARIABLE_VALUEconv2d_34/kernel7layer_with_weights-36/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

¡0

¡0
µ
¢regularization_losses
·non_trainable_variables
£	variables
¸metrics
 ¹layer_regularization_losses
ºlayers
»layer_metrics
¤trainable_variables
][
VARIABLE_VALUEconv2d_37/kernel7layer_with_weights-37/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

¦0

¦0
µ
§regularization_losses
¼non_trainable_variables
¨	variables
½metrics
 ¾layer_regularization_losses
¿layers
Àlayer_metrics
©trainable_variables
 
 
 
µ
«regularization_losses
Ánon_trainable_variables
¬	variables
Âmetrics
 Ãlayer_regularization_losses
Älayers
Ålayer_metrics
­trainable_variables
][
VARIABLE_VALUEconv2d_38/kernel7layer_with_weights-38/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

¯0

¯0
µ
°regularization_losses
Ænon_trainable_variables
±	variables
Çmetrics
 Èlayer_regularization_losses
Élayers
Êlayer_metrics
²trainable_variables
 
 
 
 
µ
µregularization_losses
Ënon_trainable_variables
¶	variables
Ìmetrics
 Ílayer_regularization_losses
Îlayers
Ïlayer_metrics
·trainable_variables
 
 
 
µ
¹regularization_losses
Ðnon_trainable_variables
º	variables
Ñmetrics
 Òlayer_regularization_losses
Ólayers
Ôlayer_metrics
»trainable_variables
 
 
 
µ
½regularization_losses
Õnon_trainable_variables
¾	variables
Ömetrics
 ×layer_regularization_losses
Ølayers
Ùlayer_metrics
¿trainable_variables
YW
VARIABLE_VALUEdense/kernel7layer_with_weights-39/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
dense/bias5layer_with_weights-39/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Á0
Â1

Á0
Â1
µ
Ãregularization_losses
Únon_trainable_variables
Ä	variables
Ûmetrics
 Ülayer_regularization_losses
Ýlayers
Þlayer_metrics
Åtrainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

ß0
à1
 
Î
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
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46
047
148
249
350
451
552
653
754
855
956
:57
;58
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
8

átotal

âcount
ã	variables
ä	keras_api
I

åtotal

æcount
ç
_fn_kwargs
è	variables
é	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

á0
â1

ã	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

å0
æ1

è	variables
|z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_5/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_7/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_10/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_6/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_8/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_11/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_12/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_14/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_15/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_13/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_16/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_18/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_19/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_17/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_20/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_21/kernel/mSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_23/kernel/mSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_24/kernel/mSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_22/kernel/mSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_25/kernel/mSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_26/kernel/mSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_31/kernel/mSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_27/kernel/mSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_29/kernel/mSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_32/kernel/mSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_28/kernel/mSlayer_with_weights-31/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_30/kernel/mSlayer_with_weights-32/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_33/kernel/mSlayer_with_weights-33/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_35/kernel/mSlayer_with_weights-34/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_36/kernel/mSlayer_with_weights-35/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_34/kernel/mSlayer_with_weights-36/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_37/kernel/mSlayer_with_weights-37/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_38/kernel/mSlayer_with_weights-38/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/mSlayer_with_weights-39/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/mQlayer_with_weights-39/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_5/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_7/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_10/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_6/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_8/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_11/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_12/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_14/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_15/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_13/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_16/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_18/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_19/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_17/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_20/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_21/kernel/vSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_23/kernel/vSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_24/kernel/vSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_22/kernel/vSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_25/kernel/vSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_26/kernel/vSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_31/kernel/vSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_27/kernel/vSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_29/kernel/vSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_32/kernel/vSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_28/kernel/vSlayer_with_weights-31/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_30/kernel/vSlayer_with_weights-32/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_33/kernel/vSlayer_with_weights-33/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_35/kernel/vSlayer_with_weights-34/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_36/kernel/vSlayer_with_weights-35/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_34/kernel/vSlayer_with_weights-36/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_37/kernel/vSlayer_with_weights-37/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_38/kernel/vSlayer_with_weights-38/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/vSlayer_with_weights-39/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/vQlayer_with_weights-39/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_1Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿUU
Ò
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d_1/kernelconv2d_2/kernelconv2d_3/kernelconv2d_4/kernelconv2d_5/kernelconv2d_9/kernelconv2d_10/kernelconv2d_7/kernelconv2d_6/kernelconv2d_8/kernelconv2d_11/kernelconv2d_12/kernelconv2d_14/kernelconv2d_15/kernelconv2d_13/kernelconv2d_16/kernelconv2d_18/kernelconv2d_19/kernelconv2d_17/kernelconv2d_20/kernelconv2d_21/kernelconv2d_23/kernelconv2d_24/kernelconv2d_22/kernelconv2d_25/kernelconv2d_26/kernelconv2d_31/kernelconv2d_32/kernelconv2d_29/kernelconv2d_27/kernelconv2d_28/kernelconv2d_30/kernelconv2d_33/kernelconv2d_35/kernelconv2d_36/kernelconv2d_34/kernelconv2d_37/kernelconv2d_38/kerneldense/kernel
dense/bias*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ5*K
_read_only_resource_inputs-
+)	
 !"#$%&'()*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_70670
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ü-
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp$conv2d_12/kernel/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp$conv2d_16/kernel/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp$conv2d_24/kernel/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp$conv2d_25/kernel/Read/ReadVariableOp$conv2d_26/kernel/Read/ReadVariableOp$conv2d_31/kernel/Read/ReadVariableOp$conv2d_27/kernel/Read/ReadVariableOp$conv2d_29/kernel/Read/ReadVariableOp$conv2d_32/kernel/Read/ReadVariableOp$conv2d_28/kernel/Read/ReadVariableOp$conv2d_30/kernel/Read/ReadVariableOp$conv2d_33/kernel/Read/ReadVariableOp$conv2d_35/kernel/Read/ReadVariableOp$conv2d_36/kernel/Read/ReadVariableOp$conv2d_34/kernel/Read/ReadVariableOp$conv2d_37/kernel/Read/ReadVariableOp$conv2d_38/kernel/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp*Adam/conv2d_9/kernel/m/Read/ReadVariableOp*Adam/conv2d_7/kernel/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp+Adam/conv2d_11/kernel/m/Read/ReadVariableOp+Adam/conv2d_12/kernel/m/Read/ReadVariableOp+Adam/conv2d_14/kernel/m/Read/ReadVariableOp+Adam/conv2d_15/kernel/m/Read/ReadVariableOp+Adam/conv2d_13/kernel/m/Read/ReadVariableOp+Adam/conv2d_16/kernel/m/Read/ReadVariableOp+Adam/conv2d_18/kernel/m/Read/ReadVariableOp+Adam/conv2d_19/kernel/m/Read/ReadVariableOp+Adam/conv2d_17/kernel/m/Read/ReadVariableOp+Adam/conv2d_20/kernel/m/Read/ReadVariableOp+Adam/conv2d_21/kernel/m/Read/ReadVariableOp+Adam/conv2d_23/kernel/m/Read/ReadVariableOp+Adam/conv2d_24/kernel/m/Read/ReadVariableOp+Adam/conv2d_22/kernel/m/Read/ReadVariableOp+Adam/conv2d_25/kernel/m/Read/ReadVariableOp+Adam/conv2d_26/kernel/m/Read/ReadVariableOp+Adam/conv2d_31/kernel/m/Read/ReadVariableOp+Adam/conv2d_27/kernel/m/Read/ReadVariableOp+Adam/conv2d_29/kernel/m/Read/ReadVariableOp+Adam/conv2d_32/kernel/m/Read/ReadVariableOp+Adam/conv2d_28/kernel/m/Read/ReadVariableOp+Adam/conv2d_30/kernel/m/Read/ReadVariableOp+Adam/conv2d_33/kernel/m/Read/ReadVariableOp+Adam/conv2d_35/kernel/m/Read/ReadVariableOp+Adam/conv2d_36/kernel/m/Read/ReadVariableOp+Adam/conv2d_34/kernel/m/Read/ReadVariableOp+Adam/conv2d_37/kernel/m/Read/ReadVariableOp+Adam/conv2d_38/kernel/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp*Adam/conv2d_9/kernel/v/Read/ReadVariableOp*Adam/conv2d_7/kernel/v/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp+Adam/conv2d_11/kernel/v/Read/ReadVariableOp+Adam/conv2d_12/kernel/v/Read/ReadVariableOp+Adam/conv2d_14/kernel/v/Read/ReadVariableOp+Adam/conv2d_15/kernel/v/Read/ReadVariableOp+Adam/conv2d_13/kernel/v/Read/ReadVariableOp+Adam/conv2d_16/kernel/v/Read/ReadVariableOp+Adam/conv2d_18/kernel/v/Read/ReadVariableOp+Adam/conv2d_19/kernel/v/Read/ReadVariableOp+Adam/conv2d_17/kernel/v/Read/ReadVariableOp+Adam/conv2d_20/kernel/v/Read/ReadVariableOp+Adam/conv2d_21/kernel/v/Read/ReadVariableOp+Adam/conv2d_23/kernel/v/Read/ReadVariableOp+Adam/conv2d_24/kernel/v/Read/ReadVariableOp+Adam/conv2d_22/kernel/v/Read/ReadVariableOp+Adam/conv2d_25/kernel/v/Read/ReadVariableOp+Adam/conv2d_26/kernel/v/Read/ReadVariableOp+Adam/conv2d_31/kernel/v/Read/ReadVariableOp+Adam/conv2d_27/kernel/v/Read/ReadVariableOp+Adam/conv2d_29/kernel/v/Read/ReadVariableOp+Adam/conv2d_32/kernel/v/Read/ReadVariableOp+Adam/conv2d_28/kernel/v/Read/ReadVariableOp+Adam/conv2d_30/kernel/v/Read/ReadVariableOp+Adam/conv2d_33/kernel/v/Read/ReadVariableOp+Adam/conv2d_35/kernel/v/Read/ReadVariableOp+Adam/conv2d_36/kernel/v/Read/ReadVariableOp+Adam/conv2d_34/kernel/v/Read/ReadVariableOp+Adam/conv2d_37/kernel/v/Read/ReadVariableOp+Adam/conv2d_38/kernel/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst*
Tin
2	*
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
GPU2*0J 8 *'
f"R 
__inference__traced_save_72425
§
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d_1/kernelconv2d_2/kernelconv2d_3/kernelconv2d_4/kernelconv2d_5/kernelconv2d_9/kernelconv2d_7/kernelconv2d_10/kernelconv2d_6/kernelconv2d_8/kernelconv2d_11/kernelconv2d_12/kernelconv2d_14/kernelconv2d_15/kernelconv2d_13/kernelconv2d_16/kernelconv2d_18/kernelconv2d_19/kernelconv2d_17/kernelconv2d_20/kernelconv2d_21/kernelconv2d_23/kernelconv2d_24/kernelconv2d_22/kernelconv2d_25/kernelconv2d_26/kernelconv2d_31/kernelconv2d_27/kernelconv2d_29/kernelconv2d_32/kernelconv2d_28/kernelconv2d_30/kernelconv2d_33/kernelconv2d_35/kernelconv2d_36/kernelconv2d_34/kernelconv2d_37/kernelconv2d_38/kerneldense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d/kernel/mAdam/conv2d_1/kernel/mAdam/conv2d_2/kernel/mAdam/conv2d_3/kernel/mAdam/conv2d_4/kernel/mAdam/conv2d_5/kernel/mAdam/conv2d_9/kernel/mAdam/conv2d_7/kernel/mAdam/conv2d_10/kernel/mAdam/conv2d_6/kernel/mAdam/conv2d_8/kernel/mAdam/conv2d_11/kernel/mAdam/conv2d_12/kernel/mAdam/conv2d_14/kernel/mAdam/conv2d_15/kernel/mAdam/conv2d_13/kernel/mAdam/conv2d_16/kernel/mAdam/conv2d_18/kernel/mAdam/conv2d_19/kernel/mAdam/conv2d_17/kernel/mAdam/conv2d_20/kernel/mAdam/conv2d_21/kernel/mAdam/conv2d_23/kernel/mAdam/conv2d_24/kernel/mAdam/conv2d_22/kernel/mAdam/conv2d_25/kernel/mAdam/conv2d_26/kernel/mAdam/conv2d_31/kernel/mAdam/conv2d_27/kernel/mAdam/conv2d_29/kernel/mAdam/conv2d_32/kernel/mAdam/conv2d_28/kernel/mAdam/conv2d_30/kernel/mAdam/conv2d_33/kernel/mAdam/conv2d_35/kernel/mAdam/conv2d_36/kernel/mAdam/conv2d_34/kernel/mAdam/conv2d_37/kernel/mAdam/conv2d_38/kernel/mAdam/dense/kernel/mAdam/dense/bias/mAdam/conv2d/kernel/vAdam/conv2d_1/kernel/vAdam/conv2d_2/kernel/vAdam/conv2d_3/kernel/vAdam/conv2d_4/kernel/vAdam/conv2d_5/kernel/vAdam/conv2d_9/kernel/vAdam/conv2d_7/kernel/vAdam/conv2d_10/kernel/vAdam/conv2d_6/kernel/vAdam/conv2d_8/kernel/vAdam/conv2d_11/kernel/vAdam/conv2d_12/kernel/vAdam/conv2d_14/kernel/vAdam/conv2d_15/kernel/vAdam/conv2d_13/kernel/vAdam/conv2d_16/kernel/vAdam/conv2d_18/kernel/vAdam/conv2d_19/kernel/vAdam/conv2d_17/kernel/vAdam/conv2d_20/kernel/vAdam/conv2d_21/kernel/vAdam/conv2d_23/kernel/vAdam/conv2d_24/kernel/vAdam/conv2d_22/kernel/vAdam/conv2d_25/kernel/vAdam/conv2d_26/kernel/vAdam/conv2d_31/kernel/vAdam/conv2d_27/kernel/vAdam/conv2d_29/kernel/vAdam/conv2d_32/kernel/vAdam/conv2d_28/kernel/vAdam/conv2d_30/kernel/vAdam/conv2d_33/kernel/vAdam/conv2d_35/kernel/vAdam/conv2d_36/kernel/vAdam/conv2d_34/kernel/vAdam/conv2d_37/kernel/vAdam/conv2d_38/kernel/vAdam/dense/kernel/vAdam/dense/bias/v*
Tin
2*
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
GPU2*0J 8 **
f%R#
!__inference__traced_restore_72831Ä

r
H__inference_concatenate_2_layer_call_and_return_conditional_losses_69063

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
·
D__inference_conv2d_23_layer_call_and_return_conditional_losses_69095

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
·
D__inference_conv2d_24_layer_call_and_return_conditional_losses_69107

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è
¶
D__inference_conv2d_31_layer_call_and_return_conditional_losses_69174

inputs9
conv2d_readvariableop_resource:@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é
¶
D__inference_conv2d_29_layer_call_and_return_conditional_losses_69198

inputs9
conv2d_readvariableop_resource:@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
´
C__inference_conv2d_6_layer_call_and_return_conditional_losses_71384

inputs8
conv2d_readvariableop_resource:@ 
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
í
·
D__inference_conv2d_21_layer_call_and_return_conditional_losses_71619

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)__inference_conv2d_12_layer_call_fn_71451

inputs!
unknown:`@
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_689352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$`: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`
 
_user_specified_nameinputs


(__inference_conv2d_1_layer_call_fn_71271

inputs!
unknown:  
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_687932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿSS : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS 
 
_user_specified_nameinputs

e
+__inference_concatenate_layer_call_fn_71436
inputs_0
inputs_1
inputs_2
identityç
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_689252
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿ$$ :ÿÿÿÿÿÿÿÿÿ$$ :ÿÿÿÿÿÿÿÿÿ$$ :Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
"
_user_specified_name
inputs/1:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
"
_user_specified_name
inputs/2
í
·
D__inference_conv2d_26_layer_call_and_return_conditional_losses_69152

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
u
-__inference_concatenate_4_layer_call_fn_71860
inputs_0
inputs_1
inputs_2
inputs_3
identityõ
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_4_layer_call_and_return_conditional_losses_692602
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
inputs/1:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/2:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/3
õ
÷
%__inference_model_layer_call_fn_69451
input_1!
unknown: #
	unknown_0:  #
	unknown_1: @#
	unknown_2:@@#
	unknown_3:@@#
	unknown_4:@@#
	unknown_5:@ #
	unknown_6:  #
	unknown_7:@ #
	unknown_8:@ #
	unknown_9:  $

unknown_10:  $

unknown_11:`@$

unknown_12:@@$

unknown_13:@@%

unknown_14:@$

unknown_15:@@&

unknown_16:&

unknown_17:&

unknown_18:&

unknown_19:&

unknown_20:&

unknown_21:&

unknown_22:&

unknown_23:&

unknown_24:&

unknown_25:%

unknown_26:@$

unknown_27:@@%

unknown_28:@%

unknown_29:`$

unknown_30:``$

unknown_31:@@$

unknown_32:@@&

unknown_33:àÀ&

unknown_34:ÀÀ&

unknown_35:àÀ&

unknown_36:ÀÀ&

unknown_37:à

unknown_38:	à5

unknown_39:5
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ5*K
_read_only_resource_inputs-
+)	
 !"#$%&'()*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_693662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿUU: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
!
_user_specified_name	input_1


)__inference_conv2d_14_layer_call_fn_71478

inputs!
unknown:@@
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_689572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
å
µ
D__inference_conv2d_16_layer_call_and_return_conditional_losses_71516

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
¤

)__inference_conv2d_26_layer_call_fn_71726

inputs#
unknown:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_691522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
µ
D__inference_conv2d_11_layer_call_and_return_conditional_losses_71414

inputs8
conv2d_readvariableop_resource:  
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$ : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
 
_user_specified_nameinputs
è
O
#__inference_add_layer_call_fn_71463
inputs_0
inputs_1
identityÔ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_689472
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ$$@:ÿÿÿÿÿÿÿÿÿ$$@:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
"
_user_specified_name
inputs/1

~
F__inference_concatenate_layer_call_and_return_conditional_losses_68925

inputs
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`2
concatk
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿ$$ :ÿÿÿÿÿÿÿÿÿ$$ :ÿÿÿÿÿÿÿÿÿ$$ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
 
_user_specified_nameinputs
¤

)__inference_conv2d_34_layer_call_fn_71905

inputs#
unknown:àÀ
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_34_layer_call_and_return_conditional_losses_692942
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿà: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
ã
´
C__inference_conv2d_7_layer_call_and_return_conditional_losses_68877

inputs8
conv2d_readvariableop_resource:@ 
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
Ó
õ
#__inference_signature_wrapper_70670
input_1!
unknown: #
	unknown_0:  #
	unknown_1: @#
	unknown_2:@@#
	unknown_3:@@#
	unknown_4:@@#
	unknown_5:@ #
	unknown_6:  #
	unknown_7:@ #
	unknown_8:@ #
	unknown_9:  $

unknown_10:  $

unknown_11:`@$

unknown_12:@@$

unknown_13:@@%

unknown_14:@$

unknown_15:@@&

unknown_16:&

unknown_17:&

unknown_18:&

unknown_19:&

unknown_20:&

unknown_21:&

unknown_22:&

unknown_23:&

unknown_24:&

unknown_25:%

unknown_26:@$

unknown_27:@@%

unknown_28:@%

unknown_29:`$

unknown_30:``$

unknown_31:@@$

unknown_32:@@&

unknown_33:àÀ&

unknown_34:ÀÀ&

unknown_35:àÀ&

unknown_36:ÀÀ&

unknown_37:à

unknown_38:	à5

unknown_39:5
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ5*K
_read_only_resource_inputs-
+)	
 !"#$%&'()*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_687292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿUU: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
!
_user_specified_name	input_1
í
·
D__inference_conv2d_37_layer_call_and_return_conditional_losses_69306

inputs:
conv2d_readvariableop_resource:ÀÀ
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ÀÀ*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÀ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
í
·
D__inference_conv2d_20_layer_call_and_return_conditional_losses_69052

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
·
D__inference_conv2d_22_layer_call_and_return_conditional_losses_71676

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
ö
%__inference_model_layer_call_fn_71241

inputs!
unknown: #
	unknown_0:  #
	unknown_1: @#
	unknown_2:@@#
	unknown_3:@@#
	unknown_4:@@#
	unknown_5:@ #
	unknown_6:  #
	unknown_7:@ #
	unknown_8:@ #
	unknown_9:  $

unknown_10:  $

unknown_11:`@$

unknown_12:@@$

unknown_13:@@%

unknown_14:@$

unknown_15:@@&

unknown_16:&

unknown_17:&

unknown_18:&

unknown_19:&

unknown_20:&

unknown_21:&

unknown_22:&

unknown_23:&

unknown_24:&

unknown_25:%

unknown_26:@$

unknown_27:@@%

unknown_28:@%

unknown_29:`$

unknown_30:``$

unknown_31:@@$

unknown_32:@@&

unknown_33:àÀ&

unknown_34:ÀÀ&

unknown_35:àÀ&

unknown_36:ÀÀ&

unknown_37:à

unknown_38:	à5

unknown_39:5
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ5*K
_read_only_resource_inputs-
+)	
 !"#$%&'()*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_701072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿUU: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
 
_user_specified_nameinputs
¤

)__inference_conv2d_36_layer_call_fn_71890

inputs#
unknown:ÀÀ
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_692822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÀ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs


%__inference_dense_layer_call_fn_72006

inputs
unknown:	à5
	unknown_0:5
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ5*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_693592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿà: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
¤

)__inference_conv2d_38_layer_call_fn_71948

inputs#
unknown:à
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_693272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤

)__inference_conv2d_37_layer_call_fn_71920

inputs#
unknown:ÀÀ
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_693062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÀ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
ã
´
C__inference_conv2d_8_layer_call_and_return_conditional_losses_68901

inputs8
conv2d_readvariableop_resource:  
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$ : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
 
_user_specified_nameinputs
ä
µ
D__inference_conv2d_11_layer_call_and_return_conditional_losses_68913

inputs8
conv2d_readvariableop_resource:  
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$ : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
 
_user_specified_nameinputs
å
µ
D__inference_conv2d_30_layer_call_and_return_conditional_losses_71821

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
â
²
A__inference_conv2d_layer_call_and_return_conditional_losses_71249

inputs8
conv2d_readvariableop_resource: 
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS *
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿUU: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
 
_user_specified_nameinputs
ä
´
C__inference_conv2d_2_layer_call_and_return_conditional_losses_71279

inputs8
conv2d_readvariableop_resource: @
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿQQ : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ 
 
_user_specified_nameinputs


)__inference_conv2d_16_layer_call_fn_71523

inputs!
unknown:@@
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_689942
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
é
¶
D__inference_conv2d_29_layer_call_and_return_conditional_losses_71776

inputs9
conv2d_readvariableop_resource:@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
´
C__inference_conv2d_3_layer_call_and_return_conditional_losses_68817

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs


)__inference_conv2d_10_layer_call_fn_71376

inputs!
unknown:  
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_688652
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$ : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
 
_user_specified_nameinputs
ã
´
C__inference_conv2d_6_layer_call_and_return_conditional_losses_68889

inputs8
conv2d_readvariableop_resource:@ 
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs

g
-__inference_concatenate_1_layer_call_fn_71538
inputs_0
inputs_1
inputs_2
identityê
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_690062
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/2
å
µ
D__inference_conv2d_33_layer_call_and_return_conditional_losses_69247

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


)__inference_conv2d_33_layer_call_fn_71843

inputs!
unknown:@@
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_33_layer_call_and_return_conditional_losses_692472
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¤

)__inference_conv2d_35_layer_call_fn_71875

inputs#
unknown:àÀ
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_35_layer_call_and_return_conditional_losses_692702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿà: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs

Y
-__inference_concatenate_2_layer_call_fn_71611
inputs_0
inputs_1
identityß
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_2_layer_call_and_return_conditional_losses_690632
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
í
·
D__inference_conv2d_34_layer_call_and_return_conditional_losses_71898

inputs:
conv2d_readvariableop_resource:àÀ
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:àÀ*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿà: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
í
·
D__inference_conv2d_37_layer_call_and_return_conditional_losses_71913

inputs:
conv2d_readvariableop_resource:ÀÀ
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ÀÀ*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÀ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
í
·
D__inference_conv2d_21_layer_call_and_return_conditional_losses_69073

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
´
C__inference_conv2d_8_layer_call_and_return_conditional_losses_71399

inputs8
conv2d_readvariableop_resource:  
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$ : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
 
_user_specified_nameinputs


(__inference_conv2d_4_layer_call_fn_71316

inputs!
unknown:@@
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_688292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs
í
·
D__inference_conv2d_38_layer_call_and_return_conditional_losses_69327

inputs:
conv2d_readvariableop_resource:à
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:à*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ
÷
%__inference_model_layer_call_fn_70279
input_1!
unknown: #
	unknown_0:  #
	unknown_1: @#
	unknown_2:@@#
	unknown_3:@@#
	unknown_4:@@#
	unknown_5:@ #
	unknown_6:  #
	unknown_7:@ #
	unknown_8:@ #
	unknown_9:  $

unknown_10:  $

unknown_11:`@$

unknown_12:@@$

unknown_13:@@%

unknown_14:@$

unknown_15:@@&

unknown_16:&

unknown_17:&

unknown_18:&

unknown_19:&

unknown_20:&

unknown_21:&

unknown_22:&

unknown_23:&

unknown_24:&

unknown_25:%

unknown_26:@$

unknown_27:@@%

unknown_28:@%

unknown_29:`$

unknown_30:``$

unknown_31:@@$

unknown_32:@@&

unknown_33:àÀ&

unknown_34:ÀÀ&

unknown_35:àÀ&

unknown_36:ÀÀ&

unknown_37:à

unknown_38:	à5

unknown_39:5
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ5*K
_read_only_resource_inputs-
+)	
 !"#$%&'()*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_701072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿUU: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
!
_user_specified_name	input_1
í
·
D__inference_conv2d_17_layer_call_and_return_conditional_losses_71576

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
·
D__inference_conv2d_18_layer_call_and_return_conditional_losses_69016

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
´
C__inference_conv2d_7_layer_call_and_return_conditional_losses_71354

inputs8
conv2d_readvariableop_resource:@ 
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
í
·
D__inference_conv2d_20_layer_call_and_return_conditional_losses_71591

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
ö
%__inference_model_layer_call_fn_71154

inputs!
unknown: #
	unknown_0:  #
	unknown_1: @#
	unknown_2:@@#
	unknown_3:@@#
	unknown_4:@@#
	unknown_5:@ #
	unknown_6:  #
	unknown_7:@ #
	unknown_8:@ #
	unknown_9:  $

unknown_10:  $

unknown_11:`@$

unknown_12:@@$

unknown_13:@@%

unknown_14:@$

unknown_15:@@&

unknown_16:&

unknown_17:&

unknown_18:&

unknown_19:&

unknown_20:&

unknown_21:&

unknown_22:&

unknown_23:&

unknown_24:&

unknown_25:%

unknown_26:@$

unknown_27:@@%

unknown_28:@%

unknown_29:`$

unknown_30:``$

unknown_31:@@$

unknown_32:@@&

unknown_33:àÀ&

unknown_34:ÀÀ&

unknown_35:àÀ&

unknown_36:ÀÀ&

unknown_37:à

unknown_38:	à5

unknown_39:5
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ5*K
_read_only_resource_inputs-
+)	
 !"#$%&'()*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_693662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿUU: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
 
_user_specified_nameinputs
ä
´
C__inference_conv2d_4_layer_call_and_return_conditional_losses_71309

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs

t
H__inference_concatenate_2_layer_call_and_return_conditional_losses_71605
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
¤

)__inference_conv2d_24_layer_call_fn_71668

inputs#
unknown:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_691072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
·
D__inference_conv2d_35_layer_call_and_return_conditional_losses_71868

inputs:
conv2d_readvariableop_resource:àÀ
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:àÀ*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿà: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
¤

)__inference_conv2d_21_layer_call_fn_71626

inputs#
unknown:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_690732
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
·
D__inference_conv2d_35_layer_call_and_return_conditional_losses_69270

inputs:
conv2d_readvariableop_resource:àÀ
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:àÀ*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿà: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
í
·
D__inference_conv2d_22_layer_call_and_return_conditional_losses_69119

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª

H__inference_concatenate_1_layer_call_and_return_conditional_losses_71531
inputs_0
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/2
¤

F__inference_concatenate_layer_call_and_return_conditional_losses_71429
inputs_0
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`2
concatk
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿ$$ :ÿÿÿÿÿÿÿÿÿ$$ :ÿÿÿÿÿÿÿÿÿ$$ :Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
"
_user_specified_name
inputs/1:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
"
_user_specified_name
inputs/2
í
·
D__inference_conv2d_36_layer_call_and_return_conditional_losses_69282

inputs:
conv2d_readvariableop_resource:ÀÀ
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ÀÀ*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÀ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs


(__inference_conv2d_6_layer_call_fn_71391

inputs!
unknown:@ 
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_688892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
í
·
D__inference_conv2d_17_layer_call_and_return_conditional_losses_69040

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)__inference_conv2d_28_layer_call_fn_71813

inputs!
unknown:``
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_692232
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ`: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
ò
Q
%__inference_add_2_layer_call_fn_71738
inputs_0
inputs_1
identity×
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_691642
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
ä
µ
D__inference_conv2d_12_layer_call_and_return_conditional_losses_68935

inputs8
conv2d_readvariableop_resource:`@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$`: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`
 
_user_specified_nameinputs
¡

)__inference_conv2d_31_layer_call_fn_71753

inputs"
unknown:@
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_691742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å
µ
D__inference_conv2d_33_layer_call_and_return_conditional_losses_71836

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

!
@__inference_model_layer_call_and_return_conditional_losses_71067

inputs?
%conv2d_conv2d_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource:  A
'conv2d_2_conv2d_readvariableop_resource: @A
'conv2d_3_conv2d_readvariableop_resource:@@A
'conv2d_4_conv2d_readvariableop_resource:@@A
'conv2d_5_conv2d_readvariableop_resource:@@A
'conv2d_9_conv2d_readvariableop_resource:@ B
(conv2d_10_conv2d_readvariableop_resource:  A
'conv2d_7_conv2d_readvariableop_resource:@ A
'conv2d_6_conv2d_readvariableop_resource:@ A
'conv2d_8_conv2d_readvariableop_resource:  B
(conv2d_11_conv2d_readvariableop_resource:  B
(conv2d_12_conv2d_readvariableop_resource:`@B
(conv2d_14_conv2d_readvariableop_resource:@@B
(conv2d_15_conv2d_readvariableop_resource:@@C
(conv2d_13_conv2d_readvariableop_resource:@B
(conv2d_16_conv2d_readvariableop_resource:@@D
(conv2d_18_conv2d_readvariableop_resource:D
(conv2d_19_conv2d_readvariableop_resource:D
(conv2d_17_conv2d_readvariableop_resource:D
(conv2d_20_conv2d_readvariableop_resource:D
(conv2d_21_conv2d_readvariableop_resource:D
(conv2d_23_conv2d_readvariableop_resource:D
(conv2d_24_conv2d_readvariableop_resource:D
(conv2d_22_conv2d_readvariableop_resource:D
(conv2d_25_conv2d_readvariableop_resource:D
(conv2d_26_conv2d_readvariableop_resource:C
(conv2d_31_conv2d_readvariableop_resource:@B
(conv2d_32_conv2d_readvariableop_resource:@@C
(conv2d_29_conv2d_readvariableop_resource:@C
(conv2d_27_conv2d_readvariableop_resource:`B
(conv2d_28_conv2d_readvariableop_resource:``B
(conv2d_30_conv2d_readvariableop_resource:@@B
(conv2d_33_conv2d_readvariableop_resource:@@D
(conv2d_35_conv2d_readvariableop_resource:àÀD
(conv2d_36_conv2d_readvariableop_resource:ÀÀD
(conv2d_34_conv2d_readvariableop_resource:àÀD
(conv2d_37_conv2d_readvariableop_resource:ÀÀD
(conv2d_38_conv2d_readvariableop_resource:à7
$dense_matmul_readvariableop_resource:	à53
%dense_biasadd_readvariableop_resource:5
identity¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_10/Conv2D/ReadVariableOp¢conv2d_11/Conv2D/ReadVariableOp¢conv2d_12/Conv2D/ReadVariableOp¢conv2d_13/Conv2D/ReadVariableOp¢conv2d_14/Conv2D/ReadVariableOp¢conv2d_15/Conv2D/ReadVariableOp¢conv2d_16/Conv2D/ReadVariableOp¢conv2d_17/Conv2D/ReadVariableOp¢conv2d_18/Conv2D/ReadVariableOp¢conv2d_19/Conv2D/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢conv2d_20/Conv2D/ReadVariableOp¢conv2d_21/Conv2D/ReadVariableOp¢conv2d_22/Conv2D/ReadVariableOp¢conv2d_23/Conv2D/ReadVariableOp¢conv2d_24/Conv2D/ReadVariableOp¢conv2d_25/Conv2D/ReadVariableOp¢conv2d_26/Conv2D/ReadVariableOp¢conv2d_27/Conv2D/ReadVariableOp¢conv2d_28/Conv2D/ReadVariableOp¢conv2d_29/Conv2D/ReadVariableOp¢conv2d_3/Conv2D/ReadVariableOp¢conv2d_30/Conv2D/ReadVariableOp¢conv2d_31/Conv2D/ReadVariableOp¢conv2d_32/Conv2D/ReadVariableOp¢conv2d_33/Conv2D/ReadVariableOp¢conv2d_34/Conv2D/ReadVariableOp¢conv2d_35/Conv2D/ReadVariableOp¢conv2d_36/Conv2D/ReadVariableOp¢conv2d_37/Conv2D/ReadVariableOp¢conv2d_38/Conv2D/ReadVariableOp¢conv2d_4/Conv2D/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢conv2d_6/Conv2D/ReadVariableOp¢conv2d_7/Conv2D/ReadVariableOp¢conv2d_8/Conv2D/ReadVariableOp¢conv2d_9/Conv2D/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpª
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp¹
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS *
paddingVALID*
strides
2
conv2d/Conv2Dt
conv2d/ReluReluconv2d/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS 2
conv2d/Relu°
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_1/Conv2D/ReadVariableOpÒ
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ *
paddingVALID*
strides
2
conv2d_1/Conv2Dz
conv2d_1/ReluReluconv2d_1/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ 2
conv2d_1/Relu°
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOpÔ
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingVALID*
strides
2
conv2d_2/Conv2Dz
conv2d_2/ReluReluconv2d_2/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
conv2d_2/Relu°
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_3/Conv2D/ReadVariableOpÔ
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingVALID*
strides
2
conv2d_3/Conv2Dz
conv2d_3/ReluReluconv2d_3/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
conv2d_3/Relu°
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_4/Conv2D/ReadVariableOpÔ
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@*
paddingVALID*
strides
2
conv2d_4/Conv2Dz
conv2d_4/ReluReluconv2d_4/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@2
conv2d_4/Relu°
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_5/Conv2D/ReadVariableOpÔ
conv2d_5/Conv2DConv2Dconv2d_4/Relu:activations:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingVALID*
strides
2
conv2d_5/Conv2Dz
conv2d_5/ReluReluconv2d_5/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
conv2d_5/Relu°
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02 
conv2d_9/Conv2D/ReadVariableOpÓ
conv2d_9/Conv2DConv2Dconv2d_5/Relu:activations:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
conv2d_9/Conv2Dz
conv2d_9/ReluReluconv2d_9/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
conv2d_9/Relu³
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_10/Conv2D/ReadVariableOpÖ
conv2d_10/Conv2DConv2Dconv2d_9/Relu:activations:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
conv2d_10/Conv2D}
conv2d_10/ReluReluconv2d_10/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
conv2d_10/Relu°
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02 
conv2d_7/Conv2D/ReadVariableOpÓ
conv2d_7/Conv2DConv2Dconv2d_5/Relu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
conv2d_7/Conv2Dz
conv2d_7/ReluReluconv2d_7/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
conv2d_7/Relu°
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02 
conv2d_6/Conv2D/ReadVariableOpÓ
conv2d_6/Conv2DConv2Dconv2d_5/Relu:activations:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
conv2d_6/Conv2Dz
conv2d_6/ReluReluconv2d_6/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
conv2d_6/Relu°
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_8/Conv2D/ReadVariableOpÓ
conv2d_8/Conv2DConv2Dconv2d_7/Relu:activations:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
conv2d_8/Conv2Dz
conv2d_8/ReluReluconv2d_8/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
conv2d_8/Relu³
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_11/Conv2D/ReadVariableOp×
conv2d_11/Conv2DConv2Dconv2d_10/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
conv2d_11/Conv2D}
conv2d_11/ReluReluconv2d_11/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
conv2d_11/Relut
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisñ
concatenate/concatConcatV2conv2d_6/Relu:activations:0conv2d_8/Relu:activations:0conv2d_11/Relu:activations:0 concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`2
concatenate/concat³
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:`@*
dtype02!
conv2d_12/Conv2D/ReadVariableOpÖ
conv2d_12/Conv2DConv2Dconcatenate/concat:output:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
conv2d_12/Conv2D}
conv2d_12/ReluReluconv2d_12/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
conv2d_12/Reluu
tf.math.multiply/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *{.>2
tf.math.multiply/Mul/y¬
tf.math.multiply/MulMulconv2d_12/Relu:activations:0tf.math.multiply/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
tf.math.multiply/Mul
add/addAddV2conv2d_5/Relu:activations:0tf.math.multiply/Mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2	
add/add³
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_14/Conv2D/ReadVariableOpÆ
conv2d_14/Conv2DConv2Dadd/add:z:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
conv2d_14/Conv2D}
conv2d_14/ReluReluconv2d_14/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
conv2d_14/Relu³
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_15/Conv2D/ReadVariableOp×
conv2d_15/Conv2DConv2Dconv2d_14/Relu:activations:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
conv2d_15/Conv2D}
conv2d_15/ReluReluconv2d_15/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
conv2d_15/Relu³
max_pooling2d/MaxPoolMaxPooladd/add:z:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool´
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_13/Conv2D/ReadVariableOpÈ
conv2d_13/Conv2DConv2Dadd/add:z:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv2d_13/Conv2D~
conv2d_13/ReluReluconv2d_13/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_13/Relu³
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_16/Conv2D/ReadVariableOpØ
conv2d_16/Conv2DConv2Dconv2d_15/Relu:activations:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_16/Conv2D}
conv2d_16/ReluReluconv2d_16/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_16/Relux
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axisü
concatenate_1/concatConcatV2max_pooling2d/MaxPool:output:0conv2d_13/Relu:activations:0conv2d_16/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatenate_1/concatµ
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_18/Conv2D/ReadVariableOpÙ
conv2d_18/Conv2DConv2Dconcatenate_1/concat:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_18/Conv2D~
conv2d_18/ReluReluconv2d_18/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_18/Reluµ
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_19/Conv2D/ReadVariableOpØ
conv2d_19/Conv2DConv2Dconv2d_18/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_19/Conv2D~
conv2d_19/ReluReluconv2d_19/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_19/Reluµ
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_17/Conv2D/ReadVariableOpÙ
conv2d_17/Conv2DConv2Dconcatenate_1/concat:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_17/Conv2D~
conv2d_17/ReluReluconv2d_17/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_17/Reluµ
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_20/Conv2D/ReadVariableOpØ
conv2d_20/Conv2DConv2Dconv2d_19/Relu:activations:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_20/Conv2D~
conv2d_20/ReluReluconv2d_20/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_20/Relux
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axisÜ
concatenate_2/concatConcatV2conv2d_17/Relu:activations:0conv2d_20/Relu:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatenate_2/concatµ
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_21/Conv2D/ReadVariableOpÙ
conv2d_21/Conv2DConv2Dconcatenate_2/concat:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_21/Conv2D~
conv2d_21/ReluReluconv2d_21/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_21/Reluy
tf.math.multiply_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_1/Mul/y³
tf.math.multiply_1/MulMulconv2d_21/Relu:activations:0!tf.math.multiply_1/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_1/Mul
	add_1/addAddV2concatenate_1/concat:output:0tf.math.multiply_1/Mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	add_1/addµ
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_23/Conv2D/ReadVariableOpÉ
conv2d_23/Conv2DConv2Dadd_1/add:z:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_23/Conv2D~
conv2d_23/ReluReluconv2d_23/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_23/Reluµ
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_24/Conv2D/ReadVariableOpØ
conv2d_24/Conv2DConv2Dconv2d_23/Relu:activations:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_24/Conv2D~
conv2d_24/ReluReluconv2d_24/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_24/Reluµ
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_22/Conv2D/ReadVariableOpÉ
conv2d_22/Conv2DConv2Dadd_1/add:z:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_22/Conv2D~
conv2d_22/ReluReluconv2d_22/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_22/Reluµ
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_25/Conv2D/ReadVariableOpØ
conv2d_25/Conv2DConv2Dconv2d_24/Relu:activations:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_25/Conv2D~
conv2d_25/ReluReluconv2d_25/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_25/Relux
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axisÜ
concatenate_3/concatConcatV2conv2d_22/Relu:activations:0conv2d_25/Relu:activations:0"concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatenate_3/concatµ
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_26/Conv2D/ReadVariableOpÙ
conv2d_26/Conv2DConv2Dconcatenate_3/concat:output:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_26/Conv2D~
conv2d_26/ReluReluconv2d_26/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_26/Reluy
tf.math.multiply_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_2/Mul/y³
tf.math.multiply_2/MulMulconv2d_26/Relu:activations:0!tf.math.multiply_2/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_2/Mul
	add_2/addAddV2add_1/add:z:0tf.math.multiply_2/Mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	add_2/add´
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_31/Conv2D/ReadVariableOpÈ
conv2d_31/Conv2DConv2Dadd_2/add:z:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv2d_31/Conv2D}
conv2d_31/ReluReluconv2d_31/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_31/Relu³
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_32/Conv2D/ReadVariableOp×
conv2d_32/Conv2DConv2Dconv2d_31/Relu:activations:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv2d_32/Conv2D}
conv2d_32/ReluReluconv2d_32/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_32/Relu´
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_29/Conv2D/ReadVariableOpÉ
conv2d_29/Conv2DConv2Dadd_2/add:z:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_29/Conv2D}
conv2d_29/ReluReluconv2d_29/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_29/Relu´
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*'
_output_shapes
:`*
dtype02!
conv2d_27/Conv2D/ReadVariableOpÉ
conv2d_27/Conv2DConv2Dadd_2/add:z:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
paddingVALID*
strides
2
conv2d_27/Conv2D}
conv2d_27/ReluReluconv2d_27/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
conv2d_27/Reluº
max_pooling2d_1/MaxPoolMaxPooladd_2/add:z:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool³
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:``*
dtype02!
conv2d_28/Conv2D/ReadVariableOpØ
conv2d_28/Conv2DConv2Dconv2d_27/Relu:activations:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
paddingVALID*
strides
2
conv2d_28/Conv2D}
conv2d_28/ReluReluconv2d_28/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
conv2d_28/Relu³
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_30/Conv2D/ReadVariableOpØ
conv2d_30/Conv2DConv2Dconv2d_29/Relu:activations:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_30/Conv2D}
conv2d_30/ReluReluconv2d_30/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_30/Relu³
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_33/Conv2D/ReadVariableOpØ
conv2d_33/Conv2DConv2Dconv2d_32/Relu:activations:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_33/Conv2D}
conv2d_33/ReluReluconv2d_33/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_33/Relux
concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_4/concat/axis
concatenate_4/concatConcatV2 max_pooling2d_1/MaxPool:output:0conv2d_28/Relu:activations:0conv2d_30/Relu:activations:0conv2d_33/Relu:activations:0"concatenate_4/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
concatenate_4/concatµ
conv2d_35/Conv2D/ReadVariableOpReadVariableOp(conv2d_35_conv2d_readvariableop_resource*(
_output_shapes
:àÀ*
dtype02!
conv2d_35/Conv2D/ReadVariableOpÙ
conv2d_35/Conv2DConv2Dconcatenate_4/concat:output:0'conv2d_35/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
conv2d_35/Conv2D~
conv2d_35/ReluReluconv2d_35/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
conv2d_35/Reluµ
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*(
_output_shapes
:ÀÀ*
dtype02!
conv2d_36/Conv2D/ReadVariableOpØ
conv2d_36/Conv2DConv2Dconv2d_35/Relu:activations:0'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
conv2d_36/Conv2D~
conv2d_36/ReluReluconv2d_36/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
conv2d_36/Reluµ
conv2d_34/Conv2D/ReadVariableOpReadVariableOp(conv2d_34_conv2d_readvariableop_resource*(
_output_shapes
:àÀ*
dtype02!
conv2d_34/Conv2D/ReadVariableOpÙ
conv2d_34/Conv2DConv2Dconcatenate_4/concat:output:0'conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
conv2d_34/Conv2D~
conv2d_34/ReluReluconv2d_34/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
conv2d_34/Reluµ
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*(
_output_shapes
:ÀÀ*
dtype02!
conv2d_37/Conv2D/ReadVariableOpØ
conv2d_37/Conv2DConv2Dconv2d_36/Relu:activations:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
conv2d_37/Conv2D~
conv2d_37/ReluReluconv2d_37/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
conv2d_37/Relux
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_5/concat/axisÜ
concatenate_5/concatConcatV2conv2d_34/Relu:activations:0conv2d_37/Relu:activations:0"concatenate_5/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatenate_5/concatµ
conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*(
_output_shapes
:à*
dtype02!
conv2d_38/Conv2D/ReadVariableOpÙ
conv2d_38/Conv2DConv2Dconcatenate_5/concat:output:0'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
paddingSAME*
strides
2
conv2d_38/Conv2D~
conv2d_38/ReluReluconv2d_38/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
conv2d_38/Reluy
tf.math.multiply_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_3/Mul/y³
tf.math.multiply_3/MulMulconv2d_38/Relu:activations:0!tf.math.multiply_3/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
tf.math.multiply_3/Mul
	add_3/addAddV2concatenate_4/concat:output:0tf.math.multiply_3/Mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
	add_3/add³
/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      21
/global_average_pooling2d/Mean/reduction_indicesÂ
global_average_pooling2d/MeanMeanadd_3/add:z:08global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
global_average_pooling2d/Means
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const¬
dropout/dropout/MulMul&global_average_pooling2d/Mean:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/dropout/Mul
dropout/dropout/ShapeShape&global_average_pooling2d/Mean:output:0*
T0*
_output_shapes
:2
dropout/dropout/ShapeÍ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
dtype02.
,dropout/dropout/random_uniform/RandomUniform
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?2 
dropout/dropout/GreaterEqual/yß
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/dropout/GreaterEqual
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/dropout/Cast
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/dropout/Mul_1 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	à5*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMuldropout/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52
dense/BiasAddÉ
IdentityIdentitydense/BiasAdd:output:0^conv2d/Conv2D/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp ^conv2d_34/Conv2D/ReadVariableOp ^conv2d_35/Conv2D/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿUU: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp2B
conv2d_34/Conv2D/ReadVariableOpconv2d_34/Conv2D/ReadVariableOp2B
conv2d_35/Conv2D/ReadVariableOpconv2d_35/Conv2D/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
 
_user_specified_nameinputs
­

H__inference_concatenate_4_layer_call_and_return_conditional_losses_69260

inputs
inputs_1
inputs_2
inputs_3
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1inputs_2inputs_3concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
±
a
B__inference_dropout_layer_call_and_return_conditional_losses_69481

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿà:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
¤

)__inference_conv2d_18_layer_call_fn_71553

inputs#
unknown:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_690162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


(__inference_conv2d_3_layer_call_fn_71301

inputs!
unknown:@@
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_688172
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs
ã
´
C__inference_conv2d_9_layer_call_and_return_conditional_losses_68853

inputs8
conv2d_readvariableop_resource:@ 
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
å
µ
D__inference_conv2d_30_layer_call_and_return_conditional_losses_69235

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¹

H__inference_concatenate_4_layer_call_and_return_conditional_losses_71852
inputs_0
inputs_1
inputs_2
inputs_3
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1inputs_2inputs_3concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
inputs/1:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/2:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/3

r
H__inference_concatenate_5_layer_call_and_return_conditional_losses_69317

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
í
·
D__inference_conv2d_34_layer_call_and_return_conditional_losses_69294

inputs:
conv2d_readvariableop_resource:àÀ
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:àÀ*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿà: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
ÊÀ
¥\
!__inference__traced_restore_72831
file_prefix8
assignvariableop_conv2d_kernel: <
"assignvariableop_1_conv2d_1_kernel:  <
"assignvariableop_2_conv2d_2_kernel: @<
"assignvariableop_3_conv2d_3_kernel:@@<
"assignvariableop_4_conv2d_4_kernel:@@<
"assignvariableop_5_conv2d_5_kernel:@@<
"assignvariableop_6_conv2d_9_kernel:@ <
"assignvariableop_7_conv2d_7_kernel:@ =
#assignvariableop_8_conv2d_10_kernel:  <
"assignvariableop_9_conv2d_6_kernel:@ =
#assignvariableop_10_conv2d_8_kernel:  >
$assignvariableop_11_conv2d_11_kernel:  >
$assignvariableop_12_conv2d_12_kernel:`@>
$assignvariableop_13_conv2d_14_kernel:@@>
$assignvariableop_14_conv2d_15_kernel:@@?
$assignvariableop_15_conv2d_13_kernel:@>
$assignvariableop_16_conv2d_16_kernel:@@@
$assignvariableop_17_conv2d_18_kernel:@
$assignvariableop_18_conv2d_19_kernel:@
$assignvariableop_19_conv2d_17_kernel:@
$assignvariableop_20_conv2d_20_kernel:@
$assignvariableop_21_conv2d_21_kernel:@
$assignvariableop_22_conv2d_23_kernel:@
$assignvariableop_23_conv2d_24_kernel:@
$assignvariableop_24_conv2d_22_kernel:@
$assignvariableop_25_conv2d_25_kernel:@
$assignvariableop_26_conv2d_26_kernel:?
$assignvariableop_27_conv2d_31_kernel:@?
$assignvariableop_28_conv2d_27_kernel:`?
$assignvariableop_29_conv2d_29_kernel:@>
$assignvariableop_30_conv2d_32_kernel:@@>
$assignvariableop_31_conv2d_28_kernel:``>
$assignvariableop_32_conv2d_30_kernel:@@>
$assignvariableop_33_conv2d_33_kernel:@@@
$assignvariableop_34_conv2d_35_kernel:àÀ@
$assignvariableop_35_conv2d_36_kernel:ÀÀ@
$assignvariableop_36_conv2d_34_kernel:àÀ@
$assignvariableop_37_conv2d_37_kernel:ÀÀ@
$assignvariableop_38_conv2d_38_kernel:à3
 assignvariableop_39_dense_kernel:	à5,
assignvariableop_40_dense_bias:5'
assignvariableop_41_adam_iter:	 )
assignvariableop_42_adam_beta_1: )
assignvariableop_43_adam_beta_2: (
assignvariableop_44_adam_decay: 0
&assignvariableop_45_adam_learning_rate: #
assignvariableop_46_total: #
assignvariableop_47_count: %
assignvariableop_48_total_1: %
assignvariableop_49_count_1: B
(assignvariableop_50_adam_conv2d_kernel_m: D
*assignvariableop_51_adam_conv2d_1_kernel_m:  D
*assignvariableop_52_adam_conv2d_2_kernel_m: @D
*assignvariableop_53_adam_conv2d_3_kernel_m:@@D
*assignvariableop_54_adam_conv2d_4_kernel_m:@@D
*assignvariableop_55_adam_conv2d_5_kernel_m:@@D
*assignvariableop_56_adam_conv2d_9_kernel_m:@ D
*assignvariableop_57_adam_conv2d_7_kernel_m:@ E
+assignvariableop_58_adam_conv2d_10_kernel_m:  D
*assignvariableop_59_adam_conv2d_6_kernel_m:@ D
*assignvariableop_60_adam_conv2d_8_kernel_m:  E
+assignvariableop_61_adam_conv2d_11_kernel_m:  E
+assignvariableop_62_adam_conv2d_12_kernel_m:`@E
+assignvariableop_63_adam_conv2d_14_kernel_m:@@E
+assignvariableop_64_adam_conv2d_15_kernel_m:@@F
+assignvariableop_65_adam_conv2d_13_kernel_m:@E
+assignvariableop_66_adam_conv2d_16_kernel_m:@@G
+assignvariableop_67_adam_conv2d_18_kernel_m:G
+assignvariableop_68_adam_conv2d_19_kernel_m:G
+assignvariableop_69_adam_conv2d_17_kernel_m:G
+assignvariableop_70_adam_conv2d_20_kernel_m:G
+assignvariableop_71_adam_conv2d_21_kernel_m:G
+assignvariableop_72_adam_conv2d_23_kernel_m:G
+assignvariableop_73_adam_conv2d_24_kernel_m:G
+assignvariableop_74_adam_conv2d_22_kernel_m:G
+assignvariableop_75_adam_conv2d_25_kernel_m:G
+assignvariableop_76_adam_conv2d_26_kernel_m:F
+assignvariableop_77_adam_conv2d_31_kernel_m:@F
+assignvariableop_78_adam_conv2d_27_kernel_m:`F
+assignvariableop_79_adam_conv2d_29_kernel_m:@E
+assignvariableop_80_adam_conv2d_32_kernel_m:@@E
+assignvariableop_81_adam_conv2d_28_kernel_m:``E
+assignvariableop_82_adam_conv2d_30_kernel_m:@@E
+assignvariableop_83_adam_conv2d_33_kernel_m:@@G
+assignvariableop_84_adam_conv2d_35_kernel_m:àÀG
+assignvariableop_85_adam_conv2d_36_kernel_m:ÀÀG
+assignvariableop_86_adam_conv2d_34_kernel_m:àÀG
+assignvariableop_87_adam_conv2d_37_kernel_m:ÀÀG
+assignvariableop_88_adam_conv2d_38_kernel_m:à:
'assignvariableop_89_adam_dense_kernel_m:	à53
%assignvariableop_90_adam_dense_bias_m:5B
(assignvariableop_91_adam_conv2d_kernel_v: D
*assignvariableop_92_adam_conv2d_1_kernel_v:  D
*assignvariableop_93_adam_conv2d_2_kernel_v: @D
*assignvariableop_94_adam_conv2d_3_kernel_v:@@D
*assignvariableop_95_adam_conv2d_4_kernel_v:@@D
*assignvariableop_96_adam_conv2d_5_kernel_v:@@D
*assignvariableop_97_adam_conv2d_9_kernel_v:@ D
*assignvariableop_98_adam_conv2d_7_kernel_v:@ E
+assignvariableop_99_adam_conv2d_10_kernel_v:  E
+assignvariableop_100_adam_conv2d_6_kernel_v:@ E
+assignvariableop_101_adam_conv2d_8_kernel_v:  F
,assignvariableop_102_adam_conv2d_11_kernel_v:  F
,assignvariableop_103_adam_conv2d_12_kernel_v:`@F
,assignvariableop_104_adam_conv2d_14_kernel_v:@@F
,assignvariableop_105_adam_conv2d_15_kernel_v:@@G
,assignvariableop_106_adam_conv2d_13_kernel_v:@F
,assignvariableop_107_adam_conv2d_16_kernel_v:@@H
,assignvariableop_108_adam_conv2d_18_kernel_v:H
,assignvariableop_109_adam_conv2d_19_kernel_v:H
,assignvariableop_110_adam_conv2d_17_kernel_v:H
,assignvariableop_111_adam_conv2d_20_kernel_v:H
,assignvariableop_112_adam_conv2d_21_kernel_v:H
,assignvariableop_113_adam_conv2d_23_kernel_v:H
,assignvariableop_114_adam_conv2d_24_kernel_v:H
,assignvariableop_115_adam_conv2d_22_kernel_v:H
,assignvariableop_116_adam_conv2d_25_kernel_v:H
,assignvariableop_117_adam_conv2d_26_kernel_v:G
,assignvariableop_118_adam_conv2d_31_kernel_v:@G
,assignvariableop_119_adam_conv2d_27_kernel_v:`G
,assignvariableop_120_adam_conv2d_29_kernel_v:@F
,assignvariableop_121_adam_conv2d_32_kernel_v:@@F
,assignvariableop_122_adam_conv2d_28_kernel_v:``F
,assignvariableop_123_adam_conv2d_30_kernel_v:@@F
,assignvariableop_124_adam_conv2d_33_kernel_v:@@H
,assignvariableop_125_adam_conv2d_35_kernel_v:àÀH
,assignvariableop_126_adam_conv2d_36_kernel_v:ÀÀH
,assignvariableop_127_adam_conv2d_34_kernel_v:àÀH
,assignvariableop_128_adam_conv2d_37_kernel_v:ÀÀH
,assignvariableop_129_adam_conv2d_38_kernel_v:à;
(assignvariableop_130_adam_dense_kernel_v:	à54
&assignvariableop_131_adam_dense_bias_v:5
identity_133¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_100¢AssignVariableOp_101¢AssignVariableOp_102¢AssignVariableOp_103¢AssignVariableOp_104¢AssignVariableOp_105¢AssignVariableOp_106¢AssignVariableOp_107¢AssignVariableOp_108¢AssignVariableOp_109¢AssignVariableOp_11¢AssignVariableOp_110¢AssignVariableOp_111¢AssignVariableOp_112¢AssignVariableOp_113¢AssignVariableOp_114¢AssignVariableOp_115¢AssignVariableOp_116¢AssignVariableOp_117¢AssignVariableOp_118¢AssignVariableOp_119¢AssignVariableOp_12¢AssignVariableOp_120¢AssignVariableOp_121¢AssignVariableOp_122¢AssignVariableOp_123¢AssignVariableOp_124¢AssignVariableOp_125¢AssignVariableOp_126¢AssignVariableOp_127¢AssignVariableOp_128¢AssignVariableOp_129¢AssignVariableOp_13¢AssignVariableOp_130¢AssignVariableOp_131¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_84¢AssignVariableOp_85¢AssignVariableOp_86¢AssignVariableOp_87¢AssignVariableOp_88¢AssignVariableOp_89¢AssignVariableOp_9¢AssignVariableOp_90¢AssignVariableOp_91¢AssignVariableOp_92¢AssignVariableOp_93¢AssignVariableOp_94¢AssignVariableOp_95¢AssignVariableOp_96¢AssignVariableOp_97¢AssignVariableOp_98¢AssignVariableOp_99M
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*¨L
valueLBLB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-30/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-31/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-32/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-33/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-34/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-35/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-36/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-37/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-38/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-39/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-39/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-31/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-32/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-33/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-34/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-35/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-36/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-37/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-38/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-39/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-39/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-31/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-32/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-33/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-34/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-35/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-36/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-37/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-38/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-39/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-39/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:*
dtype0* 
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesË
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ª
_output_shapes
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1§
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_1_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3§
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_3_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4§
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_4_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5§
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_5_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_9_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7§
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_7_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¨
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_10_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9§
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_6_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10«
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv2d_8_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¬
AssignVariableOp_11AssignVariableOp$assignvariableop_11_conv2d_11_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¬
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_12_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¬
AssignVariableOp_13AssignVariableOp$assignvariableop_13_conv2d_14_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¬
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_15_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¬
AssignVariableOp_15AssignVariableOp$assignvariableop_15_conv2d_13_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¬
AssignVariableOp_16AssignVariableOp$assignvariableop_16_conv2d_16_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¬
AssignVariableOp_17AssignVariableOp$assignvariableop_17_conv2d_18_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¬
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_19_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¬
AssignVariableOp_19AssignVariableOp$assignvariableop_19_conv2d_17_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¬
AssignVariableOp_20AssignVariableOp$assignvariableop_20_conv2d_20_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¬
AssignVariableOp_21AssignVariableOp$assignvariableop_21_conv2d_21_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¬
AssignVariableOp_22AssignVariableOp$assignvariableop_22_conv2d_23_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¬
AssignVariableOp_23AssignVariableOp$assignvariableop_23_conv2d_24_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¬
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_22_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¬
AssignVariableOp_25AssignVariableOp$assignvariableop_25_conv2d_25_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¬
AssignVariableOp_26AssignVariableOp$assignvariableop_26_conv2d_26_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¬
AssignVariableOp_27AssignVariableOp$assignvariableop_27_conv2d_31_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28¬
AssignVariableOp_28AssignVariableOp$assignvariableop_28_conv2d_27_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¬
AssignVariableOp_29AssignVariableOp$assignvariableop_29_conv2d_29_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¬
AssignVariableOp_30AssignVariableOp$assignvariableop_30_conv2d_32_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¬
AssignVariableOp_31AssignVariableOp$assignvariableop_31_conv2d_28_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32¬
AssignVariableOp_32AssignVariableOp$assignvariableop_32_conv2d_30_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33¬
AssignVariableOp_33AssignVariableOp$assignvariableop_33_conv2d_33_kernelIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¬
AssignVariableOp_34AssignVariableOp$assignvariableop_34_conv2d_35_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35¬
AssignVariableOp_35AssignVariableOp$assignvariableop_35_conv2d_36_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36¬
AssignVariableOp_36AssignVariableOp$assignvariableop_36_conv2d_34_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37¬
AssignVariableOp_37AssignVariableOp$assignvariableop_37_conv2d_37_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38¬
AssignVariableOp_38AssignVariableOp$assignvariableop_38_conv2d_38_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39¨
AssignVariableOp_39AssignVariableOp assignvariableop_39_dense_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40¦
AssignVariableOp_40AssignVariableOpassignvariableop_40_dense_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_41¥
AssignVariableOp_41AssignVariableOpassignvariableop_41_adam_iterIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42§
AssignVariableOp_42AssignVariableOpassignvariableop_42_adam_beta_1Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43§
AssignVariableOp_43AssignVariableOpassignvariableop_43_adam_beta_2Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44¦
AssignVariableOp_44AssignVariableOpassignvariableop_44_adam_decayIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45®
AssignVariableOp_45AssignVariableOp&assignvariableop_45_adam_learning_rateIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46¡
AssignVariableOp_46AssignVariableOpassignvariableop_46_totalIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47¡
AssignVariableOp_47AssignVariableOpassignvariableop_47_countIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48£
AssignVariableOp_48AssignVariableOpassignvariableop_48_total_1Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49£
AssignVariableOp_49AssignVariableOpassignvariableop_49_count_1Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50°
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_conv2d_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51²
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_conv2d_1_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52²
AssignVariableOp_52AssignVariableOp*assignvariableop_52_adam_conv2d_2_kernel_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53²
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_conv2d_3_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54²
AssignVariableOp_54AssignVariableOp*assignvariableop_54_adam_conv2d_4_kernel_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55²
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_conv2d_5_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56²
AssignVariableOp_56AssignVariableOp*assignvariableop_56_adam_conv2d_9_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57²
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_conv2d_7_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58³
AssignVariableOp_58AssignVariableOp+assignvariableop_58_adam_conv2d_10_kernel_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59²
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_conv2d_6_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60²
AssignVariableOp_60AssignVariableOp*assignvariableop_60_adam_conv2d_8_kernel_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61³
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_conv2d_11_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62³
AssignVariableOp_62AssignVariableOp+assignvariableop_62_adam_conv2d_12_kernel_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63³
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_conv2d_14_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64³
AssignVariableOp_64AssignVariableOp+assignvariableop_64_adam_conv2d_15_kernel_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65³
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_conv2d_13_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66³
AssignVariableOp_66AssignVariableOp+assignvariableop_66_adam_conv2d_16_kernel_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67³
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_conv2d_18_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68³
AssignVariableOp_68AssignVariableOp+assignvariableop_68_adam_conv2d_19_kernel_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69³
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_conv2d_17_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70³
AssignVariableOp_70AssignVariableOp+assignvariableop_70_adam_conv2d_20_kernel_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71³
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv2d_21_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72³
AssignVariableOp_72AssignVariableOp+assignvariableop_72_adam_conv2d_23_kernel_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73³
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_conv2d_24_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74³
AssignVariableOp_74AssignVariableOp+assignvariableop_74_adam_conv2d_22_kernel_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75³
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv2d_25_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76³
AssignVariableOp_76AssignVariableOp+assignvariableop_76_adam_conv2d_26_kernel_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77³
AssignVariableOp_77AssignVariableOp+assignvariableop_77_adam_conv2d_31_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78³
AssignVariableOp_78AssignVariableOp+assignvariableop_78_adam_conv2d_27_kernel_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79³
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_conv2d_29_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80³
AssignVariableOp_80AssignVariableOp+assignvariableop_80_adam_conv2d_32_kernel_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81³
AssignVariableOp_81AssignVariableOp+assignvariableop_81_adam_conv2d_28_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82³
AssignVariableOp_82AssignVariableOp+assignvariableop_82_adam_conv2d_30_kernel_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83³
AssignVariableOp_83AssignVariableOp+assignvariableop_83_adam_conv2d_33_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84³
AssignVariableOp_84AssignVariableOp+assignvariableop_84_adam_conv2d_35_kernel_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85³
AssignVariableOp_85AssignVariableOp+assignvariableop_85_adam_conv2d_36_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86³
AssignVariableOp_86AssignVariableOp+assignvariableop_86_adam_conv2d_34_kernel_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87³
AssignVariableOp_87AssignVariableOp+assignvariableop_87_adam_conv2d_37_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88³
AssignVariableOp_88AssignVariableOp+assignvariableop_88_adam_conv2d_38_kernel_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89¯
AssignVariableOp_89AssignVariableOp'assignvariableop_89_adam_dense_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90­
AssignVariableOp_90AssignVariableOp%assignvariableop_90_adam_dense_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91°
AssignVariableOp_91AssignVariableOp(assignvariableop_91_adam_conv2d_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92²
AssignVariableOp_92AssignVariableOp*assignvariableop_92_adam_conv2d_1_kernel_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93²
AssignVariableOp_93AssignVariableOp*assignvariableop_93_adam_conv2d_2_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94²
AssignVariableOp_94AssignVariableOp*assignvariableop_94_adam_conv2d_3_kernel_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95²
AssignVariableOp_95AssignVariableOp*assignvariableop_95_adam_conv2d_4_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96²
AssignVariableOp_96AssignVariableOp*assignvariableop_96_adam_conv2d_5_kernel_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97²
AssignVariableOp_97AssignVariableOp*assignvariableop_97_adam_conv2d_9_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98²
AssignVariableOp_98AssignVariableOp*assignvariableop_98_adam_conv2d_7_kernel_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99³
AssignVariableOp_99AssignVariableOp+assignvariableop_99_adam_conv2d_10_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100¶
AssignVariableOp_100AssignVariableOp+assignvariableop_100_adam_conv2d_6_kernel_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101¶
AssignVariableOp_101AssignVariableOp+assignvariableop_101_adam_conv2d_8_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102·
AssignVariableOp_102AssignVariableOp,assignvariableop_102_adam_conv2d_11_kernel_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103·
AssignVariableOp_103AssignVariableOp,assignvariableop_103_adam_conv2d_12_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104·
AssignVariableOp_104AssignVariableOp,assignvariableop_104_adam_conv2d_14_kernel_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105·
AssignVariableOp_105AssignVariableOp,assignvariableop_105_adam_conv2d_15_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106·
AssignVariableOp_106AssignVariableOp,assignvariableop_106_adam_conv2d_13_kernel_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107·
AssignVariableOp_107AssignVariableOp,assignvariableop_107_adam_conv2d_16_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108·
AssignVariableOp_108AssignVariableOp,assignvariableop_108_adam_conv2d_18_kernel_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109·
AssignVariableOp_109AssignVariableOp,assignvariableop_109_adam_conv2d_19_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110·
AssignVariableOp_110AssignVariableOp,assignvariableop_110_adam_conv2d_17_kernel_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111·
AssignVariableOp_111AssignVariableOp,assignvariableop_111_adam_conv2d_20_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112·
AssignVariableOp_112AssignVariableOp,assignvariableop_112_adam_conv2d_21_kernel_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113·
AssignVariableOp_113AssignVariableOp,assignvariableop_113_adam_conv2d_23_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114·
AssignVariableOp_114AssignVariableOp,assignvariableop_114_adam_conv2d_24_kernel_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115·
AssignVariableOp_115AssignVariableOp,assignvariableop_115_adam_conv2d_22_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116·
AssignVariableOp_116AssignVariableOp,assignvariableop_116_adam_conv2d_25_kernel_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117·
AssignVariableOp_117AssignVariableOp,assignvariableop_117_adam_conv2d_26_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118·
AssignVariableOp_118AssignVariableOp,assignvariableop_118_adam_conv2d_31_kernel_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119·
AssignVariableOp_119AssignVariableOp,assignvariableop_119_adam_conv2d_27_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120·
AssignVariableOp_120AssignVariableOp,assignvariableop_120_adam_conv2d_29_kernel_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_120q
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:2
Identity_121·
AssignVariableOp_121AssignVariableOp,assignvariableop_121_adam_conv2d_32_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_121q
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:2
Identity_122·
AssignVariableOp_122AssignVariableOp,assignvariableop_122_adam_conv2d_28_kernel_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_122q
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:2
Identity_123·
AssignVariableOp_123AssignVariableOp,assignvariableop_123_adam_conv2d_30_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_123q
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:2
Identity_124·
AssignVariableOp_124AssignVariableOp,assignvariableop_124_adam_conv2d_33_kernel_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_124q
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:2
Identity_125·
AssignVariableOp_125AssignVariableOp,assignvariableop_125_adam_conv2d_35_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_125q
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:2
Identity_126·
AssignVariableOp_126AssignVariableOp,assignvariableop_126_adam_conv2d_36_kernel_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_126q
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:2
Identity_127·
AssignVariableOp_127AssignVariableOp,assignvariableop_127_adam_conv2d_34_kernel_vIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_127q
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:2
Identity_128·
AssignVariableOp_128AssignVariableOp,assignvariableop_128_adam_conv2d_37_kernel_vIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_128q
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:2
Identity_129·
AssignVariableOp_129AssignVariableOp,assignvariableop_129_adam_conv2d_38_kernel_vIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_129q
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:2
Identity_130³
AssignVariableOp_130AssignVariableOp(assignvariableop_130_adam_dense_kernel_vIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_130q
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:2
Identity_131±
AssignVariableOp_131AssignVariableOp&assignvariableop_131_adam_dense_bias_vIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1319
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpØ
Identity_132Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_132Ì
Identity_133IdentityIdentity_132:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_133"%
identity_133Identity_133:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312*
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
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


&__inference_conv2d_layer_call_fn_71256

inputs!
unknown: 
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_687812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿUU: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
 
_user_specified_nameinputs
Ð	
ò
@__inference_dense_layer_call_and_return_conditional_losses_71997

inputs1
matmul_readvariableop_resource:	à5-
biasadd_readvariableop_resource:5
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	à5*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:5*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿà: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
Ð	
ò
@__inference_dense_layer_call_and_return_conditional_losses_69359

inputs1
matmul_readvariableop_resource:	à5-
biasadd_readvariableop_resource:5
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	à5*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:5*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿà: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
ò
Q
%__inference_add_3_layer_call_fn_71960
inputs_0
inputs_1
identity×
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_693392
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿà:ÿÿÿÿÿÿÿÿÿà:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
"
_user_specified_name
inputs/1
ä
µ
D__inference_conv2d_15_layer_call_and_return_conditional_losses_68969

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs

r
H__inference_concatenate_3_layer_call_and_return_conditional_losses_69142

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)__inference_conv2d_11_layer_call_fn_71421

inputs!
unknown:  
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_689132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$ : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
 
_user_specified_nameinputs
í
·
D__inference_conv2d_38_layer_call_and_return_conditional_losses_71941

inputs:
conv2d_readvariableop_resource:à
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:à*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å
µ
D__inference_conv2d_16_layer_call_and_return_conditional_losses_68994

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
ä
´
C__inference_conv2d_3_layer_call_and_return_conditional_losses_71294

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs
©°
ë$
 __inference__wrapped_model_68729
input_1E
+model_conv2d_conv2d_readvariableop_resource: G
-model_conv2d_1_conv2d_readvariableop_resource:  G
-model_conv2d_2_conv2d_readvariableop_resource: @G
-model_conv2d_3_conv2d_readvariableop_resource:@@G
-model_conv2d_4_conv2d_readvariableop_resource:@@G
-model_conv2d_5_conv2d_readvariableop_resource:@@G
-model_conv2d_9_conv2d_readvariableop_resource:@ H
.model_conv2d_10_conv2d_readvariableop_resource:  G
-model_conv2d_7_conv2d_readvariableop_resource:@ G
-model_conv2d_6_conv2d_readvariableop_resource:@ G
-model_conv2d_8_conv2d_readvariableop_resource:  H
.model_conv2d_11_conv2d_readvariableop_resource:  H
.model_conv2d_12_conv2d_readvariableop_resource:`@H
.model_conv2d_14_conv2d_readvariableop_resource:@@H
.model_conv2d_15_conv2d_readvariableop_resource:@@I
.model_conv2d_13_conv2d_readvariableop_resource:@H
.model_conv2d_16_conv2d_readvariableop_resource:@@J
.model_conv2d_18_conv2d_readvariableop_resource:J
.model_conv2d_19_conv2d_readvariableop_resource:J
.model_conv2d_17_conv2d_readvariableop_resource:J
.model_conv2d_20_conv2d_readvariableop_resource:J
.model_conv2d_21_conv2d_readvariableop_resource:J
.model_conv2d_23_conv2d_readvariableop_resource:J
.model_conv2d_24_conv2d_readvariableop_resource:J
.model_conv2d_22_conv2d_readvariableop_resource:J
.model_conv2d_25_conv2d_readvariableop_resource:J
.model_conv2d_26_conv2d_readvariableop_resource:I
.model_conv2d_31_conv2d_readvariableop_resource:@H
.model_conv2d_32_conv2d_readvariableop_resource:@@I
.model_conv2d_29_conv2d_readvariableop_resource:@I
.model_conv2d_27_conv2d_readvariableop_resource:`H
.model_conv2d_28_conv2d_readvariableop_resource:``H
.model_conv2d_30_conv2d_readvariableop_resource:@@H
.model_conv2d_33_conv2d_readvariableop_resource:@@J
.model_conv2d_35_conv2d_readvariableop_resource:àÀJ
.model_conv2d_36_conv2d_readvariableop_resource:ÀÀJ
.model_conv2d_34_conv2d_readvariableop_resource:àÀJ
.model_conv2d_37_conv2d_readvariableop_resource:ÀÀJ
.model_conv2d_38_conv2d_readvariableop_resource:à=
*model_dense_matmul_readvariableop_resource:	à59
+model_dense_biasadd_readvariableop_resource:5
identity¢"model/conv2d/Conv2D/ReadVariableOp¢$model/conv2d_1/Conv2D/ReadVariableOp¢%model/conv2d_10/Conv2D/ReadVariableOp¢%model/conv2d_11/Conv2D/ReadVariableOp¢%model/conv2d_12/Conv2D/ReadVariableOp¢%model/conv2d_13/Conv2D/ReadVariableOp¢%model/conv2d_14/Conv2D/ReadVariableOp¢%model/conv2d_15/Conv2D/ReadVariableOp¢%model/conv2d_16/Conv2D/ReadVariableOp¢%model/conv2d_17/Conv2D/ReadVariableOp¢%model/conv2d_18/Conv2D/ReadVariableOp¢%model/conv2d_19/Conv2D/ReadVariableOp¢$model/conv2d_2/Conv2D/ReadVariableOp¢%model/conv2d_20/Conv2D/ReadVariableOp¢%model/conv2d_21/Conv2D/ReadVariableOp¢%model/conv2d_22/Conv2D/ReadVariableOp¢%model/conv2d_23/Conv2D/ReadVariableOp¢%model/conv2d_24/Conv2D/ReadVariableOp¢%model/conv2d_25/Conv2D/ReadVariableOp¢%model/conv2d_26/Conv2D/ReadVariableOp¢%model/conv2d_27/Conv2D/ReadVariableOp¢%model/conv2d_28/Conv2D/ReadVariableOp¢%model/conv2d_29/Conv2D/ReadVariableOp¢$model/conv2d_3/Conv2D/ReadVariableOp¢%model/conv2d_30/Conv2D/ReadVariableOp¢%model/conv2d_31/Conv2D/ReadVariableOp¢%model/conv2d_32/Conv2D/ReadVariableOp¢%model/conv2d_33/Conv2D/ReadVariableOp¢%model/conv2d_34/Conv2D/ReadVariableOp¢%model/conv2d_35/Conv2D/ReadVariableOp¢%model/conv2d_36/Conv2D/ReadVariableOp¢%model/conv2d_37/Conv2D/ReadVariableOp¢%model/conv2d_38/Conv2D/ReadVariableOp¢$model/conv2d_4/Conv2D/ReadVariableOp¢$model/conv2d_5/Conv2D/ReadVariableOp¢$model/conv2d_6/Conv2D/ReadVariableOp¢$model/conv2d_7/Conv2D/ReadVariableOp¢$model/conv2d_8/Conv2D/ReadVariableOp¢$model/conv2d_9/Conv2D/ReadVariableOp¢"model/dense/BiasAdd/ReadVariableOp¢!model/dense/MatMul/ReadVariableOp¼
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02$
"model/conv2d/Conv2D/ReadVariableOpÌ
model/conv2d/Conv2DConv2Dinput_1*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS *
paddingVALID*
strides
2
model/conv2d/Conv2D
model/conv2d/ReluRelumodel/conv2d/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS 2
model/conv2d/ReluÂ
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02&
$model/conv2d_1/Conv2D/ReadVariableOpê
model/conv2d_1/Conv2DConv2Dmodel/conv2d/Relu:activations:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ *
paddingVALID*
strides
2
model/conv2d_1/Conv2D
model/conv2d_1/ReluRelumodel/conv2d_1/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ 2
model/conv2d_1/ReluÂ
$model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02&
$model/conv2d_2/Conv2D/ReadVariableOpì
model/conv2d_2/Conv2DConv2D!model/conv2d_1/Relu:activations:0,model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingVALID*
strides
2
model/conv2d_2/Conv2D
model/conv2d_2/ReluRelumodel/conv2d_2/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
model/conv2d_2/ReluÂ
$model/conv2d_3/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02&
$model/conv2d_3/Conv2D/ReadVariableOpì
model/conv2d_3/Conv2DConv2D!model/conv2d_2/Relu:activations:0,model/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingVALID*
strides
2
model/conv2d_3/Conv2D
model/conv2d_3/ReluRelumodel/conv2d_3/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
model/conv2d_3/ReluÂ
$model/conv2d_4/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02&
$model/conv2d_4/Conv2D/ReadVariableOpì
model/conv2d_4/Conv2DConv2D!model/conv2d_3/Relu:activations:0,model/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@*
paddingVALID*
strides
2
model/conv2d_4/Conv2D
model/conv2d_4/ReluRelumodel/conv2d_4/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@2
model/conv2d_4/ReluÂ
$model/conv2d_5/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02&
$model/conv2d_5/Conv2D/ReadVariableOpì
model/conv2d_5/Conv2DConv2D!model/conv2d_4/Relu:activations:0,model/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingVALID*
strides
2
model/conv2d_5/Conv2D
model/conv2d_5/ReluRelumodel/conv2d_5/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
model/conv2d_5/ReluÂ
$model/conv2d_9/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02&
$model/conv2d_9/Conv2D/ReadVariableOpë
model/conv2d_9/Conv2DConv2D!model/conv2d_5/Relu:activations:0,model/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
model/conv2d_9/Conv2D
model/conv2d_9/ReluRelumodel/conv2d_9/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
model/conv2d_9/ReluÅ
%model/conv2d_10/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02'
%model/conv2d_10/Conv2D/ReadVariableOpî
model/conv2d_10/Conv2DConv2D!model/conv2d_9/Relu:activations:0-model/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
model/conv2d_10/Conv2D
model/conv2d_10/ReluRelumodel/conv2d_10/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
model/conv2d_10/ReluÂ
$model/conv2d_7/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02&
$model/conv2d_7/Conv2D/ReadVariableOpë
model/conv2d_7/Conv2DConv2D!model/conv2d_5/Relu:activations:0,model/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
model/conv2d_7/Conv2D
model/conv2d_7/ReluRelumodel/conv2d_7/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
model/conv2d_7/ReluÂ
$model/conv2d_6/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02&
$model/conv2d_6/Conv2D/ReadVariableOpë
model/conv2d_6/Conv2DConv2D!model/conv2d_5/Relu:activations:0,model/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
model/conv2d_6/Conv2D
model/conv2d_6/ReluRelumodel/conv2d_6/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
model/conv2d_6/ReluÂ
$model/conv2d_8/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02&
$model/conv2d_8/Conv2D/ReadVariableOpë
model/conv2d_8/Conv2DConv2D!model/conv2d_7/Relu:activations:0,model/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
model/conv2d_8/Conv2D
model/conv2d_8/ReluRelumodel/conv2d_8/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
model/conv2d_8/ReluÅ
%model/conv2d_11/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02'
%model/conv2d_11/Conv2D/ReadVariableOpï
model/conv2d_11/Conv2DConv2D"model/conv2d_10/Relu:activations:0-model/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
model/conv2d_11/Conv2D
model/conv2d_11/ReluRelumodel/conv2d_11/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
model/conv2d_11/Relu
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model/concatenate/concat/axis
model/concatenate/concatConcatV2!model/conv2d_6/Relu:activations:0!model/conv2d_8/Relu:activations:0"model/conv2d_11/Relu:activations:0&model/concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`2
model/concatenate/concatÅ
%model/conv2d_12/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:`@*
dtype02'
%model/conv2d_12/Conv2D/ReadVariableOpî
model/conv2d_12/Conv2DConv2D!model/concatenate/concat:output:0-model/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
model/conv2d_12/Conv2D
model/conv2d_12/ReluRelumodel/conv2d_12/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
model/conv2d_12/Relu
model/tf.math.multiply/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *{.>2
model/tf.math.multiply/Mul/yÄ
model/tf.math.multiply/MulMul"model/conv2d_12/Relu:activations:0%model/tf.math.multiply/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
model/tf.math.multiply/Mul¤
model/add/addAddV2!model/conv2d_5/Relu:activations:0model/tf.math.multiply/Mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
model/add/addÅ
%model/conv2d_14/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02'
%model/conv2d_14/Conv2D/ReadVariableOpÞ
model/conv2d_14/Conv2DConv2Dmodel/add/add:z:0-model/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
model/conv2d_14/Conv2D
model/conv2d_14/ReluRelumodel/conv2d_14/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
model/conv2d_14/ReluÅ
%model/conv2d_15/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02'
%model/conv2d_15/Conv2D/ReadVariableOpï
model/conv2d_15/Conv2DConv2D"model/conv2d_14/Relu:activations:0-model/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
model/conv2d_15/Conv2D
model/conv2d_15/ReluRelumodel/conv2d_15/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
model/conv2d_15/ReluÅ
model/max_pooling2d/MaxPoolMaxPoolmodel/add/add:z:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPoolÆ
%model/conv2d_13/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_13_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02'
%model/conv2d_13/Conv2D/ReadVariableOpà
model/conv2d_13/Conv2DConv2Dmodel/add/add:z:0-model/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
model/conv2d_13/Conv2D
model/conv2d_13/ReluRelumodel/conv2d_13/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d_13/ReluÅ
%model/conv2d_16/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02'
%model/conv2d_16/Conv2D/ReadVariableOpð
model/conv2d_16/Conv2DConv2D"model/conv2d_15/Relu:activations:0-model/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
model/conv2d_16/Conv2D
model/conv2d_16/ReluRelumodel/conv2d_16/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/conv2d_16/Relu
model/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/concatenate_1/concat/axis 
model/concatenate_1/concatConcatV2$model/max_pooling2d/MaxPool:output:0"model/conv2d_13/Relu:activations:0"model/conv2d_16/Relu:activations:0(model/concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/concatenate_1/concatÇ
%model/conv2d_18/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02'
%model/conv2d_18/Conv2D/ReadVariableOpñ
model/conv2d_18/Conv2DConv2D#model/concatenate_1/concat:output:0-model/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/conv2d_18/Conv2D
model/conv2d_18/ReluRelumodel/conv2d_18/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d_18/ReluÇ
%model/conv2d_19/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02'
%model/conv2d_19/Conv2D/ReadVariableOpð
model/conv2d_19/Conv2DConv2D"model/conv2d_18/Relu:activations:0-model/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/conv2d_19/Conv2D
model/conv2d_19/ReluRelumodel/conv2d_19/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d_19/ReluÇ
%model/conv2d_17/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_17_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02'
%model/conv2d_17/Conv2D/ReadVariableOpñ
model/conv2d_17/Conv2DConv2D#model/concatenate_1/concat:output:0-model/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/conv2d_17/Conv2D
model/conv2d_17/ReluRelumodel/conv2d_17/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d_17/ReluÇ
%model/conv2d_20/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_20_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02'
%model/conv2d_20/Conv2D/ReadVariableOpð
model/conv2d_20/Conv2DConv2D"model/conv2d_19/Relu:activations:0-model/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/conv2d_20/Conv2D
model/conv2d_20/ReluRelumodel/conv2d_20/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d_20/Relu
model/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/concatenate_2/concat/axisú
model/concatenate_2/concatConcatV2"model/conv2d_17/Relu:activations:0"model/conv2d_20/Relu:activations:0(model/concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/concatenate_2/concatÇ
%model/conv2d_21/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02'
%model/conv2d_21/Conv2D/ReadVariableOpñ
model/conv2d_21/Conv2DConv2D#model/concatenate_2/concat:output:0-model/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/conv2d_21/Conv2D
model/conv2d_21/ReluRelumodel/conv2d_21/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d_21/Relu
model/tf.math.multiply_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2 
model/tf.math.multiply_1/Mul/yË
model/tf.math.multiply_1/MulMul"model/conv2d_21/Relu:activations:0'model/tf.math.multiply_1/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/tf.math.multiply_1/Mul­
model/add_1/addAddV2#model/concatenate_1/concat:output:0 model/tf.math.multiply_1/Mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/add_1/addÇ
%model/conv2d_23/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02'
%model/conv2d_23/Conv2D/ReadVariableOpá
model/conv2d_23/Conv2DConv2Dmodel/add_1/add:z:0-model/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/conv2d_23/Conv2D
model/conv2d_23/ReluRelumodel/conv2d_23/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d_23/ReluÇ
%model/conv2d_24/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_24_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02'
%model/conv2d_24/Conv2D/ReadVariableOpð
model/conv2d_24/Conv2DConv2D"model/conv2d_23/Relu:activations:0-model/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/conv2d_24/Conv2D
model/conv2d_24/ReluRelumodel/conv2d_24/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d_24/ReluÇ
%model/conv2d_22/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02'
%model/conv2d_22/Conv2D/ReadVariableOpá
model/conv2d_22/Conv2DConv2Dmodel/add_1/add:z:0-model/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/conv2d_22/Conv2D
model/conv2d_22/ReluRelumodel/conv2d_22/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d_22/ReluÇ
%model/conv2d_25/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_25_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02'
%model/conv2d_25/Conv2D/ReadVariableOpð
model/conv2d_25/Conv2DConv2D"model/conv2d_24/Relu:activations:0-model/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/conv2d_25/Conv2D
model/conv2d_25/ReluRelumodel/conv2d_25/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d_25/Relu
model/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/concatenate_3/concat/axisú
model/concatenate_3/concatConcatV2"model/conv2d_22/Relu:activations:0"model/conv2d_25/Relu:activations:0(model/concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/concatenate_3/concatÇ
%model/conv2d_26/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_26_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02'
%model/conv2d_26/Conv2D/ReadVariableOpñ
model/conv2d_26/Conv2DConv2D#model/concatenate_3/concat:output:0-model/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
model/conv2d_26/Conv2D
model/conv2d_26/ReluRelumodel/conv2d_26/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d_26/Relu
model/tf.math.multiply_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2 
model/tf.math.multiply_2/Mul/yË
model/tf.math.multiply_2/MulMul"model/conv2d_26/Relu:activations:0'model/tf.math.multiply_2/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/tf.math.multiply_2/Mul
model/add_2/addAddV2model/add_1/add:z:0 model/tf.math.multiply_2/Mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/add_2/addÆ
%model/conv2d_31/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_31_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02'
%model/conv2d_31/Conv2D/ReadVariableOpà
model/conv2d_31/Conv2DConv2Dmodel/add_2/add:z:0-model/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
model/conv2d_31/Conv2D
model/conv2d_31/ReluRelumodel/conv2d_31/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/conv2d_31/ReluÅ
%model/conv2d_32/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02'
%model/conv2d_32/Conv2D/ReadVariableOpï
model/conv2d_32/Conv2DConv2D"model/conv2d_31/Relu:activations:0-model/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
model/conv2d_32/Conv2D
model/conv2d_32/ReluRelumodel/conv2d_32/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/conv2d_32/ReluÆ
%model/conv2d_29/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_29_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02'
%model/conv2d_29/Conv2D/ReadVariableOpá
model/conv2d_29/Conv2DConv2Dmodel/add_2/add:z:0-model/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
model/conv2d_29/Conv2D
model/conv2d_29/ReluRelumodel/conv2d_29/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/conv2d_29/ReluÆ
%model/conv2d_27/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_27_conv2d_readvariableop_resource*'
_output_shapes
:`*
dtype02'
%model/conv2d_27/Conv2D/ReadVariableOpá
model/conv2d_27/Conv2DConv2Dmodel/add_2/add:z:0-model/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
paddingVALID*
strides
2
model/conv2d_27/Conv2D
model/conv2d_27/ReluRelumodel/conv2d_27/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
model/conv2d_27/ReluÌ
model/max_pooling2d_1/MaxPoolMaxPoolmodel/add_2/add:z:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_1/MaxPoolÅ
%model/conv2d_28/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:``*
dtype02'
%model/conv2d_28/Conv2D/ReadVariableOpð
model/conv2d_28/Conv2DConv2D"model/conv2d_27/Relu:activations:0-model/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
paddingVALID*
strides
2
model/conv2d_28/Conv2D
model/conv2d_28/ReluRelumodel/conv2d_28/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
model/conv2d_28/ReluÅ
%model/conv2d_30/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02'
%model/conv2d_30/Conv2D/ReadVariableOpð
model/conv2d_30/Conv2DConv2D"model/conv2d_29/Relu:activations:0-model/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
model/conv2d_30/Conv2D
model/conv2d_30/ReluRelumodel/conv2d_30/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/conv2d_30/ReluÅ
%model/conv2d_33/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02'
%model/conv2d_33/Conv2D/ReadVariableOpð
model/conv2d_33/Conv2DConv2D"model/conv2d_32/Relu:activations:0-model/conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
model/conv2d_33/Conv2D
model/conv2d_33/ReluRelumodel/conv2d_33/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/conv2d_33/Relu
model/concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/concatenate_4/concat/axisÆ
model/concatenate_4/concatConcatV2&model/max_pooling2d_1/MaxPool:output:0"model/conv2d_28/Relu:activations:0"model/conv2d_30/Relu:activations:0"model/conv2d_33/Relu:activations:0(model/concatenate_4/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
model/concatenate_4/concatÇ
%model/conv2d_35/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_35_conv2d_readvariableop_resource*(
_output_shapes
:àÀ*
dtype02'
%model/conv2d_35/Conv2D/ReadVariableOpñ
model/conv2d_35/Conv2DConv2D#model/concatenate_4/concat:output:0-model/conv2d_35/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
model/conv2d_35/Conv2D
model/conv2d_35/ReluRelumodel/conv2d_35/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
model/conv2d_35/ReluÇ
%model/conv2d_36/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_36_conv2d_readvariableop_resource*(
_output_shapes
:ÀÀ*
dtype02'
%model/conv2d_36/Conv2D/ReadVariableOpð
model/conv2d_36/Conv2DConv2D"model/conv2d_35/Relu:activations:0-model/conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
model/conv2d_36/Conv2D
model/conv2d_36/ReluRelumodel/conv2d_36/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
model/conv2d_36/ReluÇ
%model/conv2d_34/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_34_conv2d_readvariableop_resource*(
_output_shapes
:àÀ*
dtype02'
%model/conv2d_34/Conv2D/ReadVariableOpñ
model/conv2d_34/Conv2DConv2D#model/concatenate_4/concat:output:0-model/conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
model/conv2d_34/Conv2D
model/conv2d_34/ReluRelumodel/conv2d_34/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
model/conv2d_34/ReluÇ
%model/conv2d_37/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_37_conv2d_readvariableop_resource*(
_output_shapes
:ÀÀ*
dtype02'
%model/conv2d_37/Conv2D/ReadVariableOpð
model/conv2d_37/Conv2DConv2D"model/conv2d_36/Relu:activations:0-model/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
model/conv2d_37/Conv2D
model/conv2d_37/ReluRelumodel/conv2d_37/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
model/conv2d_37/Relu
model/concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/concatenate_5/concat/axisú
model/concatenate_5/concatConcatV2"model/conv2d_34/Relu:activations:0"model/conv2d_37/Relu:activations:0(model/concatenate_5/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/concatenate_5/concatÇ
%model/conv2d_38/Conv2D/ReadVariableOpReadVariableOp.model_conv2d_38_conv2d_readvariableop_resource*(
_output_shapes
:à*
dtype02'
%model/conv2d_38/Conv2D/ReadVariableOpñ
model/conv2d_38/Conv2DConv2D#model/concatenate_5/concat:output:0-model/conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
paddingSAME*
strides
2
model/conv2d_38/Conv2D
model/conv2d_38/ReluRelumodel/conv2d_38/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
model/conv2d_38/Relu
model/tf.math.multiply_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2 
model/tf.math.multiply_3/Mul/yË
model/tf.math.multiply_3/MulMul"model/conv2d_38/Relu:activations:0'model/tf.math.multiply_3/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
model/tf.math.multiply_3/Mul­
model/add_3/addAddV2#model/concatenate_4/concat:output:0 model/tf.math.multiply_3/Mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
model/add_3/add¿
5model/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model/global_average_pooling2d/Mean/reduction_indicesÚ
#model/global_average_pooling2d/MeanMeanmodel/add_3/add:z:0>model/global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2%
#model/global_average_pooling2d/Mean
model/dropout/IdentityIdentity,model/global_average_pooling2d/Mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
model/dropout/Identity²
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	à5*
dtype02#
!model/dense/MatMul/ReadVariableOp°
model/dense/MatMulMatMulmodel/dropout/Identity:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52
model/dense/MatMul°
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype02$
"model/dense/BiasAdd/ReadVariableOp±
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52
model/dense/BiasAddÅ
IdentityIdentitymodel/dense/BiasAdd:output:0#^model/conv2d/Conv2D/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp&^model/conv2d_10/Conv2D/ReadVariableOp&^model/conv2d_11/Conv2D/ReadVariableOp&^model/conv2d_12/Conv2D/ReadVariableOp&^model/conv2d_13/Conv2D/ReadVariableOp&^model/conv2d_14/Conv2D/ReadVariableOp&^model/conv2d_15/Conv2D/ReadVariableOp&^model/conv2d_16/Conv2D/ReadVariableOp&^model/conv2d_17/Conv2D/ReadVariableOp&^model/conv2d_18/Conv2D/ReadVariableOp&^model/conv2d_19/Conv2D/ReadVariableOp%^model/conv2d_2/Conv2D/ReadVariableOp&^model/conv2d_20/Conv2D/ReadVariableOp&^model/conv2d_21/Conv2D/ReadVariableOp&^model/conv2d_22/Conv2D/ReadVariableOp&^model/conv2d_23/Conv2D/ReadVariableOp&^model/conv2d_24/Conv2D/ReadVariableOp&^model/conv2d_25/Conv2D/ReadVariableOp&^model/conv2d_26/Conv2D/ReadVariableOp&^model/conv2d_27/Conv2D/ReadVariableOp&^model/conv2d_28/Conv2D/ReadVariableOp&^model/conv2d_29/Conv2D/ReadVariableOp%^model/conv2d_3/Conv2D/ReadVariableOp&^model/conv2d_30/Conv2D/ReadVariableOp&^model/conv2d_31/Conv2D/ReadVariableOp&^model/conv2d_32/Conv2D/ReadVariableOp&^model/conv2d_33/Conv2D/ReadVariableOp&^model/conv2d_34/Conv2D/ReadVariableOp&^model/conv2d_35/Conv2D/ReadVariableOp&^model/conv2d_36/Conv2D/ReadVariableOp&^model/conv2d_37/Conv2D/ReadVariableOp&^model/conv2d_38/Conv2D/ReadVariableOp%^model/conv2d_4/Conv2D/ReadVariableOp%^model/conv2d_5/Conv2D/ReadVariableOp%^model/conv2d_6/Conv2D/ReadVariableOp%^model/conv2d_7/Conv2D/ReadVariableOp%^model/conv2d_8/Conv2D/ReadVariableOp%^model/conv2d_9/Conv2D/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿUU: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2N
%model/conv2d_10/Conv2D/ReadVariableOp%model/conv2d_10/Conv2D/ReadVariableOp2N
%model/conv2d_11/Conv2D/ReadVariableOp%model/conv2d_11/Conv2D/ReadVariableOp2N
%model/conv2d_12/Conv2D/ReadVariableOp%model/conv2d_12/Conv2D/ReadVariableOp2N
%model/conv2d_13/Conv2D/ReadVariableOp%model/conv2d_13/Conv2D/ReadVariableOp2N
%model/conv2d_14/Conv2D/ReadVariableOp%model/conv2d_14/Conv2D/ReadVariableOp2N
%model/conv2d_15/Conv2D/ReadVariableOp%model/conv2d_15/Conv2D/ReadVariableOp2N
%model/conv2d_16/Conv2D/ReadVariableOp%model/conv2d_16/Conv2D/ReadVariableOp2N
%model/conv2d_17/Conv2D/ReadVariableOp%model/conv2d_17/Conv2D/ReadVariableOp2N
%model/conv2d_18/Conv2D/ReadVariableOp%model/conv2d_18/Conv2D/ReadVariableOp2N
%model/conv2d_19/Conv2D/ReadVariableOp%model/conv2d_19/Conv2D/ReadVariableOp2L
$model/conv2d_2/Conv2D/ReadVariableOp$model/conv2d_2/Conv2D/ReadVariableOp2N
%model/conv2d_20/Conv2D/ReadVariableOp%model/conv2d_20/Conv2D/ReadVariableOp2N
%model/conv2d_21/Conv2D/ReadVariableOp%model/conv2d_21/Conv2D/ReadVariableOp2N
%model/conv2d_22/Conv2D/ReadVariableOp%model/conv2d_22/Conv2D/ReadVariableOp2N
%model/conv2d_23/Conv2D/ReadVariableOp%model/conv2d_23/Conv2D/ReadVariableOp2N
%model/conv2d_24/Conv2D/ReadVariableOp%model/conv2d_24/Conv2D/ReadVariableOp2N
%model/conv2d_25/Conv2D/ReadVariableOp%model/conv2d_25/Conv2D/ReadVariableOp2N
%model/conv2d_26/Conv2D/ReadVariableOp%model/conv2d_26/Conv2D/ReadVariableOp2N
%model/conv2d_27/Conv2D/ReadVariableOp%model/conv2d_27/Conv2D/ReadVariableOp2N
%model/conv2d_28/Conv2D/ReadVariableOp%model/conv2d_28/Conv2D/ReadVariableOp2N
%model/conv2d_29/Conv2D/ReadVariableOp%model/conv2d_29/Conv2D/ReadVariableOp2L
$model/conv2d_3/Conv2D/ReadVariableOp$model/conv2d_3/Conv2D/ReadVariableOp2N
%model/conv2d_30/Conv2D/ReadVariableOp%model/conv2d_30/Conv2D/ReadVariableOp2N
%model/conv2d_31/Conv2D/ReadVariableOp%model/conv2d_31/Conv2D/ReadVariableOp2N
%model/conv2d_32/Conv2D/ReadVariableOp%model/conv2d_32/Conv2D/ReadVariableOp2N
%model/conv2d_33/Conv2D/ReadVariableOp%model/conv2d_33/Conv2D/ReadVariableOp2N
%model/conv2d_34/Conv2D/ReadVariableOp%model/conv2d_34/Conv2D/ReadVariableOp2N
%model/conv2d_35/Conv2D/ReadVariableOp%model/conv2d_35/Conv2D/ReadVariableOp2N
%model/conv2d_36/Conv2D/ReadVariableOp%model/conv2d_36/Conv2D/ReadVariableOp2N
%model/conv2d_37/Conv2D/ReadVariableOp%model/conv2d_37/Conv2D/ReadVariableOp2N
%model/conv2d_38/Conv2D/ReadVariableOp%model/conv2d_38/Conv2D/ReadVariableOp2L
$model/conv2d_4/Conv2D/ReadVariableOp$model/conv2d_4/Conv2D/ReadVariableOp2L
$model/conv2d_5/Conv2D/ReadVariableOp$model/conv2d_5/Conv2D/ReadVariableOp2L
$model/conv2d_6/Conv2D/ReadVariableOp$model/conv2d_6/Conv2D/ReadVariableOp2L
$model/conv2d_7/Conv2D/ReadVariableOp$model/conv2d_7/Conv2D/ReadVariableOp2L
$model/conv2d_8/Conv2D/ReadVariableOp$model/conv2d_8/Conv2D/ReadVariableOp2L
$model/conv2d_9/Conv2D/ReadVariableOp$model/conv2d_9/Conv2D/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
!
_user_specified_name	input_1
ã
´
C__inference_conv2d_9_layer_call_and_return_conditional_losses_71339

inputs8
conv2d_readvariableop_resource:@ 
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
ä
µ
D__inference_conv2d_32_layer_call_and_return_conditional_losses_69186

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¤

)__inference_conv2d_23_layer_call_fn_71653

inputs#
unknown:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_690952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)__inference_conv2d_32_layer_call_fn_71798

inputs!
unknown:@@
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_691862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
þ
j
@__inference_add_2_layer_call_and_return_conditional_losses_69164

inputs
inputs_1
identity`
addAddV2inputsinputs_1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addd
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø
K
/__inference_max_pooling2d_1_layer_call_fn_68753

inputs
identityî
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_687472
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
·
D__inference_conv2d_36_layer_call_and_return_conditional_losses_71883

inputs:
conv2d_readvariableop_resource:ÀÀ
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ÀÀ*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÀ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
²þ
Í
@__inference_model_layer_call_and_return_conditional_losses_69366

inputs&
conv2d_68782: (
conv2d_1_68794:  (
conv2d_2_68806: @(
conv2d_3_68818:@@(
conv2d_4_68830:@@(
conv2d_5_68842:@@(
conv2d_9_68854:@ )
conv2d_10_68866:  (
conv2d_7_68878:@ (
conv2d_6_68890:@ (
conv2d_8_68902:  )
conv2d_11_68914:  )
conv2d_12_68936:`@)
conv2d_14_68958:@@)
conv2d_15_68970:@@*
conv2d_13_68983:@)
conv2d_16_68995:@@+
conv2d_18_69017:+
conv2d_19_69029:+
conv2d_17_69041:+
conv2d_20_69053:+
conv2d_21_69074:+
conv2d_23_69096:+
conv2d_24_69108:+
conv2d_22_69120:+
conv2d_25_69132:+
conv2d_26_69153:*
conv2d_31_69175:@)
conv2d_32_69187:@@*
conv2d_29_69199:@*
conv2d_27_69211:`)
conv2d_28_69224:``)
conv2d_30_69236:@@)
conv2d_33_69248:@@+
conv2d_35_69271:àÀ+
conv2d_36_69283:ÀÀ+
conv2d_34_69295:àÀ+
conv2d_37_69307:ÀÀ+
conv2d_38_69328:à
dense_69360:	à5
dense_69362:5
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢!conv2d_12/StatefulPartitionedCall¢!conv2d_13/StatefulPartitionedCall¢!conv2d_14/StatefulPartitionedCall¢!conv2d_15/StatefulPartitionedCall¢!conv2d_16/StatefulPartitionedCall¢!conv2d_17/StatefulPartitionedCall¢!conv2d_18/StatefulPartitionedCall¢!conv2d_19/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢!conv2d_20/StatefulPartitionedCall¢!conv2d_21/StatefulPartitionedCall¢!conv2d_22/StatefulPartitionedCall¢!conv2d_23/StatefulPartitionedCall¢!conv2d_24/StatefulPartitionedCall¢!conv2d_25/StatefulPartitionedCall¢!conv2d_26/StatefulPartitionedCall¢!conv2d_27/StatefulPartitionedCall¢!conv2d_28/StatefulPartitionedCall¢!conv2d_29/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢!conv2d_30/StatefulPartitionedCall¢!conv2d_31/StatefulPartitionedCall¢!conv2d_32/StatefulPartitionedCall¢!conv2d_33/StatefulPartitionedCall¢!conv2d_34/StatefulPartitionedCall¢!conv2d_35/StatefulPartitionedCall¢!conv2d_36/StatefulPartitionedCall¢!conv2d_37/StatefulPartitionedCall¢!conv2d_38/StatefulPartitionedCall¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_68782*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_687812 
conv2d/StatefulPartitionedCall«
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_68794*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_687932"
 conv2d_1/StatefulPartitionedCall­
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_68806*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_688052"
 conv2d_2/StatefulPartitionedCall­
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_68818*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_688172"
 conv2d_3/StatefulPartitionedCall­
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_68830*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_688292"
 conv2d_4/StatefulPartitionedCall­
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_68842*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_688412"
 conv2d_5/StatefulPartitionedCall­
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_9_68854*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_688532"
 conv2d_9/StatefulPartitionedCall±
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_68866*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_688652#
!conv2d_10/StatefulPartitionedCall­
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_7_68878*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_688772"
 conv2d_7/StatefulPartitionedCall­
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_68890*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_688892"
 conv2d_6/StatefulPartitionedCall­
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0conv2d_8_68902*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_689012"
 conv2d_8/StatefulPartitionedCall²
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_68914*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_689132#
!conv2d_11/StatefulPartitionedCallã
concatenate/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0)conv2d_8/StatefulPartitionedCall:output:0*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_689252
concatenate/PartitionedCall¬
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_12_68936*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_689352#
!conv2d_12/StatefulPartitionedCallu
tf.math.multiply/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *{.>2
tf.math.multiply/Mul/yº
tf.math.multiply/MulMul*conv2d_12/StatefulPartitionedCall:output:0tf.math.multiply/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
tf.math.multiply/Mul
add/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0tf.math.multiply/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_689472
add/PartitionedCall¤
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_14_68958*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_689572#
!conv2d_14/StatefulPartitionedCall²
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0conv2d_15_68970*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_689692#
!conv2d_15/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCalladd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_687352
max_pooling2d/PartitionedCall¥
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_13_68983*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_689822#
!conv2d_13/StatefulPartitionedCall²
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0conv2d_16_68995*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_689942#
!conv2d_16/StatefulPartitionedCallè
concatenate_1/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*conv2d_13/StatefulPartitionedCall:output:0*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_690062
concatenate_1/PartitionedCall¯
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_18_69017*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_690162#
!conv2d_18/StatefulPartitionedCall³
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_69029*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_690282#
!conv2d_19/StatefulPartitionedCall¯
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_17_69041*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_690402#
!conv2d_17/StatefulPartitionedCall³
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0conv2d_20_69053*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_690522#
!conv2d_20/StatefulPartitionedCall¿
concatenate_2/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_2_layer_call_and_return_conditional_losses_690632
concatenate_2/PartitionedCall¯
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0conv2d_21_69074*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_690732#
!conv2d_21/StatefulPartitionedCally
tf.math.multiply_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_1/Mul/yÁ
tf.math.multiply_1/MulMul*conv2d_21/StatefulPartitionedCall:output:0!tf.math.multiply_1/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_1/Mul
add_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0tf.math.multiply_1/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_690852
add_1/PartitionedCall§
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0conv2d_23_69096*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_690952#
!conv2d_23/StatefulPartitionedCall³
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0conv2d_24_69108*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_691072#
!conv2d_24/StatefulPartitionedCall§
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0conv2d_22_69120*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_691192#
!conv2d_22/StatefulPartitionedCall³
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0conv2d_25_69132*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_691312#
!conv2d_25/StatefulPartitionedCall¿
concatenate_3/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_3_layer_call_and_return_conditional_losses_691422
concatenate_3/PartitionedCall¯
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv2d_26_69153*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_691522#
!conv2d_26/StatefulPartitionedCally
tf.math.multiply_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_2/Mul/yÁ
tf.math.multiply_2/MulMul*conv2d_26/StatefulPartitionedCall:output:0!tf.math.multiply_2/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_2/Mul
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0tf.math.multiply_2/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_691642
add_2/PartitionedCall¦
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0conv2d_31_69175*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_691742#
!conv2d_31/StatefulPartitionedCall²
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0conv2d_32_69187*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_691862#
!conv2d_32/StatefulPartitionedCall¦
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0conv2d_29_69199*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_691982#
!conv2d_29/StatefulPartitionedCall¦
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0conv2d_27_69211*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_692102#
!conv2d_27/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_687472!
max_pooling2d_1/PartitionedCall²
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0conv2d_28_69224*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_692232#
!conv2d_28/StatefulPartitionedCall²
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0conv2d_30_69236*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_692352#
!conv2d_30/StatefulPartitionedCall²
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0conv2d_33_69248*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_33_layer_call_and_return_conditional_losses_692472#
!conv2d_33/StatefulPartitionedCall
concatenate_4/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*conv2d_28/StatefulPartitionedCall:output:0*conv2d_30/StatefulPartitionedCall:output:0*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_4_layer_call_and_return_conditional_losses_692602
concatenate_4/PartitionedCall¯
!conv2d_35/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0conv2d_35_69271*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_35_layer_call_and_return_conditional_losses_692702#
!conv2d_35/StatefulPartitionedCall³
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCall*conv2d_35/StatefulPartitionedCall:output:0conv2d_36_69283*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_692822#
!conv2d_36/StatefulPartitionedCall¯
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0conv2d_34_69295*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_34_layer_call_and_return_conditional_losses_692942#
!conv2d_34/StatefulPartitionedCall³
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0conv2d_37_69307*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_693062#
!conv2d_37/StatefulPartitionedCall¿
concatenate_5/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_5_layer_call_and_return_conditional_losses_693172
concatenate_5/PartitionedCall¯
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall&concatenate_5/PartitionedCall:output:0conv2d_38_69328*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_693272#
!conv2d_38/StatefulPartitionedCally
tf.math.multiply_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_3/Mul/yÁ
tf.math.multiply_3/MulMul*conv2d_38/StatefulPartitionedCall:output:0!tf.math.multiply_3/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
tf.math.multiply_3/Mul
add_3/PartitionedCallPartitionedCall&concatenate_4/PartitionedCall:output:0tf.math.multiply_3/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_693392
add_3/PartitionedCall
(global_average_pooling2d/PartitionedCallPartitionedCalladd_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_687602*
(global_average_pooling2d/PartitionedCallÿ
dropout/PartitionedCallPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_693472
dropout/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_69360dense_69362*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ5*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_693592
dense/StatefulPartitionedCall
IdentityIdentity&dense/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall"^conv2d_34/StatefulPartitionedCall"^conv2d_35/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿUU: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2F
!conv2d_35/StatefulPartitionedCall!conv2d_35/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
 
_user_specified_nameinputs
ä
´
C__inference_conv2d_2_layer_call_and_return_conditional_losses_68805

inputs8
conv2d_readvariableop_resource: @
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿQQ : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ 
 
_user_specified_nameinputs
í
·
D__inference_conv2d_25_layer_call_and_return_conditional_losses_69131

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
`
B__inference_dropout_layer_call_and_return_conditional_losses_71965

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿà:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
í
·
D__inference_conv2d_26_layer_call_and_return_conditional_losses_71719

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
j
@__inference_add_1_layer_call_and_return_conditional_losses_69085

inputs
inputs_1
identity`
addAddV2inputsinputs_1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addd
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô
I
-__inference_max_pooling2d_layer_call_fn_68741

inputs
identityì
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_687352
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
·
D__inference_conv2d_23_layer_call_and_return_conditional_losses_71646

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
`
B__inference_dropout_layer_call_and_return_conditional_losses_69347

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿà:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
í
·
D__inference_conv2d_25_layer_call_and_return_conditional_losses_71691

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
`
'__inference_dropout_layer_call_fn_71987

inputs
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_694812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿà22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
¿
C
'__inference_dropout_layer_call_fn_71982

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_693472
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿà:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
ä
´
C__inference_conv2d_1_layer_call_and_return_conditional_losses_68793

inputs8
conv2d_readvariableop_resource:  
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ *
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿSS : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS 
 
_user_specified_nameinputs


(__inference_conv2d_5_layer_call_fn_71331

inputs!
unknown:@@
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_688412
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ&&@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@
 
_user_specified_nameinputs
±
a
B__inference_dropout_layer_call_and_return_conditional_losses_71977

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿà:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
é
¶
D__inference_conv2d_27_layer_call_and_return_conditional_losses_69210

inputs9
conv2d_readvariableop_resource:`
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

t
H__inference_concatenate_3_layer_call_and_return_conditional_losses_71705
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
í
·
D__inference_conv2d_19_layer_call_and_return_conditional_losses_71561

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
j
@__inference_add_3_layer_call_and_return_conditional_losses_69339

inputs
inputs_1
identity`
addAddV2inputsinputs_1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
addd
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿà:ÿÿÿÿÿÿÿÿÿà:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
 
_user_specified_nameinputs
å
µ
D__inference_conv2d_28_layer_call_and_return_conditional_losses_69223

inputs8
conv2d_readvariableop_resource:``
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:``*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ`: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
ª
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_68747

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è
¶
D__inference_conv2d_31_layer_call_and_return_conditional_losses_71746

inputs9
conv2d_readvariableop_resource:@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)__inference_conv2d_30_layer_call_fn_71828

inputs!
unknown:@@
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_692352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¤

)__inference_conv2d_20_layer_call_fn_71598

inputs#
unknown:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_690522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
µ
D__inference_conv2d_14_layer_call_and_return_conditional_losses_68957

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
¡

)__inference_conv2d_29_layer_call_fn_71783

inputs"
unknown:@
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_691982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
´
C__inference_conv2d_1_layer_call_and_return_conditional_losses_71264

inputs8
conv2d_readvariableop_resource:  
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ *
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿSS : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS 
 
_user_specified_nameinputs
¤

)__inference_conv2d_17_layer_call_fn_71583

inputs#
unknown:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_690402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 

H__inference_concatenate_1_layer_call_and_return_conditional_losses_69006

inputs
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ñ
!
@__inference_model_layer_call_and_return_conditional_losses_70865

inputs?
%conv2d_conv2d_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource:  A
'conv2d_2_conv2d_readvariableop_resource: @A
'conv2d_3_conv2d_readvariableop_resource:@@A
'conv2d_4_conv2d_readvariableop_resource:@@A
'conv2d_5_conv2d_readvariableop_resource:@@A
'conv2d_9_conv2d_readvariableop_resource:@ B
(conv2d_10_conv2d_readvariableop_resource:  A
'conv2d_7_conv2d_readvariableop_resource:@ A
'conv2d_6_conv2d_readvariableop_resource:@ A
'conv2d_8_conv2d_readvariableop_resource:  B
(conv2d_11_conv2d_readvariableop_resource:  B
(conv2d_12_conv2d_readvariableop_resource:`@B
(conv2d_14_conv2d_readvariableop_resource:@@B
(conv2d_15_conv2d_readvariableop_resource:@@C
(conv2d_13_conv2d_readvariableop_resource:@B
(conv2d_16_conv2d_readvariableop_resource:@@D
(conv2d_18_conv2d_readvariableop_resource:D
(conv2d_19_conv2d_readvariableop_resource:D
(conv2d_17_conv2d_readvariableop_resource:D
(conv2d_20_conv2d_readvariableop_resource:D
(conv2d_21_conv2d_readvariableop_resource:D
(conv2d_23_conv2d_readvariableop_resource:D
(conv2d_24_conv2d_readvariableop_resource:D
(conv2d_22_conv2d_readvariableop_resource:D
(conv2d_25_conv2d_readvariableop_resource:D
(conv2d_26_conv2d_readvariableop_resource:C
(conv2d_31_conv2d_readvariableop_resource:@B
(conv2d_32_conv2d_readvariableop_resource:@@C
(conv2d_29_conv2d_readvariableop_resource:@C
(conv2d_27_conv2d_readvariableop_resource:`B
(conv2d_28_conv2d_readvariableop_resource:``B
(conv2d_30_conv2d_readvariableop_resource:@@B
(conv2d_33_conv2d_readvariableop_resource:@@D
(conv2d_35_conv2d_readvariableop_resource:àÀD
(conv2d_36_conv2d_readvariableop_resource:ÀÀD
(conv2d_34_conv2d_readvariableop_resource:àÀD
(conv2d_37_conv2d_readvariableop_resource:ÀÀD
(conv2d_38_conv2d_readvariableop_resource:à7
$dense_matmul_readvariableop_resource:	à53
%dense_biasadd_readvariableop_resource:5
identity¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_10/Conv2D/ReadVariableOp¢conv2d_11/Conv2D/ReadVariableOp¢conv2d_12/Conv2D/ReadVariableOp¢conv2d_13/Conv2D/ReadVariableOp¢conv2d_14/Conv2D/ReadVariableOp¢conv2d_15/Conv2D/ReadVariableOp¢conv2d_16/Conv2D/ReadVariableOp¢conv2d_17/Conv2D/ReadVariableOp¢conv2d_18/Conv2D/ReadVariableOp¢conv2d_19/Conv2D/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢conv2d_20/Conv2D/ReadVariableOp¢conv2d_21/Conv2D/ReadVariableOp¢conv2d_22/Conv2D/ReadVariableOp¢conv2d_23/Conv2D/ReadVariableOp¢conv2d_24/Conv2D/ReadVariableOp¢conv2d_25/Conv2D/ReadVariableOp¢conv2d_26/Conv2D/ReadVariableOp¢conv2d_27/Conv2D/ReadVariableOp¢conv2d_28/Conv2D/ReadVariableOp¢conv2d_29/Conv2D/ReadVariableOp¢conv2d_3/Conv2D/ReadVariableOp¢conv2d_30/Conv2D/ReadVariableOp¢conv2d_31/Conv2D/ReadVariableOp¢conv2d_32/Conv2D/ReadVariableOp¢conv2d_33/Conv2D/ReadVariableOp¢conv2d_34/Conv2D/ReadVariableOp¢conv2d_35/Conv2D/ReadVariableOp¢conv2d_36/Conv2D/ReadVariableOp¢conv2d_37/Conv2D/ReadVariableOp¢conv2d_38/Conv2D/ReadVariableOp¢conv2d_4/Conv2D/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢conv2d_6/Conv2D/ReadVariableOp¢conv2d_7/Conv2D/ReadVariableOp¢conv2d_8/Conv2D/ReadVariableOp¢conv2d_9/Conv2D/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpª
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp¹
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS *
paddingVALID*
strides
2
conv2d/Conv2Dt
conv2d/ReluReluconv2d/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS 2
conv2d/Relu°
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_1/Conv2D/ReadVariableOpÒ
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ *
paddingVALID*
strides
2
conv2d_1/Conv2Dz
conv2d_1/ReluReluconv2d_1/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ 2
conv2d_1/Relu°
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOpÔ
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingVALID*
strides
2
conv2d_2/Conv2Dz
conv2d_2/ReluReluconv2d_2/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
conv2d_2/Relu°
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_3/Conv2D/ReadVariableOpÔ
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*
paddingVALID*
strides
2
conv2d_3/Conv2Dz
conv2d_3/ReluReluconv2d_3/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2
conv2d_3/Relu°
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_4/Conv2D/ReadVariableOpÔ
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@*
paddingVALID*
strides
2
conv2d_4/Conv2Dz
conv2d_4/ReluReluconv2d_4/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@2
conv2d_4/Relu°
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_5/Conv2D/ReadVariableOpÔ
conv2d_5/Conv2DConv2Dconv2d_4/Relu:activations:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingVALID*
strides
2
conv2d_5/Conv2Dz
conv2d_5/ReluReluconv2d_5/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
conv2d_5/Relu°
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02 
conv2d_9/Conv2D/ReadVariableOpÓ
conv2d_9/Conv2DConv2Dconv2d_5/Relu:activations:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
conv2d_9/Conv2Dz
conv2d_9/ReluReluconv2d_9/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
conv2d_9/Relu³
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_10/Conv2D/ReadVariableOpÖ
conv2d_10/Conv2DConv2Dconv2d_9/Relu:activations:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
conv2d_10/Conv2D}
conv2d_10/ReluReluconv2d_10/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
conv2d_10/Relu°
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02 
conv2d_7/Conv2D/ReadVariableOpÓ
conv2d_7/Conv2DConv2Dconv2d_5/Relu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
conv2d_7/Conv2Dz
conv2d_7/ReluReluconv2d_7/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
conv2d_7/Relu°
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02 
conv2d_6/Conv2D/ReadVariableOpÓ
conv2d_6/Conv2DConv2Dconv2d_5/Relu:activations:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
conv2d_6/Conv2Dz
conv2d_6/ReluReluconv2d_6/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
conv2d_6/Relu°
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_8/Conv2D/ReadVariableOpÓ
conv2d_8/Conv2DConv2Dconv2d_7/Relu:activations:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
conv2d_8/Conv2Dz
conv2d_8/ReluReluconv2d_8/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
conv2d_8/Relu³
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_11/Conv2D/ReadVariableOp×
conv2d_11/Conv2DConv2Dconv2d_10/Relu:activations:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
conv2d_11/Conv2D}
conv2d_11/ReluReluconv2d_11/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
conv2d_11/Relut
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisñ
concatenate/concatConcatV2conv2d_6/Relu:activations:0conv2d_8/Relu:activations:0conv2d_11/Relu:activations:0 concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`2
concatenate/concat³
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:`@*
dtype02!
conv2d_12/Conv2D/ReadVariableOpÖ
conv2d_12/Conv2DConv2Dconcatenate/concat:output:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
conv2d_12/Conv2D}
conv2d_12/ReluReluconv2d_12/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
conv2d_12/Reluu
tf.math.multiply/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *{.>2
tf.math.multiply/Mul/y¬
tf.math.multiply/MulMulconv2d_12/Relu:activations:0tf.math.multiply/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
tf.math.multiply/Mul
add/addAddV2conv2d_5/Relu:activations:0tf.math.multiply/Mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2	
add/add³
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_14/Conv2D/ReadVariableOpÆ
conv2d_14/Conv2DConv2Dadd/add:z:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
conv2d_14/Conv2D}
conv2d_14/ReluReluconv2d_14/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
conv2d_14/Relu³
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_15/Conv2D/ReadVariableOp×
conv2d_15/Conv2DConv2Dconv2d_14/Relu:activations:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
conv2d_15/Conv2D}
conv2d_15/ReluReluconv2d_15/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
conv2d_15/Relu³
max_pooling2d/MaxPoolMaxPooladd/add:z:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool´
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_13/Conv2D/ReadVariableOpÈ
conv2d_13/Conv2DConv2Dadd/add:z:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv2d_13/Conv2D~
conv2d_13/ReluReluconv2d_13/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_13/Relu³
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_16/Conv2D/ReadVariableOpØ
conv2d_16/Conv2DConv2Dconv2d_15/Relu:activations:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_16/Conv2D}
conv2d_16/ReluReluconv2d_16/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_16/Relux
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axisü
concatenate_1/concatConcatV2max_pooling2d/MaxPool:output:0conv2d_13/Relu:activations:0conv2d_16/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatenate_1/concatµ
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_18/Conv2D/ReadVariableOpÙ
conv2d_18/Conv2DConv2Dconcatenate_1/concat:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_18/Conv2D~
conv2d_18/ReluReluconv2d_18/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_18/Reluµ
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_19/Conv2D/ReadVariableOpØ
conv2d_19/Conv2DConv2Dconv2d_18/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_19/Conv2D~
conv2d_19/ReluReluconv2d_19/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_19/Reluµ
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_17/Conv2D/ReadVariableOpÙ
conv2d_17/Conv2DConv2Dconcatenate_1/concat:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_17/Conv2D~
conv2d_17/ReluReluconv2d_17/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_17/Reluµ
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_20/Conv2D/ReadVariableOpØ
conv2d_20/Conv2DConv2Dconv2d_19/Relu:activations:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_20/Conv2D~
conv2d_20/ReluReluconv2d_20/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_20/Relux
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axisÜ
concatenate_2/concatConcatV2conv2d_17/Relu:activations:0conv2d_20/Relu:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatenate_2/concatµ
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_21/Conv2D/ReadVariableOpÙ
conv2d_21/Conv2DConv2Dconcatenate_2/concat:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_21/Conv2D~
conv2d_21/ReluReluconv2d_21/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_21/Reluy
tf.math.multiply_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_1/Mul/y³
tf.math.multiply_1/MulMulconv2d_21/Relu:activations:0!tf.math.multiply_1/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_1/Mul
	add_1/addAddV2concatenate_1/concat:output:0tf.math.multiply_1/Mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	add_1/addµ
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_23/Conv2D/ReadVariableOpÉ
conv2d_23/Conv2DConv2Dadd_1/add:z:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_23/Conv2D~
conv2d_23/ReluReluconv2d_23/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_23/Reluµ
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_24/Conv2D/ReadVariableOpØ
conv2d_24/Conv2DConv2Dconv2d_23/Relu:activations:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_24/Conv2D~
conv2d_24/ReluReluconv2d_24/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_24/Reluµ
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_22/Conv2D/ReadVariableOpÉ
conv2d_22/Conv2DConv2Dadd_1/add:z:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_22/Conv2D~
conv2d_22/ReluReluconv2d_22/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_22/Reluµ
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_25/Conv2D/ReadVariableOpØ
conv2d_25/Conv2DConv2Dconv2d_24/Relu:activations:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_25/Conv2D~
conv2d_25/ReluReluconv2d_25/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_25/Relux
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axisÜ
concatenate_3/concatConcatV2conv2d_22/Relu:activations:0conv2d_25/Relu:activations:0"concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatenate_3/concatµ
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_26/Conv2D/ReadVariableOpÙ
conv2d_26/Conv2DConv2Dconcatenate_3/concat:output:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_26/Conv2D~
conv2d_26/ReluReluconv2d_26/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_26/Reluy
tf.math.multiply_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_2/Mul/y³
tf.math.multiply_2/MulMulconv2d_26/Relu:activations:0!tf.math.multiply_2/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_2/Mul
	add_2/addAddV2add_1/add:z:0tf.math.multiply_2/Mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	add_2/add´
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_31/Conv2D/ReadVariableOpÈ
conv2d_31/Conv2DConv2Dadd_2/add:z:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv2d_31/Conv2D}
conv2d_31/ReluReluconv2d_31/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_31/Relu³
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_32/Conv2D/ReadVariableOp×
conv2d_32/Conv2DConv2Dconv2d_31/Relu:activations:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv2d_32/Conv2D}
conv2d_32/ReluReluconv2d_32/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_32/Relu´
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_29/Conv2D/ReadVariableOpÉ
conv2d_29/Conv2DConv2Dadd_2/add:z:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_29/Conv2D}
conv2d_29/ReluReluconv2d_29/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_29/Relu´
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*'
_output_shapes
:`*
dtype02!
conv2d_27/Conv2D/ReadVariableOpÉ
conv2d_27/Conv2DConv2Dadd_2/add:z:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
paddingVALID*
strides
2
conv2d_27/Conv2D}
conv2d_27/ReluReluconv2d_27/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
conv2d_27/Reluº
max_pooling2d_1/MaxPoolMaxPooladd_2/add:z:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool³
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:``*
dtype02!
conv2d_28/Conv2D/ReadVariableOpØ
conv2d_28/Conv2DConv2Dconv2d_27/Relu:activations:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
paddingVALID*
strides
2
conv2d_28/Conv2D}
conv2d_28/ReluReluconv2d_28/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
conv2d_28/Relu³
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_30/Conv2D/ReadVariableOpØ
conv2d_30/Conv2DConv2Dconv2d_29/Relu:activations:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_30/Conv2D}
conv2d_30/ReluReluconv2d_30/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_30/Relu³
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_33/Conv2D/ReadVariableOpØ
conv2d_33/Conv2DConv2Dconv2d_32/Relu:activations:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_33/Conv2D}
conv2d_33/ReluReluconv2d_33/Conv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_33/Relux
concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_4/concat/axis
concatenate_4/concatConcatV2 max_pooling2d_1/MaxPool:output:0conv2d_28/Relu:activations:0conv2d_30/Relu:activations:0conv2d_33/Relu:activations:0"concatenate_4/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
concatenate_4/concatµ
conv2d_35/Conv2D/ReadVariableOpReadVariableOp(conv2d_35_conv2d_readvariableop_resource*(
_output_shapes
:àÀ*
dtype02!
conv2d_35/Conv2D/ReadVariableOpÙ
conv2d_35/Conv2DConv2Dconcatenate_4/concat:output:0'conv2d_35/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
conv2d_35/Conv2D~
conv2d_35/ReluReluconv2d_35/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
conv2d_35/Reluµ
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*(
_output_shapes
:ÀÀ*
dtype02!
conv2d_36/Conv2D/ReadVariableOpØ
conv2d_36/Conv2DConv2Dconv2d_35/Relu:activations:0'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
conv2d_36/Conv2D~
conv2d_36/ReluReluconv2d_36/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
conv2d_36/Reluµ
conv2d_34/Conv2D/ReadVariableOpReadVariableOp(conv2d_34_conv2d_readvariableop_resource*(
_output_shapes
:àÀ*
dtype02!
conv2d_34/Conv2D/ReadVariableOpÙ
conv2d_34/Conv2DConv2Dconcatenate_4/concat:output:0'conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
conv2d_34/Conv2D~
conv2d_34/ReluReluconv2d_34/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
conv2d_34/Reluµ
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*(
_output_shapes
:ÀÀ*
dtype02!
conv2d_37/Conv2D/ReadVariableOpØ
conv2d_37/Conv2DConv2Dconv2d_36/Relu:activations:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
paddingSAME*
strides
2
conv2d_37/Conv2D~
conv2d_37/ReluReluconv2d_37/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
conv2d_37/Relux
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_5/concat/axisÜ
concatenate_5/concatConcatV2conv2d_34/Relu:activations:0conv2d_37/Relu:activations:0"concatenate_5/concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatenate_5/concatµ
conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*(
_output_shapes
:à*
dtype02!
conv2d_38/Conv2D/ReadVariableOpÙ
conv2d_38/Conv2DConv2Dconcatenate_5/concat:output:0'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*
paddingSAME*
strides
2
conv2d_38/Conv2D~
conv2d_38/ReluReluconv2d_38/Conv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
conv2d_38/Reluy
tf.math.multiply_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_3/Mul/y³
tf.math.multiply_3/MulMulconv2d_38/Relu:activations:0!tf.math.multiply_3/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
tf.math.multiply_3/Mul
	add_3/addAddV2concatenate_4/concat:output:0tf.math.multiply_3/Mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
	add_3/add³
/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      21
/global_average_pooling2d/Mean/reduction_indicesÂ
global_average_pooling2d/MeanMeanadd_3/add:z:08global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
global_average_pooling2d/Mean
dropout/IdentityIdentity&global_average_pooling2d/Mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
dropout/Identity 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	à5*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52
dense/BiasAddÉ
IdentityIdentitydense/BiasAdd:output:0^conv2d/Conv2D/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp ^conv2d_34/Conv2D/ReadVariableOp ^conv2d_35/Conv2D/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿUU: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp2B
conv2d_34/Conv2D/ReadVariableOpconv2d_34/Conv2D/ReadVariableOp2B
conv2d_35/Conv2D/ReadVariableOpconv2d_35/Conv2D/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
 
_user_specified_nameinputs


(__inference_conv2d_8_layer_call_fn_71406

inputs!
unknown:  
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_689012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$ : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
 
_user_specified_nameinputs
¨
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_68735

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡

)__inference_conv2d_27_layer_call_fn_71768

inputs"
unknown:`
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_692102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Y
-__inference_concatenate_3_layer_call_fn_71711
inputs_0
inputs_1
identityß
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_3_layer_call_and_return_conditional_losses_691422
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
í
·
D__inference_conv2d_18_layer_call_and_return_conditional_losses_71546

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


(__inference_conv2d_2_layer_call_fn_71286

inputs!
unknown: @
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_688052
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿQQ : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ 
 
_user_specified_nameinputs
ä
µ
D__inference_conv2d_12_layer_call_and_return_conditional_losses_71444

inputs8
conv2d_readvariableop_resource:`@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$`: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`
 
_user_specified_nameinputs
í
·
D__inference_conv2d_24_layer_call_and_return_conditional_losses_71661

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
µ
D__inference_conv2d_32_layer_call_and_return_conditional_losses_71791

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
µ
T
8__inference_global_average_pooling2d_layer_call_fn_68766

inputs
identityÝ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_687602
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤

)__inference_conv2d_22_layer_call_fn_71683

inputs#
unknown:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_691192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤

)__inference_conv2d_25_layer_call_fn_71698

inputs#
unknown:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_691312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

î6
__inference__traced_save_72425
file_prefix,
(savev2_conv2d_kernel_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop.
*savev2_conv2d_8_kernel_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop/
+savev2_conv2d_12_kernel_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop/
+savev2_conv2d_15_kernel_read_readvariableop/
+savev2_conv2d_13_kernel_read_readvariableop/
+savev2_conv2d_16_kernel_read_readvariableop/
+savev2_conv2d_18_kernel_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop/
+savev2_conv2d_20_kernel_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop/
+savev2_conv2d_23_kernel_read_readvariableop/
+savev2_conv2d_24_kernel_read_readvariableop/
+savev2_conv2d_22_kernel_read_readvariableop/
+savev2_conv2d_25_kernel_read_readvariableop/
+savev2_conv2d_26_kernel_read_readvariableop/
+savev2_conv2d_31_kernel_read_readvariableop/
+savev2_conv2d_27_kernel_read_readvariableop/
+savev2_conv2d_29_kernel_read_readvariableop/
+savev2_conv2d_32_kernel_read_readvariableop/
+savev2_conv2d_28_kernel_read_readvariableop/
+savev2_conv2d_30_kernel_read_readvariableop/
+savev2_conv2d_33_kernel_read_readvariableop/
+savev2_conv2d_35_kernel_read_readvariableop/
+savev2_conv2d_36_kernel_read_readvariableop/
+savev2_conv2d_34_kernel_read_readvariableop/
+savev2_conv2d_37_kernel_read_readvariableop/
+savev2_conv2d_38_kernel_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_m_read_readvariableop5
1savev2_adam_conv2d_5_kernel_m_read_readvariableop5
1savev2_adam_conv2d_9_kernel_m_read_readvariableop5
1savev2_adam_conv2d_7_kernel_m_read_readvariableop6
2savev2_adam_conv2d_10_kernel_m_read_readvariableop5
1savev2_adam_conv2d_6_kernel_m_read_readvariableop5
1savev2_adam_conv2d_8_kernel_m_read_readvariableop6
2savev2_adam_conv2d_11_kernel_m_read_readvariableop6
2savev2_adam_conv2d_12_kernel_m_read_readvariableop6
2savev2_adam_conv2d_14_kernel_m_read_readvariableop6
2savev2_adam_conv2d_15_kernel_m_read_readvariableop6
2savev2_adam_conv2d_13_kernel_m_read_readvariableop6
2savev2_adam_conv2d_16_kernel_m_read_readvariableop6
2savev2_adam_conv2d_18_kernel_m_read_readvariableop6
2savev2_adam_conv2d_19_kernel_m_read_readvariableop6
2savev2_adam_conv2d_17_kernel_m_read_readvariableop6
2savev2_adam_conv2d_20_kernel_m_read_readvariableop6
2savev2_adam_conv2d_21_kernel_m_read_readvariableop6
2savev2_adam_conv2d_23_kernel_m_read_readvariableop6
2savev2_adam_conv2d_24_kernel_m_read_readvariableop6
2savev2_adam_conv2d_22_kernel_m_read_readvariableop6
2savev2_adam_conv2d_25_kernel_m_read_readvariableop6
2savev2_adam_conv2d_26_kernel_m_read_readvariableop6
2savev2_adam_conv2d_31_kernel_m_read_readvariableop6
2savev2_adam_conv2d_27_kernel_m_read_readvariableop6
2savev2_adam_conv2d_29_kernel_m_read_readvariableop6
2savev2_adam_conv2d_32_kernel_m_read_readvariableop6
2savev2_adam_conv2d_28_kernel_m_read_readvariableop6
2savev2_adam_conv2d_30_kernel_m_read_readvariableop6
2savev2_adam_conv2d_33_kernel_m_read_readvariableop6
2savev2_adam_conv2d_35_kernel_m_read_readvariableop6
2savev2_adam_conv2d_36_kernel_m_read_readvariableop6
2savev2_adam_conv2d_34_kernel_m_read_readvariableop6
2savev2_adam_conv2d_37_kernel_m_read_readvariableop6
2savev2_adam_conv2d_38_kernel_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop5
1savev2_adam_conv2d_5_kernel_v_read_readvariableop5
1savev2_adam_conv2d_9_kernel_v_read_readvariableop5
1savev2_adam_conv2d_7_kernel_v_read_readvariableop6
2savev2_adam_conv2d_10_kernel_v_read_readvariableop5
1savev2_adam_conv2d_6_kernel_v_read_readvariableop5
1savev2_adam_conv2d_8_kernel_v_read_readvariableop6
2savev2_adam_conv2d_11_kernel_v_read_readvariableop6
2savev2_adam_conv2d_12_kernel_v_read_readvariableop6
2savev2_adam_conv2d_14_kernel_v_read_readvariableop6
2savev2_adam_conv2d_15_kernel_v_read_readvariableop6
2savev2_adam_conv2d_13_kernel_v_read_readvariableop6
2savev2_adam_conv2d_16_kernel_v_read_readvariableop6
2savev2_adam_conv2d_18_kernel_v_read_readvariableop6
2savev2_adam_conv2d_19_kernel_v_read_readvariableop6
2savev2_adam_conv2d_17_kernel_v_read_readvariableop6
2savev2_adam_conv2d_20_kernel_v_read_readvariableop6
2savev2_adam_conv2d_21_kernel_v_read_readvariableop6
2savev2_adam_conv2d_23_kernel_v_read_readvariableop6
2savev2_adam_conv2d_24_kernel_v_read_readvariableop6
2savev2_adam_conv2d_22_kernel_v_read_readvariableop6
2savev2_adam_conv2d_25_kernel_v_read_readvariableop6
2savev2_adam_conv2d_26_kernel_v_read_readvariableop6
2savev2_adam_conv2d_31_kernel_v_read_readvariableop6
2savev2_adam_conv2d_27_kernel_v_read_readvariableop6
2savev2_adam_conv2d_29_kernel_v_read_readvariableop6
2savev2_adam_conv2d_32_kernel_v_read_readvariableop6
2savev2_adam_conv2d_28_kernel_v_read_readvariableop6
2savev2_adam_conv2d_30_kernel_v_read_readvariableop6
2savev2_adam_conv2d_33_kernel_v_read_readvariableop6
2savev2_adam_conv2d_35_kernel_v_read_readvariableop6
2savev2_adam_conv2d_36_kernel_v_read_readvariableop6
2savev2_adam_conv2d_34_kernel_v_read_readvariableop6
2savev2_adam_conv2d_37_kernel_v_read_readvariableop6
2savev2_adam_conv2d_38_kernel_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameM
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*¨L
valueLBLB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-29/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-30/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-31/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-32/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-33/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-34/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-35/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-36/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-37/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-38/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-39/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-39/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-31/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-32/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-33/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-34/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-35/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-36/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-37/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-38/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-39/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-39/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-29/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-30/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-31/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-32/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-33/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-34/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-35/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-36/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-37/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-38/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-39/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-39/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:*
dtype0* 
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesµ4
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop+savev2_conv2d_12_kernel_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop+savev2_conv2d_15_kernel_read_readvariableop+savev2_conv2d_13_kernel_read_readvariableop+savev2_conv2d_16_kernel_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop+savev2_conv2d_20_kernel_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop+savev2_conv2d_24_kernel_read_readvariableop+savev2_conv2d_22_kernel_read_readvariableop+savev2_conv2d_25_kernel_read_readvariableop+savev2_conv2d_26_kernel_read_readvariableop+savev2_conv2d_31_kernel_read_readvariableop+savev2_conv2d_27_kernel_read_readvariableop+savev2_conv2d_29_kernel_read_readvariableop+savev2_conv2d_32_kernel_read_readvariableop+savev2_conv2d_28_kernel_read_readvariableop+savev2_conv2d_30_kernel_read_readvariableop+savev2_conv2d_33_kernel_read_readvariableop+savev2_conv2d_35_kernel_read_readvariableop+savev2_conv2d_36_kernel_read_readvariableop+savev2_conv2d_34_kernel_read_readvariableop+savev2_conv2d_37_kernel_read_readvariableop+savev2_conv2d_38_kernel_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop1savev2_adam_conv2d_9_kernel_m_read_readvariableop1savev2_adam_conv2d_7_kernel_m_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop1savev2_adam_conv2d_6_kernel_m_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop2savev2_adam_conv2d_11_kernel_m_read_readvariableop2savev2_adam_conv2d_12_kernel_m_read_readvariableop2savev2_adam_conv2d_14_kernel_m_read_readvariableop2savev2_adam_conv2d_15_kernel_m_read_readvariableop2savev2_adam_conv2d_13_kernel_m_read_readvariableop2savev2_adam_conv2d_16_kernel_m_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop2savev2_adam_conv2d_19_kernel_m_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop2savev2_adam_conv2d_20_kernel_m_read_readvariableop2savev2_adam_conv2d_21_kernel_m_read_readvariableop2savev2_adam_conv2d_23_kernel_m_read_readvariableop2savev2_adam_conv2d_24_kernel_m_read_readvariableop2savev2_adam_conv2d_22_kernel_m_read_readvariableop2savev2_adam_conv2d_25_kernel_m_read_readvariableop2savev2_adam_conv2d_26_kernel_m_read_readvariableop2savev2_adam_conv2d_31_kernel_m_read_readvariableop2savev2_adam_conv2d_27_kernel_m_read_readvariableop2savev2_adam_conv2d_29_kernel_m_read_readvariableop2savev2_adam_conv2d_32_kernel_m_read_readvariableop2savev2_adam_conv2d_28_kernel_m_read_readvariableop2savev2_adam_conv2d_30_kernel_m_read_readvariableop2savev2_adam_conv2d_33_kernel_m_read_readvariableop2savev2_adam_conv2d_35_kernel_m_read_readvariableop2savev2_adam_conv2d_36_kernel_m_read_readvariableop2savev2_adam_conv2d_34_kernel_m_read_readvariableop2savev2_adam_conv2d_37_kernel_m_read_readvariableop2savev2_adam_conv2d_38_kernel_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop1savev2_adam_conv2d_9_kernel_v_read_readvariableop1savev2_adam_conv2d_7_kernel_v_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop1savev2_adam_conv2d_6_kernel_v_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop2savev2_adam_conv2d_11_kernel_v_read_readvariableop2savev2_adam_conv2d_12_kernel_v_read_readvariableop2savev2_adam_conv2d_14_kernel_v_read_readvariableop2savev2_adam_conv2d_15_kernel_v_read_readvariableop2savev2_adam_conv2d_13_kernel_v_read_readvariableop2savev2_adam_conv2d_16_kernel_v_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop2savev2_adam_conv2d_19_kernel_v_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop2savev2_adam_conv2d_20_kernel_v_read_readvariableop2savev2_adam_conv2d_21_kernel_v_read_readvariableop2savev2_adam_conv2d_23_kernel_v_read_readvariableop2savev2_adam_conv2d_24_kernel_v_read_readvariableop2savev2_adam_conv2d_22_kernel_v_read_readvariableop2savev2_adam_conv2d_25_kernel_v_read_readvariableop2savev2_adam_conv2d_26_kernel_v_read_readvariableop2savev2_adam_conv2d_31_kernel_v_read_readvariableop2savev2_adam_conv2d_27_kernel_v_read_readvariableop2savev2_adam_conv2d_29_kernel_v_read_readvariableop2savev2_adam_conv2d_32_kernel_v_read_readvariableop2savev2_adam_conv2d_28_kernel_v_read_readvariableop2savev2_adam_conv2d_30_kernel_v_read_readvariableop2savev2_adam_conv2d_33_kernel_v_read_readvariableop2savev2_adam_conv2d_35_kernel_v_read_readvariableop2savev2_adam_conv2d_36_kernel_v_read_readvariableop2savev2_adam_conv2d_34_kernel_v_read_readvariableop2savev2_adam_conv2d_37_kernel_v_read_readvariableop2savev2_adam_conv2d_38_kernel_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*þ
_input_shapesì
é: : :  : @:@@:@@:@@:@ :@ :  :@ :  :  :`@:@@:@@:@:@@:::::::::::@:`:@:@@:``:@@:@@:àÀ:ÀÀ:àÀ:ÀÀ:à:	à5:5: : : : : : : : : : :  : @:@@:@@:@@:@ :@ :  :@ :  :  :`@:@@:@@:@:@@:::::::::::@:`:@:@@:``:@@:@@:àÀ:ÀÀ:àÀ:ÀÀ:à:	à5:5: :  : @:@@:@@:@@:@ :@ :  :@ :  :  :`@:@@:@@:@:@@:::::::::::@:`:@:@@:``:@@:@@:àÀ:ÀÀ:àÀ:ÀÀ:à:	à5:5: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: :,(
&
_output_shapes
:  :,(
&
_output_shapes
: @:,(
&
_output_shapes
:@@:,(
&
_output_shapes
:@@:,(
&
_output_shapes
:@@:,(
&
_output_shapes
:@ :,(
&
_output_shapes
:@ :,	(
&
_output_shapes
:  :,
(
&
_output_shapes
:@ :,(
&
_output_shapes
:  :,(
&
_output_shapes
:  :,(
&
_output_shapes
:`@:,(
&
_output_shapes
:@@:,(
&
_output_shapes
:@@:-)
'
_output_shapes
:@:,(
&
_output_shapes
:@@:.*
(
_output_shapes
::.*
(
_output_shapes
::.*
(
_output_shapes
::.*
(
_output_shapes
::.*
(
_output_shapes
::.*
(
_output_shapes
::.*
(
_output_shapes
::.*
(
_output_shapes
::.*
(
_output_shapes
::.*
(
_output_shapes
::-)
'
_output_shapes
:@:-)
'
_output_shapes
:`:-)
'
_output_shapes
:@:,(
&
_output_shapes
:@@:, (
&
_output_shapes
:``:,!(
&
_output_shapes
:@@:,"(
&
_output_shapes
:@@:.#*
(
_output_shapes
:àÀ:.$*
(
_output_shapes
:ÀÀ:.%*
(
_output_shapes
:àÀ:.&*
(
_output_shapes
:ÀÀ:.'*
(
_output_shapes
:à:%(!

_output_shapes
:	à5: )

_output_shapes
:5:*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :,3(
&
_output_shapes
: :,4(
&
_output_shapes
:  :,5(
&
_output_shapes
: @:,6(
&
_output_shapes
:@@:,7(
&
_output_shapes
:@@:,8(
&
_output_shapes
:@@:,9(
&
_output_shapes
:@ :,:(
&
_output_shapes
:@ :,;(
&
_output_shapes
:  :,<(
&
_output_shapes
:@ :,=(
&
_output_shapes
:  :,>(
&
_output_shapes
:  :,?(
&
_output_shapes
:`@:,@(
&
_output_shapes
:@@:,A(
&
_output_shapes
:@@:-B)
'
_output_shapes
:@:,C(
&
_output_shapes
:@@:.D*
(
_output_shapes
::.E*
(
_output_shapes
::.F*
(
_output_shapes
::.G*
(
_output_shapes
::.H*
(
_output_shapes
::.I*
(
_output_shapes
::.J*
(
_output_shapes
::.K*
(
_output_shapes
::.L*
(
_output_shapes
::.M*
(
_output_shapes
::-N)
'
_output_shapes
:@:-O)
'
_output_shapes
:`:-P)
'
_output_shapes
:@:,Q(
&
_output_shapes
:@@:,R(
&
_output_shapes
:``:,S(
&
_output_shapes
:@@:,T(
&
_output_shapes
:@@:.U*
(
_output_shapes
:àÀ:.V*
(
_output_shapes
:ÀÀ:.W*
(
_output_shapes
:àÀ:.X*
(
_output_shapes
:ÀÀ:.Y*
(
_output_shapes
:à:%Z!

_output_shapes
:	à5: [

_output_shapes
:5:,\(
&
_output_shapes
: :,](
&
_output_shapes
:  :,^(
&
_output_shapes
: @:,_(
&
_output_shapes
:@@:,`(
&
_output_shapes
:@@:,a(
&
_output_shapes
:@@:,b(
&
_output_shapes
:@ :,c(
&
_output_shapes
:@ :,d(
&
_output_shapes
:  :,e(
&
_output_shapes
:@ :,f(
&
_output_shapes
:  :,g(
&
_output_shapes
:  :,h(
&
_output_shapes
:`@:,i(
&
_output_shapes
:@@:,j(
&
_output_shapes
:@@:-k)
'
_output_shapes
:@:,l(
&
_output_shapes
:@@:.m*
(
_output_shapes
::.n*
(
_output_shapes
::.o*
(
_output_shapes
::.p*
(
_output_shapes
::.q*
(
_output_shapes
::.r*
(
_output_shapes
::.s*
(
_output_shapes
::.t*
(
_output_shapes
::.u*
(
_output_shapes
::.v*
(
_output_shapes
::-w)
'
_output_shapes
:@:-x)
'
_output_shapes
:`:-y)
'
_output_shapes
:@:,z(
&
_output_shapes
:@@:,{(
&
_output_shapes
:``:,|(
&
_output_shapes
:@@:,}(
&
_output_shapes
:@@:.~*
(
_output_shapes
:àÀ:.*
(
_output_shapes
:ÀÀ:/*
(
_output_shapes
:àÀ:/*
(
_output_shapes
:ÀÀ:/*
(
_output_shapes
:à:&!

_output_shapes
:	à5:!

_output_shapes
:5:

_output_shapes
: 
ä
µ
D__inference_conv2d_10_layer_call_and_return_conditional_losses_68865

inputs8
conv2d_readvariableop_resource:  
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$ : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
 
_user_specified_nameinputs

t
H__inference_concatenate_5_layer_call_and_return_conditional_losses_71927
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/1
Úÿ
ï
@__inference_model_layer_call_and_return_conditional_losses_70107

inputs&
conv2d_69962: (
conv2d_1_69965:  (
conv2d_2_69968: @(
conv2d_3_69971:@@(
conv2d_4_69974:@@(
conv2d_5_69977:@@(
conv2d_9_69980:@ )
conv2d_10_69983:  (
conv2d_7_69986:@ (
conv2d_6_69989:@ (
conv2d_8_69992:  )
conv2d_11_69995:  )
conv2d_12_69999:`@)
conv2d_14_70005:@@)
conv2d_15_70008:@@*
conv2d_13_70012:@)
conv2d_16_70015:@@+
conv2d_18_70019:+
conv2d_19_70022:+
conv2d_17_70025:+
conv2d_20_70028:+
conv2d_21_70032:+
conv2d_23_70038:+
conv2d_24_70041:+
conv2d_22_70044:+
conv2d_25_70047:+
conv2d_26_70051:*
conv2d_31_70057:@)
conv2d_32_70060:@@*
conv2d_29_70063:@*
conv2d_27_70066:`)
conv2d_28_70070:``)
conv2d_30_70073:@@)
conv2d_33_70076:@@+
conv2d_35_70080:àÀ+
conv2d_36_70083:ÀÀ+
conv2d_34_70086:àÀ+
conv2d_37_70089:ÀÀ+
conv2d_38_70093:à
dense_70101:	à5
dense_70103:5
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢!conv2d_12/StatefulPartitionedCall¢!conv2d_13/StatefulPartitionedCall¢!conv2d_14/StatefulPartitionedCall¢!conv2d_15/StatefulPartitionedCall¢!conv2d_16/StatefulPartitionedCall¢!conv2d_17/StatefulPartitionedCall¢!conv2d_18/StatefulPartitionedCall¢!conv2d_19/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢!conv2d_20/StatefulPartitionedCall¢!conv2d_21/StatefulPartitionedCall¢!conv2d_22/StatefulPartitionedCall¢!conv2d_23/StatefulPartitionedCall¢!conv2d_24/StatefulPartitionedCall¢!conv2d_25/StatefulPartitionedCall¢!conv2d_26/StatefulPartitionedCall¢!conv2d_27/StatefulPartitionedCall¢!conv2d_28/StatefulPartitionedCall¢!conv2d_29/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢!conv2d_30/StatefulPartitionedCall¢!conv2d_31/StatefulPartitionedCall¢!conv2d_32/StatefulPartitionedCall¢!conv2d_33/StatefulPartitionedCall¢!conv2d_34/StatefulPartitionedCall¢!conv2d_35/StatefulPartitionedCall¢!conv2d_36/StatefulPartitionedCall¢!conv2d_37/StatefulPartitionedCall¢!conv2d_38/StatefulPartitionedCall¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dropout/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_69962*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_687812 
conv2d/StatefulPartitionedCall«
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_69965*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_687932"
 conv2d_1/StatefulPartitionedCall­
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_69968*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_688052"
 conv2d_2/StatefulPartitionedCall­
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_69971*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_688172"
 conv2d_3/StatefulPartitionedCall­
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_69974*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_688292"
 conv2d_4/StatefulPartitionedCall­
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_69977*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_688412"
 conv2d_5/StatefulPartitionedCall­
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_9_69980*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_688532"
 conv2d_9/StatefulPartitionedCall±
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_69983*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_688652#
!conv2d_10/StatefulPartitionedCall­
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_7_69986*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_688772"
 conv2d_7/StatefulPartitionedCall­
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_69989*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_688892"
 conv2d_6/StatefulPartitionedCall­
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0conv2d_8_69992*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_689012"
 conv2d_8/StatefulPartitionedCall²
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_69995*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_689132#
!conv2d_11/StatefulPartitionedCallã
concatenate/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0)conv2d_8/StatefulPartitionedCall:output:0*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_689252
concatenate/PartitionedCall¬
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_12_69999*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_689352#
!conv2d_12/StatefulPartitionedCallu
tf.math.multiply/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *{.>2
tf.math.multiply/Mul/yº
tf.math.multiply/MulMul*conv2d_12/StatefulPartitionedCall:output:0tf.math.multiply/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
tf.math.multiply/Mul
add/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0tf.math.multiply/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_689472
add/PartitionedCall¤
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_14_70005*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_689572#
!conv2d_14/StatefulPartitionedCall²
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0conv2d_15_70008*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_689692#
!conv2d_15/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCalladd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_687352
max_pooling2d/PartitionedCall¥
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_13_70012*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_689822#
!conv2d_13/StatefulPartitionedCall²
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0conv2d_16_70015*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_689942#
!conv2d_16/StatefulPartitionedCallè
concatenate_1/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*conv2d_13/StatefulPartitionedCall:output:0*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_690062
concatenate_1/PartitionedCall¯
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_18_70019*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_690162#
!conv2d_18/StatefulPartitionedCall³
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_70022*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_690282#
!conv2d_19/StatefulPartitionedCall¯
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_17_70025*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_690402#
!conv2d_17/StatefulPartitionedCall³
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0conv2d_20_70028*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_690522#
!conv2d_20/StatefulPartitionedCall¿
concatenate_2/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_2_layer_call_and_return_conditional_losses_690632
concatenate_2/PartitionedCall¯
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0conv2d_21_70032*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_690732#
!conv2d_21/StatefulPartitionedCally
tf.math.multiply_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_1/Mul/yÁ
tf.math.multiply_1/MulMul*conv2d_21/StatefulPartitionedCall:output:0!tf.math.multiply_1/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_1/Mul
add_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0tf.math.multiply_1/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_690852
add_1/PartitionedCall§
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0conv2d_23_70038*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_690952#
!conv2d_23/StatefulPartitionedCall³
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0conv2d_24_70041*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_691072#
!conv2d_24/StatefulPartitionedCall§
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0conv2d_22_70044*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_691192#
!conv2d_22/StatefulPartitionedCall³
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0conv2d_25_70047*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_691312#
!conv2d_25/StatefulPartitionedCall¿
concatenate_3/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_3_layer_call_and_return_conditional_losses_691422
concatenate_3/PartitionedCall¯
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv2d_26_70051*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_691522#
!conv2d_26/StatefulPartitionedCally
tf.math.multiply_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_2/Mul/yÁ
tf.math.multiply_2/MulMul*conv2d_26/StatefulPartitionedCall:output:0!tf.math.multiply_2/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_2/Mul
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0tf.math.multiply_2/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_691642
add_2/PartitionedCall¦
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0conv2d_31_70057*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_691742#
!conv2d_31/StatefulPartitionedCall²
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0conv2d_32_70060*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_691862#
!conv2d_32/StatefulPartitionedCall¦
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0conv2d_29_70063*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_691982#
!conv2d_29/StatefulPartitionedCall¦
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0conv2d_27_70066*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_692102#
!conv2d_27/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_687472!
max_pooling2d_1/PartitionedCall²
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0conv2d_28_70070*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_692232#
!conv2d_28/StatefulPartitionedCall²
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0conv2d_30_70073*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_692352#
!conv2d_30/StatefulPartitionedCall²
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0conv2d_33_70076*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_33_layer_call_and_return_conditional_losses_692472#
!conv2d_33/StatefulPartitionedCall
concatenate_4/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*conv2d_28/StatefulPartitionedCall:output:0*conv2d_30/StatefulPartitionedCall:output:0*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_4_layer_call_and_return_conditional_losses_692602
concatenate_4/PartitionedCall¯
!conv2d_35/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0conv2d_35_70080*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_35_layer_call_and_return_conditional_losses_692702#
!conv2d_35/StatefulPartitionedCall³
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCall*conv2d_35/StatefulPartitionedCall:output:0conv2d_36_70083*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_692822#
!conv2d_36/StatefulPartitionedCall¯
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0conv2d_34_70086*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_34_layer_call_and_return_conditional_losses_692942#
!conv2d_34/StatefulPartitionedCall³
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0conv2d_37_70089*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_693062#
!conv2d_37/StatefulPartitionedCall¿
concatenate_5/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_5_layer_call_and_return_conditional_losses_693172
concatenate_5/PartitionedCall¯
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall&concatenate_5/PartitionedCall:output:0conv2d_38_70093*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_693272#
!conv2d_38/StatefulPartitionedCally
tf.math.multiply_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_3/Mul/yÁ
tf.math.multiply_3/MulMul*conv2d_38/StatefulPartitionedCall:output:0!tf.math.multiply_3/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
tf.math.multiply_3/Mul
add_3/PartitionedCallPartitionedCall&concatenate_4/PartitionedCall:output:0tf.math.multiply_3/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_693392
add_3/PartitionedCall
(global_average_pooling2d/PartitionedCallPartitionedCalladd_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_687602*
(global_average_pooling2d/PartitionedCall
dropout/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_694812!
dropout/StatefulPartitionedCall§
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_70101dense_70103*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ5*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_693592
dense/StatefulPartitionedCall¬
IdentityIdentity&dense/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall"^conv2d_34/StatefulPartitionedCall"^conv2d_35/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿUU: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2F
!conv2d_35/StatefulPartitionedCall!conv2d_35/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
 
_user_specified_nameinputs
é
¶
D__inference_conv2d_27_layer_call_and_return_conditional_losses_71761

inputs9
conv2d_readvariableop_resource:`
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö
h
>__inference_add_layer_call_and_return_conditional_losses_68947

inputs
inputs_1
identity_
addAddV2inputsinputs_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ$$@:ÿÿÿÿÿÿÿÿÿ$$@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
ê
¶
D__inference_conv2d_13_layer_call_and_return_conditional_losses_68982

inputs9
conv2d_readvariableop_resource:@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs

l
@__inference_add_1_layer_call_and_return_conditional_losses_71632
inputs_0
inputs_1
identityb
addAddV2inputs_0inputs_1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addd
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1


)__inference_conv2d_15_layer_call_fn_71493

inputs!
unknown:@@
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_689692
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
ò
Q
%__inference_add_1_layer_call_fn_71638
inputs_0
inputs_1
identity×
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_690852
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
Ýÿ
ð
@__inference_model_layer_call_and_return_conditional_losses_70575
input_1&
conv2d_70430: (
conv2d_1_70433:  (
conv2d_2_70436: @(
conv2d_3_70439:@@(
conv2d_4_70442:@@(
conv2d_5_70445:@@(
conv2d_9_70448:@ )
conv2d_10_70451:  (
conv2d_7_70454:@ (
conv2d_6_70457:@ (
conv2d_8_70460:  )
conv2d_11_70463:  )
conv2d_12_70467:`@)
conv2d_14_70473:@@)
conv2d_15_70476:@@*
conv2d_13_70480:@)
conv2d_16_70483:@@+
conv2d_18_70487:+
conv2d_19_70490:+
conv2d_17_70493:+
conv2d_20_70496:+
conv2d_21_70500:+
conv2d_23_70506:+
conv2d_24_70509:+
conv2d_22_70512:+
conv2d_25_70515:+
conv2d_26_70519:*
conv2d_31_70525:@)
conv2d_32_70528:@@*
conv2d_29_70531:@*
conv2d_27_70534:`)
conv2d_28_70538:``)
conv2d_30_70541:@@)
conv2d_33_70544:@@+
conv2d_35_70548:àÀ+
conv2d_36_70551:ÀÀ+
conv2d_34_70554:àÀ+
conv2d_37_70557:ÀÀ+
conv2d_38_70561:à
dense_70569:	à5
dense_70571:5
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢!conv2d_12/StatefulPartitionedCall¢!conv2d_13/StatefulPartitionedCall¢!conv2d_14/StatefulPartitionedCall¢!conv2d_15/StatefulPartitionedCall¢!conv2d_16/StatefulPartitionedCall¢!conv2d_17/StatefulPartitionedCall¢!conv2d_18/StatefulPartitionedCall¢!conv2d_19/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢!conv2d_20/StatefulPartitionedCall¢!conv2d_21/StatefulPartitionedCall¢!conv2d_22/StatefulPartitionedCall¢!conv2d_23/StatefulPartitionedCall¢!conv2d_24/StatefulPartitionedCall¢!conv2d_25/StatefulPartitionedCall¢!conv2d_26/StatefulPartitionedCall¢!conv2d_27/StatefulPartitionedCall¢!conv2d_28/StatefulPartitionedCall¢!conv2d_29/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢!conv2d_30/StatefulPartitionedCall¢!conv2d_31/StatefulPartitionedCall¢!conv2d_32/StatefulPartitionedCall¢!conv2d_33/StatefulPartitionedCall¢!conv2d_34/StatefulPartitionedCall¢!conv2d_35/StatefulPartitionedCall¢!conv2d_36/StatefulPartitionedCall¢!conv2d_37/StatefulPartitionedCall¢!conv2d_38/StatefulPartitionedCall¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dropout/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_70430*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_687812 
conv2d/StatefulPartitionedCall«
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_70433*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_687932"
 conv2d_1/StatefulPartitionedCall­
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_70436*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_688052"
 conv2d_2/StatefulPartitionedCall­
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_70439*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_688172"
 conv2d_3/StatefulPartitionedCall­
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_70442*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_688292"
 conv2d_4/StatefulPartitionedCall­
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_70445*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_688412"
 conv2d_5/StatefulPartitionedCall­
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_9_70448*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_688532"
 conv2d_9/StatefulPartitionedCall±
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_70451*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_688652#
!conv2d_10/StatefulPartitionedCall­
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_7_70454*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_688772"
 conv2d_7/StatefulPartitionedCall­
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_70457*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_688892"
 conv2d_6/StatefulPartitionedCall­
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0conv2d_8_70460*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_689012"
 conv2d_8/StatefulPartitionedCall²
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_70463*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_689132#
!conv2d_11/StatefulPartitionedCallã
concatenate/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0)conv2d_8/StatefulPartitionedCall:output:0*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_689252
concatenate/PartitionedCall¬
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_12_70467*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_689352#
!conv2d_12/StatefulPartitionedCallu
tf.math.multiply/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *{.>2
tf.math.multiply/Mul/yº
tf.math.multiply/MulMul*conv2d_12/StatefulPartitionedCall:output:0tf.math.multiply/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
tf.math.multiply/Mul
add/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0tf.math.multiply/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_689472
add/PartitionedCall¤
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_14_70473*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_689572#
!conv2d_14/StatefulPartitionedCall²
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0conv2d_15_70476*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_689692#
!conv2d_15/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCalladd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_687352
max_pooling2d/PartitionedCall¥
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_13_70480*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_689822#
!conv2d_13/StatefulPartitionedCall²
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0conv2d_16_70483*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_689942#
!conv2d_16/StatefulPartitionedCallè
concatenate_1/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*conv2d_13/StatefulPartitionedCall:output:0*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_690062
concatenate_1/PartitionedCall¯
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_18_70487*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_690162#
!conv2d_18/StatefulPartitionedCall³
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_70490*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_690282#
!conv2d_19/StatefulPartitionedCall¯
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_17_70493*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_690402#
!conv2d_17/StatefulPartitionedCall³
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0conv2d_20_70496*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_690522#
!conv2d_20/StatefulPartitionedCall¿
concatenate_2/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_2_layer_call_and_return_conditional_losses_690632
concatenate_2/PartitionedCall¯
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0conv2d_21_70500*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_690732#
!conv2d_21/StatefulPartitionedCally
tf.math.multiply_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_1/Mul/yÁ
tf.math.multiply_1/MulMul*conv2d_21/StatefulPartitionedCall:output:0!tf.math.multiply_1/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_1/Mul
add_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0tf.math.multiply_1/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_690852
add_1/PartitionedCall§
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0conv2d_23_70506*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_690952#
!conv2d_23/StatefulPartitionedCall³
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0conv2d_24_70509*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_691072#
!conv2d_24/StatefulPartitionedCall§
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0conv2d_22_70512*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_691192#
!conv2d_22/StatefulPartitionedCall³
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0conv2d_25_70515*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_691312#
!conv2d_25/StatefulPartitionedCall¿
concatenate_3/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_3_layer_call_and_return_conditional_losses_691422
concatenate_3/PartitionedCall¯
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv2d_26_70519*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_691522#
!conv2d_26/StatefulPartitionedCally
tf.math.multiply_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_2/Mul/yÁ
tf.math.multiply_2/MulMul*conv2d_26/StatefulPartitionedCall:output:0!tf.math.multiply_2/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_2/Mul
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0tf.math.multiply_2/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_691642
add_2/PartitionedCall¦
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0conv2d_31_70525*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_691742#
!conv2d_31/StatefulPartitionedCall²
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0conv2d_32_70528*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_691862#
!conv2d_32/StatefulPartitionedCall¦
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0conv2d_29_70531*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_691982#
!conv2d_29/StatefulPartitionedCall¦
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0conv2d_27_70534*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_692102#
!conv2d_27/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_687472!
max_pooling2d_1/PartitionedCall²
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0conv2d_28_70538*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_692232#
!conv2d_28/StatefulPartitionedCall²
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0conv2d_30_70541*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_692352#
!conv2d_30/StatefulPartitionedCall²
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0conv2d_33_70544*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_33_layer_call_and_return_conditional_losses_692472#
!conv2d_33/StatefulPartitionedCall
concatenate_4/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*conv2d_28/StatefulPartitionedCall:output:0*conv2d_30/StatefulPartitionedCall:output:0*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_4_layer_call_and_return_conditional_losses_692602
concatenate_4/PartitionedCall¯
!conv2d_35/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0conv2d_35_70548*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_35_layer_call_and_return_conditional_losses_692702#
!conv2d_35/StatefulPartitionedCall³
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCall*conv2d_35/StatefulPartitionedCall:output:0conv2d_36_70551*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_692822#
!conv2d_36/StatefulPartitionedCall¯
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0conv2d_34_70554*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_34_layer_call_and_return_conditional_losses_692942#
!conv2d_34/StatefulPartitionedCall³
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0conv2d_37_70557*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_693062#
!conv2d_37/StatefulPartitionedCall¿
concatenate_5/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_5_layer_call_and_return_conditional_losses_693172
concatenate_5/PartitionedCall¯
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall&concatenate_5/PartitionedCall:output:0conv2d_38_70561*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_693272#
!conv2d_38/StatefulPartitionedCally
tf.math.multiply_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_3/Mul/yÁ
tf.math.multiply_3/MulMul*conv2d_38/StatefulPartitionedCall:output:0!tf.math.multiply_3/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
tf.math.multiply_3/Mul
add_3/PartitionedCallPartitionedCall&concatenate_4/PartitionedCall:output:0tf.math.multiply_3/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_693392
add_3/PartitionedCall
(global_average_pooling2d/PartitionedCallPartitionedCalladd_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_687602*
(global_average_pooling2d/PartitionedCall
dropout/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_694812!
dropout/StatefulPartitionedCall§
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_70569dense_70571*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ5*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_693592
dense/StatefulPartitionedCall¬
IdentityIdentity&dense/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall"^conv2d_34/StatefulPartitionedCall"^conv2d_35/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿUU: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2F
!conv2d_35/StatefulPartitionedCall!conv2d_35/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
!
_user_specified_name	input_1
¡

)__inference_conv2d_13_layer_call_fn_71508

inputs"
unknown:@
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_689822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
ã
o
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_68760

inputs
identity
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
j
>__inference_add_layer_call_and_return_conditional_losses_71457
inputs_0
inputs_1
identitya
addAddV2inputs_0inputs_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿ$$@:ÿÿÿÿÿÿÿÿÿ$$@:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
"
_user_specified_name
inputs/1
ä
µ
D__inference_conv2d_14_layer_call_and_return_conditional_losses_71471

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs

Y
-__inference_concatenate_5_layer_call_fn_71933
inputs_0
inputs_1
identityß
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_5_layer_call_and_return_conditional_losses_693172
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/1

l
@__inference_add_3_layer_call_and_return_conditional_losses_71954
inputs_0
inputs_1
identityb
addAddV2inputs_0inputs_1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
addd
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿà:ÿÿÿÿÿÿÿÿÿà:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
"
_user_specified_name
inputs/1
¤

)__inference_conv2d_19_layer_call_fn_71568

inputs#
unknown:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_690282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
·
D__inference_conv2d_19_layer_call_and_return_conditional_losses_69028

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


(__inference_conv2d_7_layer_call_fn_71361

inputs!
unknown:@ 
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_688772
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
ä
µ
D__inference_conv2d_15_layer_call_and_return_conditional_losses_71486

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
ä
µ
D__inference_conv2d_10_layer_call_and_return_conditional_losses_71369

inputs8
conv2d_readvariableop_resource:  
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *
paddingSAME*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$ : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 
 
_user_specified_nameinputs
ê
¶
D__inference_conv2d_13_layer_call_and_return_conditional_losses_71501

inputs9
conv2d_readvariableop_resource:@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
Conv2D`
ReluReluConv2D:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs

l
@__inference_add_2_layer_call_and_return_conditional_losses_71732
inputs_0
inputs_1
identityb
addAddV2inputs_0inputs_1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addd
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
å
µ
D__inference_conv2d_28_layer_call_and_return_conditional_losses_71806

inputs8
conv2d_readvariableop_resource:``
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:``*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ`: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
µþ
Î
@__inference_model_layer_call_and_return_conditional_losses_70427
input_1&
conv2d_70282: (
conv2d_1_70285:  (
conv2d_2_70288: @(
conv2d_3_70291:@@(
conv2d_4_70294:@@(
conv2d_5_70297:@@(
conv2d_9_70300:@ )
conv2d_10_70303:  (
conv2d_7_70306:@ (
conv2d_6_70309:@ (
conv2d_8_70312:  )
conv2d_11_70315:  )
conv2d_12_70319:`@)
conv2d_14_70325:@@)
conv2d_15_70328:@@*
conv2d_13_70332:@)
conv2d_16_70335:@@+
conv2d_18_70339:+
conv2d_19_70342:+
conv2d_17_70345:+
conv2d_20_70348:+
conv2d_21_70352:+
conv2d_23_70358:+
conv2d_24_70361:+
conv2d_22_70364:+
conv2d_25_70367:+
conv2d_26_70371:*
conv2d_31_70377:@)
conv2d_32_70380:@@*
conv2d_29_70383:@*
conv2d_27_70386:`)
conv2d_28_70390:``)
conv2d_30_70393:@@)
conv2d_33_70396:@@+
conv2d_35_70400:àÀ+
conv2d_36_70403:ÀÀ+
conv2d_34_70406:àÀ+
conv2d_37_70409:ÀÀ+
conv2d_38_70413:à
dense_70421:	à5
dense_70423:5
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢!conv2d_12/StatefulPartitionedCall¢!conv2d_13/StatefulPartitionedCall¢!conv2d_14/StatefulPartitionedCall¢!conv2d_15/StatefulPartitionedCall¢!conv2d_16/StatefulPartitionedCall¢!conv2d_17/StatefulPartitionedCall¢!conv2d_18/StatefulPartitionedCall¢!conv2d_19/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢!conv2d_20/StatefulPartitionedCall¢!conv2d_21/StatefulPartitionedCall¢!conv2d_22/StatefulPartitionedCall¢!conv2d_23/StatefulPartitionedCall¢!conv2d_24/StatefulPartitionedCall¢!conv2d_25/StatefulPartitionedCall¢!conv2d_26/StatefulPartitionedCall¢!conv2d_27/StatefulPartitionedCall¢!conv2d_28/StatefulPartitionedCall¢!conv2d_29/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢!conv2d_30/StatefulPartitionedCall¢!conv2d_31/StatefulPartitionedCall¢!conv2d_32/StatefulPartitionedCall¢!conv2d_33/StatefulPartitionedCall¢!conv2d_34/StatefulPartitionedCall¢!conv2d_35/StatefulPartitionedCall¢!conv2d_36/StatefulPartitionedCall¢!conv2d_37/StatefulPartitionedCall¢!conv2d_38/StatefulPartitionedCall¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_70282*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_687812 
conv2d/StatefulPartitionedCall«
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_70285*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿQQ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_687932"
 conv2d_1/StatefulPartitionedCall­
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_70288*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_688052"
 conv2d_2/StatefulPartitionedCall­
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_70291*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_688172"
 conv2d_3/StatefulPartitionedCall­
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_70294*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_688292"
 conv2d_4/StatefulPartitionedCall­
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_70297*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_688412"
 conv2d_5/StatefulPartitionedCall­
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_9_70300*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_688532"
 conv2d_9/StatefulPartitionedCall±
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_70303*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_688652#
!conv2d_10/StatefulPartitionedCall­
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_7_70306*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_688772"
 conv2d_7/StatefulPartitionedCall­
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_70309*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_688892"
 conv2d_6/StatefulPartitionedCall­
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0conv2d_8_70312*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_689012"
 conv2d_8/StatefulPartitionedCall²
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_70315*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_689132#
!conv2d_11/StatefulPartitionedCallã
concatenate/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0)conv2d_8/StatefulPartitionedCall:output:0*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_689252
concatenate/PartitionedCall¬
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_12_70319*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_689352#
!conv2d_12/StatefulPartitionedCallu
tf.math.multiply/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *{.>2
tf.math.multiply/Mul/yº
tf.math.multiply/MulMul*conv2d_12/StatefulPartitionedCall:output:0tf.math.multiply/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
tf.math.multiply/Mul
add/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0tf.math.multiply/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_689472
add/PartitionedCall¤
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_14_70325*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_689572#
!conv2d_14/StatefulPartitionedCall²
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0conv2d_15_70328*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_689692#
!conv2d_15/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCalladd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_687352
max_pooling2d/PartitionedCall¥
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_13_70332*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_689822#
!conv2d_13/StatefulPartitionedCall²
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0conv2d_16_70335*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_689942#
!conv2d_16/StatefulPartitionedCallè
concatenate_1/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*conv2d_13/StatefulPartitionedCall:output:0*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_690062
concatenate_1/PartitionedCall¯
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_18_70339*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_690162#
!conv2d_18/StatefulPartitionedCall³
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_70342*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_690282#
!conv2d_19/StatefulPartitionedCall¯
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_17_70345*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_690402#
!conv2d_17/StatefulPartitionedCall³
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0conv2d_20_70348*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_690522#
!conv2d_20/StatefulPartitionedCall¿
concatenate_2/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_2_layer_call_and_return_conditional_losses_690632
concatenate_2/PartitionedCall¯
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0conv2d_21_70352*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_690732#
!conv2d_21/StatefulPartitionedCally
tf.math.multiply_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_1/Mul/yÁ
tf.math.multiply_1/MulMul*conv2d_21/StatefulPartitionedCall:output:0!tf.math.multiply_1/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_1/Mul
add_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0tf.math.multiply_1/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_690852
add_1/PartitionedCall§
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0conv2d_23_70358*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_690952#
!conv2d_23/StatefulPartitionedCall³
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0conv2d_24_70361*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_691072#
!conv2d_24/StatefulPartitionedCall§
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0conv2d_22_70364*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_691192#
!conv2d_22/StatefulPartitionedCall³
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0conv2d_25_70367*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_691312#
!conv2d_25/StatefulPartitionedCall¿
concatenate_3/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_3_layer_call_and_return_conditional_losses_691422
concatenate_3/PartitionedCall¯
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv2d_26_70371*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_691522#
!conv2d_26/StatefulPartitionedCally
tf.math.multiply_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_2/Mul/yÁ
tf.math.multiply_2/MulMul*conv2d_26/StatefulPartitionedCall:output:0!tf.math.multiply_2/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.multiply_2/Mul
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0tf.math.multiply_2/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_691642
add_2/PartitionedCall¦
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0conv2d_31_70377*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_691742#
!conv2d_31/StatefulPartitionedCall²
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0conv2d_32_70380*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_691862#
!conv2d_32/StatefulPartitionedCall¦
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0conv2d_29_70383*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_691982#
!conv2d_29/StatefulPartitionedCall¦
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0conv2d_27_70386*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_692102#
!conv2d_27/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_687472!
max_pooling2d_1/PartitionedCall²
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0conv2d_28_70390*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_692232#
!conv2d_28/StatefulPartitionedCall²
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0conv2d_30_70393*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_692352#
!conv2d_30/StatefulPartitionedCall²
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0conv2d_33_70396*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_33_layer_call_and_return_conditional_losses_692472#
!conv2d_33/StatefulPartitionedCall
concatenate_4/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*conv2d_28/StatefulPartitionedCall:output:0*conv2d_30/StatefulPartitionedCall:output:0*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_4_layer_call_and_return_conditional_losses_692602
concatenate_4/PartitionedCall¯
!conv2d_35/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0conv2d_35_70400*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_35_layer_call_and_return_conditional_losses_692702#
!conv2d_35/StatefulPartitionedCall³
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCall*conv2d_35/StatefulPartitionedCall:output:0conv2d_36_70403*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_692822#
!conv2d_36/StatefulPartitionedCall¯
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCall&concatenate_4/PartitionedCall:output:0conv2d_34_70406*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_34_layer_call_and_return_conditional_losses_692942#
!conv2d_34/StatefulPartitionedCall³
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0conv2d_37_70409*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_693062#
!conv2d_37/StatefulPartitionedCall¿
concatenate_5/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_5_layer_call_and_return_conditional_losses_693172
concatenate_5/PartitionedCall¯
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall&concatenate_5/PartitionedCall:output:0conv2d_38_70413*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_693272#
!conv2d_38/StatefulPartitionedCally
tf.math.multiply_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
tf.math.multiply_3/Mul/yÁ
tf.math.multiply_3/MulMul*conv2d_38/StatefulPartitionedCall:output:0!tf.math.multiply_3/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà2
tf.math.multiply_3/Mul
add_3/PartitionedCallPartitionedCall&concatenate_4/PartitionedCall:output:0tf.math.multiply_3/Mul:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_693392
add_3/PartitionedCall
(global_average_pooling2d/PartitionedCallPartitionedCalladd_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_687602*
(global_average_pooling2d/PartitionedCallÿ
dropout/PartitionedCallPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_693472
dropout/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_70421dense_70423*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ5*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_693592
dense/StatefulPartitionedCall
IdentityIdentity&dense/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall"^conv2d_34/StatefulPartitionedCall"^conv2d_35/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ52

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapeso
m:ÿÿÿÿÿÿÿÿÿUU: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2F
!conv2d_35/StatefulPartitionedCall!conv2d_35/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
!
_user_specified_name	input_1
ä
´
C__inference_conv2d_5_layer_call_and_return_conditional_losses_68841

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ&&@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@
 
_user_specified_nameinputs


(__inference_conv2d_9_layer_call_fn_71346

inputs!
unknown:@ 
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_688532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$$@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@
 
_user_specified_nameinputs
â
²
A__inference_conv2d_layer_call_and_return_conditional_losses_68781

inputs8
conv2d_readvariableop_resource: 
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS *
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS 2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿSS 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿUU: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿUU
 
_user_specified_nameinputs
ä
´
C__inference_conv2d_4_layer_call_and_return_conditional_losses_68829

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ((@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((@
 
_user_specified_nameinputs
ä
´
C__inference_conv2d_5_layer_call_and_return_conditional_losses_71324

inputs8
conv2d_readvariableop_resource:@@
identity¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@*
paddingVALID*
strides
2
Conv2D_
ReluReluConv2D:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2
Relu
IdentityIdentityRelu:activations:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ&&@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&&@
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*°
serving_default
C
input_18
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿUU9
dense0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ5tensorflow/serving/predict:à¢
öÈ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
layer_with_weights-10
layer-11
layer_with_weights-11
layer-12
layer-13
layer_with_weights-12
layer-14
layer-15
layer-16
layer_with_weights-13
layer-17
layer_with_weights-14
layer-18
layer-19
layer_with_weights-15
layer-20
layer_with_weights-16
layer-21
layer-22
layer_with_weights-17
layer-23
layer_with_weights-18
layer-24
layer_with_weights-19
layer-25
layer_with_weights-20
layer-26
layer-27
layer_with_weights-21
layer-28
layer-29
layer-30
 layer_with_weights-22
 layer-31
!layer_with_weights-23
!layer-32
"layer_with_weights-24
"layer-33
#layer_with_weights-25
#layer-34
$layer-35
%layer_with_weights-26
%layer-36
&layer-37
'layer-38
(layer_with_weights-27
(layer-39
)layer_with_weights-28
)layer-40
*layer_with_weights-29
*layer-41
+layer_with_weights-30
+layer-42
,layer-43
-layer_with_weights-31
-layer-44
.layer_with_weights-32
.layer-45
/layer_with_weights-33
/layer-46
0layer-47
1layer_with_weights-34
1layer-48
2layer_with_weights-35
2layer-49
3layer_with_weights-36
3layer-50
4layer_with_weights-37
4layer-51
5layer-52
6layer_with_weights-38
6layer-53
7layer-54
8layer-55
9layer-56
:layer-57
;layer_with_weights-39
;layer-58
<	optimizer
=regularization_losses
>	variables
?trainable_variables
@	keras_api
A
signatures
+¼&call_and_return_all_conditional_losses
½_default_save_signature
¾__call__"É¸
_tf_keras_network¬¸{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 85, 85, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["conv2d", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_2", "inbound_nodes": [[["conv2d_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_3", "inbound_nodes": [[["conv2d_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_4", "inbound_nodes": [[["conv2d_3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_5", "inbound_nodes": [[["conv2d_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_9", "inbound_nodes": [[["conv2d_5", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_7", "inbound_nodes": [[["conv2d_5", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_10", "inbound_nodes": [[["conv2d_9", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_6", "inbound_nodes": [[["conv2d_5", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_8", "inbound_nodes": [[["conv2d_7", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_11", "inbound_nodes": [[["conv2d_10", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate", "inbound_nodes": [[["conv2d_6", 0, 0, {}], ["conv2d_8", 0, 0, {}], ["conv2d_11", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_12", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply", "inbound_nodes": [["conv2d_12", 0, 0, {"y": 0.17, "name": null}]]}, {"class_name": "Add", "config": {"name": "add", "trainable": true, "dtype": "float32"}, "name": "add", "inbound_nodes": [[["conv2d_5", 0, 0, {}], ["tf.math.multiply", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_14", "inbound_nodes": [[["add", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_15", "inbound_nodes": [[["conv2d_14", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["add", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_13", "inbound_nodes": [[["add", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_16", "inbound_nodes": [[["conv2d_15", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_1", "inbound_nodes": [[["max_pooling2d", 0, 0, {}], ["conv2d_13", 0, 0, {}], ["conv2d_16", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_18", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_19", "inbound_nodes": [[["conv2d_18", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_17", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [7, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_20", "inbound_nodes": [[["conv2d_19", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_2", "inbound_nodes": [[["conv2d_17", 0, 0, {}], ["conv2d_20", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_21", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_1", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_1", "inbound_nodes": [["conv2d_21", 0, 0, {"y": 0.1, "name": null}]]}, {"class_name": "Add", "config": {"name": "add_1", "trainable": true, "dtype": "float32"}, "name": "add_1", "inbound_nodes": [[["concatenate_1", 0, 0, {}], ["tf.math.multiply_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_23", "inbound_nodes": [[["add_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_24", "inbound_nodes": [[["conv2d_23", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_22", "inbound_nodes": [[["add_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [7, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_25", "inbound_nodes": [[["conv2d_24", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_3", "inbound_nodes": [[["conv2d_22", 0, 0, {}], ["conv2d_25", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_26", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_26", "inbound_nodes": [[["concatenate_3", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_2", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_2", "inbound_nodes": [["conv2d_26", 0, 0, {"y": 0.1, "name": null}]]}, {"class_name": "Add", "config": {"name": "add_2", "trainable": true, "dtype": "float32"}, "name": "add_2", "inbound_nodes": [[["add_1", 0, 0, {}], ["tf.math.multiply_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_31", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_31", "inbound_nodes": [[["add_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_27", "inbound_nodes": [[["add_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_29", "inbound_nodes": [[["add_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_32", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_32", "inbound_nodes": [[["conv2d_31", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_1", "inbound_nodes": [[["add_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_28", "inbound_nodes": [[["conv2d_27", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_30", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_30", "inbound_nodes": [[["conv2d_29", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_33", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_33", "inbound_nodes": [[["conv2d_32", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_4", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_4", "inbound_nodes": [[["max_pooling2d_1", 0, 0, {}], ["conv2d_28", 0, 0, {}], ["conv2d_30", 0, 0, {}], ["conv2d_33", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_35", "trainable": true, "dtype": "float32", "filters": 192, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_35", "inbound_nodes": [[["concatenate_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_36", "trainable": true, "dtype": "float32", "filters": 192, "kernel_size": {"class_name": "__tuple__", "items": [1, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_36", "inbound_nodes": [[["conv2d_35", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_34", "trainable": true, "dtype": "float32", "filters": 192, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_34", "inbound_nodes": [[["concatenate_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_37", "trainable": true, "dtype": "float32", "filters": 192, "kernel_size": {"class_name": "__tuple__", "items": [3, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_37", "inbound_nodes": [[["conv2d_36", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_5", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_5", "inbound_nodes": [[["conv2d_34", 0, 0, {}], ["conv2d_37", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_38", "trainable": true, "dtype": "float32", "filters": 480, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_38", "inbound_nodes": [[["concatenate_5", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_3", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_3", "inbound_nodes": [["conv2d_38", 0, 0, {"y": 0.1, "name": null}]]}, {"class_name": "Add", "config": {"name": "add_3", "trainable": true, "dtype": "float32"}, "name": "add_3", "inbound_nodes": [[["concatenate_4", 0, 0, {}], ["tf.math.multiply_3", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d", "inbound_nodes": [[["add_3", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["global_average_pooling2d", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 53, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["dropout", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense", 0, 0]]}, "shared_object_id": 139, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 85, 85, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 85, 85, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 85, 85, 1]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 85, 85, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["conv2d", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_2", "inbound_nodes": [[["conv2d_1", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_3", "inbound_nodes": [[["conv2d_2", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_4", "inbound_nodes": [[["conv2d_3", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_5", "inbound_nodes": [[["conv2d_4", 0, 0, {}]]], "shared_object_id": 18}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_9", "inbound_nodes": [[["conv2d_5", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_7", "inbound_nodes": [[["conv2d_5", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_10", "inbound_nodes": [[["conv2d_9", 0, 0, {}]]], "shared_object_id": 27}, {"class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 28}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_6", "inbound_nodes": [[["conv2d_5", 0, 0, {}]]], "shared_object_id": 30}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_8", "inbound_nodes": [[["conv2d_7", 0, 0, {}]]], "shared_object_id": 33}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 34}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_11", "inbound_nodes": [[["conv2d_10", 0, 0, {}]]], "shared_object_id": 36}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate", "inbound_nodes": [[["conv2d_6", 0, 0, {}], ["conv2d_8", 0, 0, {}], ["conv2d_11", 0, 0, {}]]], "shared_object_id": 37}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 38}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_12", "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 40}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply", "inbound_nodes": [["conv2d_12", 0, 0, {"y": 0.17, "name": null}]], "shared_object_id": 41}, {"class_name": "Add", "config": {"name": "add", "trainable": true, "dtype": "float32"}, "name": "add", "inbound_nodes": [[["conv2d_5", 0, 0, {}], ["tf.math.multiply", 0, 0, {}]]], "shared_object_id": 42}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 43}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 44}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_14", "inbound_nodes": [[["add", 0, 0, {}]]], "shared_object_id": 45}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 46}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 47}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_15", "inbound_nodes": [[["conv2d_14", 0, 0, {}]]], "shared_object_id": 48}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["add", 0, 0, {}]]], "shared_object_id": 49}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_13", "inbound_nodes": [[["add", 0, 0, {}]]], "shared_object_id": 52}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 53}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 54}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_16", "inbound_nodes": [[["conv2d_15", 0, 0, {}]]], "shared_object_id": 55}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_1", "inbound_nodes": [[["max_pooling2d", 0, 0, {}], ["conv2d_13", 0, 0, {}], ["conv2d_16", 0, 0, {}]]], "shared_object_id": 56}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 57}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_18", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 59}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_19", "inbound_nodes": [[["conv2d_18", 0, 0, {}]]], "shared_object_id": 62}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 63}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 64}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_17", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 65}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [7, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 66}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 67}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_20", "inbound_nodes": [[["conv2d_19", 0, 0, {}]]], "shared_object_id": 68}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_2", "inbound_nodes": [[["conv2d_17", 0, 0, {}], ["conv2d_20", 0, 0, {}]]], "shared_object_id": 69}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 70}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 71}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_21", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 72}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_1", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_1", "inbound_nodes": [["conv2d_21", 0, 0, {"y": 0.1, "name": null}]], "shared_object_id": 73}, {"class_name": "Add", "config": {"name": "add_1", "trainable": true, "dtype": "float32"}, "name": "add_1", "inbound_nodes": [[["concatenate_1", 0, 0, {}], ["tf.math.multiply_1", 0, 0, {}]]], "shared_object_id": 74}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 75}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 76}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_23", "inbound_nodes": [[["add_1", 0, 0, {}]]], "shared_object_id": 77}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 78}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 79}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_24", "inbound_nodes": [[["conv2d_23", 0, 0, {}]]], "shared_object_id": 80}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 81}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 82}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_22", "inbound_nodes": [[["add_1", 0, 0, {}]]], "shared_object_id": 83}, {"class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [7, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 84}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 85}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_25", "inbound_nodes": [[["conv2d_24", 0, 0, {}]]], "shared_object_id": 86}, {"class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_3", "inbound_nodes": [[["conv2d_22", 0, 0, {}], ["conv2d_25", 0, 0, {}]]], "shared_object_id": 87}, {"class_name": "Conv2D", "config": {"name": "conv2d_26", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 88}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 89}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_26", "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 90}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_2", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_2", "inbound_nodes": [["conv2d_26", 0, 0, {"y": 0.1, "name": null}]], "shared_object_id": 91}, {"class_name": "Add", "config": {"name": "add_2", "trainable": true, "dtype": "float32"}, "name": "add_2", "inbound_nodes": [[["add_1", 0, 0, {}], ["tf.math.multiply_2", 0, 0, {}]]], "shared_object_id": 92}, {"class_name": "Conv2D", "config": {"name": "conv2d_31", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 93}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 94}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_31", "inbound_nodes": [[["add_2", 0, 0, {}]]], "shared_object_id": 95}, {"class_name": "Conv2D", "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 96}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 97}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_27", "inbound_nodes": [[["add_2", 0, 0, {}]]], "shared_object_id": 98}, {"class_name": "Conv2D", "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 99}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 100}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_29", "inbound_nodes": [[["add_2", 0, 0, {}]]], "shared_object_id": 101}, {"class_name": "Conv2D", "config": {"name": "conv2d_32", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 102}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 103}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_32", "inbound_nodes": [[["conv2d_31", 0, 0, {}]]], "shared_object_id": 104}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_1", "inbound_nodes": [[["add_2", 0, 0, {}]]], "shared_object_id": 105}, {"class_name": "Conv2D", "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 106}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 107}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_28", "inbound_nodes": [[["conv2d_27", 0, 0, {}]]], "shared_object_id": 108}, {"class_name": "Conv2D", "config": {"name": "conv2d_30", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 109}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 110}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_30", "inbound_nodes": [[["conv2d_29", 0, 0, {}]]], "shared_object_id": 111}, {"class_name": "Conv2D", "config": {"name": "conv2d_33", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 112}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 113}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_33", "inbound_nodes": [[["conv2d_32", 0, 0, {}]]], "shared_object_id": 114}, {"class_name": "Concatenate", "config": {"name": "concatenate_4", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_4", "inbound_nodes": [[["max_pooling2d_1", 0, 0, {}], ["conv2d_28", 0, 0, {}], ["conv2d_30", 0, 0, {}], ["conv2d_33", 0, 0, {}]]], "shared_object_id": 115}, {"class_name": "Conv2D", "config": {"name": "conv2d_35", "trainable": true, "dtype": "float32", "filters": 192, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 116}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 117}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_35", "inbound_nodes": [[["concatenate_4", 0, 0, {}]]], "shared_object_id": 118}, {"class_name": "Conv2D", "config": {"name": "conv2d_36", "trainable": true, "dtype": "float32", "filters": 192, "kernel_size": {"class_name": "__tuple__", "items": [1, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 119}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 120}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_36", "inbound_nodes": [[["conv2d_35", 0, 0, {}]]], "shared_object_id": 121}, {"class_name": "Conv2D", "config": {"name": "conv2d_34", "trainable": true, "dtype": "float32", "filters": 192, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 122}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 123}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_34", "inbound_nodes": [[["concatenate_4", 0, 0, {}]]], "shared_object_id": 124}, {"class_name": "Conv2D", "config": {"name": "conv2d_37", "trainable": true, "dtype": "float32", "filters": 192, "kernel_size": {"class_name": "__tuple__", "items": [3, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 125}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 126}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_37", "inbound_nodes": [[["conv2d_36", 0, 0, {}]]], "shared_object_id": 127}, {"class_name": "Concatenate", "config": {"name": "concatenate_5", "trainable": true, "dtype": "float32", "axis": 3}, "name": "concatenate_5", "inbound_nodes": [[["conv2d_34", 0, 0, {}], ["conv2d_37", 0, 0, {}]]], "shared_object_id": 128}, {"class_name": "Conv2D", "config": {"name": "conv2d_38", "trainable": true, "dtype": "float32", "filters": 480, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 129}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 130}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_38", "inbound_nodes": [[["concatenate_5", 0, 0, {}]]], "shared_object_id": 131}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_3", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_3", "inbound_nodes": [["conv2d_38", 0, 0, {"y": 0.1, "name": null}]], "shared_object_id": 132}, {"class_name": "Add", "config": {"name": "add_3", "trainable": true, "dtype": "float32"}, "name": "add_3", "inbound_nodes": [[["concatenate_4", 0, 0, {}], ["tf.math.multiply_3", 0, 0, {}]]], "shared_object_id": 133}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d", "inbound_nodes": [[["add_3", 0, 0, {}]]], "shared_object_id": 134}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["global_average_pooling2d", 0, 0, {}]]], "shared_object_id": 135}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 53, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 136}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 137}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["dropout", 0, 0, {}]]], "shared_object_id": 138}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense", 0, 0]]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}, "shared_object_id": 141}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 142}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ù"ö
_tf_keras_input_layerÖ{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 85, 85, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 85, 85, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
ð


Bkernel
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
+¿&call_and_return_all_conditional_losses
À__call__"Ó	
_tf_keras_layer¹	{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 143}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 85, 85, 1]}}
õ


Gkernel
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
+Á&call_and_return_all_conditional_losses
Â__call__"Ø	
_tf_keras_layer¾	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 144}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 83, 83, 32]}}
÷


Lkernel
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
+Ã&call_and_return_all_conditional_losses
Ä__call__"Ú	
_tf_keras_layerÀ	{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_1", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 145}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 81, 81, 32]}}
ú


Qkernel
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
+Å&call_and_return_all_conditional_losses
Æ__call__"Ý	
_tf_keras_layerÃ	{"name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_2", 0, 0, {}]]], "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 146}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 64]}}
ú


Vkernel
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
+Ç&call_and_return_all_conditional_losses
È__call__"Ý	
_tf_keras_layerÃ	{"name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_3", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 147}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 64]}}
ú


[kernel
\regularization_losses
]	variables
^trainable_variables
_	keras_api
+É&call_and_return_all_conditional_losses
Ê__call__"Ý	
_tf_keras_layerÃ	{"name": "conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_4", 0, 0, {}]]], "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 148}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 38, 38, 64]}}
ù


`kernel
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
+Ë&call_and_return_all_conditional_losses
Ì__call__"Ü	
_tf_keras_layerÂ	{"name": "conv2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_5", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 149}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 36, 64]}}
ù


ekernel
fregularization_losses
g	variables
htrainable_variables
i	keras_api
+Í&call_and_return_all_conditional_losses
Î__call__"Ü	
_tf_keras_layerÂ	{"name": "conv2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_5", 0, 0, {}]]], "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 150}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 36, 64]}}
û


jkernel
kregularization_losses
l	variables
mtrainable_variables
n	keras_api
+Ï&call_and_return_all_conditional_losses
Ð__call__"Þ	
_tf_keras_layerÄ	{"name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_9", 0, 0, {}]]], "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 151}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 36, 32]}}
ù


okernel
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
+Ñ&call_and_return_all_conditional_losses
Ò__call__"Ü	
_tf_keras_layerÂ	{"name": "conv2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 28}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_5", 0, 0, {}]]], "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 152}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 36, 64]}}
ù


tkernel
uregularization_losses
v	variables
wtrainable_variables
x	keras_api
+Ó&call_and_return_all_conditional_losses
Ô__call__"Ü	
_tf_keras_layerÂ	{"name": "conv2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_7", 0, 0, {}]]], "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 153}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 36, 32]}}
ü


ykernel
zregularization_losses
{	variables
|trainable_variables
}	keras_api
+Õ&call_and_return_all_conditional_losses
Ö__call__"ß	
_tf_keras_layerÅ	{"name": "conv2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 34}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_10", 0, 0, {}]]], "shared_object_id": 36, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 154}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 36, 32]}}

~regularization_losses
	variables
trainable_variables
	keras_api
+×&call_and_return_all_conditional_losses
Ø__call__"û
_tf_keras_layerá{"name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": 3}, "inbound_nodes": [[["conv2d_6", 0, 0, {}], ["conv2d_8", 0, 0, {}], ["conv2d_11", 0, 0, {}]]], "shared_object_id": 37, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 36, 36, 32]}, {"class_name": "TensorShape", "items": [null, 36, 36, 32]}, {"class_name": "TensorShape", "items": [null, 36, 36, 32]}]}

kernel
regularization_losses
	variables
trainable_variables
	keras_api
+Ù&call_and_return_all_conditional_losses
Ú__call__"á	
_tf_keras_layerÇ	{"name": "conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 38}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 40, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 96}}, "shared_object_id": 155}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 36, 96]}}
Â
	keras_api"¯
_tf_keras_layer{"name": "tf.math.multiply", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["conv2d_12", 0, 0, {"y": 0.17, "name": null}]], "shared_object_id": 41}
 
regularization_losses
	variables
trainable_variables
	keras_api
+Û&call_and_return_all_conditional_losses
Ü__call__"
_tf_keras_layerñ{"name": "add", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Add", "config": {"name": "add", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["conv2d_5", 0, 0, {}], ["tf.math.multiply", 0, 0, {}]]], "shared_object_id": 42, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 36, 36, 64]}, {"class_name": "TensorShape", "items": [null, 36, 36, 64]}]}
û

kernel
regularization_losses
	variables
trainable_variables
	keras_api
+Ý&call_and_return_all_conditional_losses
Þ__call__"Ù	
_tf_keras_layer¿	{"name": "conv2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 43}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 44}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["add", 0, 0, {}]]], "shared_object_id": 45, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 156}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 36, 64]}}

kernel
regularization_losses
	variables
trainable_variables
	keras_api
+ß&call_and_return_all_conditional_losses
à__call__"ß	
_tf_keras_layerÅ	{"name": "conv2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 46}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 47}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_14", 0, 0, {}]]], "shared_object_id": 48, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 157}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 36, 64]}}
Ú
regularization_losses
	variables
trainable_variables
	keras_api
+á&call_and_return_all_conditional_losses
â__call__"Å
_tf_keras_layer«{"name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["add", 0, 0, {}]]], "shared_object_id": 49, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 158}}
ý

kernel
regularization_losses
	variables
trainable_variables
	keras_api
+ã&call_and_return_all_conditional_losses
ä__call__"Û	
_tf_keras_layerÁ	{"name": "conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["add", 0, 0, {}]]], "shared_object_id": 52, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 159}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 36, 64]}}

kernel
 regularization_losses
¡	variables
¢trainable_variables
£	keras_api
+å&call_and_return_all_conditional_losses
æ__call__"à	
_tf_keras_layerÆ	{"name": "conv2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 53}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 54}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_15", 0, 0, {}]]], "shared_object_id": 55, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 160}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 36, 36, 64]}}

¤regularization_losses
¥	variables
¦trainable_variables
§	keras_api
+ç&call_and_return_all_conditional_losses
è__call__"
_tf_keras_layerì{"name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": 3}, "inbound_nodes": [[["max_pooling2d", 0, 0, {}], ["conv2d_13", 0, 0, {}], ["conv2d_16", 0, 0, {}]]], "shared_object_id": 56, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 17, 17, 64]}, {"class_name": "TensorShape", "items": [null, 17, 17, 128]}, {"class_name": "TensorShape", "items": [null, 17, 17, 64]}]}

¨kernel
©regularization_losses
ª	variables
«trainable_variables
¬	keras_api
+é&call_and_return_all_conditional_losses
ê__call__"æ	
_tf_keras_layerÌ	{"name": "conv2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 57}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 59, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 161}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 256]}}

­kernel
®regularization_losses
¯	variables
°trainable_variables
±	keras_api
+ë&call_and_return_all_conditional_losses
ì__call__"â	
_tf_keras_layerÈ	{"name": "conv2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_18", 0, 0, {}]]], "shared_object_id": 62, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 162}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 128]}}

²kernel
³regularization_losses
´	variables
µtrainable_variables
¶	keras_api
+í&call_and_return_all_conditional_losses
î__call__"æ	
_tf_keras_layerÌ	{"name": "conv2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 63}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 64}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 65, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 163}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 256]}}

·kernel
¸regularization_losses
¹	variables
ºtrainable_variables
»	keras_api
+ï&call_and_return_all_conditional_losses
ð__call__"â	
_tf_keras_layerÈ	{"name": "conv2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [7, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 66}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 67}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_19", 0, 0, {}]]], "shared_object_id": 68, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 164}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 128]}}
Ã
¼regularization_losses
½	variables
¾trainable_variables
¿	keras_api
+ñ&call_and_return_all_conditional_losses
ò__call__"®
_tf_keras_layer{"name": "concatenate_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": 3}, "inbound_nodes": [[["conv2d_17", 0, 0, {}], ["conv2d_20", 0, 0, {}]]], "shared_object_id": 69, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 17, 17, 128]}, {"class_name": "TensorShape", "items": [null, 17, 17, 128]}]}

Àkernel
Áregularization_losses
Â	variables
Ãtrainable_variables
Ä	keras_api
+ó&call_and_return_all_conditional_losses
ô__call__"æ	
_tf_keras_layerÌ	{"name": "conv2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 70}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 71}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 72, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 165}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 256]}}
Å
Å	keras_api"²
_tf_keras_layer{"name": "tf.math.multiply_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_1", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["conv2d_21", 0, 0, {"y": 0.1, "name": null}]], "shared_object_id": 73}
­
Æregularization_losses
Ç	variables
Ètrainable_variables
É	keras_api
+õ&call_and_return_all_conditional_losses
ö__call__"
_tf_keras_layerþ{"name": "add_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Add", "config": {"name": "add_1", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["concatenate_1", 0, 0, {}], ["tf.math.multiply_1", 0, 0, {}]]], "shared_object_id": 74, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 17, 17, 256]}, {"class_name": "TensorShape", "items": [null, 17, 17, 256]}]}

Êkernel
Ëregularization_losses
Ì	variables
Ítrainable_variables
Î	keras_api
+÷&call_and_return_all_conditional_losses
ø__call__"Þ	
_tf_keras_layerÄ	{"name": "conv2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 75}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 76}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["add_1", 0, 0, {}]]], "shared_object_id": 77, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 166}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 256]}}

Ïkernel
Ðregularization_losses
Ñ	variables
Òtrainable_variables
Ó	keras_api
+ù&call_and_return_all_conditional_losses
ú__call__"â	
_tf_keras_layerÈ	{"name": "conv2d_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 78}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 79}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_23", 0, 0, {}]]], "shared_object_id": 80, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 167}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 128]}}

Ôkernel
Õregularization_losses
Ö	variables
×trainable_variables
Ø	keras_api
+û&call_and_return_all_conditional_losses
ü__call__"Þ	
_tf_keras_layerÄ	{"name": "conv2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 81}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 82}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["add_1", 0, 0, {}]]], "shared_object_id": 83, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 168}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 256]}}

Ùkernel
Úregularization_losses
Û	variables
Ütrainable_variables
Ý	keras_api
+ý&call_and_return_all_conditional_losses
þ__call__"â	
_tf_keras_layerÈ	{"name": "conv2d_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [7, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 84}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 85}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_24", 0, 0, {}]]], "shared_object_id": 86, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 169}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 128]}}
Ã
Þregularization_losses
ß	variables
àtrainable_variables
á	keras_api
+ÿ&call_and_return_all_conditional_losses
__call__"®
_tf_keras_layer{"name": "concatenate_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": 3}, "inbound_nodes": [[["conv2d_22", 0, 0, {}], ["conv2d_25", 0, 0, {}]]], "shared_object_id": 87, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 17, 17, 128]}, {"class_name": "TensorShape", "items": [null, 17, 17, 128]}]}

âkernel
ãregularization_losses
ä	variables
åtrainable_variables
æ	keras_api
+&call_and_return_all_conditional_losses
__call__"æ	
_tf_keras_layerÌ	{"name": "conv2d_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_26", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 88}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 89}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 90, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 170}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 256]}}
Å
ç	keras_api"²
_tf_keras_layer{"name": "tf.math.multiply_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_2", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["conv2d_26", 0, 0, {"y": 0.1, "name": null}]], "shared_object_id": 91}
¥
èregularization_losses
é	variables
êtrainable_variables
ë	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerö{"name": "add_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Add", "config": {"name": "add_2", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["add_1", 0, 0, {}], ["tf.math.multiply_2", 0, 0, {}]]], "shared_object_id": 92, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 17, 17, 256]}, {"class_name": "TensorShape", "items": [null, 17, 17, 256]}]}
ÿ

ìkernel
íregularization_losses
î	variables
ïtrainable_variables
ð	keras_api
+&call_and_return_all_conditional_losses
__call__"Ý	
_tf_keras_layerÃ	{"name": "conv2d_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_31", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 93}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 94}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["add_2", 0, 0, {}]]], "shared_object_id": 95, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 171}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 256]}}

ñkernel
òregularization_losses
ó	variables
ôtrainable_variables
õ	keras_api
+&call_and_return_all_conditional_losses
__call__"Þ	
_tf_keras_layerÄ	{"name": "conv2d_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 96}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 97}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["add_2", 0, 0, {}]]], "shared_object_id": 98, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 172}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 256]}}

ökernel
÷regularization_losses
ø	variables
ùtrainable_variables
ú	keras_api
+&call_and_return_all_conditional_losses
__call__"à	
_tf_keras_layerÆ	{"name": "conv2d_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 99}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 100}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["add_2", 0, 0, {}]]], "shared_object_id": 101, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 173}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 256]}}

ûkernel
üregularization_losses
ý	variables
þtrainable_variables
ÿ	keras_api
+&call_and_return_all_conditional_losses
__call__"â	
_tf_keras_layerÈ	{"name": "conv2d_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_32", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 102}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 103}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_31", 0, 0, {}]]], "shared_object_id": 104, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 174}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 64]}}
á
regularization_losses
	variables
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"Ì
_tf_keras_layer²{"name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["add_2", 0, 0, {}]]], "shared_object_id": 105, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 175}}

kernel
regularization_losses
	variables
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"ã	
_tf_keras_layerÉ	{"name": "conv2d_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 106}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 107}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_27", 0, 0, {}]]], "shared_object_id": 108, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 96}}, "shared_object_id": 176}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 96]}}

kernel
regularization_losses
	variables
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"ã	
_tf_keras_layerÉ	{"name": "conv2d_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_30", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 109}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 110}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_29", 0, 0, {}]]], "shared_object_id": 111, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 177}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 64]}}

kernel
regularization_losses
	variables
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"ã	
_tf_keras_layerÉ	{"name": "conv2d_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_33", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 112}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 113}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_32", 0, 0, {}]]], "shared_object_id": 114, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 178}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 17, 64]}}
ë
regularization_losses
	variables
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"Ö
_tf_keras_layer¼{"name": "concatenate_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_4", "trainable": true, "dtype": "float32", "axis": 3}, "inbound_nodes": [[["max_pooling2d_1", 0, 0, {}], ["conv2d_28", 0, 0, {}], ["conv2d_30", 0, 0, {}], ["conv2d_33", 0, 0, {}]]], "shared_object_id": 115, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 8, 8, 256]}, {"class_name": "TensorShape", "items": [null, 8, 8, 96]}, {"class_name": "TensorShape", "items": [null, 8, 8, 64]}, {"class_name": "TensorShape", "items": [null, 8, 8, 64]}]}

kernel
regularization_losses
	variables
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"ç	
_tf_keras_layerÍ	{"name": "conv2d_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_35", "trainable": true, "dtype": "float32", "filters": 192, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 116}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 117}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_4", 0, 0, {}]]], "shared_object_id": 118, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 480}}, "shared_object_id": 179}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 480]}}

kernel
regularization_losses
	variables
trainable_variables
 	keras_api
+&call_and_return_all_conditional_losses
__call__"ã	
_tf_keras_layerÉ	{"name": "conv2d_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_36", "trainable": true, "dtype": "float32", "filters": 192, "kernel_size": {"class_name": "__tuple__", "items": [1, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 119}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 120}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_35", 0, 0, {}]]], "shared_object_id": 121, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 192}}, "shared_object_id": 180}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 192]}}

¡kernel
¢regularization_losses
£	variables
¤trainable_variables
¥	keras_api
+&call_and_return_all_conditional_losses
__call__"ç	
_tf_keras_layerÍ	{"name": "conv2d_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_34", "trainable": true, "dtype": "float32", "filters": 192, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 122}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 123}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_4", 0, 0, {}]]], "shared_object_id": 124, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 480}}, "shared_object_id": 181}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 480]}}

¦kernel
§regularization_losses
¨	variables
©trainable_variables
ª	keras_api
+&call_and_return_all_conditional_losses
__call__"ã	
_tf_keras_layerÉ	{"name": "conv2d_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_37", "trainable": true, "dtype": "float32", "filters": 192, "kernel_size": {"class_name": "__tuple__", "items": [3, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 125}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 126}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_36", 0, 0, {}]]], "shared_object_id": 127, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 192}}, "shared_object_id": 182}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 192]}}
À
«regularization_losses
¬	variables
­trainable_variables
®	keras_api
+&call_and_return_all_conditional_losses
 __call__"«
_tf_keras_layer{"name": "concatenate_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_5", "trainable": true, "dtype": "float32", "axis": 3}, "inbound_nodes": [[["conv2d_34", 0, 0, {}], ["conv2d_37", 0, 0, {}]]], "shared_object_id": 128, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 8, 8, 192]}, {"class_name": "TensorShape", "items": [null, 8, 8, 192]}]}

¯kernel
°regularization_losses
±	variables
²trainable_variables
³	keras_api
+¡&call_and_return_all_conditional_losses
¢__call__"ç	
_tf_keras_layerÍ	{"name": "conv2d_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_38", "trainable": true, "dtype": "float32", "filters": 480, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 129}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 130}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_5", 0, 0, {}]]], "shared_object_id": 131, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 384}}, "shared_object_id": 183}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 384]}}
Æ
´	keras_api"³
_tf_keras_layer{"name": "tf.math.multiply_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_3", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["conv2d_38", 0, 0, {"y": 0.1, "name": null}]], "shared_object_id": 132}
ª
µregularization_losses
¶	variables
·trainable_variables
¸	keras_api
+£&call_and_return_all_conditional_losses
¤__call__"
_tf_keras_layerû{"name": "add_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Add", "config": {"name": "add_3", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["concatenate_4", 0, 0, {}], ["tf.math.multiply_3", 0, 0, {}]]], "shared_object_id": 133, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 8, 8, 480]}, {"class_name": "TensorShape", "items": [null, 8, 8, 480]}]}
õ
¹regularization_losses
º	variables
»trainable_variables
¼	keras_api
+¥&call_and_return_all_conditional_losses
¦__call__"à
_tf_keras_layerÆ{"name": "global_average_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["add_3", 0, 0, {}]]], "shared_object_id": 134, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 184}}
½
½regularization_losses
¾	variables
¿trainable_variables
À	keras_api
+§&call_and_return_all_conditional_losses
¨__call__"¨
_tf_keras_layer{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}, "inbound_nodes": [[["global_average_pooling2d", 0, 0, {}]]], "shared_object_id": 135}
	
Ákernel
	Âbias
Ãregularization_losses
Ä	variables
Åtrainable_variables
Æ	keras_api
+©&call_and_return_all_conditional_losses
ª__call__"Û
_tf_keras_layerÁ{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 53, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 136}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 137}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout", 0, 0, {}]]], "shared_object_id": 138, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 480}}, "shared_object_id": 185}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 480]}}
Æ
	Çiter
Èbeta_1
Ébeta_2

Êdecay
Ëlearning_rateBmêGmëLmìQmíVmî[mï`mðemñjmòomótmôymõ	mö	m÷	mø	mù	mú	¨mû	­mü	²mý	·mþ	Àmÿ	Êm	Ïm	Ôm	Ùm	âm	ìm	ñm	öm	ûm	m	m	m	m	m	¡m	¦m	¯m	Ám	ÂmBvGvLvQvVv[v`vevjvovtvyv	v	v 	v¡	v¢	v£	¨v¤	­v¥	²v¦	·v§	Àv¨	Êv©	Ïvª	Ôv«	Ùv¬	âv­	ìv®	ñv¯	öv°	ûv±	v²	v³	v´	vµ	v¶	¡v·	¦v¸	¯v¹	Ávº	Âv»"
	optimizer
 "
trackable_list_wrapper
û
B0
G1
L2
Q3
V4
[5
`6
e7
j8
o9
t10
y11
12
13
14
15
16
¨17
­18
²19
·20
À21
Ê22
Ï23
Ô24
Ù25
â26
ì27
ñ28
ö29
û30
31
32
33
34
35
¡36
¦37
¯38
Á39
Â40"
trackable_list_wrapper
û
B0
G1
L2
Q3
V4
[5
`6
e7
j8
o9
t10
y11
12
13
14
15
16
¨17
­18
²19
·20
À21
Ê22
Ï23
Ô24
Ù25
â26
ì27
ñ28
ö29
û30
31
32
33
34
35
¡36
¦37
¯38
Á39
Â40"
trackable_list_wrapper
Ó
=regularization_losses
Ìnon_trainable_variables
>	variables
Ímetrics
 Îlayer_regularization_losses
Ïlayers
Ðlayer_metrics
?trainable_variables
¾__call__
½_default_save_signature
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses"
_generic_user_object
-
«serving_default"
signature_map
':% 2conv2d/kernel
 "
trackable_list_wrapper
'
B0"
trackable_list_wrapper
'
B0"
trackable_list_wrapper
µ
Cregularization_losses
Ñnon_trainable_variables
D	variables
Òmetrics
 Ólayer_regularization_losses
Ôlayers
Õlayer_metrics
Etrainable_variables
À__call__
+¿&call_and_return_all_conditional_losses
'¿"call_and_return_conditional_losses"
_generic_user_object
):'  2conv2d_1/kernel
 "
trackable_list_wrapper
'
G0"
trackable_list_wrapper
'
G0"
trackable_list_wrapper
µ
Hregularization_losses
Önon_trainable_variables
I	variables
×metrics
 Ølayer_regularization_losses
Ùlayers
Úlayer_metrics
Jtrainable_variables
Â__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_2/kernel
 "
trackable_list_wrapper
'
L0"
trackable_list_wrapper
'
L0"
trackable_list_wrapper
µ
Mregularization_losses
Ûnon_trainable_variables
N	variables
Ümetrics
 Ýlayer_regularization_losses
Þlayers
ßlayer_metrics
Otrainable_variables
Ä__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_3/kernel
 "
trackable_list_wrapper
'
Q0"
trackable_list_wrapper
'
Q0"
trackable_list_wrapper
µ
Rregularization_losses
ànon_trainable_variables
S	variables
ámetrics
 âlayer_regularization_losses
ãlayers
älayer_metrics
Ttrainable_variables
Æ__call__
+Å&call_and_return_all_conditional_losses
'Å"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_4/kernel
 "
trackable_list_wrapper
'
V0"
trackable_list_wrapper
'
V0"
trackable_list_wrapper
µ
Wregularization_losses
ånon_trainable_variables
X	variables
æmetrics
 çlayer_regularization_losses
èlayers
élayer_metrics
Ytrainable_variables
È__call__
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_5/kernel
 "
trackable_list_wrapper
'
[0"
trackable_list_wrapper
'
[0"
trackable_list_wrapper
µ
\regularization_losses
ênon_trainable_variables
]	variables
ëmetrics
 ìlayer_regularization_losses
ílayers
îlayer_metrics
^trainable_variables
Ê__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses"
_generic_user_object
):'@ 2conv2d_9/kernel
 "
trackable_list_wrapper
'
`0"
trackable_list_wrapper
'
`0"
trackable_list_wrapper
µ
aregularization_losses
ïnon_trainable_variables
b	variables
ðmetrics
 ñlayer_regularization_losses
òlayers
ólayer_metrics
ctrainable_variables
Ì__call__
+Ë&call_and_return_all_conditional_losses
'Ë"call_and_return_conditional_losses"
_generic_user_object
):'@ 2conv2d_7/kernel
 "
trackable_list_wrapper
'
e0"
trackable_list_wrapper
'
e0"
trackable_list_wrapper
µ
fregularization_losses
ônon_trainable_variables
g	variables
õmetrics
 ölayer_regularization_losses
÷layers
ølayer_metrics
htrainable_variables
Î__call__
+Í&call_and_return_all_conditional_losses
'Í"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_10/kernel
 "
trackable_list_wrapper
'
j0"
trackable_list_wrapper
'
j0"
trackable_list_wrapper
µ
kregularization_losses
ùnon_trainable_variables
l	variables
úmetrics
 ûlayer_regularization_losses
ülayers
ýlayer_metrics
mtrainable_variables
Ð__call__
+Ï&call_and_return_all_conditional_losses
'Ï"call_and_return_conditional_losses"
_generic_user_object
):'@ 2conv2d_6/kernel
 "
trackable_list_wrapper
'
o0"
trackable_list_wrapper
'
o0"
trackable_list_wrapper
µ
pregularization_losses
þnon_trainable_variables
q	variables
ÿmetrics
 layer_regularization_losses
layers
layer_metrics
rtrainable_variables
Ò__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses"
_generic_user_object
):'  2conv2d_8/kernel
 "
trackable_list_wrapper
'
t0"
trackable_list_wrapper
'
t0"
trackable_list_wrapper
µ
uregularization_losses
non_trainable_variables
v	variables
metrics
 layer_regularization_losses
layers
layer_metrics
wtrainable_variables
Ô__call__
+Ó&call_and_return_all_conditional_losses
'Ó"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_11/kernel
 "
trackable_list_wrapper
'
y0"
trackable_list_wrapper
'
y0"
trackable_list_wrapper
µ
zregularization_losses
non_trainable_variables
{	variables
metrics
 layer_regularization_losses
layers
layer_metrics
|trainable_variables
Ö__call__
+Õ&call_and_return_all_conditional_losses
'Õ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¶
~regularization_losses
non_trainable_variables
	variables
metrics
 layer_regularization_losses
layers
layer_metrics
trainable_variables
Ø__call__
+×&call_and_return_all_conditional_losses
'×"call_and_return_conditional_losses"
_generic_user_object
*:(`@2conv2d_12/kernel
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
regularization_losses
non_trainable_variables
	variables
metrics
 layer_regularization_losses
layers
layer_metrics
trainable_variables
Ú__call__
+Ù&call_and_return_all_conditional_losses
'Ù"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
regularization_losses
non_trainable_variables
	variables
metrics
 layer_regularization_losses
layers
layer_metrics
trainable_variables
Ü__call__
+Û&call_and_return_all_conditional_losses
'Û"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_14/kernel
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
regularization_losses
non_trainable_variables
	variables
metrics
 layer_regularization_losses
layers
 layer_metrics
trainable_variables
Þ__call__
+Ý&call_and_return_all_conditional_losses
'Ý"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_15/kernel
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
regularization_losses
¡non_trainable_variables
	variables
¢metrics
 £layer_regularization_losses
¤layers
¥layer_metrics
trainable_variables
à__call__
+ß&call_and_return_all_conditional_losses
'ß"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
regularization_losses
¦non_trainable_variables
	variables
§metrics
 ¨layer_regularization_losses
©layers
ªlayer_metrics
trainable_variables
â__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses"
_generic_user_object
+:)@2conv2d_13/kernel
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
regularization_losses
«non_trainable_variables
	variables
¬metrics
 ­layer_regularization_losses
®layers
¯layer_metrics
trainable_variables
ä__call__
+ã&call_and_return_all_conditional_losses
'ã"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_16/kernel
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
 regularization_losses
°non_trainable_variables
¡	variables
±metrics
 ²layer_regularization_losses
³layers
´layer_metrics
¢trainable_variables
æ__call__
+å&call_and_return_all_conditional_losses
'å"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¤regularization_losses
µnon_trainable_variables
¥	variables
¶metrics
 ·layer_regularization_losses
¸layers
¹layer_metrics
¦trainable_variables
è__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_18/kernel
 "
trackable_list_wrapper
(
¨0"
trackable_list_wrapper
(
¨0"
trackable_list_wrapper
¸
©regularization_losses
ºnon_trainable_variables
ª	variables
»metrics
 ¼layer_regularization_losses
½layers
¾layer_metrics
«trainable_variables
ê__call__
+é&call_and_return_all_conditional_losses
'é"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_19/kernel
 "
trackable_list_wrapper
(
­0"
trackable_list_wrapper
(
­0"
trackable_list_wrapper
¸
®regularization_losses
¿non_trainable_variables
¯	variables
Àmetrics
 Álayer_regularization_losses
Âlayers
Ãlayer_metrics
°trainable_variables
ì__call__
+ë&call_and_return_all_conditional_losses
'ë"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_17/kernel
 "
trackable_list_wrapper
(
²0"
trackable_list_wrapper
(
²0"
trackable_list_wrapper
¸
³regularization_losses
Änon_trainable_variables
´	variables
Åmetrics
 Ælayer_regularization_losses
Çlayers
Èlayer_metrics
µtrainable_variables
î__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_20/kernel
 "
trackable_list_wrapper
(
·0"
trackable_list_wrapper
(
·0"
trackable_list_wrapper
¸
¸regularization_losses
Énon_trainable_variables
¹	variables
Êmetrics
 Ëlayer_regularization_losses
Ìlayers
Ílayer_metrics
ºtrainable_variables
ð__call__
+ï&call_and_return_all_conditional_losses
'ï"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¼regularization_losses
Înon_trainable_variables
½	variables
Ïmetrics
 Ðlayer_regularization_losses
Ñlayers
Òlayer_metrics
¾trainable_variables
ò__call__
+ñ&call_and_return_all_conditional_losses
'ñ"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_21/kernel
 "
trackable_list_wrapper
(
À0"
trackable_list_wrapper
(
À0"
trackable_list_wrapper
¸
Áregularization_losses
Ónon_trainable_variables
Â	variables
Ômetrics
 Õlayer_regularization_losses
Ölayers
×layer_metrics
Ãtrainable_variables
ô__call__
+ó&call_and_return_all_conditional_losses
'ó"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Æregularization_losses
Ønon_trainable_variables
Ç	variables
Ùmetrics
 Úlayer_regularization_losses
Ûlayers
Ülayer_metrics
Ètrainable_variables
ö__call__
+õ&call_and_return_all_conditional_losses
'õ"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_23/kernel
 "
trackable_list_wrapper
(
Ê0"
trackable_list_wrapper
(
Ê0"
trackable_list_wrapper
¸
Ëregularization_losses
Ýnon_trainable_variables
Ì	variables
Þmetrics
 ßlayer_regularization_losses
àlayers
álayer_metrics
Ítrainable_variables
ø__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_24/kernel
 "
trackable_list_wrapper
(
Ï0"
trackable_list_wrapper
(
Ï0"
trackable_list_wrapper
¸
Ðregularization_losses
ânon_trainable_variables
Ñ	variables
ãmetrics
 älayer_regularization_losses
ålayers
ælayer_metrics
Òtrainable_variables
ú__call__
+ù&call_and_return_all_conditional_losses
'ù"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_22/kernel
 "
trackable_list_wrapper
(
Ô0"
trackable_list_wrapper
(
Ô0"
trackable_list_wrapper
¸
Õregularization_losses
çnon_trainable_variables
Ö	variables
èmetrics
 élayer_regularization_losses
êlayers
ëlayer_metrics
×trainable_variables
ü__call__
+û&call_and_return_all_conditional_losses
'û"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_25/kernel
 "
trackable_list_wrapper
(
Ù0"
trackable_list_wrapper
(
Ù0"
trackable_list_wrapper
¸
Úregularization_losses
ìnon_trainable_variables
Û	variables
ímetrics
 îlayer_regularization_losses
ïlayers
ðlayer_metrics
Ütrainable_variables
þ__call__
+ý&call_and_return_all_conditional_losses
'ý"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Þregularization_losses
ñnon_trainable_variables
ß	variables
òmetrics
 ólayer_regularization_losses
ôlayers
õlayer_metrics
àtrainable_variables
__call__
+ÿ&call_and_return_all_conditional_losses
'ÿ"call_and_return_conditional_losses"
_generic_user_object
,:*2conv2d_26/kernel
 "
trackable_list_wrapper
(
â0"
trackable_list_wrapper
(
â0"
trackable_list_wrapper
¸
ãregularization_losses
önon_trainable_variables
ä	variables
÷metrics
 ølayer_regularization_losses
ùlayers
úlayer_metrics
åtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
èregularization_losses
ûnon_trainable_variables
é	variables
ümetrics
 ýlayer_regularization_losses
þlayers
ÿlayer_metrics
êtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
+:)@2conv2d_31/kernel
 "
trackable_list_wrapper
(
ì0"
trackable_list_wrapper
(
ì0"
trackable_list_wrapper
¸
íregularization_losses
non_trainable_variables
î	variables
metrics
 layer_regularization_losses
layers
layer_metrics
ïtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
+:)`2conv2d_27/kernel
 "
trackable_list_wrapper
(
ñ0"
trackable_list_wrapper
(
ñ0"
trackable_list_wrapper
¸
òregularization_losses
non_trainable_variables
ó	variables
metrics
 layer_regularization_losses
layers
layer_metrics
ôtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
+:)@2conv2d_29/kernel
 "
trackable_list_wrapper
(
ö0"
trackable_list_wrapper
(
ö0"
trackable_list_wrapper
¸
÷regularization_losses
non_trainable_variables
ø	variables
metrics
 layer_regularization_losses
layers
layer_metrics
ùtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_32/kernel
 "
trackable_list_wrapper
(
û0"
trackable_list_wrapper
(
û0"
trackable_list_wrapper
¸
üregularization_losses
non_trainable_variables
ý	variables
metrics
 layer_regularization_losses
layers
layer_metrics
þtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
regularization_losses
non_trainable_variables
	variables
metrics
 layer_regularization_losses
layers
layer_metrics
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(``2conv2d_28/kernel
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
regularization_losses
non_trainable_variables
	variables
metrics
 layer_regularization_losses
layers
layer_metrics
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_30/kernel
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
regularization_losses
non_trainable_variables
	variables
metrics
  layer_regularization_losses
¡layers
¢layer_metrics
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_33/kernel
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
regularization_losses
£non_trainable_variables
	variables
¤metrics
 ¥layer_regularization_losses
¦layers
§layer_metrics
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
regularization_losses
¨non_trainable_variables
	variables
©metrics
 ªlayer_regularization_losses
«layers
¬layer_metrics
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
,:*àÀ2conv2d_35/kernel
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
regularization_losses
­non_trainable_variables
	variables
®metrics
 ¯layer_regularization_losses
°layers
±layer_metrics
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
,:*ÀÀ2conv2d_36/kernel
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
regularization_losses
²non_trainable_variables
	variables
³metrics
 ´layer_regularization_losses
µlayers
¶layer_metrics
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
,:*àÀ2conv2d_34/kernel
 "
trackable_list_wrapper
(
¡0"
trackable_list_wrapper
(
¡0"
trackable_list_wrapper
¸
¢regularization_losses
·non_trainable_variables
£	variables
¸metrics
 ¹layer_regularization_losses
ºlayers
»layer_metrics
¤trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
,:*ÀÀ2conv2d_37/kernel
 "
trackable_list_wrapper
(
¦0"
trackable_list_wrapper
(
¦0"
trackable_list_wrapper
¸
§regularization_losses
¼non_trainable_variables
¨	variables
½metrics
 ¾layer_regularization_losses
¿layers
Àlayer_metrics
©trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
«regularization_losses
Ánon_trainable_variables
¬	variables
Âmetrics
 Ãlayer_regularization_losses
Älayers
Ålayer_metrics
­trainable_variables
 __call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
,:*à2conv2d_38/kernel
 "
trackable_list_wrapper
(
¯0"
trackable_list_wrapper
(
¯0"
trackable_list_wrapper
¸
°regularization_losses
Ænon_trainable_variables
±	variables
Çmetrics
 Èlayer_regularization_losses
Élayers
Êlayer_metrics
²trainable_variables
¢__call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
µregularization_losses
Ënon_trainable_variables
¶	variables
Ìmetrics
 Ílayer_regularization_losses
Îlayers
Ïlayer_metrics
·trainable_variables
¤__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¹regularization_losses
Ðnon_trainable_variables
º	variables
Ñmetrics
 Òlayer_regularization_losses
Ólayers
Ôlayer_metrics
»trainable_variables
¦__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
½regularization_losses
Õnon_trainable_variables
¾	variables
Ömetrics
 ×layer_regularization_losses
Ølayers
Ùlayer_metrics
¿trainable_variables
¨__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
:	à52dense/kernel
:52
dense/bias
 "
trackable_list_wrapper
0
Á0
Â1"
trackable_list_wrapper
0
Á0
Â1"
trackable_list_wrapper
¸
Ãregularization_losses
Únon_trainable_variables
Ä	variables
Ûmetrics
 Ülayer_regularization_losses
Ýlayers
Þlayer_metrics
Åtrainable_variables
ª__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
0
ß0
à1"
trackable_list_wrapper
 "
trackable_list_wrapper
î
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
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46
047
148
249
350
451
552
653
754
855
956
:57
;58"
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
Ù

átotal

âcount
ã	variables
ä	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 186}
¤

åtotal

æcount
ç
_fn_kwargs
è	variables
é	keras_api"Ø
_tf_keras_metric½{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 142}
:  (2total
:  (2count
0
á0
â1"
trackable_list_wrapper
.
ã	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
å0
æ1"
trackable_list_wrapper
.
è	variables"
_generic_user_object
,:* 2Adam/conv2d/kernel/m
.:,  2Adam/conv2d_1/kernel/m
.:, @2Adam/conv2d_2/kernel/m
.:,@@2Adam/conv2d_3/kernel/m
.:,@@2Adam/conv2d_4/kernel/m
.:,@@2Adam/conv2d_5/kernel/m
.:,@ 2Adam/conv2d_9/kernel/m
.:,@ 2Adam/conv2d_7/kernel/m
/:-  2Adam/conv2d_10/kernel/m
.:,@ 2Adam/conv2d_6/kernel/m
.:,  2Adam/conv2d_8/kernel/m
/:-  2Adam/conv2d_11/kernel/m
/:-`@2Adam/conv2d_12/kernel/m
/:-@@2Adam/conv2d_14/kernel/m
/:-@@2Adam/conv2d_15/kernel/m
0:.@2Adam/conv2d_13/kernel/m
/:-@@2Adam/conv2d_16/kernel/m
1:/2Adam/conv2d_18/kernel/m
1:/2Adam/conv2d_19/kernel/m
1:/2Adam/conv2d_17/kernel/m
1:/2Adam/conv2d_20/kernel/m
1:/2Adam/conv2d_21/kernel/m
1:/2Adam/conv2d_23/kernel/m
1:/2Adam/conv2d_24/kernel/m
1:/2Adam/conv2d_22/kernel/m
1:/2Adam/conv2d_25/kernel/m
1:/2Adam/conv2d_26/kernel/m
0:.@2Adam/conv2d_31/kernel/m
0:.`2Adam/conv2d_27/kernel/m
0:.@2Adam/conv2d_29/kernel/m
/:-@@2Adam/conv2d_32/kernel/m
/:-``2Adam/conv2d_28/kernel/m
/:-@@2Adam/conv2d_30/kernel/m
/:-@@2Adam/conv2d_33/kernel/m
1:/àÀ2Adam/conv2d_35/kernel/m
1:/ÀÀ2Adam/conv2d_36/kernel/m
1:/àÀ2Adam/conv2d_34/kernel/m
1:/ÀÀ2Adam/conv2d_37/kernel/m
1:/à2Adam/conv2d_38/kernel/m
$:"	à52Adam/dense/kernel/m
:52Adam/dense/bias/m
,:* 2Adam/conv2d/kernel/v
.:,  2Adam/conv2d_1/kernel/v
.:, @2Adam/conv2d_2/kernel/v
.:,@@2Adam/conv2d_3/kernel/v
.:,@@2Adam/conv2d_4/kernel/v
.:,@@2Adam/conv2d_5/kernel/v
.:,@ 2Adam/conv2d_9/kernel/v
.:,@ 2Adam/conv2d_7/kernel/v
/:-  2Adam/conv2d_10/kernel/v
.:,@ 2Adam/conv2d_6/kernel/v
.:,  2Adam/conv2d_8/kernel/v
/:-  2Adam/conv2d_11/kernel/v
/:-`@2Adam/conv2d_12/kernel/v
/:-@@2Adam/conv2d_14/kernel/v
/:-@@2Adam/conv2d_15/kernel/v
0:.@2Adam/conv2d_13/kernel/v
/:-@@2Adam/conv2d_16/kernel/v
1:/2Adam/conv2d_18/kernel/v
1:/2Adam/conv2d_19/kernel/v
1:/2Adam/conv2d_17/kernel/v
1:/2Adam/conv2d_20/kernel/v
1:/2Adam/conv2d_21/kernel/v
1:/2Adam/conv2d_23/kernel/v
1:/2Adam/conv2d_24/kernel/v
1:/2Adam/conv2d_22/kernel/v
1:/2Adam/conv2d_25/kernel/v
1:/2Adam/conv2d_26/kernel/v
0:.@2Adam/conv2d_31/kernel/v
0:.`2Adam/conv2d_27/kernel/v
0:.@2Adam/conv2d_29/kernel/v
/:-@@2Adam/conv2d_32/kernel/v
/:-``2Adam/conv2d_28/kernel/v
/:-@@2Adam/conv2d_30/kernel/v
/:-@@2Adam/conv2d_33/kernel/v
1:/àÀ2Adam/conv2d_35/kernel/v
1:/ÀÀ2Adam/conv2d_36/kernel/v
1:/àÀ2Adam/conv2d_34/kernel/v
1:/ÀÀ2Adam/conv2d_37/kernel/v
1:/à2Adam/conv2d_38/kernel/v
$:"	à52Adam/dense/kernel/v
:52Adam/dense/bias/v
Î2Ë
@__inference_model_layer_call_and_return_conditional_losses_70865
@__inference_model_layer_call_and_return_conditional_losses_71067
@__inference_model_layer_call_and_return_conditional_losses_70427
@__inference_model_layer_call_and_return_conditional_losses_70575À
·²³
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
kwonlydefaultsª 
annotationsª *
 
æ2ã
 __inference__wrapped_model_68729¾
²
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
annotationsª *.¢+
)&
input_1ÿÿÿÿÿÿÿÿÿUU
â2ß
%__inference_model_layer_call_fn_69451
%__inference_model_layer_call_fn_71154
%__inference_model_layer_call_fn_71241
%__inference_model_layer_call_fn_70279À
·²³
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
kwonlydefaultsª 
annotationsª *
 
ë2è
A__inference_conv2d_layer_call_and_return_conditional_losses_71249¢
²
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
annotationsª *
 
Ð2Í
&__inference_conv2d_layer_call_fn_71256¢
²
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
annotationsª *
 
í2ê
C__inference_conv2d_1_layer_call_and_return_conditional_losses_71264¢
²
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
annotationsª *
 
Ò2Ï
(__inference_conv2d_1_layer_call_fn_71271¢
²
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
annotationsª *
 
í2ê
C__inference_conv2d_2_layer_call_and_return_conditional_losses_71279¢
²
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
annotationsª *
 
Ò2Ï
(__inference_conv2d_2_layer_call_fn_71286¢
²
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
annotationsª *
 
í2ê
C__inference_conv2d_3_layer_call_and_return_conditional_losses_71294¢
²
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
annotationsª *
 
Ò2Ï
(__inference_conv2d_3_layer_call_fn_71301¢
²
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
annotationsª *
 
í2ê
C__inference_conv2d_4_layer_call_and_return_conditional_losses_71309¢
²
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
annotationsª *
 
Ò2Ï
(__inference_conv2d_4_layer_call_fn_71316¢
²
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
annotationsª *
 
í2ê
C__inference_conv2d_5_layer_call_and_return_conditional_losses_71324¢
²
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
annotationsª *
 
Ò2Ï
(__inference_conv2d_5_layer_call_fn_71331¢
²
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
annotationsª *
 
í2ê
C__inference_conv2d_9_layer_call_and_return_conditional_losses_71339¢
²
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
annotationsª *
 
Ò2Ï
(__inference_conv2d_9_layer_call_fn_71346¢
²
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
annotationsª *
 
í2ê
C__inference_conv2d_7_layer_call_and_return_conditional_losses_71354¢
²
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
annotationsª *
 
Ò2Ï
(__inference_conv2d_7_layer_call_fn_71361¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_10_layer_call_and_return_conditional_losses_71369¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_10_layer_call_fn_71376¢
²
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
annotationsª *
 
í2ê
C__inference_conv2d_6_layer_call_and_return_conditional_losses_71384¢
²
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
annotationsª *
 
Ò2Ï
(__inference_conv2d_6_layer_call_fn_71391¢
²
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
annotationsª *
 
í2ê
C__inference_conv2d_8_layer_call_and_return_conditional_losses_71399¢
²
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
annotationsª *
 
Ò2Ï
(__inference_conv2d_8_layer_call_fn_71406¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_11_layer_call_and_return_conditional_losses_71414¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_11_layer_call_fn_71421¢
²
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
annotationsª *
 
ð2í
F__inference_concatenate_layer_call_and_return_conditional_losses_71429¢
²
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
annotationsª *
 
Õ2Ò
+__inference_concatenate_layer_call_fn_71436¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_12_layer_call_and_return_conditional_losses_71444¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_12_layer_call_fn_71451¢
²
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
annotationsª *
 
è2å
>__inference_add_layer_call_and_return_conditional_losses_71457¢
²
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
annotationsª *
 
Í2Ê
#__inference_add_layer_call_fn_71463¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_14_layer_call_and_return_conditional_losses_71471¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_14_layer_call_fn_71478¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_15_layer_call_and_return_conditional_losses_71486¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_15_layer_call_fn_71493¢
²
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
annotationsª *
 
°2­
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_68735à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
-__inference_max_pooling2d_layer_call_fn_68741à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
î2ë
D__inference_conv2d_13_layer_call_and_return_conditional_losses_71501¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_13_layer_call_fn_71508¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_16_layer_call_and_return_conditional_losses_71516¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_16_layer_call_fn_71523¢
²
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
annotationsª *
 
ò2ï
H__inference_concatenate_1_layer_call_and_return_conditional_losses_71531¢
²
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
annotationsª *
 
×2Ô
-__inference_concatenate_1_layer_call_fn_71538¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_18_layer_call_and_return_conditional_losses_71546¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_18_layer_call_fn_71553¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_19_layer_call_and_return_conditional_losses_71561¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_19_layer_call_fn_71568¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_17_layer_call_and_return_conditional_losses_71576¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_17_layer_call_fn_71583¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_20_layer_call_and_return_conditional_losses_71591¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_20_layer_call_fn_71598¢
²
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
annotationsª *
 
ò2ï
H__inference_concatenate_2_layer_call_and_return_conditional_losses_71605¢
²
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
annotationsª *
 
×2Ô
-__inference_concatenate_2_layer_call_fn_71611¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_21_layer_call_and_return_conditional_losses_71619¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_21_layer_call_fn_71626¢
²
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
annotationsª *
 
ê2ç
@__inference_add_1_layer_call_and_return_conditional_losses_71632¢
²
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
annotationsª *
 
Ï2Ì
%__inference_add_1_layer_call_fn_71638¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_23_layer_call_and_return_conditional_losses_71646¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_23_layer_call_fn_71653¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_24_layer_call_and_return_conditional_losses_71661¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_24_layer_call_fn_71668¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_22_layer_call_and_return_conditional_losses_71676¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_22_layer_call_fn_71683¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_25_layer_call_and_return_conditional_losses_71691¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_25_layer_call_fn_71698¢
²
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
annotationsª *
 
ò2ï
H__inference_concatenate_3_layer_call_and_return_conditional_losses_71705¢
²
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
annotationsª *
 
×2Ô
-__inference_concatenate_3_layer_call_fn_71711¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_26_layer_call_and_return_conditional_losses_71719¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_26_layer_call_fn_71726¢
²
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
annotationsª *
 
ê2ç
@__inference_add_2_layer_call_and_return_conditional_losses_71732¢
²
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
annotationsª *
 
Ï2Ì
%__inference_add_2_layer_call_fn_71738¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_31_layer_call_and_return_conditional_losses_71746¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_31_layer_call_fn_71753¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_27_layer_call_and_return_conditional_losses_71761¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_27_layer_call_fn_71768¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_29_layer_call_and_return_conditional_losses_71776¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_29_layer_call_fn_71783¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_32_layer_call_and_return_conditional_losses_71791¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_32_layer_call_fn_71798¢
²
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
annotationsª *
 
²2¯
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_68747à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
/__inference_max_pooling2d_1_layer_call_fn_68753à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
î2ë
D__inference_conv2d_28_layer_call_and_return_conditional_losses_71806¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_28_layer_call_fn_71813¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_30_layer_call_and_return_conditional_losses_71821¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_30_layer_call_fn_71828¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_33_layer_call_and_return_conditional_losses_71836¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_33_layer_call_fn_71843¢
²
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
annotationsª *
 
ò2ï
H__inference_concatenate_4_layer_call_and_return_conditional_losses_71852¢
²
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
annotationsª *
 
×2Ô
-__inference_concatenate_4_layer_call_fn_71860¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_35_layer_call_and_return_conditional_losses_71868¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_35_layer_call_fn_71875¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_36_layer_call_and_return_conditional_losses_71883¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_36_layer_call_fn_71890¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_34_layer_call_and_return_conditional_losses_71898¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_34_layer_call_fn_71905¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_37_layer_call_and_return_conditional_losses_71913¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_37_layer_call_fn_71920¢
²
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
annotationsª *
 
ò2ï
H__inference_concatenate_5_layer_call_and_return_conditional_losses_71927¢
²
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
annotationsª *
 
×2Ô
-__inference_concatenate_5_layer_call_fn_71933¢
²
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
annotationsª *
 
î2ë
D__inference_conv2d_38_layer_call_and_return_conditional_losses_71941¢
²
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
annotationsª *
 
Ó2Ð
)__inference_conv2d_38_layer_call_fn_71948¢
²
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
annotationsª *
 
ê2ç
@__inference_add_3_layer_call_and_return_conditional_losses_71954¢
²
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
annotationsª *
 
Ï2Ì
%__inference_add_3_layer_call_fn_71960¢
²
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
annotationsª *
 
»2¸
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_68760à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 2
8__inference_global_average_pooling2d_layer_call_fn_68766à
²
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Â2¿
B__inference_dropout_layer_call_and_return_conditional_losses_71965
B__inference_dropout_layer_call_and_return_conditional_losses_71977´
«²§
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
kwonlydefaultsª 
annotationsª *
 
2
'__inference_dropout_layer_call_fn_71982
'__inference_dropout_layer_call_fn_71987´
«²§
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
kwonlydefaultsª 
annotationsª *
 
ê2ç
@__inference_dense_layer_call_and_return_conditional_losses_71997¢
²
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
annotationsª *
 
Ï2Ì
%__inference_dense_layer_call_fn_72006¢
²
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
annotationsª *
 
ÊBÇ
#__inference_signature_wrapper_70670input_1"
²
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
annotationsª *
 Ö
 __inference__wrapped_model_68729±FBGLQV[`jeoty¨­²·ÀÊÏÔÙâìûöñ¡¦¯ÁÂ8¢5
.¢+
)&
input_1ÿÿÿÿÿÿÿÿÿUU
ª "-ª*
(
dense
denseÿÿÿÿÿÿÿÿÿ5ã
@__inference_add_1_layer_call_and_return_conditional_losses_71632l¢i
b¢_
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 »
%__inference_add_1_layer_call_fn_71638l¢i
b¢_
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿã
@__inference_add_2_layer_call_and_return_conditional_losses_71732l¢i
b¢_
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 »
%__inference_add_2_layer_call_fn_71738l¢i
b¢_
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿã
@__inference_add_3_layer_call_and_return_conditional_losses_71954l¢i
b¢_
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿà
+(
inputs/1ÿÿÿÿÿÿÿÿÿà
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿà
 »
%__inference_add_3_layer_call_fn_71960l¢i
b¢_
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿà
+(
inputs/1ÿÿÿÿÿÿÿÿÿà
ª "!ÿÿÿÿÿÿÿÿÿàÞ
>__inference_add_layer_call_and_return_conditional_losses_71457j¢g
`¢]
[X
*'
inputs/0ÿÿÿÿÿÿÿÿÿ$$@
*'
inputs/1ÿÿÿÿÿÿÿÿÿ$$@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$@
 ¶
#__inference_add_layer_call_fn_71463j¢g
`¢]
[X
*'
inputs/0ÿÿÿÿÿÿÿÿÿ$$@
*'
inputs/1ÿÿÿÿÿÿÿÿÿ$$@
ª " ÿÿÿÿÿÿÿÿÿ$$@
H__inference_concatenate_1_layer_call_and_return_conditional_losses_71531Ï¢
¢

*'
inputs/0ÿÿÿÿÿÿÿÿÿ@
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
*'
inputs/2ÿÿÿÿÿÿÿÿÿ@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 ô
-__inference_concatenate_1_layer_call_fn_71538Â¢
¢

*'
inputs/0ÿÿÿÿÿÿÿÿÿ@
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
*'
inputs/2ÿÿÿÿÿÿÿÿÿ@
ª "!ÿÿÿÿÿÿÿÿÿë
H__inference_concatenate_2_layer_call_and_return_conditional_losses_71605l¢i
b¢_
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 Ã
-__inference_concatenate_2_layer_call_fn_71611l¢i
b¢_
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿë
H__inference_concatenate_3_layer_call_and_return_conditional_losses_71705l¢i
b¢_
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 Ã
-__inference_concatenate_3_layer_call_fn_71711l¢i
b¢_
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿÈ
H__inference_concatenate_4_layer_call_and_return_conditional_losses_71852ûÈ¢Ä
¼¢¸
µ±
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
*'
inputs/1ÿÿÿÿÿÿÿÿÿ`
*'
inputs/2ÿÿÿÿÿÿÿÿÿ@
*'
inputs/3ÿÿÿÿÿÿÿÿÿ@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿà
  
-__inference_concatenate_4_layer_call_fn_71860îÈ¢Ä
¼¢¸
µ±
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
*'
inputs/1ÿÿÿÿÿÿÿÿÿ`
*'
inputs/2ÿÿÿÿÿÿÿÿÿ@
*'
inputs/3ÿÿÿÿÿÿÿÿÿ@
ª "!ÿÿÿÿÿÿÿÿÿàë
H__inference_concatenate_5_layer_call_and_return_conditional_losses_71927l¢i
b¢_
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿÀ
+(
inputs/1ÿÿÿÿÿÿÿÿÿÀ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 Ã
-__inference_concatenate_5_layer_call_fn_71933l¢i
b¢_
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿÀ
+(
inputs/1ÿÿÿÿÿÿÿÿÿÀ
ª "!ÿÿÿÿÿÿÿÿÿ
F__inference_concatenate_layer_call_and_return_conditional_losses_71429Í¢
¢

*'
inputs/0ÿÿÿÿÿÿÿÿÿ$$ 
*'
inputs/1ÿÿÿÿÿÿÿÿÿ$$ 
*'
inputs/2ÿÿÿÿÿÿÿÿÿ$$ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$`
 ð
+__inference_concatenate_layer_call_fn_71436À¢
¢

*'
inputs/0ÿÿÿÿÿÿÿÿÿ$$ 
*'
inputs/1ÿÿÿÿÿÿÿÿÿ$$ 
*'
inputs/2ÿÿÿÿÿÿÿÿÿ$$ 
ª " ÿÿÿÿÿÿÿÿÿ$$`³
D__inference_conv2d_10_layer_call_and_return_conditional_losses_71369kj7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$ 
 
)__inference_conv2d_10_layer_call_fn_71376^j7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$ 
ª " ÿÿÿÿÿÿÿÿÿ$$ ³
D__inference_conv2d_11_layer_call_and_return_conditional_losses_71414ky7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$ 
 
)__inference_conv2d_11_layer_call_fn_71421^y7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$ 
ª " ÿÿÿÿÿÿÿÿÿ$$ ´
D__inference_conv2d_12_layer_call_and_return_conditional_losses_71444l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$`
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$@
 
)__inference_conv2d_12_layer_call_fn_71451_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$`
ª " ÿÿÿÿÿÿÿÿÿ$$@µ
D__inference_conv2d_13_layer_call_and_return_conditional_losses_71501m7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_13_layer_call_fn_71508`7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª "!ÿÿÿÿÿÿÿÿÿ´
D__inference_conv2d_14_layer_call_and_return_conditional_losses_71471l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$@
 
)__inference_conv2d_14_layer_call_fn_71478_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª " ÿÿÿÿÿÿÿÿÿ$$@´
D__inference_conv2d_15_layer_call_and_return_conditional_losses_71486l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$@
 
)__inference_conv2d_15_layer_call_fn_71493_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª " ÿÿÿÿÿÿÿÿÿ$$@´
D__inference_conv2d_16_layer_call_and_return_conditional_losses_71516l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_16_layer_call_fn_71523_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª " ÿÿÿÿÿÿÿÿÿ@¶
D__inference_conv2d_17_layer_call_and_return_conditional_losses_71576n²8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_17_layer_call_fn_71583a²8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¶
D__inference_conv2d_18_layer_call_and_return_conditional_losses_71546n¨8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_18_layer_call_fn_71553a¨8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¶
D__inference_conv2d_19_layer_call_and_return_conditional_losses_71561n­8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_19_layer_call_fn_71568a­8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ²
C__inference_conv2d_1_layer_call_and_return_conditional_losses_71264kG7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿSS 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿQQ 
 
(__inference_conv2d_1_layer_call_fn_71271^G7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿSS 
ª " ÿÿÿÿÿÿÿÿÿQQ ¶
D__inference_conv2d_20_layer_call_and_return_conditional_losses_71591n·8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_20_layer_call_fn_71598a·8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¶
D__inference_conv2d_21_layer_call_and_return_conditional_losses_71619nÀ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_21_layer_call_fn_71626aÀ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¶
D__inference_conv2d_22_layer_call_and_return_conditional_losses_71676nÔ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_22_layer_call_fn_71683aÔ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¶
D__inference_conv2d_23_layer_call_and_return_conditional_losses_71646nÊ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_23_layer_call_fn_71653aÊ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¶
D__inference_conv2d_24_layer_call_and_return_conditional_losses_71661nÏ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_24_layer_call_fn_71668aÏ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¶
D__inference_conv2d_25_layer_call_and_return_conditional_losses_71691nÙ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_25_layer_call_fn_71698aÙ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ¶
D__inference_conv2d_26_layer_call_and_return_conditional_losses_71719nâ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_26_layer_call_fn_71726aâ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿµ
D__inference_conv2d_27_layer_call_and_return_conditional_losses_71761mñ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ`
 
)__inference_conv2d_27_layer_call_fn_71768`ñ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ`´
D__inference_conv2d_28_layer_call_and_return_conditional_losses_71806l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ`
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ`
 
)__inference_conv2d_28_layer_call_fn_71813_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ`
ª " ÿÿÿÿÿÿÿÿÿ`µ
D__inference_conv2d_29_layer_call_and_return_conditional_losses_71776mö8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_29_layer_call_fn_71783`ö8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ@²
C__inference_conv2d_2_layer_call_and_return_conditional_losses_71279kL7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿQQ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((@
 
(__inference_conv2d_2_layer_call_fn_71286^L7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿQQ 
ª " ÿÿÿÿÿÿÿÿÿ((@´
D__inference_conv2d_30_layer_call_and_return_conditional_losses_71821l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_30_layer_call_fn_71828_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ@µ
D__inference_conv2d_31_layer_call_and_return_conditional_losses_71746mì8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_31_layer_call_fn_71753`ì8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ@´
D__inference_conv2d_32_layer_call_and_return_conditional_losses_71791lû7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_32_layer_call_fn_71798_û7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ@´
D__inference_conv2d_33_layer_call_and_return_conditional_losses_71836l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_33_layer_call_fn_71843_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ@¶
D__inference_conv2d_34_layer_call_and_return_conditional_losses_71898n¡8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿà
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿÀ
 
)__inference_conv2d_34_layer_call_fn_71905a¡8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿà
ª "!ÿÿÿÿÿÿÿÿÿÀ¶
D__inference_conv2d_35_layer_call_and_return_conditional_losses_71868n8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿà
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿÀ
 
)__inference_conv2d_35_layer_call_fn_71875a8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿà
ª "!ÿÿÿÿÿÿÿÿÿÀ¶
D__inference_conv2d_36_layer_call_and_return_conditional_losses_71883n8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÀ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿÀ
 
)__inference_conv2d_36_layer_call_fn_71890a8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÀ
ª "!ÿÿÿÿÿÿÿÿÿÀ¶
D__inference_conv2d_37_layer_call_and_return_conditional_losses_71913n¦8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÀ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿÀ
 
)__inference_conv2d_37_layer_call_fn_71920a¦8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÀ
ª "!ÿÿÿÿÿÿÿÿÿÀ¶
D__inference_conv2d_38_layer_call_and_return_conditional_losses_71941n¯8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿà
 
)__inference_conv2d_38_layer_call_fn_71948a¯8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿà²
C__inference_conv2d_3_layer_call_and_return_conditional_losses_71294kQ7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((@
 
(__inference_conv2d_3_layer_call_fn_71301^Q7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((@
ª " ÿÿÿÿÿÿÿÿÿ((@²
C__inference_conv2d_4_layer_call_and_return_conditional_losses_71309kV7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ&&@
 
(__inference_conv2d_4_layer_call_fn_71316^V7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((@
ª " ÿÿÿÿÿÿÿÿÿ&&@²
C__inference_conv2d_5_layer_call_and_return_conditional_losses_71324k[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ&&@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$@
 
(__inference_conv2d_5_layer_call_fn_71331^[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ&&@
ª " ÿÿÿÿÿÿÿÿÿ$$@²
C__inference_conv2d_6_layer_call_and_return_conditional_losses_71384ko7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$ 
 
(__inference_conv2d_6_layer_call_fn_71391^o7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª " ÿÿÿÿÿÿÿÿÿ$$ ²
C__inference_conv2d_7_layer_call_and_return_conditional_losses_71354ke7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$ 
 
(__inference_conv2d_7_layer_call_fn_71361^e7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª " ÿÿÿÿÿÿÿÿÿ$$ ²
C__inference_conv2d_8_layer_call_and_return_conditional_losses_71399kt7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$ 
 
(__inference_conv2d_8_layer_call_fn_71406^t7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$ 
ª " ÿÿÿÿÿÿÿÿÿ$$ ²
C__inference_conv2d_9_layer_call_and_return_conditional_losses_71339k`7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ$$ 
 
(__inference_conv2d_9_layer_call_fn_71346^`7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ$$@
ª " ÿÿÿÿÿÿÿÿÿ$$ °
A__inference_conv2d_layer_call_and_return_conditional_losses_71249kB7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿUU
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿSS 
 
&__inference_conv2d_layer_call_fn_71256^B7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿUU
ª " ÿÿÿÿÿÿÿÿÿSS £
@__inference_dense_layer_call_and_return_conditional_losses_71997_ÁÂ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿà
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ5
 {
%__inference_dense_layer_call_fn_72006RÁÂ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿà
ª "ÿÿÿÿÿÿÿÿÿ5¤
B__inference_dropout_layer_call_and_return_conditional_losses_71965^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿà
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿà
 ¤
B__inference_dropout_layer_call_and_return_conditional_losses_71977^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿà
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿà
 |
'__inference_dropout_layer_call_fn_71982Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿà
p 
ª "ÿÿÿÿÿÿÿÿÿà|
'__inference_dropout_layer_call_fn_71987Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿà
p
ª "ÿÿÿÿÿÿÿÿÿàÜ
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_68760R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ³
8__inference_global_average_pooling2d_layer_call_fn_68766wR¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_68747R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_1_layer_call_fn_68753R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿë
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_68735R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ã
-__inference_max_pooling2d_layer_call_fn_68741R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿö
@__inference_model_layer_call_and_return_conditional_losses_70427±FBGLQV[`jeoty¨­²·ÀÊÏÔÙâìûöñ¡¦¯ÁÂ@¢=
6¢3
)&
input_1ÿÿÿÿÿÿÿÿÿUU
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ5
 ö
@__inference_model_layer_call_and_return_conditional_losses_70575±FBGLQV[`jeoty¨­²·ÀÊÏÔÙâìûöñ¡¦¯ÁÂ@¢=
6¢3
)&
input_1ÿÿÿÿÿÿÿÿÿUU
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ5
 õ
@__inference_model_layer_call_and_return_conditional_losses_70865°FBGLQV[`jeoty¨­²·ÀÊÏÔÙâìûöñ¡¦¯ÁÂ?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿUU
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ5
 õ
@__inference_model_layer_call_and_return_conditional_losses_71067°FBGLQV[`jeoty¨­²·ÀÊÏÔÙâìûöñ¡¦¯ÁÂ?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿUU
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ5
 Î
%__inference_model_layer_call_fn_69451¤FBGLQV[`jeoty¨­²·ÀÊÏÔÙâìûöñ¡¦¯ÁÂ@¢=
6¢3
)&
input_1ÿÿÿÿÿÿÿÿÿUU
p 

 
ª "ÿÿÿÿÿÿÿÿÿ5Î
%__inference_model_layer_call_fn_70279¤FBGLQV[`jeoty¨­²·ÀÊÏÔÙâìûöñ¡¦¯ÁÂ@¢=
6¢3
)&
input_1ÿÿÿÿÿÿÿÿÿUU
p

 
ª "ÿÿÿÿÿÿÿÿÿ5Í
%__inference_model_layer_call_fn_71154£FBGLQV[`jeoty¨­²·ÀÊÏÔÙâìûöñ¡¦¯ÁÂ?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿUU
p 

 
ª "ÿÿÿÿÿÿÿÿÿ5Í
%__inference_model_layer_call_fn_71241£FBGLQV[`jeoty¨­²·ÀÊÏÔÙâìûöñ¡¦¯ÁÂ?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿUU
p

 
ª "ÿÿÿÿÿÿÿÿÿ5ä
#__inference_signature_wrapper_70670¼FBGLQV[`jeoty¨­²·ÀÊÏÔÙâìûöñ¡¦¯ÁÂC¢@
¢ 
9ª6
4
input_1)&
input_1ÿÿÿÿÿÿÿÿÿUU"-ª*
(
dense
denseÿÿÿÿÿÿÿÿÿ5