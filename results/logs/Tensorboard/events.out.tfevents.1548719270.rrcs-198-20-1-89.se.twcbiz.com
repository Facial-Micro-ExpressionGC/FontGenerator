       ŁK"	  )ĺ×Abrain.Event:2b. .¨     Fé	k˘ł)ĺ×A"ĄĐ

y
inputsPlaceholder*
dtype0*$
shape:˙˙˙˙˙˙˙˙˙  */
_output_shapes
:˙˙˙˙˙˙˙˙˙  
t
conv_1/random_uniform/shapeConst*%
valueB"         `   *
dtype0*
_output_shapes
:
^
conv_1/random_uniform/minConst*
valueB
 *:8šź*
dtype0*
_output_shapes
: 
^
conv_1/random_uniform/maxConst*
valueB
 *:8š<*
dtype0*
_output_shapes
: 
Ž
#conv_1/random_uniform/RandomUniformRandomUniformconv_1/random_uniform/shape*
seedą˙ĺ)*
seed2ŚŠŘ*
dtype0*
T0*&
_output_shapes
:`
w
conv_1/random_uniform/subSubconv_1/random_uniform/maxconv_1/random_uniform/min*
T0*
_output_shapes
: 

conv_1/random_uniform/mulMul#conv_1/random_uniform/RandomUniformconv_1/random_uniform/sub*
T0*&
_output_shapes
:`

conv_1/random_uniformAddconv_1/random_uniform/mulconv_1/random_uniform/min*
T0*&
_output_shapes
:`

conv_1/kernel
VariableV2*
shape:`*
dtype0*
	container *
shared_name *&
_output_shapes
:`
Ŕ
conv_1/kernel/AssignAssignconv_1/kernelconv_1/random_uniform*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_1/kernel*&
_output_shapes
:`

conv_1/kernel/readIdentityconv_1/kernel*
T0* 
_class
loc:@conv_1/kernel*&
_output_shapes
:`
Y
conv_1/ConstConst*
valueB`*    *
dtype0*
_output_shapes
:`
w
conv_1/bias
VariableV2*
shape:`*
dtype0*
	container *
shared_name *
_output_shapes
:`
Ľ
conv_1/bias/AssignAssignconv_1/biasconv_1/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_1/bias*
_output_shapes
:`
n
conv_1/bias/readIdentityconv_1/bias*
T0*
_class
loc:@conv_1/bias*
_output_shapes
:`
q
 conv_1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ŕ
conv_1/convolutionConv2Dinputsconv_1/kernel/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `

conv_1/BiasAddBiasAddconv_1/convolutionconv_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
]
conv_1/ReluReluconv_1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
ť
max_pooling2d_1/MaxPoolMaxPoolconv_1/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
t
conv_2/random_uniform/shapeConst*%
valueB"      `      *
dtype0*
_output_shapes
:
^
conv_2/random_uniform/minConst*
valueB
 *čŐź*
dtype0*
_output_shapes
: 
^
conv_2/random_uniform/maxConst*
valueB
 *čŐ<*
dtype0*
_output_shapes
: 
Ż
#conv_2/random_uniform/RandomUniformRandomUniformconv_2/random_uniform/shape*
seedą˙ĺ)*
seed2Ý´*
dtype0*
T0*'
_output_shapes
:`
w
conv_2/random_uniform/subSubconv_2/random_uniform/maxconv_2/random_uniform/min*
T0*
_output_shapes
: 

conv_2/random_uniform/mulMul#conv_2/random_uniform/RandomUniformconv_2/random_uniform/sub*
T0*'
_output_shapes
:`

conv_2/random_uniformAddconv_2/random_uniform/mulconv_2/random_uniform/min*
T0*'
_output_shapes
:`

conv_2/kernel
VariableV2*
shape:`*
dtype0*
	container *
shared_name *'
_output_shapes
:`
Á
conv_2/kernel/AssignAssignconv_2/kernelconv_2/random_uniform*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_2/kernel*'
_output_shapes
:`

conv_2/kernel/readIdentityconv_2/kernel*
T0* 
_class
loc:@conv_2/kernel*'
_output_shapes
:`
[
conv_2/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
y
conv_2/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ś
conv_2/bias/AssignAssignconv_2/biasconv_2/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_2/bias*
_output_shapes	
:
o
conv_2/bias/readIdentityconv_2/bias*
T0*
_class
loc:@conv_2/bias*
_output_shapes	
:
q
 conv_2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ň
conv_2/convolutionConv2Dmax_pooling2d_1/MaxPoolconv_2/kernel/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

conv_2/BiasAddBiasAddconv_2/convolutionconv_2/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
conv_2/ReluReluconv_2/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
max_pooling2d_2/MaxPoolMaxPoolconv_2/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
conv_3/random_uniform/shapeConst*%
valueB"           *
dtype0*
_output_shapes
:
^
conv_3/random_uniform/minConst*
valueB
 *Ľ2˝*
dtype0*
_output_shapes
: 
^
conv_3/random_uniform/maxConst*
valueB
 *Ľ2=*
dtype0*
_output_shapes
: 
°
#conv_3/random_uniform/RandomUniformRandomUniformconv_3/random_uniform/shape*
seedą˙ĺ)*
seed2Ż*
dtype0*
T0*(
_output_shapes
:
w
conv_3/random_uniform/subSubconv_3/random_uniform/maxconv_3/random_uniform/min*
T0*
_output_shapes
: 

conv_3/random_uniform/mulMul#conv_3/random_uniform/RandomUniformconv_3/random_uniform/sub*
T0*(
_output_shapes
:

conv_3/random_uniformAddconv_3/random_uniform/mulconv_3/random_uniform/min*
T0*(
_output_shapes
:

conv_3/kernel
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
Â
conv_3/kernel/AssignAssignconv_3/kernelconv_3/random_uniform*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_3/kernel*(
_output_shapes
:

conv_3/kernel/readIdentityconv_3/kernel*
T0* 
_class
loc:@conv_3/kernel*(
_output_shapes
:
[
conv_3/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
y
conv_3/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ś
conv_3/bias/AssignAssignconv_3/biasconv_3/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_3/bias*
_output_shapes	
:
o
conv_3/bias/readIdentityconv_3/bias*
T0*
_class
loc:@conv_3/bias*
_output_shapes	
:
q
 conv_3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ň
conv_3/convolutionConv2Dmax_pooling2d_2/MaxPoolconv_3/kernel/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

conv_3/BiasAddBiasAddconv_3/convolutionconv_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
conv_3/ReluReluconv_3/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
max_pooling2d_3/MaxPoolMaxPoolconv_3/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
conv_4/random_uniform/shapeConst*%
valueB"          *
dtype0*
_output_shapes
:
^
conv_4/random_uniform/minConst*
valueB
 *ď[ńź*
dtype0*
_output_shapes
: 
^
conv_4/random_uniform/maxConst*
valueB
 *ď[ń<*
dtype0*
_output_shapes
: 
°
#conv_4/random_uniform/RandomUniformRandomUniformconv_4/random_uniform/shape*
seedą˙ĺ)*
seed2Ćô*
dtype0*
T0*(
_output_shapes
:
w
conv_4/random_uniform/subSubconv_4/random_uniform/maxconv_4/random_uniform/min*
T0*
_output_shapes
: 

conv_4/random_uniform/mulMul#conv_4/random_uniform/RandomUniformconv_4/random_uniform/sub*
T0*(
_output_shapes
:

conv_4/random_uniformAddconv_4/random_uniform/mulconv_4/random_uniform/min*
T0*(
_output_shapes
:

conv_4/kernel
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
Â
conv_4/kernel/AssignAssignconv_4/kernelconv_4/random_uniform*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_4/kernel*(
_output_shapes
:

conv_4/kernel/readIdentityconv_4/kernel*
T0* 
_class
loc:@conv_4/kernel*(
_output_shapes
:
[
conv_4/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
y
conv_4/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ś
conv_4/bias/AssignAssignconv_4/biasconv_4/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_4/bias*
_output_shapes	
:
o
conv_4/bias/readIdentityconv_4/bias*
T0*
_class
loc:@conv_4/bias*
_output_shapes	
:
q
 conv_4/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ň
conv_4/convolutionConv2Dmax_pooling2d_3/MaxPoolconv_4/kernel/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

conv_4/BiasAddBiasAddconv_4/convolutionconv_4/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
conv_4/ReluReluconv_4/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
max_pooling2d_4/MaxPoolMaxPoolconv_4/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
conv_5/random_uniform/shapeConst*%
valueB"          *
dtype0*
_output_shapes
:
^
conv_5/random_uniform/minConst*
valueB
 *ď[ńź*
dtype0*
_output_shapes
: 
^
conv_5/random_uniform/maxConst*
valueB
 *ď[ń<*
dtype0*
_output_shapes
: 
°
#conv_5/random_uniform/RandomUniformRandomUniformconv_5/random_uniform/shape*
seedą˙ĺ)*
seed2ŐŹŐ*
dtype0*
T0*(
_output_shapes
:
w
conv_5/random_uniform/subSubconv_5/random_uniform/maxconv_5/random_uniform/min*
T0*
_output_shapes
: 

conv_5/random_uniform/mulMul#conv_5/random_uniform/RandomUniformconv_5/random_uniform/sub*
T0*(
_output_shapes
:

conv_5/random_uniformAddconv_5/random_uniform/mulconv_5/random_uniform/min*
T0*(
_output_shapes
:

conv_5/kernel
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
Â
conv_5/kernel/AssignAssignconv_5/kernelconv_5/random_uniform*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_5/kernel*(
_output_shapes
:

conv_5/kernel/readIdentityconv_5/kernel*
T0* 
_class
loc:@conv_5/kernel*(
_output_shapes
:
[
conv_5/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
y
conv_5/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ś
conv_5/bias/AssignAssignconv_5/biasconv_5/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_5/bias*
_output_shapes	
:
o
conv_5/bias/readIdentityconv_5/bias*
T0*
_class
loc:@conv_5/bias*
_output_shapes	
:
q
 conv_5/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ň
conv_5/convolutionConv2Dmax_pooling2d_4/MaxPoolconv_5/kernel/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

conv_5/BiasAddBiasAddconv_5/convolutionconv_5/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
conv_5/ReluReluconv_5/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
max_pooling2d_5/MaxPoolMaxPoolconv_5/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
flatten_1/ShapeShapemax_pooling2d_5/MaxPool*
T0*
out_type0*
_output_shapes
:
g
flatten_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ż
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
:
Y
flatten_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
\
flatten_1/stack/0Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
N*
T0*

axis *
_output_shapes
:

flatten_1/ReshapeReshapemax_pooling2d_5/MaxPoolflatten_1/stack*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
m
dense_1/random_uniform/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *×łÝ˝*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *×łÝ=*
dtype0*
_output_shapes
: 
Š
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seedą˙ĺ)*
seed2î¨W*
dtype0*
T0* 
_output_shapes
:

z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0* 
_output_shapes
:


dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0* 
_output_shapes
:


dense_1/kernel
VariableV2*
shape:
*
dtype0*
	container *
shared_name * 
_output_shapes
:

ž
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

\
dense_1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
z
dense_1/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ş
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias*
_output_shapes	
:
r
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:

dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
dense_2/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *mJž*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *mJ>*
dtype0*
_output_shapes
: 
Š
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
seedą˙ĺ)*
seed2üí*
dtype0*
T0*
_output_shapes
:	
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes
:	

dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes
:	

dense_2/kernel
VariableV2*
shape:	*
dtype0*
	container *
shared_name *
_output_shapes
:	
˝
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
|
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_2/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Š
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_2/bias*
_output_shapes
:
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:

dense_2/MatMulMatMuldense_1/Reludense_2/kernel/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
Adam/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
s
Adam/iterations
VariableV2*
shape: *
dtype0	*
	container *
shared_name *
_output_shapes
: 
ž
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
T0	*
validate_shape(*
use_locking(*"
_class
loc:@Adam/iterations*
_output_shapes
: 
v
Adam/iterations/readIdentityAdam/iterations*
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
Z
Adam/lr/initial_valueConst*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
k
Adam/lr
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 

Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/lr/readIdentityAdam/lr*
T0*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
Ž
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Adam/beta_1*
_output_shapes
: 
j
Adam/beta_1/readIdentityAdam/beta_1*
T0*
_class
loc:@Adam/beta_1*
_output_shapes
: 
^
Adam/beta_2/initial_valueConst*
valueB
 *wž?*
dtype0*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
Ž
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Adam/beta_2*
_output_shapes
: 
j
Adam/beta_2/readIdentityAdam/beta_2*
T0*
_class
loc:@Adam/beta_2*
_output_shapes
: 
]
Adam/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

Adam/decay
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
Ş
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Adam/decay*
_output_shapes
: 
g
Adam/decay/readIdentity
Adam/decay*
T0*
_class
loc:@Adam/decay*
_output_shapes
: 

dense_2_targetPlaceholder*
dtype0*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
q
dense_2_sample_weightsPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
'loss/dense_2_loss/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ľ
loss/dense_2_loss/SumSumdense_2/Softmax'loss/dense_2_loss/Sum/reduction_indices*
	keep_dims(*
T0*

Tidx0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
loss/dense_2_loss/truedivRealDivdense_2/Softmaxloss/dense_2_loss/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
loss/dense_2_loss/ConstConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
\
loss/dense_2_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
T0*
_output_shapes
: 

'loss/dense_2_loss/clip_by_value/MinimumMinimumloss/dense_2_loss/truedivloss/dense_2_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
loss/dense_2_loss/LogLogloss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
loss/dense_2_loss/mulMuldense_2_targetloss/dense_2_loss/Log*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
)loss/dense_2_loss/Sum_1/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ť
loss/dense_2_loss/Sum_1Sumloss/dense_2_loss/mul)loss/dense_2_loss/Sum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
loss/dense_2_loss/NegNegloss/dense_2_loss/Sum_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
Ş
loss/dense_2_loss/MeanMeanloss/dense_2_loss/Neg(loss/dense_2_loss/Mean/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
loss/dense_2_loss/mul_1Mulloss/dense_2_loss/Meandense_2_sample_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
loss/dense_2_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss/dense_2_loss/NotEqual/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*

SrcT0
*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
loss/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Castloss/dense_2_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/mul_1loss/dense_2_loss/Mean_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
loss/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/Mean_2Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_2*
T0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMaxArgMaxdense_2_targetmetrics/acc/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxdense_2/Softmaxmetrics/acc/ArgMax_1/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
}
training/Adam/gradients/ShapeConst*
valueB *
dtype0*
_class
loc:@loss/mul*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_class
loc:@loss/mul*
_output_shapes
: 
ś
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
Ś
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_2_loss/Mean_2*
T0*
_class
loc:@loss/mul*
_output_shapes
: 

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
ş
Ctraining/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shape*
T0*
Tshape0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
Ă
;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ShapeShapeloss/dense_2_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
Ť
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/TileTile=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape*
T0*

Tmultiples0*+
_class!
loc:@loss/dense_2_loss/Mean_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
­
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2Const*
valueB *
dtype0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
˛
;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ConstConst*
valueB: *
dtype0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
Š
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const*
	keep_dims( *
T0*

Tidx0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
´
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const_1Const*
valueB: *
dtype0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
­
<training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1Prod=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const_1*
	keep_dims( *
T0*

Tidx0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
Ž
?training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/MaximumMaximum<training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 

>training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
ß
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/floordiv*

SrcT0*

DstT0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Tile:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Cast*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul_1*
T0*
out_type0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:
ł
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*
valueB *
dtype0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: 
Ö
Ntraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivRealDiv=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivloss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:
ľ
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape*
T0*
Tshape0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/NegNegloss/dense_2_loss/mul_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Negloss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:
Ž
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: 
ź
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ShapeShapeloss/dense_2_loss/Mean*
T0*
out_type0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:
ž
<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1Shapedense_2_sample_weights*
T0*
out_type0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:
Ć
Jtraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ó
8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/mulMul@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshapedense_2_sample_weights*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/SumSum8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/mulJtraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:
Ľ
<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ő
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/mul_1Mulloss/dense_2_loss/Mean@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/mul_1Ltraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:
Ť
>training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Reshape_1Reshape:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum_1<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/Neg*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ľ
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/SizeConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
đ
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

7training/Adam/gradients/loss/dense_2_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_2_loss/Mean_grad/add8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
°
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*
valueB: *
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ź
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/startConst*
value	B : *
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
Ź
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
Ń
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/delta*

Tidx0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ť
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

8training/Adam/gradients/loss/dense_2_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/value*
T0*

index_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

Atraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_2_loss/Mean_grad/range7training/Adam/gradients/loss/dense_2_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill*
N*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
Ą
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ReshapeAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:

8training/Adam/gradients/loss/dense_2_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv*
T0*

Tmultiples0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
ť
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/Neg*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
ź
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ž
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ConstConst*
valueB: *
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ą
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
°
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*
valueB: *
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ľ
:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
Ź
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
Ű
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*

SrcT0*

DstT0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ň
6training/Adam/gradients/loss/dense_2_loss/Neg_grad/NegNeg;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truediv*
T0*(
_class
loc:@loss/dense_2_loss/Neg*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/ShapeShapeloss/dense_2_loss/mul*
T0*
out_type0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:
§
9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/SizeConst*
value	B :*
dtype0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
ň
8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/addAdd)loss/dense_2_loss/Sum_1/reduction_indices9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 

8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/modFloorMod8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/add9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ť
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape_1Const*
valueB *
dtype0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ž
@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/startConst*
value	B : *
dtype0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ž
@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/deltaConst*
value	B :*
dtype0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ö
:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/rangeRange@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/start9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/delta*

Tidx0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:
­
?training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 

9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/FillFill<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape_1?training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill/value*
T0*

index_type0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ł
Btraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitchDynamicStitch:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/mod:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill*
N*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
>training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum/yConst*
value	B :*
dtype0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ľ
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/MaximumMaximumBtraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitch>training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum/y*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:
 
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/Neg_grad/NegBtraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitch*
T0*
Tshape0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:
Ž
9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/TileTile<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Reshape=training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/floordiv*
T0*

Tmultiples0**
_class 
loc:@loss/dense_2_loss/Sum_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
8training/Adam/gradients/loss/dense_2_loss/mul_grad/ShapeShapedense_2_target*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
š
:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1Shapeloss/dense_2_loss/Log*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
ž
Htraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_2_loss/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ë
6training/Adam/gradients/loss/dense_2_loss/mul_grad/mulMul9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Tileloss/dense_2_loss/Log*
T0*(
_class
loc:@loss/dense_2_loss/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
6training/Adam/gradients/loss/dense_2_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_2_loss/mul_grad/mulHtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
Ş
:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/mul*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ć
8training/Adam/gradients/loss/dense_2_loss/mul_grad/mul_1Muldense_2_target9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Tile*
T0*(
_class
loc:@loss/dense_2_loss/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/mul_1Jtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
§
<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal
Reciprocalloss/dense_2_loss/clip_by_value=^training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1*
T0*(
_class
loc:@loss/dense_2_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulMul<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal*
T0*(
_class
loc:@loss/dense_2_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShape'loss/dense_2_loss/clip_by_value/Minimum*
T0*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
ť
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
: 
î
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shape6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul*
T0*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
Á
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
: 
Ň
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Itraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
Rtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ú
Ctraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqual6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
Etraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
É
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ú
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
ž
Ftraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
: 
ß
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapeloss/dense_2_loss/truediv*
T0*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
Ë
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
: 

Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
Ń
Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
: 
ň
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss/dense_2_loss/truedivloss/dense_2_loss/sub*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ztraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ľ
Ktraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
Mtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
é
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ú
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
Ţ
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
: 
š
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/ShapeShapedense_2/Softmax*
T0*
out_type0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
Á
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/Sum*
T0*
out_type0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
Î
Ltraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDivLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshapeloss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
ą
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape*
T0*
Tshape0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/NegNegdense_2/Softmax*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ţ
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1loss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulMulLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
ˇ
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*
Tshape0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
8training/Adam/gradients/loss/dense_2_loss/Sum_grad/ShapeShapedense_2/Softmax*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:
Ł
7training/Adam/gradients/loss/dense_2_loss/Sum_grad/SizeConst*
value	B :*
dtype0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
ę
6training/Adam/gradients/loss/dense_2_loss/Sum_grad/addAdd'loss/dense_2_loss/Sum/reduction_indices7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
ţ
6training/Adam/gradients/loss/dense_2_loss/Sum_grad/modFloorMod6training/Adam/gradients/loss/dense_2_loss/Sum_grad/add7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
§
:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape_1Const*
valueB *
dtype0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
Ş
>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/startConst*
value	B : *
dtype0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
Ş
>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/deltaConst*
value	B :*
dtype0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
Ě
8training/Adam/gradients/loss/dense_2_loss/Sum_grad/rangeRange>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/start7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/delta*

Tidx0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:
Š
=training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill/valueConst*
value	B :*
dtype0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 

7training/Adam/gradients/loss/dense_2_loss/Sum_grad/FillFill:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape_1=training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill/value*
T0*

index_type0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 

@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitchDynamicStitch8training/Adam/gradients/loss/dense_2_loss/Sum_grad/range6training/Adam/gradients/loss/dense_2_loss/Sum_grad/mod8training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill*
N*
T0*(
_class
loc:@loss/dense_2_loss/Sum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
<training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum/yConst*
value	B :*
dtype0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 

:training/Adam/gradients/loss/dense_2_loss/Sum_grad/MaximumMaximum@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitch<training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum/y*
T0*(
_class
loc:@loss/dense_2_loss/Sum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

;training/Adam/gradients/loss/dense_2_loss/Sum_grad/floordivFloorDiv8training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:
¤
:training/Adam/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitch*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:
Ś
7training/Adam/gradients/loss/dense_2_loss/Sum_grad/TileTile:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Sum_grad/floordiv*
T0*

Tmultiples0*(
_class
loc:@loss/dense_2_loss/Sum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

training/Adam/gradients/AddNAddN>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Tile*
N*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
0training/Adam/gradients/dense_2/Softmax_grad/mulMultraining/Adam/gradients/AddNdense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
Btraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0*"
_class
loc:@dense_2/Softmax*
_output_shapes
:

0training/Adam/gradients/dense_2/Softmax_grad/SumSum0training/Adam/gradients/dense_2/Softmax_grad/mulBtraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0*"
_class
loc:@dense_2/Softmax*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
:training/Adam/gradients/dense_2/Softmax_grad/Reshape/shapeConst*
valueB"˙˙˙˙   *
dtype0*"
_class
loc:@dense_2/Softmax*
_output_shapes
:

4training/Adam/gradients/dense_2/Softmax_grad/ReshapeReshape0training/Adam/gradients/dense_2/Softmax_grad/Sum:training/Adam/gradients/dense_2/Softmax_grad/Reshape/shape*
T0*
Tshape0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
0training/Adam/gradients/dense_2/Softmax_grad/subSubtraining/Adam/gradients/AddN4training/Adam/gradients/dense_2/Softmax_grad/Reshape*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ň
2training/Adam/gradients/dense_2/Softmax_grad/mul_1Mul0training/Adam/gradients/dense_2/Softmax_grad/subdense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
T0*
data_formatNHWC*"
_class
loc:@dense_2/BiasAdd*
_output_shapes
:

2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Softmax_grad/mul_1dense_2/kernel/read*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/Relu2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_2/MatMul*
_output_shapes
:	
Ô
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_2/MatMul_grad/MatMuldense_1/Relu*
T0*
_class
loc:@dense_1/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ü
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*"
_class
loc:@dense_1/BiasAdd*
_output_shapes	
:

2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_1/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMulflatten_1/Reshape2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_1/MatMul* 
_output_shapes
:

ą
4training/Adam/gradients/flatten_1/Reshape_grad/ShapeShapemax_pooling2d_5/MaxPool*
T0*
out_type0*$
_class
loc:@flatten_1/Reshape*
_output_shapes
:

6training/Adam/gradients/flatten_1/Reshape_grad/ReshapeReshape2training/Adam/gradients/dense_1/MatMul_grad/MatMul4training/Adam/gradients/flatten_1/Reshape_grad/Shape*
T0*
Tshape0*$
_class
loc:@flatten_1/Reshape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
@training/Adam/gradients/max_pooling2d_5/MaxPool_grad/MaxPoolGradMaxPoolGradconv_5/Relumax_pooling2d_5/MaxPool6training/Adam/gradients/flatten_1/Reshape_grad/Reshape*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*
T0**
_class 
loc:@max_pooling2d_5/MaxPool*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
1training/Adam/gradients/conv_5/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_5/MaxPool_grad/MaxPoolGradconv_5/Relu*
T0*
_class
loc:@conv_5/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
7training/Adam/gradients/conv_5/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/conv_5/Relu_grad/ReluGrad*
T0*
data_formatNHWC*!
_class
loc:@conv_5/BiasAdd*
_output_shapes	
:
Ř
6training/Adam/gradients/conv_5/convolution_grad/ShapeNShapeNmax_pooling2d_4/MaxPoolconv_5/kernel/read*
N*
T0*
out_type0*%
_class
loc:@conv_5/convolution* 
_output_shapes
::
ľ
5training/Adam/gradients/conv_5/convolution_grad/ConstConst*%
valueB"          *
dtype0*%
_class
loc:@conv_5/convolution*
_output_shapes
:
Š
Ctraining/Adam/gradients/conv_5/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6training/Adam/gradients/conv_5/convolution_grad/ShapeNconv_5/kernel/read1training/Adam/gradients/conv_5/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_5/convolution*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
Dtraining/Adam/gradients/conv_5/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_4/MaxPool5training/Adam/gradients/conv_5/convolution_grad/Const1training/Adam/gradients/conv_5/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_5/convolution*(
_output_shapes
:
ó
@training/Adam/gradients/max_pooling2d_4/MaxPool_grad/MaxPoolGradMaxPoolGradconv_4/Relumax_pooling2d_4/MaxPoolCtraining/Adam/gradients/conv_5/convolution_grad/Conv2DBackpropInput*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*
T0**
_class 
loc:@max_pooling2d_4/MaxPool*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
1training/Adam/gradients/conv_4/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_4/MaxPool_grad/MaxPoolGradconv_4/Relu*
T0*
_class
loc:@conv_4/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
7training/Adam/gradients/conv_4/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/conv_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*!
_class
loc:@conv_4/BiasAdd*
_output_shapes	
:
Ř
6training/Adam/gradients/conv_4/convolution_grad/ShapeNShapeNmax_pooling2d_3/MaxPoolconv_4/kernel/read*
N*
T0*
out_type0*%
_class
loc:@conv_4/convolution* 
_output_shapes
::
ľ
5training/Adam/gradients/conv_4/convolution_grad/ConstConst*%
valueB"          *
dtype0*%
_class
loc:@conv_4/convolution*
_output_shapes
:
Š
Ctraining/Adam/gradients/conv_4/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6training/Adam/gradients/conv_4/convolution_grad/ShapeNconv_4/kernel/read1training/Adam/gradients/conv_4/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_4/convolution*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
Dtraining/Adam/gradients/conv_4/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_3/MaxPool5training/Adam/gradients/conv_4/convolution_grad/Const1training/Adam/gradients/conv_4/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_4/convolution*(
_output_shapes
:
ó
@training/Adam/gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGradconv_3/Relumax_pooling2d_3/MaxPoolCtraining/Adam/gradients/conv_4/convolution_grad/Conv2DBackpropInput*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*
T0**
_class 
loc:@max_pooling2d_3/MaxPool*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
1training/Adam/gradients/conv_3/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradconv_3/Relu*
T0*
_class
loc:@conv_3/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
7training/Adam/gradients/conv_3/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/conv_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*!
_class
loc:@conv_3/BiasAdd*
_output_shapes	
:
Ř
6training/Adam/gradients/conv_3/convolution_grad/ShapeNShapeNmax_pooling2d_2/MaxPoolconv_3/kernel/read*
N*
T0*
out_type0*%
_class
loc:@conv_3/convolution* 
_output_shapes
::
ľ
5training/Adam/gradients/conv_3/convolution_grad/ConstConst*%
valueB"           *
dtype0*%
_class
loc:@conv_3/convolution*
_output_shapes
:
Š
Ctraining/Adam/gradients/conv_3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6training/Adam/gradients/conv_3/convolution_grad/ShapeNconv_3/kernel/read1training/Adam/gradients/conv_3/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_3/convolution*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
Dtraining/Adam/gradients/conv_3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_2/MaxPool5training/Adam/gradients/conv_3/convolution_grad/Const1training/Adam/gradients/conv_3/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_3/convolution*(
_output_shapes
:
ó
@training/Adam/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradconv_2/Relumax_pooling2d_2/MaxPoolCtraining/Adam/gradients/conv_3/convolution_grad/Conv2DBackpropInput*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
1training/Adam/gradients/conv_2/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradconv_2/Relu*
T0*
_class
loc:@conv_2/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
7training/Adam/gradients/conv_2/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/conv_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*!
_class
loc:@conv_2/BiasAdd*
_output_shapes	
:
Ř
6training/Adam/gradients/conv_2/convolution_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv_2/kernel/read*
N*
T0*
out_type0*%
_class
loc:@conv_2/convolution* 
_output_shapes
::
ľ
5training/Adam/gradients/conv_2/convolution_grad/ConstConst*%
valueB"      `      *
dtype0*%
_class
loc:@conv_2/convolution*
_output_shapes
:
¨
Ctraining/Adam/gradients/conv_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6training/Adam/gradients/conv_2/convolution_grad/ShapeNconv_2/kernel/read1training/Adam/gradients/conv_2/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_2/convolution*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ś
Dtraining/Adam/gradients/conv_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool5training/Adam/gradients/conv_2/convolution_grad/Const1training/Adam/gradients/conv_2/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_2/convolution*'
_output_shapes
:`
ň
@training/Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv_1/Relumax_pooling2d_1/MaxPoolCtraining/Adam/gradients/conv_2/convolution_grad/Conv2DBackpropInput*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*
T0**
_class 
loc:@max_pooling2d_1/MaxPool*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
ć
1training/Adam/gradients/conv_1/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv_1/Relu*
T0*
_class
loc:@conv_1/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
Ř
7training/Adam/gradients/conv_1/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/conv_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*!
_class
loc:@conv_1/BiasAdd*
_output_shapes
:`
Ç
6training/Adam/gradients/conv_1/convolution_grad/ShapeNShapeNinputsconv_1/kernel/read*
N*
T0*
out_type0*%
_class
loc:@conv_1/convolution* 
_output_shapes
::
ľ
5training/Adam/gradients/conv_1/convolution_grad/ConstConst*%
valueB"         `   *
dtype0*%
_class
loc:@conv_1/convolution*
_output_shapes
:
¨
Ctraining/Adam/gradients/conv_1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6training/Adam/gradients/conv_1/convolution_grad/ShapeNconv_1/kernel/read1training/Adam/gradients/conv_1/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_1/convolution*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  

