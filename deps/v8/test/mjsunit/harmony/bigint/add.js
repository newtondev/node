// Copyright 2017 the V8 project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Generated by tools/bigint-tester.py.

// Flags: --harmony-bigint

var data = [{
  a: -0xc4043e2c4cc49e4d6870103ce7c2ff2d512bf4b1b67553ba410db514ee0af8888ad6cfn,
  b: 0x2aae86de73ff479133a657a40d26e8dcf192019c7421836615ec34978bad93n,
  r: -0xc4043e2c2216176ef470c8abb41ca78944050bd4c4e3521dccec31aed81ec3f0ff293cn
}, {
  a: -0xee0933b25c8c0ef09fa385ffa1d3ca76855b560e186d27fa9f6ce105cb8517a4aecd5n,
  b: -0x2ffc3a7babad313ede574774cb55cd40ab3b2n,
  r: -0xee0933b25c8c0ef09fa385ffa1d3ca76b5579089c41a59397dc4287a96dae4e55a087n
}, {
  a: -0xdbb3e8fac212affdeda8959829838af77e43172n,
  b: 0x2315999da3ac2ab89d2076cbe6e2e03082352e92c274680117ce7012dn,
  r: 0x2315999da3ac2ab89c44c2e2ec20cd80844785fd2a4ae47620502cfbbn
}, {
  a: -0x5ad9780b309c24919defb1b331ebba4en,
  b: 0xbe8dd806b3da0f79e7f6ad2fb566536cc78c1471c236891ce0n,
  r: 0xbe8dd806b3da0f79e79bd3b7aa35b74835ee24c00f049d6292n
}, {
  a: -0xade45eac6aaaf2c8097d7a3efecba4e80dd7aac4f692cfe841d113e68096c0218d521an,
  b: -0x73c4119b366e22edd0797b5883a13e3bfc4124a559903ce785e0c833a8306b41cfn,
  r: -0xade4d2707c4629362c6b4ab87a2428894c13a7061b3829787eb899c748ca6851f893e9n
}, {
  a: -0x6e9ab93d5cff3b3f31a55aa2f43fc321bff6978189e00fa4e64cn,
  b: 0xec1caec29eb55312a313e50e20178873a350f1f89cbc971n,
  r: -0x6e9aaa7b92131153dc743071b5eee120476f5d4c7ac085d91cdbn
}, {
  a: -0x9a61c05bd53b74b731b8f8687e64d1ed1340404b5137ce39n,
  b: -0x1e6793ea0fa51b2354b48n,
  r: -0x9a61c05bd53b74b731b8f8687e66b86651e13a9d036d1981n
}, {
  a: -0x7c5a08517038f7dn,
  b: 0x1d89f2n,
  r: -0x7c5a08516e6058bn
}, {
  a: -0xc4fd1b5aae2cfdc7b3ea6a74b7926a9a1ca3513bd08341e0c770080ban,
  b: 0x76c79770202f9d9c6d2e244n,
  r: -0xc4fd1b5aae2cfdc7b3ea6a74b7926a9a1c2c89a4606312432b02d9e76n
}, {
  a: 0xda114ddab6bfed910cc05c64f72961107beb98c3271n,
  b: 0x98c52c393c6660663248fcbaa300b8n,
  r: 0xda114ddab6bff71d5f83f02b5d2fc4350bb742f3329n
}, {
  a: -0x46311d926dfd26f0850ea3497fcd0d95a5dabab0361f219a601dc3dbe35d0n,
  b: -0xf340af7b84e4eced2ca613e1ef4bb6aec4b8f01bc3n,
  r: -0x46311d926dfd26f0851dd75477855be474ad8511743e1655cb0a0f6ae5193n
}, {
  a: 0xb2b4d9c0c73258a8092n,
  b: 0xf4d1c3d2861cc0bfaea456c03b0f548a32effc1c3e1593935a6b0n,
  r: 0xf4d1c3d2861cc0bfaea456c03b0f548a33a2b0f5fedcc5ec02742n
}, {
  a: -0x56604879bdaaff7409cd59cfbafe73a74c284bfaeb991b6e11171bc08cf68bean,
  b: 0xf4016a6e94c0f256af54fca00d6c909a620c6ea950c73cade3724174c12888n,
  r: -0x556c470f4f163e81b31e04d31af10716b1c63f8c424854316333a97f18356362n
}, {
  a: -0x7a238c856c50aee41d1a2a1446a77f1567n,
  b: 0x58n,
  r: -0x7a238c856c50aee41d1a2a1446a77f150fn
}, {
  a: 0xcdaf8c242e5da7265cc715871c3n,
  b: -0x63604dd2b8df176c627ce3b018b2e74448746123d5578e66e9c0n,
  r: -0x63604dd2b8df176c627ce3b00bd7ee82058e86b16f8b1d0e77fdn
}, {
  a: 0xfa254e9c8d182d2bd90d8ff2b25d4e9819900b62b9ef60f3744ddc55cd362den,
  b: -0x1fef80ff5d53dd0adaa75e8f0d16429851de115822n,
  r: 0xfa254e9c8d182d2bd90d8df3ba4d58c2dbbf5db84406702210245737ec20abcn
}, {
  a: 0x3e85cn,
  b: 0x687c558b2c1308c1a133d647ff7en,
  r: 0x687c558b2c1308c1a133d64be7dan
}, {
  a: 0x9011db3dd56dbf2ef06154cbd48a67f6038483cff59f49011e57n,
  b: 0xc033be10adcb6a7a5a697a7ef95ac3680611ff7ef690231314d338an,
  r: 0xc03cbf2e61a8c1564d58809446180c0e857237c7338f7d07a4e51e1n
}, {
  a: -0xefac02ab40df0f00a1b97a4n,
  b: 0xc3b5e53656cd891e179ec3fb8a8d192f9bab5cfd76c014400n,
  r: 0xc3b5e53656cd891e179ec3fb899d6d2cf06a7dee761e5ac5cn
}, {
  a: -0x7f9d48b408a5bb3827bc0149ecd538a2b2a7d4e1e0a4e9c36ee05f8be3a5b3n,
  b: 0xd83d8cb2fb784703498cf0d61ff097ca42635664058cb85ea39f5931c37a1n,
  r: -0x72196fe8d8ee36c7f323323c8ad62f260e819f7ba04c1e3d84a669f8c76e12n
}];

var error_count = 0;
for (var i = 0; i < data.length; i++) {
  var d = data[i];
  var r = d.a + d.b;
  if (d.r !== r) {
    print("Input A:  " + d.a.toString(16));
    print("Input B:  " + d.b.toString(16));
    print("Result:   " + r.toString(16));
    print("Expected: " + d.r);
    print("Op: +");
    error_count++;
  }
}
if (error_count !== 0) {
  print("Finished with " + error_count + " errors.")
  quit(1);
}