Dtraining/Adam/gradients/conv_1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterinputs5training/Adam/gradients/conv_1/convolution_grad/Const1training/Adam/gradients/conv_1/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_1/convolution*&
_output_shapes
:`
_
training/Adam/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ź
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*
T0	*
use_locking( *"
_class
loc:@Adam/iterations*
_output_shapes
: 
`
training/Adam/CastCastAdam/iterations/read*

SrcT0	*

DstT0*
_output_shapes
: 
X
training/Adam/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
X
training/Adam/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
T0*
_output_shapes
: 

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
`
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
T0*
_output_shapes
: 
|
#training/Adam/zeros/shape_as_tensorConst*%
valueB"         `   *
dtype0*
_output_shapes
:
^
training/Adam/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zerosFill#training/Adam/zeros/shape_as_tensortraining/Adam/zeros/Const*
T0*

index_type0*&
_output_shapes
:`

training/Adam/Variable
VariableV2*
shape:`*
dtype0*
	container *
shared_name *&
_output_shapes
:`
Ů
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@training/Adam/Variable*&
_output_shapes
:`

training/Adam/Variable/readIdentitytraining/Adam/Variable*
T0*)
_class
loc:@training/Adam/Variable*&
_output_shapes
:`
o
%training/Adam/zeros_1/shape_as_tensorConst*
valueB:`*
dtype0*
_output_shapes
:
`
training/Adam/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_1Fill%training/Adam/zeros_1/shape_as_tensortraining/Adam/zeros_1/Const*
T0*

index_type0*
_output_shapes
:`

training/Adam/Variable_1
VariableV2*
shape:`*
dtype0*
	container *
shared_name *
_output_shapes
:`
Ő
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
:`

training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
:`
~
%training/Adam/zeros_2/shape_as_tensorConst*%
valueB"      `      *
dtype0*
_output_shapes
:
`
training/Adam/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ľ
training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
T0*

index_type0*'
_output_shapes
:`

training/Adam/Variable_2
VariableV2*
shape:`*
dtype0*
	container *
shared_name *'
_output_shapes
:`
â
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_2*'
_output_shapes
:`
˘
training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
T0*+
_class!
loc:@training/Adam/Variable_2*'
_output_shapes
:`
p
%training/Adam/zeros_3/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_3Fill%training/Adam/zeros_3/shape_as_tensortraining/Adam/zeros_3/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_3
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ö
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes	
:

training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
T0*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes	
:
~
%training/Adam/zeros_4/shape_as_tensorConst*%
valueB"           *
dtype0*
_output_shapes
:
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ś
training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0*(
_output_shapes
:
 
training/Adam/Variable_4
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
ă
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_4*(
_output_shapes
:
Ł
training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
T0*+
_class!
loc:@training/Adam/Variable_4*(
_output_shapes
:
p
%training/Adam/zeros_5/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_5/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_5Fill%training/Adam/zeros_5/shape_as_tensortraining/Adam/zeros_5/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_5
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ö
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes	
:

training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes	
:
~
%training/Adam/zeros_6/shape_as_tensorConst*%
valueB"          *
dtype0*
_output_shapes
:
`
training/Adam/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ś
training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*
T0*

index_type0*(
_output_shapes
:
 
training/Adam/Variable_6
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
ă
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_6*(
_output_shapes
:
Ł
training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
T0*+
_class!
loc:@training/Adam/Variable_6*(
_output_shapes
:
p
%training/Adam/zeros_7/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_7/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_7Fill%training/Adam/zeros_7/shape_as_tensortraining/Adam/zeros_7/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_7
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ö
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes	
:

training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes	
:
~
%training/Adam/zeros_8/shape_as_tensorConst*%
valueB"          *
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ś
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*(
_output_shapes
:
 
training/Adam/Variable_8
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
ă
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_8*(
_output_shapes
:
Ł
training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
T0*+
_class!
loc:@training/Adam/Variable_8*(
_output_shapes
:
p
%training/Adam/zeros_9/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_9/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_9
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ö
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes	
:

training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes	
:
w
&training/Adam/zeros_10/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ą
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0* 
_output_shapes
:


training/Adam/Variable_10
VariableV2*
shape:
*
dtype0*
	container *
shared_name * 
_output_shapes
:

ß
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_10* 
_output_shapes
:


training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
T0*,
_class"
 loc:@training/Adam/Variable_10* 
_output_shapes
:

q
&training/Adam/zeros_11/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_11/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_11
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ú
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes	
:

training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes	
:
w
&training/Adam/zeros_12/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
 
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*
T0*

index_type0*
_output_shapes
:	

training/Adam/Variable_12
VariableV2*
shape:	*
dtype0*
	container *
shared_name *
_output_shapes
:	
Ţ
 training/Adam/Variable_12/AssignAssigntraining/Adam/Variable_12training/Adam/zeros_12*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes
:	

training/Adam/Variable_12/readIdentitytraining/Adam/Variable_12*
T0*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes
:	
p
&training/Adam/zeros_13/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_13/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_13Fill&training/Adam/zeros_13/shape_as_tensortraining/Adam/zeros_13/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_13
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_13/AssignAssigntraining/Adam/Variable_13training/Adam/zeros_13*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_13*
_output_shapes
:

training/Adam/Variable_13/readIdentitytraining/Adam/Variable_13*
T0*,
_class"
 loc:@training/Adam/Variable_13*
_output_shapes
:

&training/Adam/zeros_14/shape_as_tensorConst*%
valueB"         `   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_14Fill&training/Adam/zeros_14/shape_as_tensortraining/Adam/zeros_14/Const*
T0*

index_type0*&
_output_shapes
:`

training/Adam/Variable_14
VariableV2*
shape:`*
dtype0*
	container *
shared_name *&
_output_shapes
:`
ĺ
 training/Adam/Variable_14/AssignAssigntraining/Adam/Variable_14training/Adam/zeros_14*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_14*&
_output_shapes
:`
¤
training/Adam/Variable_14/readIdentitytraining/Adam/Variable_14*
T0*,
_class"
 loc:@training/Adam/Variable_14*&
_output_shapes
:`
p
&training/Adam/zeros_15/shape_as_tensorConst*
valueB:`*
dtype0*
_output_shapes
:
a
training/Adam/zeros_15/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_15Fill&training/Adam/zeros_15/shape_as_tensortraining/Adam/zeros_15/Const*
T0*

index_type0*
_output_shapes
:`

training/Adam/Variable_15
VariableV2*
shape:`*
dtype0*
	container *
shared_name *
_output_shapes
:`
Ů
 training/Adam/Variable_15/AssignAssigntraining/Adam/Variable_15training/Adam/zeros_15*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_15*
_output_shapes
:`

training/Adam/Variable_15/readIdentitytraining/Adam/Variable_15*
T0*,
_class"
 loc:@training/Adam/Variable_15*
_output_shapes
:`

&training/Adam/zeros_16/shape_as_tensorConst*%
valueB"      `      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_16/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¨
training/Adam/zeros_16Fill&training/Adam/zeros_16/shape_as_tensortraining/Adam/zeros_16/Const*
T0*

index_type0*'
_output_shapes
:`

training/Adam/Variable_16
VariableV2*
shape:`*
dtype0*
	container *
shared_name *'
_output_shapes
:`
ć
 training/Adam/Variable_16/AssignAssigntraining/Adam/Variable_16training/Adam/zeros_16*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_16*'
_output_shapes
:`
Ľ
training/Adam/Variable_16/readIdentitytraining/Adam/Variable_16*
T0*,
_class"
 loc:@training/Adam/Variable_16*'
_output_shapes
:`
q
&training/Adam/zeros_17/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_17/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_17Fill&training/Adam/zeros_17/shape_as_tensortraining/Adam/zeros_17/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_17
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ú
 training/Adam/Variable_17/AssignAssigntraining/Adam/Variable_17training/Adam/zeros_17*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_17*
_output_shapes	
:

training/Adam/Variable_17/readIdentitytraining/Adam/Variable_17*
T0*,
_class"
 loc:@training/Adam/Variable_17*
_output_shapes	
:

&training/Adam/zeros_18/shape_as_tensorConst*%
valueB"           *
dtype0*
_output_shapes
:
a
training/Adam/zeros_18/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Š
training/Adam/zeros_18Fill&training/Adam/zeros_18/shape_as_tensortraining/Adam/zeros_18/Const*
T0*

index_type0*(
_output_shapes
:
Ą
training/Adam/Variable_18
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
ç
 training/Adam/Variable_18/AssignAssigntraining/Adam/Variable_18training/Adam/zeros_18*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_18*(
_output_shapes
:
Ś
training/Adam/Variable_18/readIdentitytraining/Adam/Variable_18*
T0*,
_class"
 loc:@training/Adam/Variable_18*(
_output_shapes
:
q
&training/Adam/zeros_19/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_19/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_19Fill&training/Adam/zeros_19/shape_as_tensortraining/Adam/zeros_19/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_19
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ú
 training/Adam/Variable_19/AssignAssigntraining/Adam/Variable_19training/Adam/zeros_19*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes	
:

training/Adam/Variable_19/readIdentitytraining/Adam/Variable_19*
T0*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes	
:

&training/Adam/zeros_20/shape_as_tensorConst*%
valueB"          *
dtype0*
_output_shapes
:
a
training/Adam/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Š
training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
T0*

index_type0*(
_output_shapes
:
Ą
training/Adam/Variable_20
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
ç
 training/Adam/Variable_20/AssignAssigntraining/Adam/Variable_20training/Adam/zeros_20*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_20*(
_output_shapes
:
Ś
training/Adam/Variable_20/readIdentitytraining/Adam/Variable_20*
T0*,
_class"
 loc:@training/Adam/Variable_20*(
_output_shapes
:
q
&training/Adam/zeros_21/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_21/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_21Fill&training/Adam/zeros_21/shape_as_tensortraining/Adam/zeros_21/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_21
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ú
 training/Adam/Variable_21/AssignAssigntraining/Adam/Variable_21training/Adam/zeros_21*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_21*
_output_shapes	
:

training/Adam/Variable_21/readIdentitytraining/Adam/Variable_21*
T0*,
_class"
 loc:@training/Adam/Variable_21*
_output_shapes	
:

&training/Adam/zeros_22/shape_as_tensorConst*%
valueB"          *
dtype0*
_output_shapes
:
a
training/Adam/zeros_22/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Š
training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*
T0*

index_type0*(
_output_shapes
:
Ą
training/Adam/Variable_22
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
ç
 training/Adam/Variable_22/AssignAssigntraining/Adam/Variable_22training/Adam/zeros_22*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_22*(
_output_shapes
:
Ś
training/Adam/Variable_22/readIdentitytraining/Adam/Variable_22*
T0*,
_class"
 loc:@training/Adam/Variable_22*(
_output_shapes
:
q
&training/Adam/zeros_23/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_23/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_23Fill&training/Adam/zeros_23/shape_as_tensortraining/Adam/zeros_23/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_23
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ú
 training/Adam/Variable_23/AssignAssigntraining/Adam/Variable_23training/Adam/zeros_23*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes	
:

training/Adam/Variable_23/readIdentitytraining/Adam/Variable_23*
T0*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes	
:
w
&training/Adam/zeros_24/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
a
training/Adam/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ą
training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*
T0*

index_type0* 
_output_shapes
:


training/Adam/Variable_24
VariableV2*
shape:
*
dtype0*
	container *
shared_name * 
_output_shapes
:

ß
 training/Adam/Variable_24/AssignAssigntraining/Adam/Variable_24training/Adam/zeros_24*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_24* 
_output_shapes
:


training/Adam/Variable_24/readIdentitytraining/Adam/Variable_24*
T0*,
_class"
 loc:@training/Adam/Variable_24* 
_output_shapes
:

q
&training/Adam/zeros_25/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_25/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_25Fill&training/Adam/zeros_25/shape_as_tensortraining/Adam/zeros_25/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_25
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ú
 training/Adam/Variable_25/AssignAssigntraining/Adam/Variable_25training/Adam/zeros_25*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes	
:

training/Adam/Variable_25/readIdentitytraining/Adam/Variable_25*
T0*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes	
:
w
&training/Adam/zeros_26/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_26/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
 
training/Adam/zeros_26Fill&training/Adam/zeros_26/shape_as_tensortraining/Adam/zeros_26/Const*
T0*

index_type0*
_output_shapes
:	

training/Adam/Variable_26
VariableV2*
shape:	*
dtype0*
	container *
shared_name *
_output_shapes
:	
Ţ
 training/Adam/Variable_26/AssignAssigntraining/Adam/Variable_26training/Adam/zeros_26*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes
:	

training/Adam/Variable_26/readIdentitytraining/Adam/Variable_26*
T0*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes
:	
p
&training/Adam/zeros_27/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_27/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_27Fill&training/Adam/zeros_27/shape_as_tensortraining/Adam/zeros_27/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_27
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_27/AssignAssigntraining/Adam/Variable_27training/Adam/zeros_27*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes
:

training/Adam/Variable_27/readIdentitytraining/Adam/Variable_27*
T0*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes
:
p
&training/Adam/zeros_28/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_28/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_28Fill&training/Adam/zeros_28/shape_as_tensortraining/Adam/zeros_28/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_28
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_28/AssignAssigntraining/Adam/Variable_28training/Adam/zeros_28*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_28*
_output_shapes
:

training/Adam/Variable_28/readIdentitytraining/Adam/Variable_28*
T0*,
_class"
 loc:@training/Adam/Variable_28*
_output_shapes
:
p
&training/Adam/zeros_29/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_29/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_29Fill&training/Adam/zeros_29/shape_as_tensortraining/Adam/zeros_29/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_29
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_29/AssignAssigntraining/Adam/Variable_29training/Adam/zeros_29*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_29*
_output_shapes
:

training/Adam/Variable_29/readIdentitytraining/Adam/Variable_29*
T0*,
_class"
 loc:@training/Adam/Variable_29*
_output_shapes
:
p
&training/Adam/zeros_30/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_30/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_30Fill&training/Adam/zeros_30/shape_as_tensortraining/Adam/zeros_30/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_30
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_30/AssignAssigntraining/Adam/Variable_30training/Adam/zeros_30*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_30*
_output_shapes
:

training/Adam/Variable_30/readIdentitytraining/Adam/Variable_30*
T0*,
_class"
 loc:@training/Adam/Variable_30*
_output_shapes
:
p
&training/Adam/zeros_31/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_31/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_31Fill&training/Adam/zeros_31/shape_as_tensortraining/Adam/zeros_31/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_31
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_31/AssignAssigntraining/Adam/Variable_31training/Adam/zeros_31*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_31*
_output_shapes
:

training/Adam/Variable_31/readIdentitytraining/Adam/Variable_31*
T0*,
_class"
 loc:@training/Adam/Variable_31*
_output_shapes
:
p
&training/Adam/zeros_32/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_32/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_32Fill&training/Adam/zeros_32/shape_as_tensortraining/Adam/zeros_32/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_32
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_32/AssignAssigntraining/Adam/Variable_32training/Adam/zeros_32*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_32*
_output_shapes
:

training/Adam/Variable_32/readIdentitytraining/Adam/Variable_32*
T0*,
_class"
 loc:@training/Adam/Variable_32*
_output_shapes
:
p
&training/Adam/zeros_33/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_33/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_33Fill&training/Adam/zeros_33/shape_as_tensortraining/Adam/zeros_33/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_33
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_33/AssignAssigntraining/Adam/Variable_33training/Adam/zeros_33*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_33*
_output_shapes
:

training/Adam/Variable_33/readIdentitytraining/Adam/Variable_33*
T0*,
_class"
 loc:@training/Adam/Variable_33*
_output_shapes
:
p
&training/Adam/zeros_34/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_34/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_34Fill&training/Adam/zeros_34/shape_as_tensortraining/Adam/zeros_34/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_34
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_34/AssignAssigntraining/Adam/Variable_34training/Adam/zeros_34*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_34*
_output_shapes
:

training/Adam/Variable_34/readIdentitytraining/Adam/Variable_34*
T0*,
_class"
 loc:@training/Adam/Variable_34*
_output_shapes
:
p
&training/Adam/zeros_35/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_35/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_35Fill&training/Adam/zeros_35/shape_as_tensortraining/Adam/zeros_35/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_35
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_35/AssignAssigntraining/Adam/Variable_35training/Adam/zeros_35*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_35*
_output_shapes
:

training/Adam/Variable_35/readIdentitytraining/Adam/Variable_35*
T0*,
_class"
 loc:@training/Adam/Variable_35*
_output_shapes
:
p
&training/Adam/zeros_36/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_36/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_36Fill&training/Adam/zeros_36/shape_as_tensortraining/Adam/zeros_36/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_36
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_36/AssignAssigntraining/Adam/Variable_36training/Adam/zeros_36*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_36*
_output_shapes
:

training/Adam/Variable_36/readIdentitytraining/Adam/Variable_36*
T0*,
_class"
 loc:@training/Adam/Variable_36*
_output_shapes
:
p
&training/Adam/zeros_37/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_37/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_37Fill&training/Adam/zeros_37/shape_as_tensortraining/Adam/zeros_37/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_37
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_37/AssignAssigntraining/Adam/Variable_37training/Adam/zeros_37*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_37*
_output_shapes
:

training/Adam/Variable_37/readIdentitytraining/Adam/Variable_37*
T0*,
_class"
 loc:@training/Adam/Variable_37*
_output_shapes
:
p
&training/Adam/zeros_38/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_38/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_38Fill&training/Adam/zeros_38/shape_as_tensortraining/Adam/zeros_38/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_38
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_38/AssignAssigntraining/Adam/Variable_38training/Adam/zeros_38*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_38*
_output_shapes
:

training/Adam/Variable_38/readIdentitytraining/Adam/Variable_38*
T0*,
_class"
 loc:@training/Adam/Variable_38*
_output_shapes
:
p
&training/Adam/zeros_39/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_39/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_39Fill&training/Adam/zeros_39/shape_as_tensortraining/Adam/zeros_39/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_39
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_39/AssignAssigntraining/Adam/Variable_39training/Adam/zeros_39*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_39*
_output_shapes
:

training/Adam/Variable_39/readIdentitytraining/Adam/Variable_39*
T0*,
_class"
 loc:@training/Adam/Variable_39*
_output_shapes
:
p
&training/Adam/zeros_40/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_40/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_40Fill&training/Adam/zeros_40/shape_as_tensortraining/Adam/zeros_40/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_40
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_40/AssignAssigntraining/Adam/Variable_40training/Adam/zeros_40*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_40*
_output_shapes
:

training/Adam/Variable_40/readIdentitytraining/Adam/Variable_40*
T0*,
_class"
 loc:@training/Adam/Variable_40*
_output_shapes
:
p
&training/Adam/zeros_41/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_41/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_41Fill&training/Adam/zeros_41/shape_as_tensortraining/Adam/zeros_41/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_41
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_41/AssignAssigntraining/Adam/Variable_41training/Adam/zeros_41*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_41*
_output_shapes
:

training/Adam/Variable_41/readIdentitytraining/Adam/Variable_41*
T0*,
_class"
 loc:@training/Adam/Variable_41*
_output_shapes
:
z
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*&
_output_shapes
:`
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 
Ś
training/Adam/mul_2Multraining/Adam/sub_2Dtraining/Adam/gradients/conv_1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:`
u
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*&
_output_shapes
:`
}
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_14/read*
T0*&
_output_shapes
:`
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/SquareSquareDtraining/Adam/gradients/conv_1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:`
v
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*&
_output_shapes
:`
u
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*&
_output_shapes
:`
s
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*&
_output_shapes
:`
Z
training/Adam/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_3Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*
T0*&
_output_shapes
:`

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
T0*&
_output_shapes
:`
l
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*&
_output_shapes
:`
Z
training/Adam/add_3/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
x
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*&
_output_shapes
:`
}
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*&
_output_shapes
:`
x
training/Adam/sub_4Subconv_1/kernel/readtraining/Adam/truediv_1*
T0*&
_output_shapes
:`
Đ
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
T0*
validate_shape(*
use_locking(*)
_class
loc:@training/Adam/Variable*&
_output_shapes
:`
Ř
training/Adam/Assign_1Assigntraining/Adam/Variable_14training/Adam/add_2*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_14*&
_output_shapes
:`
Ŕ
training/Adam/Assign_2Assignconv_1/kerneltraining/Adam/sub_4*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_1/kernel*&
_output_shapes
:`
p
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
T0*
_output_shapes
:`
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_57training/Adam/gradients/conv_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
:`
q
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_15/read*
T0*
_output_shapes
:`
Z
training/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
T0*
_output_shapes
: 
~
training/Adam/Square_1Square7training/Adam/gradients/conv_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
:`
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
:`
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes
:`
Z
training/Adam/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_5Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
T0*
_output_shapes
:`

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
T0*
_output_shapes
:`
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
:`
Z
training/Adam/add_6/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes
:`
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes
:`
j
training/Adam/sub_7Subconv_1/bias/readtraining/Adam/truediv_2*
T0*
_output_shapes
:`
Ę
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
:`
Ě
training/Adam/Assign_4Assigntraining/Adam/Variable_15training/Adam/add_5*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_15*
_output_shapes
:`
°
training/Adam/Assign_5Assignconv_1/biastraining/Adam/sub_7*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_1/bias*
_output_shapes
:`
~
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
T0*'
_output_shapes
:`
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
T0*
_output_shapes
: 
¨
training/Adam/mul_12Multraining/Adam/sub_8Dtraining/Adam/gradients/conv_2/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:`
x
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*'
_output_shapes
:`

training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_16/read*
T0*'
_output_shapes
:`
Z
training/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_2SquareDtraining/Adam/gradients/conv_2/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:`
z
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*'
_output_shapes
:`
x
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*'
_output_shapes
:`
u
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*'
_output_shapes
:`
Z
training/Adam/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_7Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
T0*'
_output_shapes
:`

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
T0*'
_output_shapes
:`
m
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*'
_output_shapes
:`
Z
training/Adam/add_9/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
y
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*'
_output_shapes
:`

training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*'
_output_shapes
:`
z
training/Adam/sub_10Subconv_2/kernel/readtraining/Adam/truediv_3*
T0*'
_output_shapes
:`
×
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_2*'
_output_shapes
:`
Ů
training/Adam/Assign_7Assigntraining/Adam/Variable_16training/Adam/add_8*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_16*'
_output_shapes
:`
Â
training/Adam/Assign_8Assignconv_2/kerneltraining/Adam/sub_10*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_2/kernel*'
_output_shapes
:`
r
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes	
:
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_17Multraining/Adam/sub_117training/Adam/gradients/conv_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes	
:
s
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_17/read*
T0*
_output_shapes	
:
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_3Square7training/Adam/gradients/conv_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes	
:
m
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes	
:
j
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes	
:
Z
training/Adam/Const_8Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_9Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
T0*
_output_shapes	
:

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
T0*
_output_shapes	
:
a
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes	
:
[
training/Adam/add_12/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes	
:
t
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes	
:
l
training/Adam/sub_13Subconv_2/bias/readtraining/Adam/truediv_4*
T0*
_output_shapes	
:
Ě
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes	
:
Ď
training/Adam/Assign_10Assigntraining/Adam/Variable_17training/Adam/add_11*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_17*
_output_shapes	
:
ł
training/Adam/Assign_11Assignconv_2/biastraining/Adam/sub_13*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_2/bias*
_output_shapes	
:

training/Adam/mul_21MulAdam/beta_1/readtraining/Adam/Variable_4/read*
T0*(
_output_shapes
:
[
training/Adam/sub_14/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_14Subtraining/Adam/sub_14/xAdam/beta_1/read*
T0*
_output_shapes
: 
Ş
training/Adam/mul_22Multraining/Adam/sub_14Dtraining/Adam/gradients/conv_3/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
z
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*(
_output_shapes
:

training/Adam/mul_23MulAdam/beta_2/readtraining/Adam/Variable_18/read*
T0*(
_output_shapes
:
[
training/Adam/sub_15/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_15Subtraining/Adam/sub_15/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_4SquareDtraining/Adam/gradients/conv_3/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
|
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*(
_output_shapes
:
z
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*(
_output_shapes
:
w
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*(
_output_shapes
:
[
training/Adam/Const_10Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_11Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_11*
T0*(
_output_shapes
:

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_10*
T0*(
_output_shapes
:
n
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*(
_output_shapes
:
[
training/Adam/add_15/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
|
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*(
_output_shapes
:

training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0*(
_output_shapes
:
{
training/Adam/sub_16Subconv_3/kernel/readtraining/Adam/truediv_5*
T0*(
_output_shapes
:
Ú
training/Adam/Assign_12Assigntraining/Adam/Variable_4training/Adam/add_13*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_4*(
_output_shapes
:
Ü
training/Adam/Assign_13Assigntraining/Adam/Variable_18training/Adam/add_14*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_18*(
_output_shapes
:
Ä
training/Adam/Assign_14Assignconv_3/kerneltraining/Adam/sub_16*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_3/kernel*(
_output_shapes
:
r
training/Adam/mul_26MulAdam/beta_1/readtraining/Adam/Variable_5/read*
T0*
_output_shapes	
:
[
training/Adam/sub_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_17Subtraining/Adam/sub_17/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_27Multraining/Adam/sub_177training/Adam/gradients/conv_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes	
:
s
training/Adam/mul_28MulAdam/beta_2/readtraining/Adam/Variable_19/read*
T0*
_output_shapes	
:
[
training/Adam/sub_18/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_18Subtraining/Adam/sub_18/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_5Square7training/Adam/gradients/conv_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
T0*
_output_shapes	
:
m
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes	
:
j
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
T0*
_output_shapes	
:
[
training/Adam/Const_12Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_13Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_13*
T0*
_output_shapes	
:

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_12*
T0*
_output_shapes	
:
a
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes	
:
[
training/Adam/add_18/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*
_output_shapes	
:
t
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*
_output_shapes	
:
l
training/Adam/sub_19Subconv_3/bias/readtraining/Adam/truediv_6*
T0*
_output_shapes	
:
Í
training/Adam/Assign_15Assigntraining/Adam/Variable_5training/Adam/add_16*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes	
:
Ď
training/Adam/Assign_16Assigntraining/Adam/Variable_19training/Adam/add_17*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes	
:
ł
training/Adam/Assign_17Assignconv_3/biastraining/Adam/sub_19*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_3/bias*
_output_shapes	
:

training/Adam/mul_31MulAdam/beta_1/readtraining/Adam/Variable_6/read*
T0*(
_output_shapes
:
[
training/Adam/sub_20/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_20Subtraining/Adam/sub_20/xAdam/beta_1/read*
T0*
_output_shapes
: 
Ş
training/Adam/mul_32Multraining/Adam/sub_20Dtraining/Adam/gradients/conv_4/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
z
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
T0*(
_output_shapes
:

training/Adam/mul_33MulAdam/beta_2/readtraining/Adam/Variable_20/read*
T0*(
_output_shapes
:
[
training/Adam/sub_21/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_21Subtraining/Adam/sub_21/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_6SquareDtraining/Adam/gradients/conv_4/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
|
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
T0*(
_output_shapes
:
z
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
T0*(
_output_shapes
:
w
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
T0*(
_output_shapes
:
[
training/Adam/Const_14Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_15Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_15*
T0*(
_output_shapes
:

training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_14*
T0*(
_output_shapes
:
n
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
T0*(
_output_shapes
:
[
training/Adam/add_21/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
|
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
T0*(
_output_shapes
:

training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
T0*(
_output_shapes
:
{
training/Adam/sub_22Subconv_4/kernel/readtraining/Adam/truediv_7*
T0*(
_output_shapes
:
Ú
training/Adam/Assign_18Assigntraining/Adam/Variable_6training/Adam/add_19*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_6*(
_output_shapes
:
Ü
training/Adam/Assign_19Assigntraining/Adam/Variable_20training/Adam/add_20*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_20*(
_output_shapes
:
Ä
training/Adam/Assign_20Assignconv_4/kerneltraining/Adam/sub_22*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_4/kernel*(
_output_shapes
:
r
training/Adam/mul_36MulAdam/beta_1/readtraining/Adam/Variable_7/read*
T0*
_output_shapes	
:
[
training/Adam/sub_23/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_23Subtraining/Adam/sub_23/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_37Multraining/Adam/sub_237training/Adam/gradients/conv_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
T0*
_output_shapes	
:
s
training/Adam/mul_38MulAdam/beta_2/readtraining/Adam/Variable_21/read*
T0*
_output_shapes	
:
[
training/Adam/sub_24/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_24Subtraining/Adam/sub_24/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_7Square7training/Adam/gradients/conv_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes	
:
m
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
T0*
_output_shapes	
:
j
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
T0*
_output_shapes	
:
[
training/Adam/Const_16Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_17Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_17*
T0*
_output_shapes	
:

training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_16*
T0*
_output_shapes	
:
a
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
T0*
_output_shapes	
:
[
training/Adam/add_24/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
T0*
_output_shapes	
:
t
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
T0*
_output_shapes	
:
l
training/Adam/sub_25Subconv_4/bias/readtraining/Adam/truediv_8*
T0*
_output_shapes	
:
Í
training/Adam/Assign_21Assigntraining/Adam/Variable_7training/Adam/add_22*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes	
:
Ď
training/Adam/Assign_22Assigntraining/Adam/Variable_21training/Adam/add_23*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_21*
_output_shapes	
:
ł
training/Adam/Assign_23Assignconv_4/biastraining/Adam/sub_25*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_4/bias*
_output_shapes	
:

training/Adam/mul_41MulAdam/beta_1/readtraining/Adam/Variable_8/read*
T0*(
_output_shapes
:
[
training/Adam/sub_26/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_26Subtraining/Adam/sub_26/xAdam/beta_1/read*
T0*
_output_shapes
: 
Ş
training/Adam/mul_42Multraining/Adam/sub_26Dtraining/Adam/gradients/conv_5/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
z
training/Adam/add_25Addtraining/Adam/mul_41training/Adam/mul_42*
T0*(
_output_shapes
:

training/Adam/mul_43MulAdam/beta_2/readtraining/Adam/Variable_22/read*
T0*(
_output_shapes
:
[
training/Adam/sub_27/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_27Subtraining/Adam/sub_27/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_8SquareDtraining/Adam/gradients/conv_5/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
|
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*
T0*(
_output_shapes
:
z
training/Adam/add_26Addtraining/Adam/mul_43training/Adam/mul_44*
T0*(
_output_shapes
:
w
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_25*
T0*(
_output_shapes
:
[
training/Adam/Const_18Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_19Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/add_26training/Adam/Const_19*
T0*(
_output_shapes
:

training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_18*
T0*(
_output_shapes
:
n
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*
T0*(
_output_shapes
:
[
training/Adam/add_27/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
|
training/Adam/add_27Addtraining/Adam/Sqrt_9training/Adam/add_27/y*
T0*(
_output_shapes
:

training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_27*
T0*(
_output_shapes
:
{
training/Adam/sub_28Subconv_5/kernel/readtraining/Adam/truediv_9*
T0*(
_output_shapes
:
Ú
training/Adam/Assign_24Assigntraining/Adam/Variable_8training/Adam/add_25*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_8*(
_output_shapes
:
Ü
training/Adam/Assign_25Assigntraining/Adam/Variable_22training/Adam/add_26*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_22*(
_output_shapes
:
Ä
training/Adam/Assign_26Assignconv_5/kerneltraining/Adam/sub_28*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_5/kernel*(
_output_shapes
:
r
training/Adam/mul_46MulAdam/beta_1/readtraining/Adam/Variable_9/read*
T0*
_output_shapes	
:
[
training/Adam/sub_29/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_29Subtraining/Adam/sub_29/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_47Multraining/Adam/sub_297training/Adam/gradients/conv_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_28Addtraining/Adam/mul_46training/Adam/mul_47*
T0*
_output_shapes	
:
s
training/Adam/mul_48MulAdam/beta_2/readtraining/Adam/Variable_23/read*
T0*
_output_shapes	
:
[
training/Adam/sub_30/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_30Subtraining/Adam/sub_30/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_9Square7training/Adam/gradients/conv_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/mul_49Multraining/Adam/sub_30training/Adam/Square_9*
T0*
_output_shapes	
:
m
training/Adam/add_29Addtraining/Adam/mul_48training/Adam/mul_49*
T0*
_output_shapes	
:
j
training/Adam/mul_50Multraining/Adam/multraining/Adam/add_28*
T0*
_output_shapes	
:
[
training/Adam/Const_20Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_21Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_10/MinimumMinimumtraining/Adam/add_29training/Adam/Const_21*
T0*
_output_shapes	
:

training/Adam/clip_by_value_10Maximum&training/Adam/clip_by_value_10/Minimumtraining/Adam/Const_20*
T0*
_output_shapes	
:
c
training/Adam/Sqrt_10Sqrttraining/Adam/clip_by_value_10*
T0*
_output_shapes	
:
[
training/Adam/add_30/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_30Addtraining/Adam/Sqrt_10training/Adam/add_30/y*
T0*
_output_shapes	
:
u
training/Adam/truediv_10RealDivtraining/Adam/mul_50training/Adam/add_30*
T0*
_output_shapes	
:
m
training/Adam/sub_31Subconv_5/bias/readtraining/Adam/truediv_10*
T0*
_output_shapes	
:
Í
training/Adam/Assign_27Assigntraining/Adam/Variable_9training/Adam/add_28*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes	
:
Ď
training/Adam/Assign_28Assigntraining/Adam/Variable_23training/Adam/add_29*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes	
:
ł
training/Adam/Assign_29Assignconv_5/biastraining/Adam/sub_31*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_5/bias*
_output_shapes	
:
x
training/Adam/mul_51MulAdam/beta_1/readtraining/Adam/Variable_10/read*
T0* 
_output_shapes
:

[
training/Adam/sub_32/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_32Subtraining/Adam/sub_32/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_52Multraining/Adam/sub_324training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

r
training/Adam/add_31Addtraining/Adam/mul_51training/Adam/mul_52*
T0* 
_output_shapes
:

x
training/Adam/mul_53MulAdam/beta_2/readtraining/Adam/Variable_24/read*
T0* 
_output_shapes
:

[
training/Adam/sub_33/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_33Subtraining/Adam/sub_33/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_10Square4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

u
training/Adam/mul_54Multraining/Adam/sub_33training/Adam/Square_10*
T0* 
_output_shapes
:

r
training/Adam/add_32Addtraining/Adam/mul_53training/Adam/mul_54*
T0* 
_output_shapes
:

o
training/Adam/mul_55Multraining/Adam/multraining/Adam/add_31*
T0* 
_output_shapes
:

[
training/Adam/Const_22Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_23Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_11/MinimumMinimumtraining/Adam/add_32training/Adam/Const_23*
T0* 
_output_shapes
:


training/Adam/clip_by_value_11Maximum&training/Adam/clip_by_value_11/Minimumtraining/Adam/Const_22*
T0* 
_output_shapes
:

h
training/Adam/Sqrt_11Sqrttraining/Adam/clip_by_value_11*
T0* 
_output_shapes
:

[
training/Adam/add_33/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
u
training/Adam/add_33Addtraining/Adam/Sqrt_11training/Adam/add_33/y*
T0* 
_output_shapes
:

z
training/Adam/truediv_11RealDivtraining/Adam/mul_55training/Adam/add_33*
T0* 
_output_shapes
:

u
training/Adam/sub_34Subdense_1/kernel/readtraining/Adam/truediv_11*
T0* 
_output_shapes
:

Ô
training/Adam/Assign_30Assigntraining/Adam/Variable_10training/Adam/add_31*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_10* 
_output_shapes
:

Ô
training/Adam/Assign_31Assigntraining/Adam/Variable_24training/Adam/add_32*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_24* 
_output_shapes
:

ž
training/Adam/Assign_32Assigndense_1/kerneltraining/Adam/sub_34*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

s
training/Adam/mul_56MulAdam/beta_1/readtraining/Adam/Variable_11/read*
T0*
_output_shapes	
:
[
training/Adam/sub_35/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_35Subtraining/Adam/sub_35/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_57Multraining/Adam/sub_358training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_34Addtraining/Adam/mul_56training/Adam/mul_57*
T0*
_output_shapes	
:
s
training/Adam/mul_58MulAdam/beta_2/readtraining/Adam/Variable_25/read*
T0*
_output_shapes	
:
[
training/Adam/sub_36/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_36Subtraining/Adam/sub_36/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_11Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
p
training/Adam/mul_59Multraining/Adam/sub_36training/Adam/Square_11*
T0*
_output_shapes	
:
m
training/Adam/add_35Addtraining/Adam/mul_58training/Adam/mul_59*
T0*
_output_shapes	
:
j
training/Adam/mul_60Multraining/Adam/multraining/Adam/add_34*
T0*
_output_shapes	
:
[
training/Adam/Const_24Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_25Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_12/MinimumMinimumtraining/Adam/add_35training/Adam/Const_25*
T0*
_output_shapes	
:

training/Adam/clip_by_value_12Maximum&training/Adam/clip_by_value_12/Minimumtraining/Adam/Const_24*
T0*
_output_shapes	
:
c
training/Adam/Sqrt_12Sqrttraining/Adam/clip_by_value_12*
T0*
_output_shapes	
:
[
training/Adam/add_36/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_36Addtraining/Adam/Sqrt_12training/Adam/add_36/y*
T0*
_output_shapes	
:
u
training/Adam/truediv_12RealDivtraining/Adam/mul_60training/Adam/add_36*
T0*
_output_shapes	
:
n
training/Adam/sub_37Subdense_1/bias/readtraining/Adam/truediv_12*
T0*
_output_shapes	
:
Ď
training/Adam/Assign_33Assigntraining/Adam/Variable_11training/Adam/add_34*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes	
:
Ď
training/Adam/Assign_34Assigntraining/Adam/Variable_25training/Adam/add_35*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes	
:
ľ
training/Adam/Assign_35Assigndense_1/biastraining/Adam/sub_37*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias*
_output_shapes	
:
w
training/Adam/mul_61MulAdam/beta_1/readtraining/Adam/Variable_12/read*
T0*
_output_shapes
:	
[
training/Adam/sub_38/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_38Subtraining/Adam/sub_38/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_62Multraining/Adam/sub_384training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
q
training/Adam/add_37Addtraining/Adam/mul_61training/Adam/mul_62*
T0*
_output_shapes
:	
w
training/Adam/mul_63MulAdam/beta_2/readtraining/Adam/Variable_26/read*
T0*
_output_shapes
:	
[
training/Adam/sub_39/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_39Subtraining/Adam/sub_39/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_12Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
t
training/Adam/mul_64Multraining/Adam/sub_39training/Adam/Square_12*
T0*
_output_shapes
:	
q
training/Adam/add_38Addtraining/Adam/mul_63training/Adam/mul_64*
T0*
_output_shapes
:	
n
training/Adam/mul_65Multraining/Adam/multraining/Adam/add_37*
T0*
_output_shapes
:	
[
training/Adam/Const_26Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_27Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_13/MinimumMinimumtraining/Adam/add_38training/Adam/Const_27*
T0*
_output_shapes
:	

training/Adam/clip_by_value_13Maximum&training/Adam/clip_by_value_13/Minimumtraining/Adam/Const_26*
T0*
_output_shapes
:	
g
training/Adam/Sqrt_13Sqrttraining/Adam/clip_by_value_13*
T0*
_output_shapes
:	
[
training/Adam/add_39/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
t
training/Adam/add_39Addtraining/Adam/Sqrt_13training/Adam/add_39/y*
T0*
_output_shapes
:	
y
training/Adam/truediv_13RealDivtraining/Adam/mul_65training/Adam/add_39*
T0*
_output_shapes
:	
t
training/Adam/sub_40Subdense_2/kernel/readtraining/Adam/truediv_13*
T0*
_output_shapes
:	
Ó
training/Adam/Assign_36Assigntraining/Adam/Variable_12training/Adam/add_37*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes
:	
Ó
training/Adam/Assign_37Assigntraining/Adam/Variable_26training/Adam/add_38*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes
:	
˝
training/Adam/Assign_38Assigndense_2/kerneltraining/Adam/sub_40*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
r
training/Adam/mul_66MulAdam/beta_1/readtraining/Adam/Variable_13/read*
T0*
_output_shapes
:
[
training/Adam/sub_41/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_41Subtraining/Adam/sub_41/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_67Multraining/Adam/sub_418training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_40Addtraining/Adam/mul_66training/Adam/mul_67*
T0*
_output_shapes
:
r
training/Adam/mul_68MulAdam/beta_2/readtraining/Adam/Variable_27/read*
T0*
_output_shapes
:
[
training/Adam/sub_42/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_42Subtraining/Adam/sub_42/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_13Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
o
training/Adam/mul_69Multraining/Adam/sub_42training/Adam/Square_13*
T0*
_output_shapes
:
l
training/Adam/add_41Addtraining/Adam/mul_68training/Adam/mul_69*
T0*
_output_shapes
:
i
training/Adam/mul_70Multraining/Adam/multraining/Adam/add_40*
T0*
_output_shapes
:
[
training/Adam/Const_28Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_29Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_14/MinimumMinimumtraining/Adam/add_41training/Adam/Const_29*
T0*
_output_shapes
:

training/Adam/clip_by_value_14Maximum&training/Adam/clip_by_value_14/Minimumtraining/Adam/Const_28*
T0*
_output_shapes
:
b
training/Adam/Sqrt_14Sqrttraining/Adam/clip_by_value_14*
T0*
_output_shapes
:
[
training/Adam/add_42/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_42Addtraining/Adam/Sqrt_14training/Adam/add_42/y*
T0*
_output_shapes
:
t
training/Adam/truediv_14RealDivtraining/Adam/mul_70training/Adam/add_42*
T0*
_output_shapes
:
m
training/Adam/sub_43Subdense_2/bias/readtraining/Adam/truediv_14*
T0*
_output_shapes
:
Î
training/Adam/Assign_39Assigntraining/Adam/Variable_13training/Adam/add_40*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_13*
_output_shapes
:
Î
training/Adam/Assign_40Assigntraining/Adam/Variable_27training/Adam/add_41*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes
:
´
training/Adam/Assign_41Assigndense_2/biastraining/Adam/sub_43*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_2/bias*
_output_shapes
:
	
training/group_depsNoOp	^loss/mul^metrics/acc/Mean^training/Adam/AssignAdd^training/Adam/Assign^training/Adam/Assign_1^training/Adam/Assign_2^training/Adam/Assign_3^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_12^training/Adam/Assign_13^training/Adam/Assign_14^training/Adam/Assign_15^training/Adam/Assign_16^training/Adam/Assign_17^training/Adam/Assign_18^training/Adam/Assign_19^training/Adam/Assign_20^training/Adam/Assign_21^training/Adam/Assign_22^training/Adam/Assign_23^training/Adam/Assign_24^training/Adam/Assign_25^training/Adam/Assign_26^training/Adam/Assign_27^training/Adam/Assign_28^training/Adam/Assign_29^training/Adam/Assign_30^training/Adam/Assign_31^training/Adam/Assign_32^training/Adam/Assign_33^training/Adam/Assign_34^training/Adam/Assign_35^training/Adam/Assign_36^training/Adam/Assign_37^training/Adam/Assign_38^training/Adam/Assign_39^training/Adam/Assign_40^training/Adam/Assign_41
0

group_depsNoOp	^loss/mul^metrics/acc/Mean

IsVariableInitializedIsVariableInitializedconv_1/kernel*
dtype0* 
_class
loc:@conv_1/kernel*
_output_shapes
: 

IsVariableInitialized_1IsVariableInitializedconv_1/bias*
dtype0*
_class
loc:@conv_1/bias*
_output_shapes
: 

IsVariableInitialized_2IsVariableInitializedconv_2/kernel*
dtype0* 
_class
loc:@conv_2/kernel*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializedconv_2/bias*
dtype0*
_class
loc:@conv_2/bias*
_output_shapes
: 

IsVariableInitialized_4IsVariableInitializedconv_3/kernel*
dtype0* 
_class
loc:@conv_3/kernel*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializedconv_3/bias*
dtype0*
_class
loc:@conv_3/bias*
_output_shapes
: 

IsVariableInitialized_6IsVariableInitializedconv_4/kernel*
dtype0* 
_class
loc:@conv_4/kernel*
_output_shapes
: 

IsVariableInitialized_7IsVariableInitializedconv_4/bias*
dtype0*
_class
loc:@conv_4/bias*
_output_shapes
: 

IsVariableInitialized_8IsVariableInitializedconv_5/kernel*
dtype0* 
_class
loc:@conv_5/kernel*
_output_shapes
: 

IsVariableInitialized_9IsVariableInitializedconv_5/bias*
dtype0*
_class
loc:@conv_5/bias*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 

IsVariableInitialized_11IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 

IsVariableInitialized_12IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 

IsVariableInitialized_13IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 

IsVariableInitialized_14IsVariableInitializedAdam/iterations*
dtype0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
{
IsVariableInitialized_15IsVariableInitializedAdam/lr*
dtype0*
_class
loc:@Adam/lr*
_output_shapes
: 

IsVariableInitialized_16IsVariableInitializedAdam/beta_1*
dtype0*
_class
loc:@Adam/beta_1*
_output_shapes
: 

IsVariableInitialized_17IsVariableInitializedAdam/beta_2*
dtype0*
_class
loc:@Adam/beta_2*
_output_shapes
: 

IsVariableInitialized_18IsVariableInitialized
Adam/decay*
dtype0*
_class
loc:@Adam/decay*
_output_shapes
: 

IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable*
dtype0*)
_class
loc:@training/Adam/Variable*
_output_shapes
: 

IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_1*
dtype0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
: 

IsVariableInitialized_21IsVariableInitializedtraining/Adam/Variable_2*
dtype0*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes
: 

IsVariableInitialized_22IsVariableInitializedtraining/Adam/Variable_3*
dtype0*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes
: 

IsVariableInitialized_23IsVariableInitializedtraining/Adam/Variable_4*
dtype0*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes
: 

IsVariableInitialized_24IsVariableInitializedtraining/Adam/Variable_5*
dtype0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: 

IsVariableInitialized_25IsVariableInitializedtraining/Adam/Variable_6*
dtype0*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes
: 

IsVariableInitialized_26IsVariableInitializedtraining/Adam/Variable_7*
dtype0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
: 

IsVariableInitialized_27IsVariableInitializedtraining/Adam/Variable_8*
dtype0*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
: 

IsVariableInitialized_28IsVariableInitializedtraining/Adam/Variable_9*
dtype0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
: 

IsVariableInitialized_29IsVariableInitializedtraining/Adam/Variable_10*
dtype0*,
_class"
 loc:@training/Adam/Variable_10*
_output_shapes
: 

IsVariableInitialized_30IsVariableInitializedtraining/Adam/Variable_11*
dtype0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
: 

IsVariableInitialized_31IsVariableInitializedtraining/Adam/Variable_12*
dtype0*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes
: 

IsVariableInitialized_32IsVariableInitializedtraining/Adam/Variable_13*
dtype0*,
_class"
 loc:@training/Adam/Variable_13*
_output_shapes
: 

IsVariableInitialized_33IsVariableInitializedtraining/Adam/Variable_14*
dtype0*,
_class"
 loc:@training/Adam/Variable_14*
_output_shapes
: 

IsVariableInitialized_34IsVariableInitializedtraining/Adam/Variable_15*
dtype0*,
_class"
 loc:@training/Adam/Variable_15*
_output_shapes
: 

IsVariableInitialized_35IsVariableInitializedtraining/Adam/Variable_16*
dtype0*,
_class"
 loc:@training/Adam/Variable_16*
_output_shapes
: 

IsVariableInitialized_36IsVariableInitializedtraining/Adam/Variable_17*
dtype0*,
_class"
 loc:@training/Adam/Variable_17*
_output_shapes
: 

IsVariableInitialized_37IsVariableInitializedtraining/Adam/Variable_18*
dtype0*,
_class"
 loc:@training/Adam/Variable_18*
_output_shapes
: 

IsVariableInitialized_38IsVariableInitializedtraining/Adam/Variable_19*
dtype0*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes
: 

IsVariableInitialized_39IsVariableInitializedtraining/Adam/Variable_20*
dtype0*,
_class"
 loc:@training/Adam/Variable_20*
_output_shapes
: 

IsVariableInitialized_40IsVariableInitializedtraining/Adam/Variable_21*
dtype0*,
_class"
 loc:@training/Adam/Variable_21*
_output_shapes
: 

IsVariableInitialized_41IsVariableInitializedtraining/Adam/Variable_22*
dtype0*,
_class"
 loc:@training/Adam/Variable_22*
_output_shapes
: 

IsVariableInitialized_42IsVariableInitializedtraining/Adam/Variable_23*
dtype0*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes
: 

IsVariableInitialized_43IsVariableInitializedtraining/Adam/Variable_24*
dtype0*,
_class"
 loc:@training/Adam/Variable_24*
_output_shapes
: 

IsVariableInitialized_44IsVariableInitializedtraining/Adam/Variable_25*
dtype0*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes
: 

IsVariableInitialized_45IsVariableInitializedtraining/Adam/Variable_26*
dtype0*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes
: 

IsVariableInitialized_46IsVariableInitializedtraining/Adam/Variable_27*
dtype0*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes
: 

IsVariableInitialized_47IsVariableInitializedtraining/Adam/Variable_28*
dtype0*,
_class"
 loc:@training/Adam/Variable_28*
_output_shapes
: 

IsVariableInitialized_48IsVariableInitializedtraining/Adam/Variable_29*
dtype0*,
_class"
 loc:@training/Adam/Variable_29*
_output_shapes
: 

IsVariableInitialized_49IsVariableInitializedtraining/Adam/Variable_30*
dtype0*,
_class"
 loc:@training/Adam/Variable_30*
_output_shapes
: 

IsVariableInitialized_50IsVariableInitializedtraining/Adam/Variable_31*
dtype0*,
_class"
 loc:@training/Adam/Variable_31*
_output_shapes
: 

IsVariableInitialized_51IsVariableInitializedtraining/Adam/Variable_32*
dtype0*,
_class"
 loc:@training/Adam/Variable_32*
_output_shapes
: 

IsVariableInitialized_52IsVariableInitializedtraining/Adam/Variable_33*
dtype0*,
_class"
 loc:@training/Adam/Variable_33*
_output_shapes
: 

IsVariableInitialized_53IsVariableInitializedtraining/Adam/Variable_34*
dtype0*,
_class"
 loc:@training/Adam/Variable_34*
_output_shapes
: 

IsVariableInitialized_54IsVariableInitializedtraining/Adam/Variable_35*
dtype0*,
_class"
 loc:@training/Adam/Variable_35*
_output_shapes
: 

IsVariableInitialized_55IsVariableInitializedtraining/Adam/Variable_36*
dtype0*,
_class"
 loc:@training/Adam/Variable_36*
_output_shapes
: 

IsVariableInitialized_56IsVariableInitializedtraining/Adam/Variable_37*
dtype0*,
_class"
 loc:@training/Adam/Variable_37*
_output_shapes
: 

IsVariableInitialized_57IsVariableInitializedtraining/Adam/Variable_38*
dtype0*,
_class"
 loc:@training/Adam/Variable_38*
_output_shapes
: 

IsVariableInitialized_58IsVariableInitializedtraining/Adam/Variable_39*
dtype0*,
_class"
 loc:@training/Adam/Variable_39*
_output_shapes
: 

IsVariableInitialized_59IsVariableInitializedtraining/Adam/Variable_40*
dtype0*,
_class"
 loc:@training/Adam/Variable_40*
_output_shapes
: 

IsVariableInitialized_60IsVariableInitializedtraining/Adam/Variable_41*
dtype0*,
_class"
 loc:@training/Adam/Variable_41*
_output_shapes
: 
Ţ
initNoOp^conv_1/kernel/Assign^conv_1/bias/Assign^conv_2/kernel/Assign^conv_2/bias/Assign^conv_3/kernel/Assign^conv_3/bias/Assign^conv_4/kernel/Assign^conv_4/bias/Assign^conv_5/kernel/Assign^conv_5/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^Adam/iterations/Assign^Adam/lr/Assign^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign!^training/Adam/Variable_27/Assign!^training/Adam/Variable_28/Assign!^training/Adam/Variable_29/Assign!^training/Adam/Variable_30/Assign!^training/Adam/Variable_31/Assign!^training/Adam/Variable_32/Assign!^training/Adam/Variable_33/Assign!^training/Adam/Variable_34/Assign!^training/Adam/Variable_35/Assign!^training/Adam/Variable_36/Assign!^training/Adam/Variable_37/Assign!^training/Adam/Variable_38/Assign!^training/Adam/Variable_39/Assign!^training/Adam/Variable_40/Assign!^training/Adam/Variable_41/Assign"y^műň     żľ	Tăŕ)ĺ×AJîĺ
Ž++
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
8
Const
output"dtype"
valuetensor"
dtypetype
ë
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
8
FloorMod
x"T
y"T
z"T"
Ttype:	
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	
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
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

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
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
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

2
1
Square
x"T
y"T"
Ttype:

2	
ö
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
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
shared_namestring *1.6.02v1.6.0-0-gd2e24b6039ĄĐ

y
inputsPlaceholder*
dtype0*$
shape:˙˙˙˙˙˙˙˙˙  */
_output_shapes
:˙˙˙˙˙˙˙˙˙  
t
conv_1/random_uniform/shapeConst*%
valueB"         `   *
dtype0*
_output_shapes
:
^
conv_1/random_uniform/minConst*
valueB
 *:8šź*
dtype0*
_output_shapes
: 
^
conv_1/random_uniform/maxConst*
valueB
 *:8š<*
dtype0*
_output_shapes
: 
Ž
#conv_1/random_uniform/RandomUniformRandomUniformconv_1/random_uniform/shape*
seedą˙ĺ)*
seed2ŚŠŘ*
dtype0*
T0*&
_output_shapes
:`
w
conv_1/random_uniform/subSubconv_1/random_uniform/maxconv_1/random_uniform/min*
T0*
_output_shapes
: 

conv_1/random_uniform/mulMul#conv_1/random_uniform/RandomUniformconv_1/random_uniform/sub*
T0*&
_output_shapes
:`

conv_1/random_uniformAddconv_1/random_uniform/mulconv_1/random_uniform/min*
T0*&
_output_shapes
:`

conv_1/kernel
VariableV2*
shape:`*
dtype0*
	container *
shared_name *&
_output_shapes
:`
Ŕ
conv_1/kernel/AssignAssignconv_1/kernelconv_1/random_uniform*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_1/kernel*&
_output_shapes
:`

conv_1/kernel/readIdentityconv_1/kernel*
T0* 
_class
loc:@conv_1/kernel*&
_output_shapes
:`
Y
conv_1/ConstConst*
valueB`*    *
dtype0*
_output_shapes
:`
w
conv_1/bias
VariableV2*
shape:`*
dtype0*
	container *
shared_name *
_output_shapes
:`
Ľ
conv_1/bias/AssignAssignconv_1/biasconv_1/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_1/bias*
_output_shapes
:`
n
conv_1/bias/readIdentityconv_1/bias*
T0*
_class
loc:@conv_1/bias*
_output_shapes
:`
q
 conv_1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ŕ
conv_1/convolutionConv2Dinputsconv_1/kernel/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `

conv_1/BiasAddBiasAddconv_1/convolutionconv_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
]
conv_1/ReluReluconv_1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
ť
max_pooling2d_1/MaxPoolMaxPoolconv_1/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
t
conv_2/random_uniform/shapeConst*%
valueB"      `      *
dtype0*
_output_shapes
:
^
conv_2/random_uniform/minConst*
valueB
 *čŐź*
dtype0*
_output_shapes
: 
^
conv_2/random_uniform/maxConst*
valueB
 *čŐ<*
dtype0*
_output_shapes
: 
Ż
#conv_2/random_uniform/RandomUniformRandomUniformconv_2/random_uniform/shape*
seedą˙ĺ)*
seed2Ý´*
dtype0*
T0*'
_output_shapes
:`
w
conv_2/random_uniform/subSubconv_2/random_uniform/maxconv_2/random_uniform/min*
T0*
_output_shapes
: 

conv_2/random_uniform/mulMul#conv_2/random_uniform/RandomUniformconv_2/random_uniform/sub*
T0*'
_output_shapes
:`

conv_2/random_uniformAddconv_2/random_uniform/mulconv_2/random_uniform/min*
T0*'
_output_shapes
:`

conv_2/kernel
VariableV2*
shape:`*
dtype0*
	container *
shared_name *'
_output_shapes
:`
Á
conv_2/kernel/AssignAssignconv_2/kernelconv_2/random_uniform*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_2/kernel*'
_output_shapes
:`

conv_2/kernel/readIdentityconv_2/kernel*
T0* 
_class
loc:@conv_2/kernel*'
_output_shapes
:`
[
conv_2/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
y
conv_2/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ś
conv_2/bias/AssignAssignconv_2/biasconv_2/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_2/bias*
_output_shapes	
:
o
conv_2/bias/readIdentityconv_2/bias*
T0*
_class
loc:@conv_2/bias*
_output_shapes	
:
q
 conv_2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ň
conv_2/convolutionConv2Dmax_pooling2d_1/MaxPoolconv_2/kernel/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

conv_2/BiasAddBiasAddconv_2/convolutionconv_2/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
conv_2/ReluReluconv_2/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
max_pooling2d_2/MaxPoolMaxPoolconv_2/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
conv_3/random_uniform/shapeConst*%
valueB"           *
dtype0*
_output_shapes
:
^
conv_3/random_uniform/minConst*
valueB
 *Ľ2˝*
dtype0*
_output_shapes
: 
^
conv_3/random_uniform/maxConst*
valueB
 *Ľ2=*
dtype0*
_output_shapes
: 
°
#conv_3/random_uniform/RandomUniformRandomUniformconv_3/random_uniform/shape*
seedą˙ĺ)*
seed2Ż*
dtype0*
T0*(
_output_shapes
:
w
conv_3/random_uniform/subSubconv_3/random_uniform/maxconv_3/random_uniform/min*
T0*
_output_shapes
: 

conv_3/random_uniform/mulMul#conv_3/random_uniform/RandomUniformconv_3/random_uniform/sub*
T0*(
_output_shapes
:

conv_3/random_uniformAddconv_3/random_uniform/mulconv_3/random_uniform/min*
T0*(
_output_shapes
:

conv_3/kernel
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
Â
conv_3/kernel/AssignAssignconv_3/kernelconv_3/random_uniform*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_3/kernel*(
_output_shapes
:

conv_3/kernel/readIdentityconv_3/kernel*
T0* 
_class
loc:@conv_3/kernel*(
_output_shapes
:
[
conv_3/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
y
conv_3/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ś
conv_3/bias/AssignAssignconv_3/biasconv_3/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_3/bias*
_output_shapes	
:
o
conv_3/bias/readIdentityconv_3/bias*
T0*
_class
loc:@conv_3/bias*
_output_shapes	
:
q
 conv_3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ň
conv_3/convolutionConv2Dmax_pooling2d_2/MaxPoolconv_3/kernel/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

conv_3/BiasAddBiasAddconv_3/convolutionconv_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
conv_3/ReluReluconv_3/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
max_pooling2d_3/MaxPoolMaxPoolconv_3/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
conv_4/random_uniform/shapeConst*%
valueB"          *
dtype0*
_output_shapes
:
^
conv_4/random_uniform/minConst*
valueB
 *ď[ńź*
dtype0*
_output_shapes
: 
^
conv_4/random_uniform/maxConst*
valueB
 *ď[ń<*
dtype0*
_output_shapes
: 
°
#conv_4/random_uniform/RandomUniformRandomUniformconv_4/random_uniform/shape*
seedą˙ĺ)*
seed2Ćô*
dtype0*
T0*(
_output_shapes
:
w
conv_4/random_uniform/subSubconv_4/random_uniform/maxconv_4/random_uniform/min*
T0*
_output_shapes
: 

conv_4/random_uniform/mulMul#conv_4/random_uniform/RandomUniformconv_4/random_uniform/sub*
T0*(
_output_shapes
:

conv_4/random_uniformAddconv_4/random_uniform/mulconv_4/random_uniform/min*
T0*(
_output_shapes
:

conv_4/kernel
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
Â
conv_4/kernel/AssignAssignconv_4/kernelconv_4/random_uniform*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_4/kernel*(
_output_shapes
:

conv_4/kernel/readIdentityconv_4/kernel*
T0* 
_class
loc:@conv_4/kernel*(
_output_shapes
:
[
conv_4/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
y
conv_4/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ś
conv_4/bias/AssignAssignconv_4/biasconv_4/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_4/bias*
_output_shapes	
:
o
conv_4/bias/readIdentityconv_4/bias*
T0*
_class
loc:@conv_4/bias*
_output_shapes	
:
q
 conv_4/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ň
conv_4/convolutionConv2Dmax_pooling2d_3/MaxPoolconv_4/kernel/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

conv_4/BiasAddBiasAddconv_4/convolutionconv_4/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
conv_4/ReluReluconv_4/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
max_pooling2d_4/MaxPoolMaxPoolconv_4/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
conv_5/random_uniform/shapeConst*%
valueB"          *
dtype0*
_output_shapes
:
^
conv_5/random_uniform/minConst*
valueB
 *ď[ńź*
dtype0*
_output_shapes
: 
^
conv_5/random_uniform/maxConst*
valueB
 *ď[ń<*
dtype0*
_output_shapes
: 
°
#conv_5/random_uniform/RandomUniformRandomUniformconv_5/random_uniform/shape*
seedą˙ĺ)*
seed2ŐŹŐ*
dtype0*
T0*(
_output_shapes
:
w
conv_5/random_uniform/subSubconv_5/random_uniform/maxconv_5/random_uniform/min*
T0*
_output_shapes
: 

conv_5/random_uniform/mulMul#conv_5/random_uniform/RandomUniformconv_5/random_uniform/sub*
T0*(
_output_shapes
:

conv_5/random_uniformAddconv_5/random_uniform/mulconv_5/random_uniform/min*
T0*(
_output_shapes
:

conv_5/kernel
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
Â
conv_5/kernel/AssignAssignconv_5/kernelconv_5/random_uniform*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_5/kernel*(
_output_shapes
:

conv_5/kernel/readIdentityconv_5/kernel*
T0* 
_class
loc:@conv_5/kernel*(
_output_shapes
:
[
conv_5/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
y
conv_5/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ś
conv_5/bias/AssignAssignconv_5/biasconv_5/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_5/bias*
_output_shapes	
:
o
conv_5/bias/readIdentityconv_5/bias*
T0*
_class
loc:@conv_5/bias*
_output_shapes	
:
q
 conv_5/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ň
conv_5/convolutionConv2Dmax_pooling2d_4/MaxPoolconv_5/kernel/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

conv_5/BiasAddBiasAddconv_5/convolutionconv_5/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
conv_5/ReluReluconv_5/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
max_pooling2d_5/MaxPoolMaxPoolconv_5/Relu*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
flatten_1/ShapeShapemax_pooling2d_5/MaxPool*
T0*
out_type0*
_output_shapes
:
g
flatten_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ż
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
_output_shapes
:
Y
flatten_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
\
flatten_1/stack/0Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
N*
T0*

axis *
_output_shapes
:

flatten_1/ReshapeReshapemax_pooling2d_5/MaxPoolflatten_1/stack*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
m
dense_1/random_uniform/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *×łÝ˝*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *×łÝ=*
dtype0*
_output_shapes
: 
Š
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seedą˙ĺ)*
seed2î¨W*
dtype0*
T0* 
_output_shapes
:

z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0* 
_output_shapes
:


dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0* 
_output_shapes
:


dense_1/kernel
VariableV2*
shape:
*
dtype0*
	container *
shared_name * 
_output_shapes
:

ž
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

\
dense_1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
z
dense_1/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ş
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias*
_output_shapes	
:
r
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:

dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
dense_2/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *mJž*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *mJ>*
dtype0*
_output_shapes
: 
Š
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
seedą˙ĺ)*
seed2üí*
dtype0*
T0*
_output_shapes
:	
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes
:	

dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes
:	

dense_2/kernel
VariableV2*
shape:	*
dtype0*
	container *
shared_name *
_output_shapes
:	
˝
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
|
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_2/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Š
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_2/bias*
_output_shapes
:
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:

dense_2/MatMulMatMuldense_1/Reludense_2/kernel/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
Adam/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
s
Adam/iterations
VariableV2*
shape: *
dtype0	*
	container *
shared_name *
_output_shapes
: 
ž
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
T0	*
validate_shape(*
use_locking(*"
_class
loc:@Adam/iterations*
_output_shapes
: 
v
Adam/iterations/readIdentityAdam/iterations*
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
Z
Adam/lr/initial_valueConst*
valueB
 *ˇŃ8*
dtype0*
_output_shapes
: 
k
Adam/lr
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 

Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/lr/readIdentityAdam/lr*
T0*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
Ž
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Adam/beta_1*
_output_shapes
: 
j
Adam/beta_1/readIdentityAdam/beta_1*
T0*
_class
loc:@Adam/beta_1*
_output_shapes
: 
^
Adam/beta_2/initial_valueConst*
valueB
 *wž?*
dtype0*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
Ž
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Adam/beta_2*
_output_shapes
: 
j
Adam/beta_2/readIdentityAdam/beta_2*
T0*
_class
loc:@Adam/beta_2*
_output_shapes
: 
]
Adam/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

Adam/decay
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_output_shapes
: 
Ş
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Adam/decay*
_output_shapes
: 
g
Adam/decay/readIdentity
Adam/decay*
T0*
_class
loc:@Adam/decay*
_output_shapes
: 

dense_2_targetPlaceholder*
dtype0*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
q
dense_2_sample_weightsPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
'loss/dense_2_loss/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ľ
loss/dense_2_loss/SumSumdense_2/Softmax'loss/dense_2_loss/Sum/reduction_indices*
	keep_dims(*
T0*

Tidx0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
loss/dense_2_loss/truedivRealDivdense_2/Softmaxloss/dense_2_loss/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
loss/dense_2_loss/ConstConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
\
loss/dense_2_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
T0*
_output_shapes
: 

'loss/dense_2_loss/clip_by_value/MinimumMinimumloss/dense_2_loss/truedivloss/dense_2_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
loss/dense_2_loss/LogLogloss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
loss/dense_2_loss/mulMuldense_2_targetloss/dense_2_loss/Log*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
)loss/dense_2_loss/Sum_1/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ť
loss/dense_2_loss/Sum_1Sumloss/dense_2_loss/mul)loss/dense_2_loss/Sum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
loss/dense_2_loss/NegNegloss/dense_2_loss/Sum_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
Ş
loss/dense_2_loss/MeanMeanloss/dense_2_loss/Neg(loss/dense_2_loss/Mean/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
loss/dense_2_loss/mul_1Mulloss/dense_2_loss/Meandense_2_sample_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
loss/dense_2_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss/dense_2_loss/NotEqual/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*

SrcT0
*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
loss/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Castloss/dense_2_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/mul_1loss/dense_2_loss/Mean_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
loss/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/Mean_2Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_2*
T0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMaxArgMaxdense_2_targetmetrics/acc/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxdense_2/Softmaxmetrics/acc/ArgMax_1/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
}
training/Adam/gradients/ShapeConst*
valueB *
dtype0*
_class
loc:@loss/mul*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_class
loc:@loss/mul*
_output_shapes
: 
ś
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
Ś
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_2_loss/Mean_2*
T0*
_class
loc:@loss/mul*
_output_shapes
: 

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
ş
Ctraining/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shape*
T0*
Tshape0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
Ă
;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ShapeShapeloss/dense_2_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
Ť
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/TileTile=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape*
T0*

Tmultiples0*+
_class!
loc:@loss/dense_2_loss/Mean_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
­
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2Const*
valueB *
dtype0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
˛
;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ConstConst*
valueB: *
dtype0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
Š
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const*
	keep_dims( *
T0*

Tidx0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
´
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const_1Const*
valueB: *
dtype0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
­
<training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1Prod=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const_1*
	keep_dims( *
T0*

Tidx0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
Ž
?training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/MaximumMaximum<training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 

>training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
ß
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/floordiv*

SrcT0*

DstT0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Tile:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Cast*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul_1*
T0*
out_type0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:
ł
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*
valueB *
dtype0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: 
Ö
Ntraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivRealDiv=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivloss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:
ľ
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape*
T0*
Tshape0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/NegNegloss/dense_2_loss/mul_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Negloss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:
Ž
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: 
ź
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ShapeShapeloss/dense_2_loss/Mean*
T0*
out_type0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:
ž
<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1Shapedense_2_sample_weights*
T0*
out_type0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:
Ć
Jtraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ó
8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/mulMul@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshapedense_2_sample_weights*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/SumSum8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/mulJtraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:
Ľ
<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ő
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/mul_1Mulloss/dense_2_loss/Mean@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/mul_1Ltraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:
Ť
>training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Reshape_1Reshape:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum_1<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/Neg*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ľ
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/SizeConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
đ
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

7training/Adam/gradients/loss/dense_2_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_2_loss/Mean_grad/add8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
°
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*
valueB: *
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ź
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/startConst*
value	B : *
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
Ź
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
Ń
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/delta*

Tidx0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ť
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

8training/Adam/gradients/loss/dense_2_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/value*
T0*

index_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

Atraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_2_loss/Mean_grad/range7training/Adam/gradients/loss/dense_2_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill*
N*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
Ą
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ReshapeAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:

8training/Adam/gradients/loss/dense_2_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv*
T0*

Tmultiples0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
ť
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/Neg*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
ź
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ž
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ConstConst*
valueB: *
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ą
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
°
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*
valueB: *
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ľ
:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
Ź
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
Ű
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*

SrcT0*

DstT0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ň
6training/Adam/gradients/loss/dense_2_loss/Neg_grad/NegNeg;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truediv*
T0*(
_class
loc:@loss/dense_2_loss/Neg*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/ShapeShapeloss/dense_2_loss/mul*
T0*
out_type0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:
§
9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/SizeConst*
value	B :*
dtype0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
ň
8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/addAdd)loss/dense_2_loss/Sum_1/reduction_indices9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 

8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/modFloorMod8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/add9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ť
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape_1Const*
valueB *
dtype0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ž
@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/startConst*
value	B : *
dtype0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ž
@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/deltaConst*
value	B :*
dtype0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ö
:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/rangeRange@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/start9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/delta*

Tidx0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:
­
?training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 

9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/FillFill<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape_1?training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill/value*
T0*

index_type0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ł
Btraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitchDynamicStitch:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/mod:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill*
N*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
>training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum/yConst*
value	B :*
dtype0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ľ
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/MaximumMaximumBtraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitch>training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum/y*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:
 
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/Neg_grad/NegBtraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitch*
T0*
Tshape0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:
Ž
9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/TileTile<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Reshape=training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/floordiv*
T0*

Tmultiples0**
_class 
loc:@loss/dense_2_loss/Sum_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
8training/Adam/gradients/loss/dense_2_loss/mul_grad/ShapeShapedense_2_target*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
š
:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1Shapeloss/dense_2_loss/Log*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
ž
Htraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_2_loss/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ë
6training/Adam/gradients/loss/dense_2_loss/mul_grad/mulMul9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Tileloss/dense_2_loss/Log*
T0*(
_class
loc:@loss/dense_2_loss/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
6training/Adam/gradients/loss/dense_2_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_2_loss/mul_grad/mulHtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
Ş
:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/mul*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ć
8training/Adam/gradients/loss/dense_2_loss/mul_grad/mul_1Muldense_2_target9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Tile*
T0*(
_class
loc:@loss/dense_2_loss/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/mul_1Jtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
§
<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal
Reciprocalloss/dense_2_loss/clip_by_value=^training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1*
T0*(
_class
loc:@loss/dense_2_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulMul<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal*
T0*(
_class
loc:@loss/dense_2_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShape'loss/dense_2_loss/clip_by_value/Minimum*
T0*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
ť
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
: 
î
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shape6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul*
T0*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
Á
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
: 
Ň
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Itraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
Rtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ú
Ctraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqual6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
Etraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
É
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ú
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
ž
Ftraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
: 
ß
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapeloss/dense_2_loss/truediv*
T0*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
Ë
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
: 

Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
Ń
Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
: 
ň
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss/dense_2_loss/truedivloss/dense_2_loss/sub*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ztraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ľ
Ktraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
Mtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
é
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ú
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
Ţ
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
: 
š
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/ShapeShapedense_2/Softmax*
T0*
out_type0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
Á
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/Sum*
T0*
out_type0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
Î
Ltraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDivLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshapeloss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
ą
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape*
T0*
Tshape0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/NegNegdense_2/Softmax*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ţ
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1loss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulMulLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
ˇ
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*
Tshape0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
8training/Adam/gradients/loss/dense_2_loss/Sum_grad/ShapeShapedense_2/Softmax*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:
Ł
7training/Adam/gradients/loss/dense_2_loss/Sum_grad/SizeConst*
value	B :*
dtype0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
ę
6training/Adam/gradients/loss/dense_2_loss/Sum_grad/addAdd'loss/dense_2_loss/Sum/reduction_indices7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
ţ
6training/Adam/gradients/loss/dense_2_loss/Sum_grad/modFloorMod6training/Adam/gradients/loss/dense_2_loss/Sum_grad/add7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
§
:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape_1Const*
valueB *
dtype0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
Ş
>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/startConst*
value	B : *
dtype0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
Ş
>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/deltaConst*
value	B :*
dtype0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
Ě
8training/Adam/gradients/loss/dense_2_loss/Sum_grad/rangeRange>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/start7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/delta*

Tidx0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:
Š
=training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill/valueConst*
value	B :*
dtype0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 

7training/Adam/gradients/loss/dense_2_loss/Sum_grad/FillFill:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape_1=training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill/value*
T0*

index_type0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 

@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitchDynamicStitch8training/Adam/gradients/loss/dense_2_loss/Sum_grad/range6training/Adam/gradients/loss/dense_2_loss/Sum_grad/mod8training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill*
N*
T0*(
_class
loc:@loss/dense_2_loss/Sum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
<training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum/yConst*
value	B :*
dtype0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 

:training/Adam/gradients/loss/dense_2_loss/Sum_grad/MaximumMaximum@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitch<training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum/y*
T0*(
_class
loc:@loss/dense_2_loss/Sum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

;training/Adam/gradients/loss/dense_2_loss/Sum_grad/floordivFloorDiv8training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:
¤
:training/Adam/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitch*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:
Ś
7training/Adam/gradients/loss/dense_2_loss/Sum_grad/TileTile:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Sum_grad/floordiv*
T0*

Tmultiples0*(
_class
loc:@loss/dense_2_loss/Sum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

training/Adam/gradients/AddNAddN>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Tile*
N*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
0training/Adam/gradients/dense_2/Softmax_grad/mulMultraining/Adam/gradients/AddNdense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
Btraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0*"
_class
loc:@dense_2/Softmax*
_output_shapes
:

0training/Adam/gradients/dense_2/Softmax_grad/SumSum0training/Adam/gradients/dense_2/Softmax_grad/mulBtraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0*"
_class
loc:@dense_2/Softmax*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
:training/Adam/gradients/dense_2/Softmax_grad/Reshape/shapeConst*
valueB"˙˙˙˙   *
dtype0*"
_class
loc:@dense_2/Softmax*
_output_shapes
:

4training/Adam/gradients/dense_2/Softmax_grad/ReshapeReshape0training/Adam/gradients/dense_2/Softmax_grad/Sum:training/Adam/gradients/dense_2/Softmax_grad/Reshape/shape*
T0*
Tshape0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
0training/Adam/gradients/dense_2/Softmax_grad/subSubtraining/Adam/gradients/AddN4training/Adam/gradients/dense_2/Softmax_grad/Reshape*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ň
2training/Adam/gradients/dense_2/Softmax_grad/mul_1Mul0training/Adam/gradients/dense_2/Softmax_grad/subdense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
T0*
data_formatNHWC*"
_class
loc:@dense_2/BiasAdd*
_output_shapes
:

2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Softmax_grad/mul_1dense_2/kernel/read*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/Relu2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_2/MatMul*
_output_shapes
:	
Ô
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_2/MatMul_grad/MatMuldense_1/Relu*
T0*
_class
loc:@dense_1/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ü
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*"
_class
loc:@dense_1/BiasAdd*
_output_shapes	
:

2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_1/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMulflatten_1/Reshape2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_1/MatMul* 
_output_shapes
:

ą
4training/Adam/gradients/flatten_1/Reshape_grad/ShapeShapemax_pooling2d_5/MaxPool*
T0*
out_type0*$
_class
loc:@flatten_1/Reshape*
_output_shapes
:

6training/Adam/gradients/flatten_1/Reshape_grad/ReshapeReshape2training/Adam/gradients/dense_1/MatMul_grad/MatMul4training/Adam/gradients/flatten_1/Reshape_grad/Shape*
T0*
Tshape0*$
_class
loc:@flatten_1/Reshape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
@training/Adam/gradients/max_pooling2d_5/MaxPool_grad/MaxPoolGradMaxPoolGradconv_5/Relumax_pooling2d_5/MaxPool6training/Adam/gradients/flatten_1/Reshape_grad/Reshape*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*
T0**
_class 
loc:@max_pooling2d_5/MaxPool*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
1training/Adam/gradients/conv_5/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_5/MaxPool_grad/MaxPoolGradconv_5/Relu*
T0*
_class
loc:@conv_5/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
7training/Adam/gradients/conv_5/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/conv_5/Relu_grad/ReluGrad*
T0*
data_formatNHWC*!
_class
loc:@conv_5/BiasAdd*
_output_shapes	
:
Ř
6training/Adam/gradients/conv_5/convolution_grad/ShapeNShapeNmax_pooling2d_4/MaxPoolconv_5/kernel/read*
N*
T0*
out_type0*%
_class
loc:@conv_5/convolution* 
_output_shapes
::
ľ
5training/Adam/gradients/conv_5/convolution_grad/ConstConst*%
valueB"          *
dtype0*%
_class
loc:@conv_5/convolution*
_output_shapes
:
Š
Ctraining/Adam/gradients/conv_5/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6training/Adam/gradients/conv_5/convolution_grad/ShapeNconv_5/kernel/read1training/Adam/gradients/conv_5/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_5/convolution*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
Dtraining/Adam/gradients/conv_5/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_4/MaxPool5training/Adam/gradients/conv_5/convolution_grad/Const1training/Adam/gradients/conv_5/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_5/convolution*(
_output_shapes
:
ó
@training/Adam/gradients/max_pooling2d_4/MaxPool_grad/MaxPoolGradMaxPoolGradconv_4/Relumax_pooling2d_4/MaxPoolCtraining/Adam/gradients/conv_5/convolution_grad/Conv2DBackpropInput*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*
T0**
_class 
loc:@max_pooling2d_4/MaxPool*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
1training/Adam/gradients/conv_4/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_4/MaxPool_grad/MaxPoolGradconv_4/Relu*
T0*
_class
loc:@conv_4/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
7training/Adam/gradients/conv_4/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/conv_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*!
_class
loc:@conv_4/BiasAdd*
_output_shapes	
:
Ř
6training/Adam/gradients/conv_4/convolution_grad/ShapeNShapeNmax_pooling2d_3/MaxPoolconv_4/kernel/read*
N*
T0*
out_type0*%
_class
loc:@conv_4/convolution* 
_output_shapes
::
ľ
5training/Adam/gradients/conv_4/convolution_grad/ConstConst*%
valueB"          *
dtype0*%
_class
loc:@conv_4/convolution*
_output_shapes
:
Š
Ctraining/Adam/gradients/conv_4/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6training/Adam/gradients/conv_4/convolution_grad/ShapeNconv_4/kernel/read1training/Adam/gradients/conv_4/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_4/convolution*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
Dtraining/Adam/gradients/conv_4/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_3/MaxPool5training/Adam/gradients/conv_4/convolution_grad/Const1training/Adam/gradients/conv_4/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_4/convolution*(
_output_shapes
:
ó
@training/Adam/gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGradconv_3/Relumax_pooling2d_3/MaxPoolCtraining/Adam/gradients/conv_4/convolution_grad/Conv2DBackpropInput*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*
T0**
_class 
loc:@max_pooling2d_3/MaxPool*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
1training/Adam/gradients/conv_3/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradconv_3/Relu*
T0*
_class
loc:@conv_3/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
7training/Adam/gradients/conv_3/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/conv_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*!
_class
loc:@conv_3/BiasAdd*
_output_shapes	
:
Ř
6training/Adam/gradients/conv_3/convolution_grad/ShapeNShapeNmax_pooling2d_2/MaxPoolconv_3/kernel/read*
N*
T0*
out_type0*%
_class
loc:@conv_3/convolution* 
_output_shapes
::
ľ
5training/Adam/gradients/conv_3/convolution_grad/ConstConst*%
valueB"           *
dtype0*%
_class
loc:@conv_3/convolution*
_output_shapes
:
Š
Ctraining/Adam/gradients/conv_3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6training/Adam/gradients/conv_3/convolution_grad/ShapeNconv_3/kernel/read1training/Adam/gradients/conv_3/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_3/convolution*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
Dtraining/Adam/gradients/conv_3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_2/MaxPool5training/Adam/gradients/conv_3/convolution_grad/Const1training/Adam/gradients/conv_3/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_3/convolution*(
_output_shapes
:
ó
@training/Adam/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradconv_2/Relumax_pooling2d_2/MaxPoolCtraining/Adam/gradients/conv_3/convolution_grad/Conv2DBackpropInput*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
1training/Adam/gradients/conv_2/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradconv_2/Relu*
T0*
_class
loc:@conv_2/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
7training/Adam/gradients/conv_2/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/conv_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*!
_class
loc:@conv_2/BiasAdd*
_output_shapes	
:
Ř
6training/Adam/gradients/conv_2/convolution_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv_2/kernel/read*
N*
T0*
out_type0*%
_class
loc:@conv_2/convolution* 
_output_shapes
::
ľ
5training/Adam/gradients/conv_2/convolution_grad/ConstConst*%
valueB"      `      *
dtype0*%
_class
loc:@conv_2/convolution*
_output_shapes
:
¨
Ctraining/Adam/gradients/conv_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6training/Adam/gradients/conv_2/convolution_grad/ShapeNconv_2/kernel/read1training/Adam/gradients/conv_2/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_2/convolution*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
Ś
Dtraining/Adam/gradients/conv_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool5training/Adam/gradients/conv_2/convolution_grad/Const1training/Adam/gradients/conv_2/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_2/convolution*'
_output_shapes
:`
ň
@training/Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv_1/Relumax_pooling2d_1/MaxPoolCtraining/Adam/gradients/conv_2/convolution_grad/Conv2DBackpropInput*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*
T0**
_class 
loc:@max_pooling2d_1/MaxPool*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
ć
1training/Adam/gradients/conv_1/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv_1/Relu*
T0*
_class
loc:@conv_1/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  `
Ř
7training/Adam/gradients/conv_1/BiasAdd_grad/BiasAddGradBiasAddGrad1training/Adam/gradients/conv_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*!
_class
loc:@conv_1/BiasAdd*
_output_shapes
:`
Ç
6training/Adam/gradients/conv_1/convolution_grad/ShapeNShapeNinputsconv_1/kernel/read*
N*
T0*
out_type0*%
_class
loc:@conv_1/convolution* 
_output_shapes
::
ľ
5training/Adam/gradients/conv_1/convolution_grad/ConstConst*%
valueB"         `   *
dtype0*%
_class
loc:@conv_1/convolution*
_output_shapes
:
¨
Ctraining/Adam/gradients/conv_1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6training/Adam/gradients/conv_1/convolution_grad/ShapeNconv_1/kernel/read1training/Adam/gradients/conv_1/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_1/convolution*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  

Dtraining/Adam/gradients/conv_1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterinputs5training/Adam/gradients/conv_1/convolution_grad/Const1training/Adam/gradients/conv_1/Relu_grad/ReluGrad*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*%
_class
loc:@conv_1/convolution*&
_output_shapes
:`
_
training/Adam/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ź
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*
T0	*
use_locking( *"
_class
loc:@Adam/iterations*
_output_shapes
: 
`
training/Adam/CastCastAdam/iterations/read*

SrcT0	*

DstT0*
_output_shapes
: 
X
training/Adam/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
X
training/Adam/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
T0*
_output_shapes
: 

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
`
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
T0*
_output_shapes
: 
|
#training/Adam/zeros/shape_as_tensorConst*%
valueB"         `   *
dtype0*
_output_shapes
:
^
training/Adam/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zerosFill#training/Adam/zeros/shape_as_tensortraining/Adam/zeros/Const*
T0*

index_type0*&
_output_shapes
:`

training/Adam/Variable
VariableV2*
shape:`*
dtype0*
	container *
shared_name *&
_output_shapes
:`
Ů
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@training/Adam/Variable*&
_output_shapes
:`

training/Adam/Variable/readIdentitytraining/Adam/Variable*
T0*)
_class
loc:@training/Adam/Variable*&
_output_shapes
:`
o
%training/Adam/zeros_1/shape_as_tensorConst*
valueB:`*
dtype0*
_output_shapes
:
`
training/Adam/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_1Fill%training/Adam/zeros_1/shape_as_tensortraining/Adam/zeros_1/Const*
T0*

index_type0*
_output_shapes
:`

training/Adam/Variable_1
VariableV2*
shape:`*
dtype0*
	container *
shared_name *
_output_shapes
:`
Ő
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
:`

training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
:`
~
%training/Adam/zeros_2/shape_as_tensorConst*%
valueB"      `      *
dtype0*
_output_shapes
:
`
training/Adam/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ľ
training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
T0*

index_type0*'
_output_shapes
:`

training/Adam/Variable_2
VariableV2*
shape:`*
dtype0*
	container *
shared_name *'
_output_shapes
:`
â
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_2*'
_output_shapes
:`
˘
training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
T0*+
_class!
loc:@training/Adam/Variable_2*'
_output_shapes
:`
p
%training/Adam/zeros_3/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_3Fill%training/Adam/zeros_3/shape_as_tensortraining/Adam/zeros_3/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_3
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ö
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes	
:

training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
T0*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes	
:
~
%training/Adam/zeros_4/shape_as_tensorConst*%
valueB"           *
dtype0*
_output_shapes
:
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ś
training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0*(
_output_shapes
:
 
training/Adam/Variable_4
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
ă
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_4*(
_output_shapes
:
Ł
training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
T0*+
_class!
loc:@training/Adam/Variable_4*(
_output_shapes
:
p
%training/Adam/zeros_5/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_5/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_5Fill%training/Adam/zeros_5/shape_as_tensortraining/Adam/zeros_5/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_5
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ö
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes	
:

training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes	
:
~
%training/Adam/zeros_6/shape_as_tensorConst*%
valueB"          *
dtype0*
_output_shapes
:
`
training/Adam/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ś
training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*
T0*

index_type0*(
_output_shapes
:
 
training/Adam/Variable_6
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
ă
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_6*(
_output_shapes
:
Ł
training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
T0*+
_class!
loc:@training/Adam/Variable_6*(
_output_shapes
:
p
%training/Adam/zeros_7/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_7/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_7Fill%training/Adam/zeros_7/shape_as_tensortraining/Adam/zeros_7/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_7
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ö
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes	
:

training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes	
:
~
%training/Adam/zeros_8/shape_as_tensorConst*%
valueB"          *
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ś
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*(
_output_shapes
:
 
training/Adam/Variable_8
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
ă
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_8*(
_output_shapes
:
Ł
training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
T0*+
_class!
loc:@training/Adam/Variable_8*(
_output_shapes
:
p
%training/Adam/zeros_9/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_9/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_9
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ö
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes	
:

training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes	
:
w
&training/Adam/zeros_10/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ą
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0* 
_output_shapes
:


training/Adam/Variable_10
VariableV2*
shape:
*
dtype0*
	container *
shared_name * 
_output_shapes
:

ß
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_10* 
_output_shapes
:


training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
T0*,
_class"
 loc:@training/Adam/Variable_10* 
_output_shapes
:

q
&training/Adam/zeros_11/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_11/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_11
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ú
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes	
:

training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes	
:
w
&training/Adam/zeros_12/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
 
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*
T0*

index_type0*
_output_shapes
:	

training/Adam/Variable_12
VariableV2*
shape:	*
dtype0*
	container *
shared_name *
_output_shapes
:	
Ţ
 training/Adam/Variable_12/AssignAssigntraining/Adam/Variable_12training/Adam/zeros_12*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes
:	

training/Adam/Variable_12/readIdentitytraining/Adam/Variable_12*
T0*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes
:	
p
&training/Adam/zeros_13/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_13/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_13Fill&training/Adam/zeros_13/shape_as_tensortraining/Adam/zeros_13/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_13
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_13/AssignAssigntraining/Adam/Variable_13training/Adam/zeros_13*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_13*
_output_shapes
:

training/Adam/Variable_13/readIdentitytraining/Adam/Variable_13*
T0*,
_class"
 loc:@training/Adam/Variable_13*
_output_shapes
:

&training/Adam/zeros_14/shape_as_tensorConst*%
valueB"         `   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_14Fill&training/Adam/zeros_14/shape_as_tensortraining/Adam/zeros_14/Const*
T0*

index_type0*&
_output_shapes
:`

training/Adam/Variable_14
VariableV2*
shape:`*
dtype0*
	container *
shared_name *&
_output_shapes
:`
ĺ
 training/Adam/Variable_14/AssignAssigntraining/Adam/Variable_14training/Adam/zeros_14*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_14*&
_output_shapes
:`
¤
training/Adam/Variable_14/readIdentitytraining/Adam/Variable_14*
T0*,
_class"
 loc:@training/Adam/Variable_14*&
_output_shapes
:`
p
&training/Adam/zeros_15/shape_as_tensorConst*
valueB:`*
dtype0*
_output_shapes
:
a
training/Adam/zeros_15/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_15Fill&training/Adam/zeros_15/shape_as_tensortraining/Adam/zeros_15/Const*
T0*

index_type0*
_output_shapes
:`

training/Adam/Variable_15
VariableV2*
shape:`*
dtype0*
	container *
shared_name *
_output_shapes
:`
Ů
 training/Adam/Variable_15/AssignAssigntraining/Adam/Variable_15training/Adam/zeros_15*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_15*
_output_shapes
:`

training/Adam/Variable_15/readIdentitytraining/Adam/Variable_15*
T0*,
_class"
 loc:@training/Adam/Variable_15*
_output_shapes
:`

&training/Adam/zeros_16/shape_as_tensorConst*%
valueB"      `      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_16/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¨
training/Adam/zeros_16Fill&training/Adam/zeros_16/shape_as_tensortraining/Adam/zeros_16/Const*
T0*

index_type0*'
_output_shapes
:`

training/Adam/Variable_16
VariableV2*
shape:`*
dtype0*
	container *
shared_name *'
_output_shapes
:`
ć
 training/Adam/Variable_16/AssignAssigntraining/Adam/Variable_16training/Adam/zeros_16*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_16*'
_output_shapes
:`
Ľ
training/Adam/Variable_16/readIdentitytraining/Adam/Variable_16*
T0*,
_class"
 loc:@training/Adam/Variable_16*'
_output_shapes
:`
q
&training/Adam/zeros_17/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_17/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_17Fill&training/Adam/zeros_17/shape_as_tensortraining/Adam/zeros_17/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_17
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ú
 training/Adam/Variable_17/AssignAssigntraining/Adam/Variable_17training/Adam/zeros_17*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_17*
_output_shapes	
:

training/Adam/Variable_17/readIdentitytraining/Adam/Variable_17*
T0*,
_class"
 loc:@training/Adam/Variable_17*
_output_shapes	
:

&training/Adam/zeros_18/shape_as_tensorConst*%
valueB"           *
dtype0*
_output_shapes
:
a
training/Adam/zeros_18/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Š
training/Adam/zeros_18Fill&training/Adam/zeros_18/shape_as_tensortraining/Adam/zeros_18/Const*
T0*

index_type0*(
_output_shapes
:
Ą
training/Adam/Variable_18
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
ç
 training/Adam/Variable_18/AssignAssigntraining/Adam/Variable_18training/Adam/zeros_18*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_18*(
_output_shapes
:
Ś
training/Adam/Variable_18/readIdentitytraining/Adam/Variable_18*
T0*,
_class"
 loc:@training/Adam/Variable_18*(
_output_shapes
:
q
&training/Adam/zeros_19/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_19/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_19Fill&training/Adam/zeros_19/shape_as_tensortraining/Adam/zeros_19/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_19
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ú
 training/Adam/Variable_19/AssignAssigntraining/Adam/Variable_19training/Adam/zeros_19*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes	
:

training/Adam/Variable_19/readIdentitytraining/Adam/Variable_19*
T0*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes	
:

&training/Adam/zeros_20/shape_as_tensorConst*%
valueB"          *
dtype0*
_output_shapes
:
a
training/Adam/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Š
training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
T0*

index_type0*(
_output_shapes
:
Ą
training/Adam/Variable_20
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
ç
 training/Adam/Variable_20/AssignAssigntraining/Adam/Variable_20training/Adam/zeros_20*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_20*(
_output_shapes
:
Ś
training/Adam/Variable_20/readIdentitytraining/Adam/Variable_20*
T0*,
_class"
 loc:@training/Adam/Variable_20*(
_output_shapes
:
q
&training/Adam/zeros_21/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_21/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_21Fill&training/Adam/zeros_21/shape_as_tensortraining/Adam/zeros_21/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_21
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ú
 training/Adam/Variable_21/AssignAssigntraining/Adam/Variable_21training/Adam/zeros_21*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_21*
_output_shapes	
:

training/Adam/Variable_21/readIdentitytraining/Adam/Variable_21*
T0*,
_class"
 loc:@training/Adam/Variable_21*
_output_shapes	
:

&training/Adam/zeros_22/shape_as_tensorConst*%
valueB"          *
dtype0*
_output_shapes
:
a
training/Adam/zeros_22/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Š
training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*
T0*

index_type0*(
_output_shapes
:
Ą
training/Adam/Variable_22
VariableV2*
shape:*
dtype0*
	container *
shared_name *(
_output_shapes
:
ç
 training/Adam/Variable_22/AssignAssigntraining/Adam/Variable_22training/Adam/zeros_22*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_22*(
_output_shapes
:
Ś
training/Adam/Variable_22/readIdentitytraining/Adam/Variable_22*
T0*,
_class"
 loc:@training/Adam/Variable_22*(
_output_shapes
:
q
&training/Adam/zeros_23/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_23/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_23Fill&training/Adam/zeros_23/shape_as_tensortraining/Adam/zeros_23/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_23
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ú
 training/Adam/Variable_23/AssignAssigntraining/Adam/Variable_23training/Adam/zeros_23*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes	
:

training/Adam/Variable_23/readIdentitytraining/Adam/Variable_23*
T0*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes	
:
w
&training/Adam/zeros_24/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
a
training/Adam/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ą
training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*
T0*

index_type0* 
_output_shapes
:


training/Adam/Variable_24
VariableV2*
shape:
*
dtype0*
	container *
shared_name * 
_output_shapes
:

ß
 training/Adam/Variable_24/AssignAssigntraining/Adam/Variable_24training/Adam/zeros_24*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_24* 
_output_shapes
:


training/Adam/Variable_24/readIdentitytraining/Adam/Variable_24*
T0*,
_class"
 loc:@training/Adam/Variable_24* 
_output_shapes
:

q
&training/Adam/zeros_25/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_25/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_25Fill&training/Adam/zeros_25/shape_as_tensortraining/Adam/zeros_25/Const*
T0*

index_type0*
_output_shapes	
:

training/Adam/Variable_25
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ú
 training/Adam/Variable_25/AssignAssigntraining/Adam/Variable_25training/Adam/zeros_25*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes	
:

training/Adam/Variable_25/readIdentitytraining/Adam/Variable_25*
T0*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes	
:
w
&training/Adam/zeros_26/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_26/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
 
training/Adam/zeros_26Fill&training/Adam/zeros_26/shape_as_tensortraining/Adam/zeros_26/Const*
T0*

index_type0*
_output_shapes
:	

training/Adam/Variable_26
VariableV2*
shape:	*
dtype0*
	container *
shared_name *
_output_shapes
:	
Ţ
 training/Adam/Variable_26/AssignAssigntraining/Adam/Variable_26training/Adam/zeros_26*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes
:	

training/Adam/Variable_26/readIdentitytraining/Adam/Variable_26*
T0*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes
:	
p
&training/Adam/zeros_27/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_27/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_27Fill&training/Adam/zeros_27/shape_as_tensortraining/Adam/zeros_27/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_27
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_27/AssignAssigntraining/Adam/Variable_27training/Adam/zeros_27*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes
:

training/Adam/Variable_27/readIdentitytraining/Adam/Variable_27*
T0*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes
:
p
&training/Adam/zeros_28/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_28/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_28Fill&training/Adam/zeros_28/shape_as_tensortraining/Adam/zeros_28/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_28
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_28/AssignAssigntraining/Adam/Variable_28training/Adam/zeros_28*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_28*
_output_shapes
:

training/Adam/Variable_28/readIdentitytraining/Adam/Variable_28*
T0*,
_class"
 loc:@training/Adam/Variable_28*
_output_shapes
:
p
&training/Adam/zeros_29/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_29/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_29Fill&training/Adam/zeros_29/shape_as_tensortraining/Adam/zeros_29/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_29
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_29/AssignAssigntraining/Adam/Variable_29training/Adam/zeros_29*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_29*
_output_shapes
:

training/Adam/Variable_29/readIdentitytraining/Adam/Variable_29*
T0*,
_class"
 loc:@training/Adam/Variable_29*
_output_shapes
:
p
&training/Adam/zeros_30/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_30/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_30Fill&training/Adam/zeros_30/shape_as_tensortraining/Adam/zeros_30/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_30
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_30/AssignAssigntraining/Adam/Variable_30training/Adam/zeros_30*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_30*
_output_shapes
:

training/Adam/Variable_30/readIdentitytraining/Adam/Variable_30*
T0*,
_class"
 loc:@training/Adam/Variable_30*
_output_shapes
:
p
&training/Adam/zeros_31/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_31/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_31Fill&training/Adam/zeros_31/shape_as_tensortraining/Adam/zeros_31/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_31
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_31/AssignAssigntraining/Adam/Variable_31training/Adam/zeros_31*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_31*
_output_shapes
:

training/Adam/Variable_31/readIdentitytraining/Adam/Variable_31*
T0*,
_class"
 loc:@training/Adam/Variable_31*
_output_shapes
:
p
&training/Adam/zeros_32/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_32/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_32Fill&training/Adam/zeros_32/shape_as_tensortraining/Adam/zeros_32/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_32
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_32/AssignAssigntraining/Adam/Variable_32training/Adam/zeros_32*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_32*
_output_shapes
:

training/Adam/Variable_32/readIdentitytraining/Adam/Variable_32*
T0*,
_class"
 loc:@training/Adam/Variable_32*
_output_shapes
:
p
&training/Adam/zeros_33/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_33/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_33Fill&training/Adam/zeros_33/shape_as_tensortraining/Adam/zeros_33/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_33
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_33/AssignAssigntraining/Adam/Variable_33training/Adam/zeros_33*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_33*
_output_shapes
:

training/Adam/Variable_33/readIdentitytraining/Adam/Variable_33*
T0*,
_class"
 loc:@training/Adam/Variable_33*
_output_shapes
:
p
&training/Adam/zeros_34/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_34/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_34Fill&training/Adam/zeros_34/shape_as_tensortraining/Adam/zeros_34/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_34
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_34/AssignAssigntraining/Adam/Variable_34training/Adam/zeros_34*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_34*
_output_shapes
:

training/Adam/Variable_34/readIdentitytraining/Adam/Variable_34*
T0*,
_class"
 loc:@training/Adam/Variable_34*
_output_shapes
:
p
&training/Adam/zeros_35/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_35/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_35Fill&training/Adam/zeros_35/shape_as_tensortraining/Adam/zeros_35/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_35
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_35/AssignAssigntraining/Adam/Variable_35training/Adam/zeros_35*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_35*
_output_shapes
:

training/Adam/Variable_35/readIdentitytraining/Adam/Variable_35*
T0*,
_class"
 loc:@training/Adam/Variable_35*
_output_shapes
:
p
&training/Adam/zeros_36/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_36/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_36Fill&training/Adam/zeros_36/shape_as_tensortraining/Adam/zeros_36/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_36
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_36/AssignAssigntraining/Adam/Variable_36training/Adam/zeros_36*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_36*
_output_shapes
:

training/Adam/Variable_36/readIdentitytraining/Adam/Variable_36*
T0*,
_class"
 loc:@training/Adam/Variable_36*
_output_shapes
:
p
&training/Adam/zeros_37/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_37/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_37Fill&training/Adam/zeros_37/shape_as_tensortraining/Adam/zeros_37/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_37
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_37/AssignAssigntraining/Adam/Variable_37training/Adam/zeros_37*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_37*
_output_shapes
:

training/Adam/Variable_37/readIdentitytraining/Adam/Variable_37*
T0*,
_class"
 loc:@training/Adam/Variable_37*
_output_shapes
:
p
&training/Adam/zeros_38/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_38/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_38Fill&training/Adam/zeros_38/shape_as_tensortraining/Adam/zeros_38/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_38
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_38/AssignAssigntraining/Adam/Variable_38training/Adam/zeros_38*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_38*
_output_shapes
:

training/Adam/Variable_38/readIdentitytraining/Adam/Variable_38*
T0*,
_class"
 loc:@training/Adam/Variable_38*
_output_shapes
:
p
&training/Adam/zeros_39/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_39/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_39Fill&training/Adam/zeros_39/shape_as_tensortraining/Adam/zeros_39/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_39
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_39/AssignAssigntraining/Adam/Variable_39training/Adam/zeros_39*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_39*
_output_shapes
:

training/Adam/Variable_39/readIdentitytraining/Adam/Variable_39*
T0*,
_class"
 loc:@training/Adam/Variable_39*
_output_shapes
:
p
&training/Adam/zeros_40/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_40/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_40Fill&training/Adam/zeros_40/shape_as_tensortraining/Adam/zeros_40/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_40
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_40/AssignAssigntraining/Adam/Variable_40training/Adam/zeros_40*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_40*
_output_shapes
:

training/Adam/Variable_40/readIdentitytraining/Adam/Variable_40*
T0*,
_class"
 loc:@training/Adam/Variable_40*
_output_shapes
:
p
&training/Adam/zeros_41/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_41/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_41Fill&training/Adam/zeros_41/shape_as_tensortraining/Adam/zeros_41/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_41
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ů
 training/Adam/Variable_41/AssignAssigntraining/Adam/Variable_41training/Adam/zeros_41*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_41*
_output_shapes
:

training/Adam/Variable_41/readIdentitytraining/Adam/Variable_41*
T0*,
_class"
 loc:@training/Adam/Variable_41*
_output_shapes
:
z
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*&
_output_shapes
:`
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 
Ś
training/Adam/mul_2Multraining/Adam/sub_2Dtraining/Adam/gradients/conv_1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:`
u
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*&
_output_shapes
:`
}
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_14/read*
T0*&
_output_shapes
:`
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/SquareSquareDtraining/Adam/gradients/conv_1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:`
v
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*&
_output_shapes
:`
u
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*&
_output_shapes
:`
s
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*&
_output_shapes
:`
Z
training/Adam/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_3Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*
T0*&
_output_shapes
:`

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
T0*&
_output_shapes
:`
l
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*&
_output_shapes
:`
Z
training/Adam/add_3/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
x
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*&
_output_shapes
:`
}
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*&
_output_shapes
:`
x
training/Adam/sub_4Subconv_1/kernel/readtraining/Adam/truediv_1*
T0*&
_output_shapes
:`
Đ
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
T0*
validate_shape(*
use_locking(*)
_class
loc:@training/Adam/Variable*&
_output_shapes
:`
Ř
training/Adam/Assign_1Assigntraining/Adam/Variable_14training/Adam/add_2*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_14*&
_output_shapes
:`
Ŕ
training/Adam/Assign_2Assignconv_1/kerneltraining/Adam/sub_4*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_1/kernel*&
_output_shapes
:`
p
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
T0*
_output_shapes
:`
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_57training/Adam/gradients/conv_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
:`
q
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_15/read*
T0*
_output_shapes
:`
Z
training/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
T0*
_output_shapes
: 
~
training/Adam/Square_1Square7training/Adam/gradients/conv_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:`
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
:`
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
:`
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes
:`
Z
training/Adam/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_5Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
T0*
_output_shapes
:`

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
T0*
_output_shapes
:`
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
:`
Z
training/Adam/add_6/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes
:`
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes
:`
j
training/Adam/sub_7Subconv_1/bias/readtraining/Adam/truediv_2*
T0*
_output_shapes
:`
Ę
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
:`
Ě
training/Adam/Assign_4Assigntraining/Adam/Variable_15training/Adam/add_5*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_15*
_output_shapes
:`
°
training/Adam/Assign_5Assignconv_1/biastraining/Adam/sub_7*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_1/bias*
_output_shapes
:`
~
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
T0*'
_output_shapes
:`
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
T0*
_output_shapes
: 
¨
training/Adam/mul_12Multraining/Adam/sub_8Dtraining/Adam/gradients/conv_2/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:`
x
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*'
_output_shapes
:`

training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_16/read*
T0*'
_output_shapes
:`
Z
training/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_2SquareDtraining/Adam/gradients/conv_2/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:`
z
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*'
_output_shapes
:`
x
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*'
_output_shapes
:`
u
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*'
_output_shapes
:`
Z
training/Adam/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_7Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
T0*'
_output_shapes
:`

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
T0*'
_output_shapes
:`
m
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*'
_output_shapes
:`
Z
training/Adam/add_9/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
y
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*'
_output_shapes
:`

training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*'
_output_shapes
:`
z
training/Adam/sub_10Subconv_2/kernel/readtraining/Adam/truediv_3*
T0*'
_output_shapes
:`
×
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_2*'
_output_shapes
:`
Ů
training/Adam/Assign_7Assigntraining/Adam/Variable_16training/Adam/add_8*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_16*'
_output_shapes
:`
Â
training/Adam/Assign_8Assignconv_2/kerneltraining/Adam/sub_10*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_2/kernel*'
_output_shapes
:`
r
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes	
:
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_17Multraining/Adam/sub_117training/Adam/gradients/conv_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes	
:
s
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_17/read*
T0*
_output_shapes	
:
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_3Square7training/Adam/gradients/conv_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes	
:
m
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes	
:
j
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes	
:
Z
training/Adam/Const_8Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_9Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
T0*
_output_shapes	
:

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
T0*
_output_shapes	
:
a
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes	
:
[
training/Adam/add_12/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes	
:
t
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes	
:
l
training/Adam/sub_13Subconv_2/bias/readtraining/Adam/truediv_4*
T0*
_output_shapes	
:
Ě
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes	
:
Ď
training/Adam/Assign_10Assigntraining/Adam/Variable_17training/Adam/add_11*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_17*
_output_shapes	
:
ł
training/Adam/Assign_11Assignconv_2/biastraining/Adam/sub_13*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_2/bias*
_output_shapes	
:

training/Adam/mul_21MulAdam/beta_1/readtraining/Adam/Variable_4/read*
T0*(
_output_shapes
:
[
training/Adam/sub_14/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_14Subtraining/Adam/sub_14/xAdam/beta_1/read*
T0*
_output_shapes
: 
Ş
training/Adam/mul_22Multraining/Adam/sub_14Dtraining/Adam/gradients/conv_3/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
z
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*(
_output_shapes
:

training/Adam/mul_23MulAdam/beta_2/readtraining/Adam/Variable_18/read*
T0*(
_output_shapes
:
[
training/Adam/sub_15/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_15Subtraining/Adam/sub_15/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_4SquareDtraining/Adam/gradients/conv_3/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
|
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*(
_output_shapes
:
z
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*(
_output_shapes
:
w
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*(
_output_shapes
:
[
training/Adam/Const_10Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_11Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_11*
T0*(
_output_shapes
:

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_10*
T0*(
_output_shapes
:
n
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*(
_output_shapes
:
[
training/Adam/add_15/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
|
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*(
_output_shapes
:

training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0*(
_output_shapes
:
{
training/Adam/sub_16Subconv_3/kernel/readtraining/Adam/truediv_5*
T0*(
_output_shapes
:
Ú
training/Adam/Assign_12Assigntraining/Adam/Variable_4training/Adam/add_13*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_4*(
_output_shapes
:
Ü
training/Adam/Assign_13Assigntraining/Adam/Variable_18training/Adam/add_14*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_18*(
_output_shapes
:
Ä
training/Adam/Assign_14Assignconv_3/kerneltraining/Adam/sub_16*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_3/kernel*(
_output_shapes
:
r
training/Adam/mul_26MulAdam/beta_1/readtraining/Adam/Variable_5/read*
T0*
_output_shapes	
:
[
training/Adam/sub_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_17Subtraining/Adam/sub_17/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_27Multraining/Adam/sub_177training/Adam/gradients/conv_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes	
:
s
training/Adam/mul_28MulAdam/beta_2/readtraining/Adam/Variable_19/read*
T0*
_output_shapes	
:
[
training/Adam/sub_18/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_18Subtraining/Adam/sub_18/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_5Square7training/Adam/gradients/conv_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
T0*
_output_shapes	
:
m
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes	
:
j
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
T0*
_output_shapes	
:
[
training/Adam/Const_12Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_13Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_13*
T0*
_output_shapes	
:

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_12*
T0*
_output_shapes	
:
a
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes	
:
[
training/Adam/add_18/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*
_output_shapes	
:
t
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*
_output_shapes	
:
l
training/Adam/sub_19Subconv_3/bias/readtraining/Adam/truediv_6*
T0*
_output_shapes	
:
Í
training/Adam/Assign_15Assigntraining/Adam/Variable_5training/Adam/add_16*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes	
:
Ď
training/Adam/Assign_16Assigntraining/Adam/Variable_19training/Adam/add_17*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes	
:
ł
training/Adam/Assign_17Assignconv_3/biastraining/Adam/sub_19*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_3/bias*
_output_shapes	
:

training/Adam/mul_31MulAdam/beta_1/readtraining/Adam/Variable_6/read*
T0*(
_output_shapes
:
[
training/Adam/sub_20/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_20Subtraining/Adam/sub_20/xAdam/beta_1/read*
T0*
_output_shapes
: 
Ş
training/Adam/mul_32Multraining/Adam/sub_20Dtraining/Adam/gradients/conv_4/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
z
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
T0*(
_output_shapes
:

training/Adam/mul_33MulAdam/beta_2/readtraining/Adam/Variable_20/read*
T0*(
_output_shapes
:
[
training/Adam/sub_21/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_21Subtraining/Adam/sub_21/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_6SquareDtraining/Adam/gradients/conv_4/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
|
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
T0*(
_output_shapes
:
z
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
T0*(
_output_shapes
:
w
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
T0*(
_output_shapes
:
[
training/Adam/Const_14Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_15Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_15*
T0*(
_output_shapes
:

training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_14*
T0*(
_output_shapes
:
n
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
T0*(
_output_shapes
:
[
training/Adam/add_21/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
|
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
T0*(
_output_shapes
:

training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
T0*(
_output_shapes
:
{
training/Adam/sub_22Subconv_4/kernel/readtraining/Adam/truediv_7*
T0*(
_output_shapes
:
Ú
training/Adam/Assign_18Assigntraining/Adam/Variable_6training/Adam/add_19*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_6*(
_output_shapes
:
Ü
training/Adam/Assign_19Assigntraining/Adam/Variable_20training/Adam/add_20*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_20*(
_output_shapes
:
Ä
training/Adam/Assign_20Assignconv_4/kerneltraining/Adam/sub_22*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_4/kernel*(
_output_shapes
:
r
training/Adam/mul_36MulAdam/beta_1/readtraining/Adam/Variable_7/read*
T0*
_output_shapes	
:
[
training/Adam/sub_23/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_23Subtraining/Adam/sub_23/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_37Multraining/Adam/sub_237training/Adam/gradients/conv_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
T0*
_output_shapes	
:
s
training/Adam/mul_38MulAdam/beta_2/readtraining/Adam/Variable_21/read*
T0*
_output_shapes	
:
[
training/Adam/sub_24/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_24Subtraining/Adam/sub_24/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_7Square7training/Adam/gradients/conv_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes	
:
m
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
T0*
_output_shapes	
:
j
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
T0*
_output_shapes	
:
[
training/Adam/Const_16Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_17Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_17*
T0*
_output_shapes	
:

training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_16*
T0*
_output_shapes	
:
a
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
T0*
_output_shapes	
:
[
training/Adam/add_24/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
T0*
_output_shapes	
:
t
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
T0*
_output_shapes	
:
l
training/Adam/sub_25Subconv_4/bias/readtraining/Adam/truediv_8*
T0*
_output_shapes	
:
Í
training/Adam/Assign_21Assigntraining/Adam/Variable_7training/Adam/add_22*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes	
:
Ď
training/Adam/Assign_22Assigntraining/Adam/Variable_21training/Adam/add_23*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_21*
_output_shapes	
:
ł
training/Adam/Assign_23Assignconv_4/biastraining/Adam/sub_25*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_4/bias*
_output_shapes	
:

training/Adam/mul_41MulAdam/beta_1/readtraining/Adam/Variable_8/read*
T0*(
_output_shapes
:
[
training/Adam/sub_26/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_26Subtraining/Adam/sub_26/xAdam/beta_1/read*
T0*
_output_shapes
: 
Ş
training/Adam/mul_42Multraining/Adam/sub_26Dtraining/Adam/gradients/conv_5/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
z
training/Adam/add_25Addtraining/Adam/mul_41training/Adam/mul_42*
T0*(
_output_shapes
:

training/Adam/mul_43MulAdam/beta_2/readtraining/Adam/Variable_22/read*
T0*(
_output_shapes
:
[
training/Adam/sub_27/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_27Subtraining/Adam/sub_27/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_8SquareDtraining/Adam/gradients/conv_5/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
|
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*
T0*(
_output_shapes
:
z
training/Adam/add_26Addtraining/Adam/mul_43training/Adam/mul_44*
T0*(
_output_shapes
:
w
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_25*
T0*(
_output_shapes
:
[
training/Adam/Const_18Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_19Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/add_26training/Adam/Const_19*
T0*(
_output_shapes
:

training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_18*
T0*(
_output_shapes
:
n
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*
T0*(
_output_shapes
:
[
training/Adam/add_27/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
|
training/Adam/add_27Addtraining/Adam/Sqrt_9training/Adam/add_27/y*
T0*(
_output_shapes
:

training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_27*
T0*(
_output_shapes
:
{
training/Adam/sub_28Subconv_5/kernel/readtraining/Adam/truediv_9*
T0*(
_output_shapes
:
Ú
training/Adam/Assign_24Assigntraining/Adam/Variable_8training/Adam/add_25*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_8*(
_output_shapes
:
Ü
training/Adam/Assign_25Assigntraining/Adam/Variable_22training/Adam/add_26*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_22*(
_output_shapes
:
Ä
training/Adam/Assign_26Assignconv_5/kerneltraining/Adam/sub_28*
T0*
validate_shape(*
use_locking(* 
_class
loc:@conv_5/kernel*(
_output_shapes
:
r
training/Adam/mul_46MulAdam/beta_1/readtraining/Adam/Variable_9/read*
T0*
_output_shapes	
:
[
training/Adam/sub_29/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_29Subtraining/Adam/sub_29/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_47Multraining/Adam/sub_297training/Adam/gradients/conv_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_28Addtraining/Adam/mul_46training/Adam/mul_47*
T0*
_output_shapes	
:
s
training/Adam/mul_48MulAdam/beta_2/readtraining/Adam/Variable_23/read*
T0*
_output_shapes	
:
[
training/Adam/sub_30/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_30Subtraining/Adam/sub_30/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_9Square7training/Adam/gradients/conv_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/mul_49Multraining/Adam/sub_30training/Adam/Square_9*
T0*
_output_shapes	
:
m
training/Adam/add_29Addtraining/Adam/mul_48training/Adam/mul_49*
T0*
_output_shapes	
:
j
training/Adam/mul_50Multraining/Adam/multraining/Adam/add_28*
T0*
_output_shapes	
:
[
training/Adam/Const_20Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_21Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_10/MinimumMinimumtraining/Adam/add_29training/Adam/Const_21*
T0*
_output_shapes	
:

training/Adam/clip_by_value_10Maximum&training/Adam/clip_by_value_10/Minimumtraining/Adam/Const_20*
T0*
_output_shapes	
:
c
training/Adam/Sqrt_10Sqrttraining/Adam/clip_by_value_10*
T0*
_output_shapes	
:
[
training/Adam/add_30/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_30Addtraining/Adam/Sqrt_10training/Adam/add_30/y*
T0*
_output_shapes	
:
u
training/Adam/truediv_10RealDivtraining/Adam/mul_50training/Adam/add_30*
T0*
_output_shapes	
:
m
training/Adam/sub_31Subconv_5/bias/readtraining/Adam/truediv_10*
T0*
_output_shapes	
:
Í
training/Adam/Assign_27Assigntraining/Adam/Variable_9training/Adam/add_28*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes	
:
Ď
training/Adam/Assign_28Assigntraining/Adam/Variable_23training/Adam/add_29*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes	
:
ł
training/Adam/Assign_29Assignconv_5/biastraining/Adam/sub_31*
T0*
validate_shape(*
use_locking(*
_class
loc:@conv_5/bias*
_output_shapes	
:
x
training/Adam/mul_51MulAdam/beta_1/readtraining/Adam/Variable_10/read*
T0* 
_output_shapes
:

[
training/Adam/sub_32/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_32Subtraining/Adam/sub_32/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_52Multraining/Adam/sub_324training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

r
training/Adam/add_31Addtraining/Adam/mul_51training/Adam/mul_52*
T0* 
_output_shapes
:

x
training/Adam/mul_53MulAdam/beta_2/readtraining/Adam/Variable_24/read*
T0* 
_output_shapes
:

[
training/Adam/sub_33/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_33Subtraining/Adam/sub_33/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_10Square4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

u
training/Adam/mul_54Multraining/Adam/sub_33training/Adam/Square_10*
T0* 
_output_shapes
:

r
training/Adam/add_32Addtraining/Adam/mul_53training/Adam/mul_54*
T0* 
_output_shapes
:

o
training/Adam/mul_55Multraining/Adam/multraining/Adam/add_31*
T0* 
_output_shapes
:

[
training/Adam/Const_22Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_23Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_11/MinimumMinimumtraining/Adam/add_32training/Adam/Const_23*
T0* 
_output_shapes
:


training/Adam/clip_by_value_11Maximum&training/Adam/clip_by_value_11/Minimumtraining/Adam/Const_22*
T0* 
_output_shapes
:

h
training/Adam/Sqrt_11Sqrttraining/Adam/clip_by_value_11*
T0* 
_output_shapes
:

[
training/Adam/add_33/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
u
training/Adam/add_33Addtraining/Adam/Sqrt_11training/Adam/add_33/y*
T0* 
_output_shapes
:

z
training/Adam/truediv_11RealDivtraining/Adam/mul_55training/Adam/add_33*
T0* 
_output_shapes
:

u
training/Adam/sub_34Subdense_1/kernel/readtraining/Adam/truediv_11*
T0* 
_output_shapes
:

Ô
training/Adam/Assign_30Assigntraining/Adam/Variable_10training/Adam/add_31*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_10* 
_output_shapes
:

Ô
training/Adam/Assign_31Assigntraining/Adam/Variable_24training/Adam/add_32*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_24* 
_output_shapes
:

ž
training/Adam/Assign_32Assigndense_1/kerneltraining/Adam/sub_34*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

s
training/Adam/mul_56MulAdam/beta_1/readtraining/Adam/Variable_11/read*
T0*
_output_shapes	
:
[
training/Adam/sub_35/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_35Subtraining/Adam/sub_35/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_57Multraining/Adam/sub_358training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_34Addtraining/Adam/mul_56training/Adam/mul_57*
T0*
_output_shapes	
:
s
training/Adam/mul_58MulAdam/beta_2/readtraining/Adam/Variable_25/read*
T0*
_output_shapes	
:
[
training/Adam/sub_36/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_36Subtraining/Adam/sub_36/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_11Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
p
training/Adam/mul_59Multraining/Adam/sub_36training/Adam/Square_11*
T0*
_output_shapes	
:
m
training/Adam/add_35Addtraining/Adam/mul_58training/Adam/mul_59*
T0*
_output_shapes	
:
j
training/Adam/mul_60Multraining/Adam/multraining/Adam/add_34*
T0*
_output_shapes	
:
[
training/Adam/Const_24Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_25Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_12/MinimumMinimumtraining/Adam/add_35training/Adam/Const_25*
T0*
_output_shapes	
:

training/Adam/clip_by_value_12Maximum&training/Adam/clip_by_value_12/Minimumtraining/Adam/Const_24*
T0*
_output_shapes	
:
c
training/Adam/Sqrt_12Sqrttraining/Adam/clip_by_value_12*
T0*
_output_shapes	
:
[
training/Adam/add_36/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_36Addtraining/Adam/Sqrt_12training/Adam/add_36/y*
T0*
_output_shapes	
:
u
training/Adam/truediv_12RealDivtraining/Adam/mul_60training/Adam/add_36*
T0*
_output_shapes	
:
n
training/Adam/sub_37Subdense_1/bias/readtraining/Adam/truediv_12*
T0*
_output_shapes	
:
Ď
training/Adam/Assign_33Assigntraining/Adam/Variable_11training/Adam/add_34*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes	
:
Ď
training/Adam/Assign_34Assigntraining/Adam/Variable_25training/Adam/add_35*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes	
:
ľ
training/Adam/Assign_35Assigndense_1/biastraining/Adam/sub_37*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_1/bias*
_output_shapes	
:
w
training/Adam/mul_61MulAdam/beta_1/readtraining/Adam/Variable_12/read*
T0*
_output_shapes
:	
[
training/Adam/sub_38/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_38Subtraining/Adam/sub_38/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_62Multraining/Adam/sub_384training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
q
training/Adam/add_37Addtraining/Adam/mul_61training/Adam/mul_62*
T0*
_output_shapes
:	
w
training/Adam/mul_63MulAdam/beta_2/readtraining/Adam/Variable_26/read*
T0*
_output_shapes
:	
[
training/Adam/sub_39/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_39Subtraining/Adam/sub_39/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_12Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
t
training/Adam/mul_64Multraining/Adam/sub_39training/Adam/Square_12*
T0*
_output_shapes
:	
q
training/Adam/add_38Addtraining/Adam/mul_63training/Adam/mul_64*
T0*
_output_shapes
:	
n
training/Adam/mul_65Multraining/Adam/multraining/Adam/add_37*
T0*
_output_shapes
:	
[
training/Adam/Const_26Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_27Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_13/MinimumMinimumtraining/Adam/add_38training/Adam/Const_27*
T0*
_output_shapes
:	

training/Adam/clip_by_value_13Maximum&training/Adam/clip_by_value_13/Minimumtraining/Adam/Const_26*
T0*
_output_shapes
:	
g
training/Adam/Sqrt_13Sqrttraining/Adam/clip_by_value_13*
T0*
_output_shapes
:	
[
training/Adam/add_39/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
t
training/Adam/add_39Addtraining/Adam/Sqrt_13training/Adam/add_39/y*
T0*
_output_shapes
:	
y
training/Adam/truediv_13RealDivtraining/Adam/mul_65training/Adam/add_39*
T0*
_output_shapes
:	
t
training/Adam/sub_40Subdense_2/kernel/readtraining/Adam/truediv_13*
T0*
_output_shapes
:	
Ó
training/Adam/Assign_36Assigntraining/Adam/Variable_12training/Adam/add_37*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes
:	
Ó
training/Adam/Assign_37Assigntraining/Adam/Variable_26training/Adam/add_38*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes
:	
˝
training/Adam/Assign_38Assigndense_2/kerneltraining/Adam/sub_40*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
r
training/Adam/mul_66MulAdam/beta_1/readtraining/Adam/Variable_13/read*
T0*
_output_shapes
:
[
training/Adam/sub_41/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_41Subtraining/Adam/sub_41/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_67Multraining/Adam/sub_418training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_40Addtraining/Adam/mul_66training/Adam/mul_67*
T0*
_output_shapes
:
r
training/Adam/mul_68MulAdam/beta_2/readtraining/Adam/Variable_27/read*
T0*
_output_shapes
:
[
training/Adam/sub_42/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_42Subtraining/Adam/sub_42/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_13Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
o
training/Adam/mul_69Multraining/Adam/sub_42training/Adam/Square_13*
T0*
_output_shapes
:
l
training/Adam/add_41Addtraining/Adam/mul_68training/Adam/mul_69*
T0*
_output_shapes
:
i
training/Adam/mul_70Multraining/Adam/multraining/Adam/add_40*
T0*
_output_shapes
:
[
training/Adam/Const_28Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_29Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_14/MinimumMinimumtraining/Adam/add_41training/Adam/Const_29*
T0*
_output_shapes
:

training/Adam/clip_by_value_14Maximum&training/Adam/clip_by_value_14/Minimumtraining/Adam/Const_28*
T0*
_output_shapes
:
b
training/Adam/Sqrt_14Sqrttraining/Adam/clip_by_value_14*
T0*
_output_shapes
:
[
training/Adam/add_42/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_42Addtraining/Adam/Sqrt_14training/Adam/add_42/y*
T0*
_output_shapes
:
t
training/Adam/truediv_14RealDivtraining/Adam/mul_70training/Adam/add_42*
T0*
_output_shapes
:
m
training/Adam/sub_43Subdense_2/bias/readtraining/Adam/truediv_14*
T0*
_output_shapes
:
Î
training/Adam/Assign_39Assigntraining/Adam/Variable_13training/Adam/add_40*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_13*
_output_shapes
:
Î
training/Adam/Assign_40Assigntraining/Adam/Variable_27training/Adam/add_41*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes
:
´
training/Adam/Assign_41Assigndense_2/biastraining/Adam/sub_43*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense_2/bias*
_output_shapes
:
	
training/group_depsNoOp	^loss/mul^metrics/acc/Mean^training/Adam/AssignAdd^training/Adam/Assign^training/Adam/Assign_1^training/Adam/Assign_2^training/Adam/Assign_3^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_12^training/Adam/Assign_13^training/Adam/Assign_14^training/Adam/Assign_15^training/Adam/Assign_16^training/Adam/Assign_17^training/Adam/Assign_18^training/Adam/Assign_19^training/Adam/Assign_20^training/Adam/Assign_21^training/Adam/Assign_22^training/Adam/Assign_23^training/Adam/Assign_24^training/Adam/Assign_25^training/Adam/Assign_26^training/Adam/Assign_27^training/Adam/Assign_28^training/Adam/Assign_29^training/Adam/Assign_30^training/Adam/Assign_31^training/Adam/Assign_32^training/Adam/Assign_33^training/Adam/Assign_34^training/Adam/Assign_35^training/Adam/Assign_36^training/Adam/Assign_37^training/Adam/Assign_38^training/Adam/Assign_39^training/Adam/Assign_40^training/Adam/Assign_41
0

group_depsNoOp	^loss/mul^metrics/acc/Mean

IsVariableInitializedIsVariableInitializedconv_1/kernel*
dtype0* 
_class
loc:@conv_1/kernel*
_output_shapes
: 

IsVariableInitialized_1IsVariableInitializedconv_1/bias*
dtype0*
_class
loc:@conv_1/bias*
_output_shapes
: 

IsVariableInitialized_2IsVariableInitializedconv_2/kernel*
dtype0* 
_class
loc:@conv_2/kernel*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializedconv_2/bias*
dtype0*
_class
loc:@conv_2/bias*
_output_shapes
: 

IsVariableInitialized_4IsVariableInitializedconv_3/kernel*
dtype0* 
_class
loc:@conv_3/kernel*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializedconv_3/bias*
dtype0*
_class
loc:@conv_3/bias*
_output_shapes
: 

IsVariableInitialized_6IsVariableInitializedconv_4/kernel*
dtype0* 
_class
loc:@conv_4/kernel*
_output_shapes
: 

IsVariableInitialized_7IsVariableInitializedconv_4/bias*
dtype0*
_class
loc:@conv_4/bias*
_output_shapes
: 

IsVariableInitialized_8IsVariableInitializedconv_5/kernel*
dtype0* 
_class
loc:@conv_5/kernel*
_output_shapes
: 

IsVariableInitialized_9IsVariableInitializedconv_5/bias*
dtype0*
_class
loc:@conv_5/bias*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 

IsVariableInitialized_11IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 

IsVariableInitialized_12IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 

IsVariableInitialized_13IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 

IsVariableInitialized_14IsVariableInitializedAdam/iterations*
dtype0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
{
IsVariableInitialized_15IsVariableInitializedAdam/lr*
dtype0*
_class
loc:@Adam/lr*
_output_shapes
: 

IsVariableInitialized_16IsVariableInitializedAdam/beta_1*
dtype0*
_class
loc:@Adam/beta_1*
_output_shapes
: 

IsVariableInitialized_17IsVariableInitializedAdam/beta_2*
dtype0*
_class
loc:@Adam/beta_2*
_output_shapes
: 

IsVariableInitialized_18IsVariableInitialized
Adam/decay*
dtype0*
_class
loc:@Adam/decay*
_output_shapes
: 

IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable*
dtype0*)
_class
loc:@training/Adam/Variable*
_output_shapes
: 

IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_1*
dtype0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
: 

IsVariableInitialized_21IsVariableInitializedtraining/Adam/Variable_2*
dtype0*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes
: 

IsVariableInitialized_22IsVariableInitializedtraining/Adam/Variable_3*
dtype0*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes
: 

IsVariableInitialized_23IsVariableInitializedtraining/Adam/Variable_4*
dtype0*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes
: 

IsVariableInitialized_24IsVariableInitializedtraining/Adam/Variable_5*
dtype0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: 

IsVariableInitialized_25IsVariableInitializedtraining/Adam/Variable_6*
dtype0*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes
: 

IsVariableInitialized_26IsVariableInitializedtraining/Adam/Variable_7*
dtype0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
: 

IsVariableInitialized_27IsVariableInitializedtraining/Adam/Variable_8*
dtype0*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
: 

IsVariableInitialized_28IsVariableInitializedtraining/Adam/Variable_9*
dtype0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
: 

IsVariableInitialized_29IsVariableInitializedtraining/Adam/Variable_10*
dtype0*,
_class"
 loc:@training/Adam/Variable_10*
_output_shapes
: 

IsVariableInitialized_30IsVariableInitializedtraining/Adam/Variable_11*
dtype0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
: 

IsVariableInitialized_31IsVariableInitializedtraining/Adam/Variable_12*
dtype0*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes
: 

IsVariableInitialized_32IsVariableInitializedtraining/Adam/Variable_13*
dtype0*,
_class"
 loc:@training/Adam/Variable_13*
_output_shapes
: 

IsVariableInitialized_33IsVariableInitializedtraining/Adam/Variable_14*
dtype0*,
_class"
 loc:@training/Adam/Variable_14*
_output_shapes
: 

IsVariableInitialized_34IsVariableInitializedtraining/Adam/Variable_15*
dtype0*,
_class"
 loc:@training/Adam/Variable_15*
_output_shapes
: 

IsVariableInitialized_35IsVariableInitializedtraining/Adam/Variable_16*
dtype0*,
_class"
 loc:@training/Adam/Variable_16*
_output_shapes
: 

IsVariableInitialized_36IsVariableInitializedtraining/Adam/Variable_17*
dtype0*,
_class"
 loc:@training/Adam/Variable_17*
_output_shapes
: 

IsVariableInitialized_37IsVariableInitializedtraining/Adam/Variable_18*
dtype0*,
_class"
 loc:@training/Adam/Variable_18*
_output_shapes
: 

IsVariableInitialized_38IsVariableInitializedtraining/Adam/Variable_19*
dtype0*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes
: 

IsVariableInitialized_39IsVariableInitializedtraining/Adam/Variable_20*
dtype0*,
_class"
 loc:@training/Adam/Variable_20*
_output_shapes
: 

IsVariableInitialized_40IsVariableInitializedtraining/Adam/Variable_21*
dtype0*,
_class"
 loc:@training/Adam/Variable_21*
_output_shapes
: 

IsVariableInitialized_41IsVariableInitializedtraining/Adam/Variable_22*
dtype0*,
_class"
 loc:@training/Adam/Variable_22*
_output_shapes
: 

IsVariableInitialized_42IsVariableInitializedtraining/Adam/Variable_23*
dtype0*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes
: 

IsVariableInitialized_43IsVariableInitializedtraining/Adam/Variable_24*
dtype0*,
_class"
 loc:@training/Adam/Variable_24*
_output_shapes
: 

IsVariableInitialized_44IsVariableInitializedtraining/Adam/Variable_25*
dtype0*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes
: 

IsVariableInitialized_45IsVariableInitializedtraining/Adam/Variable_26*
dtype0*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes
: 

IsVariableInitialized_46IsVariableInitializedtraining/Adam/Variable_27*
dtype0*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes
: 

IsVariableInitialized_47IsVariableInitializedtraining/Adam/Variable_28*
dtype0*,
_class"
 loc:@training/Adam/Variable_28*
_output_shapes
: 

IsVariableInitialized_48IsVariableInitializedtraining/Adam/Variable_29*
dtype0*,
_class"
 loc:@training/Adam/Variable_29*
_output_shapes
: 

IsVariableInitialized_49IsVariableInitializedtraining/Adam/Variable_30*
dtype0*,
_class"
 loc:@training/Adam/Variable_30*
_output_shapes
: 

IsVariableInitialized_50IsVariableInitializedtraining/Adam/Variable_31*
dtype0*,
_class"
 loc:@training/Adam/Variable_31*
_output_shapes
: 

IsVariableInitialized_51IsVariableInitializedtraining/Adam/Variable_32*
dtype0*,
_class"
 loc:@training/Adam/Variable_32*
_output_shapes
: 

IsVariableInitialized_52IsVariableInitializedtraining/Adam/Variable_33*
dtype0*,
_class"
 loc:@training/Adam/Variable_33*
_output_shapes
: 

IsVariableInitialized_53IsVariableInitializedtraining/Adam/Variable_34*
dtype0*,
_class"
 loc:@training/Adam/Variable_34*
_output_shapes
: 

IsVariableInitialized_54IsVariableInitializedtraining/Adam/Variable_35*
dtype0*,
_class"
 loc:@training/Adam/Variable_35*
_output_shapes
: 

IsVariableInitialized_55IsVariableInitializedtraining/Adam/Variable_36*
dtype0*,
_class"
 loc:@training/Adam/Variable_36*
_output_shapes
: 

IsVariableInitialized_56IsVariableInitializedtraining/Adam/Variable_37*
dtype0*,
_class"
 loc:@training/Adam/Variable_37*
_output_shapes
: 

IsVariableInitialized_57IsVariableInitializedtraining/Adam/Variable_38*
dtype0*,
_class"
 loc:@training/Adam/Variable_38*
_output_shapes
: 

IsVariableInitialized_58IsVariableInitializedtraining/Adam/Variable_39*
dtype0*,
_class"
 loc:@training/Adam/Variable_39*
_output_shapes
: 

IsVariableInitialized_59IsVariableInitializedtraining/Adam/Variable_40*
dtype0*,
_class"
 loc:@training/Adam/Variable_40*
_output_shapes
: 

IsVariableInitialized_60IsVariableInitializedtraining/Adam/Variable_41*
dtype0*,
_class"
 loc:@training/Adam/Variable_41*
_output_shapes
: 
Ţ
initNoOp^conv_1/kernel/Assign^conv_1/bias/Assign^conv_2/kernel/Assign^conv_2/bias/Assign^conv_3/kernel/Assign^conv_3/bias/Assign^conv_4/kernel/Assign^conv_4/bias/Assign^conv_5/kernel/Assign^conv_5/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^Adam/iterations/Assign^Adam/lr/Assign^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign!^training/Adam/Variable_27/Assign!^training/Adam/Variable_28/Assign!^training/Adam/Variable_29/Assign!^training/Adam/Variable_30/Assign!^training/Adam/Variable_31/Assign!^training/Adam/Variable_32/Assign!^training/Adam/Variable_33/Assign!^training/Adam/Variable_34/Assign!^training/Adam/Variable_35/Assign!^training/Adam/Variable_36/Assign!^training/Adam/Variable_37/Assign!^training/Adam/Variable_38/Assign!^training/Adam/Variable_39/Assign!^training/Adam/Variable_40/Assign!^training/Adam/Variable_41/Assign""5
trainable_variablesö4ó4
V
conv_1/kernel:0conv_1/kernel/Assignconv_1/kernel/read:02conv_1/random_uniform:0
G
conv_1/bias:0conv_1/bias/Assignconv_1/bias/read:02conv_1/Const:0
V
conv_2/kernel:0conv_2/kernel/Assignconv_2/kernel/read:02conv_2/random_uniform:0
G
conv_2/bias:0conv_2/bias/Assignconv_2/bias/read:02conv_2/Const:0
V
conv_3/kernel:0conv_3/kernel/Assignconv_3/kernel/read:02conv_3/random_uniform:0
G
conv_3/bias:0conv_3/bias/Assignconv_3/bias/read:02conv_3/Const:0
V
conv_4/kernel:0conv_4/kernel/Assignconv_4/kernel/read:02conv_4/random_uniform:0
G
conv_4/bias:0conv_4/bias/Assignconv_4/bias/read:02conv_4/Const:0
V
conv_5/kernel:0conv_5/kernel/Assignconv_5/kernel/read:02conv_5/random_uniform:0
G
conv_5/bias:0conv_5/bias/Assignconv_5/bias/read:02conv_5/Const:0
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0
Z
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:0
K
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:0
d
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:0
D
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:0
T
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:0
T
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:0
P
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:0
o
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:0
w
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:0
w
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:0
w
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:0
w
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:0
w
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:0
w
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:0
w
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:0
w
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:0
w
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:0
{
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:0
{
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:0
{
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign training/Adam/Variable_12/read:02training/Adam/zeros_12:0
{
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign training/Adam/Variable_13/read:02training/Adam/zeros_13:0
{
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign training/Adam/Variable_14/read:02training/Adam/zeros_14:0
{
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign training/Adam/Variable_15/read:02training/Adam/zeros_15:0
{
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign training/Adam/Variable_16/read:02training/Adam/zeros_16:0
{
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign training/Adam/Variable_17/read:02training/Adam/zeros_17:0
{
training/Adam/Variable_18:0 training/Adam/Variable_18/Assign training/Adam/Variable_18/read:02training/Adam/zeros_18:0
{
training/Adam/Variable_19:0 training/Adam/Variable_19/Assign training/Adam/Variable_19/read:02training/Adam/zeros_19:0
{
training/Adam/Variable_20:0 training/Adam/Variable_20/Assign training/Adam/Variable_20/read:02training/Adam/zeros_20:0
{
training/Adam/Variable_21:0 training/Adam/Variable_21/Assign training/Adam/Variable_21/read:02training/Adam/zeros_21:0
{
training/Adam/Variable_22:0 training/Adam/Variable_22/Assign training/Adam/Variable_22/read:02training/Adam/zeros_22:0
{
training/Adam/Variable_23:0 training/Adam/Variable_23/Assign training/Adam/Variable_23/read:02training/Adam/zeros_23:0
{
training/Adam/Variable_24:0 training/Adam/Variable_24/Assign training/Adam/Variable_24/read:02training/Adam/zeros_24:0
{
training/Adam/Variable_25:0 training/Adam/Variable_25/Assign training/Adam/Variable_25/read:02training/Adam/zeros_25:0
{
training/Adam/Variable_26:0 training/Adam/Variable_26/Assign training/Adam/Variable_26/read:02training/Adam/zeros_26:0
{
training/Adam/Variable_27:0 training/Adam/Variable_27/Assign training/Adam/Variable_27/read:02training/Adam/zeros_27:0
{
training/Adam/Variable_28:0 training/Adam/Variable_28/Assign training/Adam/Variable_28/read:02training/Adam/zeros_28:0
{
training/Adam/Variable_29:0 training/Adam/Variable_29/Assign training/Adam/Variable_29/read:02training/Adam/zeros_29:0
{
training/Adam/Variable_30:0 training/Adam/Variable_30/Assign training/Adam/Variable_30/read:02training/Adam/zeros_30:0
{
training/Adam/Variable_31:0 training/Adam/Variable_31/Assign training/Adam/Variable_31/read:02training/Adam/zeros_31:0
{
training/Adam/Variable_32:0 training/Adam/Variable_32/Assign training/Adam/Variable_32/read:02training/Adam/zeros_32:0
{
training/Adam/Variable_33:0 training/Adam/Variable_33/Assign training/Adam/Variable_33/read:02training/Adam/zeros_33:0
{
training/Adam/Variable_34:0 training/Adam/Variable_34/Assign training/Adam/Variable_34/read:02training/Adam/zeros_34:0
{
training/Adam/Variable_35:0 training/Adam/Variable_35/Assign training/Adam/Variable_35/read:02training/Adam/zeros_35:0
{
training/Adam/Variable_36:0 training/Adam/Variable_36/Assign training/Adam/Variable_36/read:02training/Adam/zeros_36:0
{
training/Adam/Variable_37:0 training/Adam/Variable_37/Assign training/Adam/Variable_37/read:02training/Adam/zeros_37:0
{
training/Adam/Variable_38:0 training/Adam/Variable_38/Assign training/Adam/Variable_38/read:02training/Adam/zeros_38:0
{
training/Adam/Variable_39:0 training/Adam/Variable_39/Assign training/Adam/Variable_39/read:02training/Adam/zeros_39:0
{
training/Adam/Variable_40:0 training/Adam/Variable_40/Assign training/Adam/Variable_40/read:02training/Adam/zeros_40:0
{
training/Adam/Variable_41:0 training/Adam/Variable_41/Assign training/Adam/Variable_41/read:02training/Adam/zeros_41:0"5
	variablesö4ó4
V
conv_1/kernel:0conv_1/kernel/Assignconv_1/kernel/read:02conv_1/random_uniform:0
G
conv_1/bias:0conv_1/bias/Assignconv_1/bias/read:02conv_1/Const:0
V
conv_2/kernel:0conv_2/kernel/Assignconv_2/kernel/read:02conv_2/random_uniform:0
G
conv_2/bias:0conv_2/bias/Assignconv_2/bias/read:02conv_2/Const:0
V
conv_3/kernel:0conv_3/kernel/Assignconv_3/kernel/read:02conv_3/random_uniform:0
G
conv_3/bias:0conv_3/bias/Assignconv_3/bias/read:02conv_3/Const:0
V
conv_4/kernel:0conv_4/kernel/Assignconv_4/kernel/read:02conv_4/random_uniform:0
G
conv_4/bias:0conv_4/bias/Assignconv_4/bias/read:02conv_4/Const:0
V
conv_5/kernel:0conv_5/kernel/Assignconv_5/kernel/read:02conv_5/random_uniform:0
G
conv_5/bias:0conv_5/bias/Assignconv_5/bias/read:02conv_5/Const:0
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0
Z
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:0
K
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:0
d
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:0
D
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:0
T
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:0
T
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:0
P
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:0
o
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:0
w
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:0
w
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:0
w
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:0
w
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:0
w
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:0
w
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:0
w
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:0
w
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:0
w
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:0
{
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:0
{
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:0
{
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign training/Adam/Variable_12/read:02training/Adam/zeros_12:0
{
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign training/Adam/Variable_13/read:02training/Adam/zeros_13:0
{
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign training/Adam/Variable_14/read:02training/Adam/zeros_14:0
{
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign training/Adam/Variable_15/read:02training/Adam/zeros_15:0
{
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign training/Adam/Variable_16/read:02training/Adam/zeros_16:0
{
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign training/Adam/Variable_17/read:02training/Adam/zeros_17:0
{
training/Adam/Variable_18:0 training/Adam/Variable_18/Assign training/Adam/Variable_18/read:02training/Adam/zeros_18:0
{
training/Adam/Variable_19:0 training/Adam/Variable_19/Assign training/Adam/Variable_19/read:02training/Adam/zeros_19:0
{
training/Adam/Variable_20:0 training/Adam/Variable_20/Assign training/Adam/Variable_20/read:02training/Adam/zeros_20:0
{
training/Adam/Variable_21:0 training/Adam/Variable_21/Assign training/Adam/Variable_21/read:02training/Adam/zeros_21:0
{
training/Adam/Variable_22:0 training/Adam/Variable_22/Assign training/Adam/Variable_22/read:02training/Adam/zeros_22:0
{
training/Adam/Variable_23:0 training/Adam/Variable_23/Assign training/Adam/Variable_23/read:02training/Adam/zeros_23:0
{
training/Adam/Variable_24:0 training/Adam/Variable_24/Assign training/Adam/Variable_24/read:02training/Adam/zeros_24:0
{
training/Adam/Variable_25:0 training/Adam/Variable_25/Assign training/Adam/Variable_25/read:02training/Adam/zeros_25:0
{
training/Adam/Variable_26:0 training/Adam/Variable_26/Assign training/Adam/Variable_26/read:02training/Adam/zeros_26:0
{
training/Adam/Variable_27:0 training/Adam/Variable_27/Assign training/Adam/Variable_27/read:02training/Adam/zeros_27:0
{
training/Adam/Variable_28:0 training/Adam/Variable_28/Assign training/Adam/Variable_28/read:02training/Adam/zeros_28:0
{
training/Adam/Variable_29:0 training/Adam/Variable_29/Assign training/Adam/Variable_29/read:02training/Adam/zeros_29:0
{
training/Adam/Variable_30:0 training/Adam/Variable_30/Assign training/Adam/Variable_30/read:02training/Adam/zeros_30:0
{
training/Adam/Variable_31:0 training/Adam/Variable_31/Assign training/Adam/Variable_31/read:02training/Adam/zeros_31:0
{
training/Adam/Variable_32:0 training/Adam/Variable_32/Assign training/Adam/Variable_32/read:02training/Adam/zeros_32:0
{
training/Adam/Variable_33:0 training/Adam/Variable_33/Assign training/Adam/Variable_33/read:02training/Adam/zeros_33:0
{
training/Adam/Variable_34:0 training/Adam/Variable_34/Assign training/Adam/Variable_34/read:02training/Adam/zeros_34:0
{
training/Adam/Variable_35:0 training/Adam/Variable_35/Assign training/Adam/Variable_35/read:02