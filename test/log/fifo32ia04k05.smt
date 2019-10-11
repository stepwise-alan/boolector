(benchmark fifo32ia04k05.smt
:source {
This benchmark comes from bounded model checking of two fifo implementations.
The fifos are resetted once at the beginning.
We try to verify behavioral equivalence with k-induction.
All different constraints are used on registers
and also on arrays that model internal memory respectively.
Fifo inputs: 'enqueue', 'dequeue', 'reset' (active low) and 'data_in'.
Fifo output: 'empty', 'full' and 'data_out'.
Bit-width: 32
k: 5
The fifos have an internal memory of size 16, respectively modelled as array.

Contributed by Robert Brummayer (robert.brummayer@gmail.com).
}
:status sat
:category { crafted }
:logic QF_AUFBV
:extrafuns ((head_fs_0 BitVec[4]))
:extrafuns ((tail_fs_0 BitVec[4]))
:extrafuns ((full_fs_0 BitVec[1]))
:extrafuns ((empty_fs_0 BitVec[1]))
:extrafuns ((data_out_fs_0 BitVec[32]))
:extrafuns ((head_fq_0 BitVec[4]))
:extrafuns ((tail_fq_0 BitVec[4]))
:extrafuns ((full_fq_0 BitVec[1]))
:extrafuns ((empty_fq_0 BitVec[1]))
:extrafuns ((data_out_fq_0 BitVec[32]))
:extrafuns ((reset_0 BitVec[1]))
:extrafuns ((a40 Array[4:32]))
:extrafuns ((a41 Array[4:32]))
:extrafuns ((enqeue_0 BitVec[1]))
:extrafuns ((deqeue_0 BitVec[1]))
:extrafuns ((data_in_0 BitVec[32]))
:extrafuns ((head_fs_1 BitVec[4]))
:extrafuns ((tail_fs_1 BitVec[4]))
:extrafuns ((full_fs_1 BitVec[1]))
:extrafuns ((empty_fs_1 BitVec[1]))
:extrafuns ((data_out_fs_1 BitVec[32]))
:extrafuns ((head_fq_1 BitVec[4]))
:extrafuns ((tail_fq_1 BitVec[4]))
:extrafuns ((full_fq_1 BitVec[1]))
:extrafuns ((empty_fq_1 BitVec[1]))
:extrafuns ((data_out_fq_1 BitVec[32]))
:extrafuns ((reset_1 BitVec[1]))
:extrafuns ((a161 Array[4:32]))
:extrafuns ((a163 Array[4:32]))
:extrafuns ((enqeue_1 BitVec[1]))
:extrafuns ((deqeue_1 BitVec[1]))
:extrafuns ((data_in_1 BitVec[32]))
:extrafuns ((head_fs_2 BitVec[4]))
:extrafuns ((tail_fs_2 BitVec[4]))
:extrafuns ((full_fs_2 BitVec[1]))
:extrafuns ((empty_fs_2 BitVec[1]))
:extrafuns ((data_out_fs_2 BitVec[32]))
:extrafuns ((head_fq_2 BitVec[4]))
:extrafuns ((tail_fq_2 BitVec[4]))
:extrafuns ((full_fq_2 BitVec[1]))
:extrafuns ((empty_fq_2 BitVec[1]))
:extrafuns ((data_out_fq_2 BitVec[32]))
:extrafuns ((reset_2 BitVec[1]))
:extrafuns ((a299 Array[4:32]))
:extrafuns ((a303 Array[4:32]))
:extrafuns ((enqeue_2 BitVec[1]))
:extrafuns ((deqeue_2 BitVec[1]))
:extrafuns ((data_in_2 BitVec[32]))
:extrafuns ((head_fs_3 BitVec[4]))
:extrafuns ((tail_fs_3 BitVec[4]))
:extrafuns ((full_fs_3 BitVec[1]))
:extrafuns ((empty_fs_3 BitVec[1]))
:extrafuns ((data_out_fs_3 BitVec[32]))
:extrafuns ((head_fq_3 BitVec[4]))
:extrafuns ((tail_fq_3 BitVec[4]))
:extrafuns ((full_fq_3 BitVec[1]))
:extrafuns ((empty_fq_3 BitVec[1]))
:extrafuns ((data_out_fq_3 BitVec[32]))
:extrafuns ((reset_3 BitVec[1]))
:extrafuns ((a443 Array[4:32]))
:extrafuns ((a449 Array[4:32]))
:extrafuns ((enqeue_3 BitVec[1]))
:extrafuns ((deqeue_3 BitVec[1]))
:extrafuns ((data_in_3 BitVec[32]))
:extrafuns ((head_fs_4 BitVec[4]))
:extrafuns ((tail_fs_4 BitVec[4]))
:extrafuns ((full_fs_4 BitVec[1]))
:extrafuns ((empty_fs_4 BitVec[1]))
:extrafuns ((data_out_fs_4 BitVec[32]))
:extrafuns ((head_fq_4 BitVec[4]))
:extrafuns ((tail_fq_4 BitVec[4]))
:extrafuns ((full_fq_4 BitVec[1]))
:extrafuns ((empty_fq_4 BitVec[1]))
:extrafuns ((data_out_fq_4 BitVec[32]))
:extrafuns ((reset_4 BitVec[1]))
:extrafuns ((a593 Array[4:32]))
:extrafuns ((a601 Array[4:32]))
:extrafuns ((enqeue_4 BitVec[1]))
:extrafuns ((deqeue_4 BitVec[1]))
:extrafuns ((data_in_4 BitVec[32]))
:extrafuns ((head_fs_5 BitVec[4]))
:extrafuns ((tail_fs_5 BitVec[4]))
:extrafuns ((full_fs_5 BitVec[1]))
:extrafuns ((empty_fs_5 BitVec[1]))
:extrafuns ((data_out_fs_5 BitVec[32]))
:extrafuns ((head_fq_5 BitVec[4]))
:extrafuns ((tail_fq_5 BitVec[4]))
:extrafuns ((full_fq_5 BitVec[1]))
:extrafuns ((empty_fq_5 BitVec[1]))
:extrafuns ((data_out_fq_5 BitVec[32]))
:extrafuns ((reset_5 BitVec[1]))
:extrafuns ((a749 Array[4:32]))
:extrafuns ((a759 Array[4:32]))
:formula
(let (?e1 bv0[4])
(let (?e2 bv1[4])
(let (?e3 bv2[4])
(let (?e4 bv3[4])
(let (?e5 bv4[4])
(let (?e6 bv5[4])
(let (?e7 bv6[4])
(let (?e8 bv7[4])
(let (?e9 bv8[4])
(let (?e10 bv9[4])
(let (?e11 bv10[4])
(let (?e12 bv11[4])
(let (?e13 bv12[4])
(let (?e14 bv13[4])
(let (?e15 bv14[4])
(let (?e16 bv15[4])
(let (?e17 bv0[1])
(let (?e18 bv1[1])
(let (?e21 (concat head_fs_0 tail_fs_0))
(let (?e23 (concat ?e21 full_fs_0))
(let (?e25 (concat ?e23 empty_fs_0))
(let (?e27 (concat ?e25 data_out_fs_0))
(let (?e29 (concat ?e27 head_fq_0))
(let (?e31 (concat ?e29 tail_fq_0))
(let (?e33 (concat ?e31 full_fq_0))
(let (?e35 (concat ?e33 empty_fq_0))
(let (?e37 (concat ?e35 data_out_fq_0))
(let (?e39 (concat ?e37 reset_0))
(let (?e44 (bvand (bvnot enqeue_0) (bvnot deqeue_0)))
(let (?e45 (bvand enqeue_0 deqeue_0))
(let (?e46 (bvand (bvnot ?e44) (bvnot ?e45)))
(let (?e47 (bvadd ?e2 tail_fs_0))
(let (?e48 (ite (= bv1[1] full_fs_0) tail_fs_0 ?e47))
(let (?e49 (bvadd ?e16 tail_fs_0))
(let (?e50 (ite (= bv1[1] empty_fs_0) tail_fs_0 ?e49))
(let (?e51 (ite (= bv1[1] enqeue_0) ?e48 ?e50))
(let (?e52 (ite (= bv1[1] ?e46) ?e51 tail_fs_0))
(let (?e53 (ite (= bv1[1] reset_0) ?e52 ?e1))
(let (?e54 (ite (= ?e15 tail_fs_0) bv1[1] bv0[1]))
(let (?e55 (ite (= bv1[1] ?e54) ?e18 full_fs_0))
(let (?e56 (ite (= bv1[1] deqeue_0) ?e17 ?e55))
(let (?e57 (ite (= bv1[1] ?e46) ?e56 full_fs_0))
(let (?e58 (ite (= bv1[1] reset_0) ?e57 ?e17))
(let (?e59 (ite (= ?e2 tail_fs_0) bv1[1] bv0[1]))
(let (?e60 (ite (= bv1[1] ?e59) ?e18 empty_fs_0))
(let (?e61 (ite (= bv1[1] enqeue_0) ?e17 ?e60))
(let (?e62 (ite (= bv1[1] ?e46) ?e61 empty_fs_0))
(let (?e63 (ite (= bv1[1] reset_0) ?e62 ?e18))
(let (?e64 (bvand (bvnot empty_fs_0) deqeue_0))
(let (?e65 (select a40 head_fs_0))
(let (?e66 (ite (= bv1[1] ?e64) ?e65 data_out_fs_0))
(let (?e67 (ite (= bv1[1] ?e46) ?e66 data_out_fs_0))
(let (?e68 (ite (= bv1[1] reset_0) ?e67 data_out_fs_0))
(let (?e70 (store a40 tail_fs_0 data_in_0))
(let (?e71 (ite (= bv1[1] full_fs_0) a40 ?e70))
(let (?e72 (select a40 ?e2))
(let (?e73 (store a40 ?e1 ?e72))
(let (?e74 (select a40 ?e3))
(let (?e75 (store ?e73 ?e2 ?e74))
(let (?e76 (select a40 ?e4))
(let (?e77 (store ?e75 ?e3 ?e76))
(let (?e78 (select a40 ?e5))
(let (?e79 (store ?e77 ?e4 ?e78))
(let (?e80 (select a40 ?e6))
(let (?e81 (store ?e79 ?e5 ?e80))
(let (?e82 (select a40 ?e7))
(let (?e83 (store ?e81 ?e6 ?e82))
(let (?e84 (select a40 ?e8))
(let (?e85 (store ?e83 ?e7 ?e84))
(let (?e86 (select a40 ?e9))
(let (?e87 (store ?e85 ?e8 ?e86))
(let (?e88 (select a40 ?e10))
(let (?e89 (store ?e87 ?e9 ?e88))
(let (?e90 (select a40 ?e11))
(let (?e91 (store ?e89 ?e10 ?e90))
(let (?e92 (select a40 ?e12))
(let (?e93 (store ?e91 ?e11 ?e92))
(let (?e94 (select a40 ?e13))
(let (?e95 (store ?e93 ?e12 ?e94))
(let (?e96 (select a40 ?e14))
(let (?e97 (store ?e95 ?e13 ?e96))
(let (?e98 (select a40 ?e15))
(let (?e99 (store ?e97 ?e14 ?e98))
(let (?e100 (ite (= bv1[1] enqeue_0) ?e71 ?e99))
(let (?e101 (ite (= bv1[1] ?e46) ?e100 a40))
(let (?e102 (ite (= bv1[1] reset_0) ?e101 a40))
(let (?e103 (bvadd ?e2 head_fq_0))
(let (?e104 (ite (= bv1[1] empty_fq_0) head_fq_0 ?e103))
(let (?e105 (ite (= bv1[1] deqeue_0) ?e104 head_fq_0))
(let (?e106 (ite (= bv1[1] ?e46) ?e105 head_fq_0))
(let (?e107 (ite (= bv1[1] reset_0) ?e106 ?e1))
(let (?e108 (bvadd ?e2 tail_fq_0))
(let (?e109 (ite (= bv1[1] full_fq_0) tail_fq_0 ?e108))
(let (?e110 (ite (= bv1[1] enqeue_0) ?e109 tail_fq_0))
(let (?e111 (ite (= bv1[1] ?e46) ?e110 tail_fq_0))
(let (?e112 (ite (= bv1[1] reset_0) ?e111 ?e1))
(let (?e113 (bvadd ?e2 ?e108))
(let (?e114 (ite (= head_fq_0 ?e113) bv1[1] bv0[1]))
(let (?e115 (ite (= bv1[1] ?e114) ?e18 full_fq_0))
(let (?e116 (ite (= bv1[1] deqeue_0) ?e17 ?e115))
(let (?e117 (ite (= bv1[1] ?e46) ?e116 full_fq_0))
(let (?e118 (ite (= bv1[1] reset_0) ?e117 ?e17))
(let (?e119 (ite (= tail_fq_0 ?e103) bv1[1] bv0[1]))
(let (?e120 (ite (= bv1[1] ?e119) ?e18 empty_fq_0))
(let (?e121 (ite (= bv1[1] enqeue_0) ?e17 ?e120))
(let (?e122 (ite (= bv1[1] ?e46) ?e121 empty_fq_0))
(let (?e123 (ite (= bv1[1] reset_0) ?e122 ?e18))
(let (?e124 (bvand (bvnot empty_fq_0) deqeue_0))
(let (?e125 (select a41 head_fq_0))
(let (?e126 (ite (= bv1[1] ?e124) ?e125 data_out_fq_0))
(let (?e127 (ite (= bv1[1] ?e46) ?e126 data_out_fq_0))
(let (?e128 (ite (= bv1[1] reset_0) ?e127 data_out_fq_0))
(let (?e129 (store a41 tail_fq_0 data_in_0))
(let (?e130 (ite (= bv1[1] full_fq_0) a41 ?e129))
(let (?e131 (ite (= bv1[1] enqeue_0) ?e130 a41))
(let (?e132 (ite (= bv1[1] ?e46) ?e131 a41))
(let (?e133 (ite (= bv1[1] reset_0) ?e132 a41))
(let (?e134 (ite (= data_out_fs_0 data_out_fq_0) bv1[1] bv0[1]))
(let (?e135 (ite (= full_fs_0 full_fq_0) bv1[1] bv0[1]))
(let (?e136 (ite (= empty_fs_0 empty_fq_0) bv1[1] bv0[1]))
(let (?e137 (bvand ?e135 ?e136))
(let (?e138 (bvand ?e134 ?e137))
(let (?e139 (bvand reset_0 (bvnot ?e138)))
(let (?e142 (concat head_fs_1 tail_fs_1))
(let (?e144 (concat ?e142 full_fs_1))
(let (?e146 (concat ?e144 empty_fs_1))
(let (?e148 (concat ?e146 data_out_fs_1))
(let (?e150 (concat ?e148 head_fq_1))
(let (?e152 (concat ?e150 tail_fq_1))
(let (?e154 (concat ?e152 full_fq_1))
(let (?e156 (concat ?e154 empty_fq_1))
(let (?e158 (concat ?e156 data_out_fq_1))
(let (?e160 (concat ?e158 reset_1))
(let (?e162 (ite (= a40 a161) bv1[1] bv0[1]))
(let (?e164 (ite (= a41 a163) bv1[1] bv0[1]))
(let (?e165 (bvand ?e162 ?e164))
(let (?e166 (ite (= ?e39 ?e160) bv1[1] bv0[1]))
(let (?e167 (bvand ?e165 ?e166))
(let (?e168 (ite (= ?e1 head_fs_1) bv1[1] bv0[1]))
(let (?e171 (bvand (bvnot enqeue_1) (bvnot deqeue_1)))
(let (?e172 (bvand enqeue_1 deqeue_1))
(let (?e173 (bvand (bvnot ?e171) (bvnot ?e172)))
(let (?e174 (bvadd ?e2 tail_fs_1))
(let (?e175 (ite (= bv1[1] full_fs_1) tail_fs_1 ?e174))
(let (?e176 (bvadd ?e16 tail_fs_1))
(let (?e177 (ite (= bv1[1] empty_fs_1) tail_fs_1 ?e176))
(let (?e178 (ite (= bv1[1] enqeue_1) ?e175 ?e177))
(let (?e179 (ite (= bv1[1] ?e173) ?e178 tail_fs_1))
(let (?e180 (ite (= bv1[1] reset_1) ?e179 ?e1))
(let (?e181 (ite (= ?e53 tail_fs_1) bv1[1] bv0[1]))
(let (?e182 (ite (= ?e15 tail_fs_1) bv1[1] bv0[1]))
(let (?e183 (ite (= bv1[1] ?e182) ?e18 full_fs_1))
(let (?e184 (ite (= bv1[1] deqeue_1) ?e17 ?e183))
(let (?e185 (ite (= bv1[1] ?e173) ?e184 full_fs_1))
(let (?e186 (ite (= bv1[1] reset_1) ?e185 ?e17))
(let (?e187 (ite (= ?e58 full_fs_1) bv1[1] bv0[1]))
(let (?e188 (ite (= ?e2 tail_fs_1) bv1[1] bv0[1]))
(let (?e189 (ite (= bv1[1] ?e188) ?e18 empty_fs_1))
(let (?e190 (ite (= bv1[1] enqeue_1) ?e17 ?e189))
(let (?e191 (ite (= bv1[1] ?e173) ?e190 empty_fs_1))
(let (?e192 (ite (= bv1[1] reset_1) ?e191 ?e18))
(let (?e193 (ite (= ?e63 empty_fs_1) bv1[1] bv0[1]))
(let (?e194 (bvand (bvnot empty_fs_1) deqeue_1))
(let (?e195 (select a161 head_fs_1))
(let (?e196 (ite (= bv1[1] ?e194) ?e195 data_out_fs_1))
(let (?e197 (ite (= bv1[1] ?e173) ?e196 data_out_fs_1))
(let (?e198 (ite (= bv1[1] reset_1) ?e197 data_out_fs_1))
(let (?e199 (ite (= ?e68 data_out_fs_1) bv1[1] bv0[1]))
(let (?e201 (store a161 tail_fs_1 data_in_1))
(let (?e202 (ite (= bv1[1] full_fs_1) a161 ?e201))
(let (?e203 (select a161 ?e2))
(let (?e204 (store a161 ?e1 ?e203))
(let (?e205 (select a161 ?e3))
(let (?e206 (store ?e204 ?e2 ?e205))
(let (?e207 (select a161 ?e4))
(let (?e208 (store ?e206 ?e3 ?e207))
(let (?e209 (select a161 ?e5))
(let (?e210 (store ?e208 ?e4 ?e209))
(let (?e211 (select a161 ?e6))
(let (?e212 (store ?e210 ?e5 ?e211))
(let (?e213 (select a161 ?e7))
(let (?e214 (store ?e212 ?e6 ?e213))
(let (?e215 (select a161 ?e8))
(let (?e216 (store ?e214 ?e7 ?e215))
(let (?e217 (select a161 ?e9))
(let (?e218 (store ?e216 ?e8 ?e217))
(let (?e219 (select a161 ?e10))
(let (?e220 (store ?e218 ?e9 ?e219))
(let (?e221 (select a161 ?e11))
(let (?e222 (store ?e220 ?e10 ?e221))
(let (?e223 (select a161 ?e12))
(let (?e224 (store ?e222 ?e11 ?e223))
(let (?e225 (select a161 ?e13))
(let (?e226 (store ?e224 ?e12 ?e225))
(let (?e227 (select a161 ?e14))
(let (?e228 (store ?e226 ?e13 ?e227))
(let (?e229 (select a161 ?e15))
(let (?e230 (store ?e228 ?e14 ?e229))
(let (?e231 (ite (= bv1[1] enqeue_1) ?e202 ?e230))
(let (?e232 (ite (= bv1[1] ?e173) ?e231 a161))
(let (?e233 (ite (= bv1[1] reset_1) ?e232 a161))
(let (?e234 (ite (= ?e102 a161) bv1[1] bv0[1]))
(let (?e235 (bvadd ?e2 head_fq_1))
(let (?e236 (ite (= bv1[1] empty_fq_1) head_fq_1 ?e235))
(let (?e237 (ite (= bv1[1] deqeue_1) ?e236 head_fq_1))
(let (?e238 (ite (= bv1[1] ?e173) ?e237 head_fq_1))
(let (?e239 (ite (= bv1[1] reset_1) ?e238 ?e1))
(let (?e240 (ite (= ?e107 head_fq_1) bv1[1] bv0[1]))
(let (?e241 (bvadd ?e2 tail_fq_1))
(let (?e242 (ite (= bv1[1] full_fq_1) tail_fq_1 ?e241))
(let (?e243 (ite (= bv1[1] enqeue_1) ?e242 tail_fq_1))
(let (?e244 (ite (= bv1[1] ?e173) ?e243 tail_fq_1))
(let (?e245 (ite (= bv1[1] reset_1) ?e244 ?e1))
(let (?e246 (ite (= ?e112 tail_fq_1) bv1[1] bv0[1]))
(let (?e247 (bvadd ?e2 ?e241))
(let (?e248 (ite (= head_fq_1 ?e247) bv1[1] bv0[1]))
(let (?e249 (ite (= bv1[1] ?e248) ?e18 full_fq_1))
(let (?e250 (ite (= bv1[1] deqeue_1) ?e17 ?e249))
(let (?e251 (ite (= bv1[1] ?e173) ?e250 full_fq_1))
(let (?e252 (ite (= bv1[1] reset_1) ?e251 ?e17))
(let (?e253 (ite (= ?e118 full_fq_1) bv1[1] bv0[1]))
(let (?e254 (ite (= tail_fq_1 ?e235) bv1[1] bv0[1]))
(let (?e255 (ite (= bv1[1] ?e254) ?e18 empty_fq_1))
(let (?e256 (ite (= bv1[1] enqeue_1) ?e17 ?e255))
(let (?e257 (ite (= bv1[1] ?e173) ?e256 empty_fq_1))
(let (?e258 (ite (= bv1[1] reset_1) ?e257 ?e18))
(let (?e259 (ite (= ?e123 empty_fq_1) bv1[1] bv0[1]))
(let (?e260 (bvand (bvnot empty_fq_1) deqeue_1))
(let (?e261 (select a163 head_fq_1))
(let (?e262 (ite (= bv1[1] ?e260) ?e261 data_out_fq_1))
(let (?e263 (ite (= bv1[1] ?e173) ?e262 data_out_fq_1))
(let (?e264 (ite (= bv1[1] reset_1) ?e263 data_out_fq_1))
(let (?e265 (ite (= ?e128 data_out_fq_1) bv1[1] bv0[1]))
(let (?e266 (store a163 tail_fq_1 data_in_1))
(let (?e267 (ite (= bv1[1] full_fq_1) a163 ?e266))
(let (?e268 (ite (= bv1[1] enqeue_1) ?e267 a163))
(let (?e269 (ite (= bv1[1] ?e173) ?e268 a163))
(let (?e270 (ite (= bv1[1] reset_1) ?e269 a163))
(let (?e271 (ite (= ?e133 a163) bv1[1] bv0[1]))
(let (?e272 (ite (= data_out_fs_1 data_out_fq_1) bv1[1] bv0[1]))
(let (?e273 (ite (= full_fs_1 full_fq_1) bv1[1] bv0[1]))
(let (?e274 (ite (= empty_fs_1 empty_fq_1) bv1[1] bv0[1]))
(let (?e275 (bvand ?e273 ?e274))
(let (?e276 (bvand ?e272 ?e275))
(let (?e277 (bvand reset_1 (bvnot ?e276)))
(let (?e280 (concat head_fs_2 tail_fs_2))
(let (?e282 (concat ?e280 full_fs_2))
(let (?e284 (concat ?e282 empty_fs_2))
(let (?e286 (concat ?e284 data_out_fs_2))
(let (?e288 (concat ?e286 head_fq_2))
(let (?e290 (concat ?e288 tail_fq_2))
(let (?e292 (concat ?e290 full_fq_2))
(let (?e294 (concat ?e292 empty_fq_2))
(let (?e296 (concat ?e294 data_out_fq_2))
(let (?e298 (concat ?e296 reset_2))
(let (?e300 (ite (= a40 a299) bv1[1] bv0[1]))
(let (?e301 (ite (= a161 a299) bv1[1] bv0[1]))
(let (?e302 (bvand (bvnot ?e300) (bvnot ?e301)))
(let (?e304 (ite (= a41 a303) bv1[1] bv0[1]))
(let (?e305 (ite (= a163 a303) bv1[1] bv0[1]))
(let (?e306 (bvand (bvnot ?e304) (bvnot ?e305)))
(let (?e307 (bvand (bvnot ?e302) (bvnot ?e306)))
(let (?e308 (ite (= ?e39 ?e298) bv1[1] bv0[1]))
(let (?e309 (ite (= ?e160 ?e298) bv1[1] bv0[1]))
(let (?e310 (bvand (bvnot ?e308) (bvnot ?e309)))
(let (?e311 (bvand ?e307 (bvnot ?e310)))
(let (?e312 (ite (= ?e1 head_fs_2) bv1[1] bv0[1]))
(let (?e315 (bvand (bvnot enqeue_2) (bvnot deqeue_2)))
(let (?e316 (bvand enqeue_2 deqeue_2))
(let (?e317 (bvand (bvnot ?e315) (bvnot ?e316)))
(let (?e318 (bvadd ?e2 tail_fs_2))
(let (?e319 (ite (= bv1[1] full_fs_2) tail_fs_2 ?e318))
(let (?e320 (bvadd ?e16 tail_fs_2))
(let (?e321 (ite (= bv1[1] empty_fs_2) tail_fs_2 ?e320))
(let (?e322 (ite (= bv1[1] enqeue_2) ?e319 ?e321))
(let (?e323 (ite (= bv1[1] ?e317) ?e322 tail_fs_2))
(let (?e324 (ite (= bv1[1] reset_2) ?e323 ?e1))
(let (?e325 (ite (= ?e180 tail_fs_2) bv1[1] bv0[1]))
(let (?e326 (ite (= ?e15 tail_fs_2) bv1[1] bv0[1]))
(let (?e327 (ite (= bv1[1] ?e326) ?e18 full_fs_2))
(let (?e328 (ite (= bv1[1] deqeue_2) ?e17 ?e327))
(let (?e329 (ite (= bv1[1] ?e317) ?e328 full_fs_2))
(let (?e330 (ite (= bv1[1] reset_2) ?e329 ?e17))
(let (?e331 (ite (= ?e186 full_fs_2) bv1[1] bv0[1]))
(let (?e332 (ite (= ?e2 tail_fs_2) bv1[1] bv0[1]))
(let (?e333 (ite (= bv1[1] ?e332) ?e18 empty_fs_2))
(let (?e334 (ite (= bv1[1] enqeue_2) ?e17 ?e333))
(let (?e335 (ite (= bv1[1] ?e317) ?e334 empty_fs_2))
(let (?e336 (ite (= bv1[1] reset_2) ?e335 ?e18))
(let (?e337 (ite (= ?e192 empty_fs_2) bv1[1] bv0[1]))
(let (?e338 (bvand (bvnot empty_fs_2) deqeue_2))
(let (?e339 (select a299 head_fs_2))
(let (?e340 (ite (= bv1[1] ?e338) ?e339 data_out_fs_2))
(let (?e341 (ite (= bv1[1] ?e317) ?e340 data_out_fs_2))
(let (?e342 (ite (= bv1[1] reset_2) ?e341 data_out_fs_2))
(let (?e343 (ite (= ?e198 data_out_fs_2) bv1[1] bv0[1]))
(let (?e345 (store a299 tail_fs_2 data_in_2))
(let (?e346 (ite (= bv1[1] full_fs_2) a299 ?e345))
(let (?e347 (select a299 ?e2))
(let (?e348 (store a299 ?e1 ?e347))
(let (?e349 (select a299 ?e3))
(let (?e350 (store ?e348 ?e2 ?e349))
(let (?e351 (select a299 ?e4))
(let (?e352 (store ?e350 ?e3 ?e351))
(let (?e353 (select a299 ?e5))
(let (?e354 (store ?e352 ?e4 ?e353))
(let (?e355 (select a299 ?e6))
(let (?e356 (store ?e354 ?e5 ?e355))
(let (?e357 (select a299 ?e7))
(let (?e358 (store ?e356 ?e6 ?e357))
(let (?e359 (select a299 ?e8))
(let (?e360 (store ?e358 ?e7 ?e359))
(let (?e361 (select a299 ?e9))
(let (?e362 (store ?e360 ?e8 ?e361))
(let (?e363 (select a299 ?e10))
(let (?e364 (store ?e362 ?e9 ?e363))
(let (?e365 (select a299 ?e11))
(let (?e366 (store ?e364 ?e10 ?e365))
(let (?e367 (select a299 ?e12))
(let (?e368 (store ?e366 ?e11 ?e367))
(let (?e369 (select a299 ?e13))
(let (?e370 (store ?e368 ?e12 ?e369))
(let (?e371 (select a299 ?e14))
(let (?e372 (store ?e370 ?e13 ?e371))
(let (?e373 (select a299 ?e15))
(let (?e374 (store ?e372 ?e14 ?e373))
(let (?e375 (ite (= bv1[1] enqeue_2) ?e346 ?e374))
(let (?e376 (ite (= bv1[1] ?e317) ?e375 a299))
(let (?e377 (ite (= bv1[1] reset_2) ?e376 a299))
(let (?e378 (ite (= ?e233 a299) bv1[1] bv0[1]))
(let (?e379 (bvadd ?e2 head_fq_2))
(let (?e380 (ite (= bv1[1] empty_fq_2) head_fq_2 ?e379))
(let (?e381 (ite (= bv1[1] deqeue_2) ?e380 head_fq_2))
(let (?e382 (ite (= bv1[1] ?e317) ?e381 head_fq_2))
(let (?e383 (ite (= bv1[1] reset_2) ?e382 ?e1))
(let (?e384 (ite (= ?e239 head_fq_2) bv1[1] bv0[1]))
(let (?e385 (bvadd ?e2 tail_fq_2))
(let (?e386 (ite (= bv1[1] full_fq_2) tail_fq_2 ?e385))
(let (?e387 (ite (= bv1[1] enqeue_2) ?e386 tail_fq_2))
(let (?e388 (ite (= bv1[1] ?e317) ?e387 tail_fq_2))
(let (?e389 (ite (= bv1[1] reset_2) ?e388 ?e1))
(let (?e390 (ite (= ?e245 tail_fq_2) bv1[1] bv0[1]))
(let (?e391 (bvadd ?e2 ?e385))
(let (?e392 (ite (= head_fq_2 ?e391) bv1[1] bv0[1]))
(let (?e393 (ite (= bv1[1] ?e392) ?e18 full_fq_2))
(let (?e394 (ite (= bv1[1] deqeue_2) ?e17 ?e393))
(let (?e395 (ite (= bv1[1] ?e317) ?e394 full_fq_2))
(let (?e396 (ite (= bv1[1] reset_2) ?e395 ?e17))
(let (?e397 (ite (= ?e252 full_fq_2) bv1[1] bv0[1]))
(let (?e398 (ite (= tail_fq_2 ?e379) bv1[1] bv0[1]))
(let (?e399 (ite (= bv1[1] ?e398) ?e18 empty_fq_2))
(let (?e400 (ite (= bv1[1] enqeue_2) ?e17 ?e399))
(let (?e401 (ite (= bv1[1] ?e317) ?e400 empty_fq_2))
(let (?e402 (ite (= bv1[1] reset_2) ?e401 ?e18))
(let (?e403 (ite (= ?e258 empty_fq_2) bv1[1] bv0[1]))
(let (?e404 (bvand (bvnot empty_fq_2) deqeue_2))
(let (?e405 (select a303 head_fq_2))
(let (?e406 (ite (= bv1[1] ?e404) ?e405 data_out_fq_2))
(let (?e407 (ite (= bv1[1] ?e317) ?e406 data_out_fq_2))
(let (?e408 (ite (= bv1[1] reset_2) ?e407 data_out_fq_2))
(let (?e409 (ite (= ?e264 data_out_fq_2) bv1[1] bv0[1]))
(let (?e410 (store a303 tail_fq_2 data_in_2))
(let (?e411 (ite (= bv1[1] full_fq_2) a303 ?e410))
(let (?e412 (ite (= bv1[1] enqeue_2) ?e411 a303))
(let (?e413 (ite (= bv1[1] ?e317) ?e412 a303))
(let (?e414 (ite (= bv1[1] reset_2) ?e413 a303))
(let (?e415 (ite (= ?e270 a303) bv1[1] bv0[1]))
(let (?e416 (ite (= data_out_fs_2 data_out_fq_2) bv1[1] bv0[1]))
(let (?e417 (ite (= full_fs_2 full_fq_2) bv1[1] bv0[1]))
(let (?e418 (ite (= empty_fs_2 empty_fq_2) bv1[1] bv0[1]))
(let (?e419 (bvand ?e417 ?e418))
(let (?e420 (bvand ?e416 ?e419))
(let (?e421 (bvand reset_2 (bvnot ?e420)))
(let (?e424 (concat head_fs_3 tail_fs_3))
(let (?e426 (concat ?e424 full_fs_3))
(let (?e428 (concat ?e426 empty_fs_3))
(let (?e430 (concat ?e428 data_out_fs_3))
(let (?e432 (concat ?e430 head_fq_3))
(let (?e434 (concat ?e432 tail_fq_3))
(let (?e436 (concat ?e434 full_fq_3))
(let (?e438 (concat ?e436 empty_fq_3))
(let (?e440 (concat ?e438 data_out_fq_3))
(let (?e442 (concat ?e440 reset_3))
(let (?e444 (ite (= a40 a443) bv1[1] bv0[1]))
(let (?e445 (ite (= a161 a443) bv1[1] bv0[1]))
(let (?e446 (bvand (bvnot ?e444) (bvnot ?e445)))
(let (?e447 (ite (= a299 a443) bv1[1] bv0[1]))
(let (?e448 (bvand ?e446 (bvnot ?e447)))
(let (?e450 (ite (= a41 a449) bv1[1] bv0[1]))
(let (?e451 (ite (= a163 a449) bv1[1] bv0[1]))
(let (?e452 (bvand (bvnot ?e450) (bvnot ?e451)))
(let (?e453 (ite (= a303 a449) bv1[1] bv0[1]))
(let (?e454 (bvand ?e452 (bvnot ?e453)))
(let (?e455 (bvand (bvnot ?e448) (bvnot ?e454)))
(let (?e456 (ite (= ?e39 ?e442) bv1[1] bv0[1]))
(let (?e457 (ite (= ?e160 ?e442) bv1[1] bv0[1]))
(let (?e458 (bvand (bvnot ?e456) (bvnot ?e457)))
(let (?e459 (ite (= ?e298 ?e442) bv1[1] bv0[1]))
(let (?e460 (bvand ?e458 (bvnot ?e459)))
(let (?e461 (bvand ?e455 (bvnot ?e460)))
(let (?e462 (ite (= ?e1 head_fs_3) bv1[1] bv0[1]))
(let (?e465 (bvand (bvnot enqeue_3) (bvnot deqeue_3)))
(let (?e466 (bvand enqeue_3 deqeue_3))
(let (?e467 (bvand (bvnot ?e465) (bvnot ?e466)))
(let (?e468 (bvadd ?e2 tail_fs_3))
(let (?e469 (ite (= bv1[1] full_fs_3) tail_fs_3 ?e468))
(let (?e470 (bvadd ?e16 tail_fs_3))
(let (?e471 (ite (= bv1[1] empty_fs_3) tail_fs_3 ?e470))
(let (?e472 (ite (= bv1[1] enqeue_3) ?e469 ?e471))
(let (?e473 (ite (= bv1[1] ?e467) ?e472 tail_fs_3))
(let (?e474 (ite (= bv1[1] reset_3) ?e473 ?e1))
(let (?e475 (ite (= ?e324 tail_fs_3) bv1[1] bv0[1]))
(let (?e476 (ite (= ?e15 tail_fs_3) bv1[1] bv0[1]))
(let (?e477 (ite (= bv1[1] ?e476) ?e18 full_fs_3))
(let (?e478 (ite (= bv1[1] deqeue_3) ?e17 ?e477))
(let (?e479 (ite (= bv1[1] ?e467) ?e478 full_fs_3))
(let (?e480 (ite (= bv1[1] reset_3) ?e479 ?e17))
(let (?e481 (ite (= ?e330 full_fs_3) bv1[1] bv0[1]))
(let (?e482 (ite (= ?e2 tail_fs_3) bv1[1] bv0[1]))
(let (?e483 (ite (= bv1[1] ?e482) ?e18 empty_fs_3))
(let (?e484 (ite (= bv1[1] enqeue_3) ?e17 ?e483))
(let (?e485 (ite (= bv1[1] ?e467) ?e484 empty_fs_3))
(let (?e486 (ite (= bv1[1] reset_3) ?e485 ?e18))
(let (?e487 (ite (= ?e336 empty_fs_3) bv1[1] bv0[1]))
(let (?e488 (bvand (bvnot empty_fs_3) deqeue_3))
(let (?e489 (select a443 head_fs_3))
(let (?e490 (ite (= bv1[1] ?e488) ?e489 data_out_fs_3))
(let (?e491 (ite (= bv1[1] ?e467) ?e490 data_out_fs_3))
(let (?e492 (ite (= bv1[1] reset_3) ?e491 data_out_fs_3))
(let (?e493 (ite (= ?e342 data_out_fs_3) bv1[1] bv0[1]))
(let (?e495 (store a443 tail_fs_3 data_in_3))
(let (?e496 (ite (= bv1[1] full_fs_3) a443 ?e495))
(let (?e497 (select a443 ?e2))
(let (?e498 (store a443 ?e1 ?e497))
(let (?e499 (select a443 ?e3))
(let (?e500 (store ?e498 ?e2 ?e499))
(let (?e501 (select a443 ?e4))
(let (?e502 (store ?e500 ?e3 ?e501))
(let (?e503 (select a443 ?e5))
(let (?e504 (store ?e502 ?e4 ?e503))
(let (?e505 (select a443 ?e6))
(let (?e506 (store ?e504 ?e5 ?e505))
(let (?e507 (select a443 ?e7))
(let (?e508 (store ?e506 ?e6 ?e507))
(let (?e509 (select a443 ?e8))
(let (?e510 (store ?e508 ?e7 ?e509))
(let (?e511 (select a443 ?e9))
(let (?e512 (store ?e510 ?e8 ?e511))
(let (?e513 (select a443 ?e10))
(let (?e514 (store ?e512 ?e9 ?e513))
(let (?e515 (select a443 ?e11))
(let (?e516 (store ?e514 ?e10 ?e515))
(let (?e517 (select a443 ?e12))
(let (?e518 (store ?e516 ?e11 ?e517))
(let (?e519 (select a443 ?e13))
(let (?e520 (store ?e518 ?e12 ?e519))
(let (?e521 (select a443 ?e14))
(let (?e522 (store ?e520 ?e13 ?e521))
(let (?e523 (select a443 ?e15))
(let (?e524 (store ?e522 ?e14 ?e523))
(let (?e525 (ite (= bv1[1] enqeue_3) ?e496 ?e524))
(let (?e526 (ite (= bv1[1] ?e467) ?e525 a443))
(let (?e527 (ite (= bv1[1] reset_3) ?e526 a443))
(let (?e528 (ite (= ?e377 a443) bv1[1] bv0[1]))
(let (?e529 (bvadd ?e2 head_fq_3))
(let (?e530 (ite (= bv1[1] empty_fq_3) head_fq_3 ?e529))
(let (?e531 (ite (= bv1[1] deqeue_3) ?e530 head_fq_3))
(let (?e532 (ite (= bv1[1] ?e467) ?e531 head_fq_3))
(let (?e533 (ite (= bv1[1] reset_3) ?e532 ?e1))
(let (?e534 (ite (= ?e383 head_fq_3) bv1[1] bv0[1]))
(let (?e535 (bvadd ?e2 tail_fq_3))
(let (?e536 (ite (= bv1[1] full_fq_3) tail_fq_3 ?e535))
(let (?e537 (ite (= bv1[1] enqeue_3) ?e536 tail_fq_3))
(let (?e538 (ite (= bv1[1] ?e467) ?e537 tail_fq_3))
(let (?e539 (ite (= bv1[1] reset_3) ?e538 ?e1))
(let (?e540 (ite (= ?e389 tail_fq_3) bv1[1] bv0[1]))
(let (?e541 (bvadd ?e2 ?e535))
(let (?e542 (ite (= head_fq_3 ?e541) bv1[1] bv0[1]))
(let (?e543 (ite (= bv1[1] ?e542) ?e18 full_fq_3))
(let (?e544 (ite (= bv1[1] deqeue_3) ?e17 ?e543))
(let (?e545 (ite (= bv1[1] ?e467) ?e544 full_fq_3))
(let (?e546 (ite (= bv1[1] reset_3) ?e545 ?e17))
(let (?e547 (ite (= ?e396 full_fq_3) bv1[1] bv0[1]))
(let (?e548 (ite (= tail_fq_3 ?e529) bv1[1] bv0[1]))
(let (?e549 (ite (= bv1[1] ?e548) ?e18 empty_fq_3))
(let (?e550 (ite (= bv1[1] enqeue_3) ?e17 ?e549))
(let (?e551 (ite (= bv1[1] ?e467) ?e550 empty_fq_3))
(let (?e552 (ite (= bv1[1] reset_3) ?e551 ?e18))
(let (?e553 (ite (= ?e402 empty_fq_3) bv1[1] bv0[1]))
(let (?e554 (bvand (bvnot empty_fq_3) deqeue_3))
(let (?e555 (select a449 head_fq_3))
(let (?e556 (ite (= bv1[1] ?e554) ?e555 data_out_fq_3))
(let (?e557 (ite (= bv1[1] ?e467) ?e556 data_out_fq_3))
(let (?e558 (ite (= bv1[1] reset_3) ?e557 data_out_fq_3))
(let (?e559 (ite (= ?e408 data_out_fq_3) bv1[1] bv0[1]))
(let (?e560 (store a449 tail_fq_3 data_in_3))
(let (?e561 (ite (= bv1[1] full_fq_3) a449 ?e560))
(let (?e562 (ite (= bv1[1] enqeue_3) ?e561 a449))
(let (?e563 (ite (= bv1[1] ?e467) ?e562 a449))
(let (?e564 (ite (= bv1[1] reset_3) ?e563 a449))
(let (?e565 (ite (= ?e414 a449) bv1[1] bv0[1]))
(let (?e566 (ite (= data_out_fs_3 data_out_fq_3) bv1[1] bv0[1]))
(let (?e567 (ite (= full_fs_3 full_fq_3) bv1[1] bv0[1]))
(let (?e568 (ite (= empty_fs_3 empty_fq_3) bv1[1] bv0[1]))
(let (?e569 (bvand ?e567 ?e568))
(let (?e570 (bvand ?e566 ?e569))
(let (?e571 (bvand reset_3 (bvnot ?e570)))
(let (?e574 (concat head_fs_4 tail_fs_4))
(let (?e576 (concat ?e574 full_fs_4))
(let (?e578 (concat ?e576 empty_fs_4))
(let (?e580 (concat ?e578 data_out_fs_4))
(let (?e582 (concat ?e580 head_fq_4))
(let (?e584 (concat ?e582 tail_fq_4))
(let (?e586 (concat ?e584 full_fq_4))
(let (?e588 (concat ?e586 empty_fq_4))
(let (?e590 (concat ?e588 data_out_fq_4))
(let (?e592 (concat ?e590 reset_4))
(let (?e594 (ite (= a40 a593) bv1[1] bv0[1]))
(let (?e595 (ite (= a161 a593) bv1[1] bv0[1]))
(let (?e596 (bvand (bvnot ?e594) (bvnot ?e595)))
(let (?e597 (ite (= a299 a593) bv1[1] bv0[1]))
(let (?e598 (bvand ?e596 (bvnot ?e597)))
(let (?e599 (ite (= a443 a593) bv1[1] bv0[1]))
(let (?e600 (bvand ?e598 (bvnot ?e599)))
(let (?e602 (ite (= a41 a601) bv1[1] bv0[1]))
(let (?e603 (ite (= a163 a601) bv1[1] bv0[1]))
(let (?e604 (bvand (bvnot ?e602) (bvnot ?e603)))
(let (?e605 (ite (= a303 a601) bv1[1] bv0[1]))
(let (?e606 (bvand ?e604 (bvnot ?e605)))
(let (?e607 (ite (= a449 a601) bv1[1] bv0[1]))
(let (?e608 (bvand ?e606 (bvnot ?e607)))
(let (?e609 (bvand (bvnot ?e600) (bvnot ?e608)))
(let (?e610 (ite (= ?e39 ?e592) bv1[1] bv0[1]))
(let (?e611 (ite (= ?e160 ?e592) bv1[1] bv0[1]))
(let (?e612 (bvand (bvnot ?e610) (bvnot ?e611)))
(let (?e613 (ite (= ?e298 ?e592) bv1[1] bv0[1]))
(let (?e614 (bvand ?e612 (bvnot ?e613)))
(let (?e615 (ite (= ?e442 ?e592) bv1[1] bv0[1]))
(let (?e616 (bvand ?e614 (bvnot ?e615)))
(let (?e617 (bvand ?e609 (bvnot ?e616)))
(let (?e618 (ite (= ?e1 head_fs_4) bv1[1] bv0[1]))
(let (?e621 (bvand (bvnot enqeue_4) (bvnot deqeue_4)))
(let (?e622 (bvand enqeue_4 deqeue_4))
(let (?e623 (bvand (bvnot ?e621) (bvnot ?e622)))
(let (?e624 (bvadd ?e2 tail_fs_4))
(let (?e625 (ite (= bv1[1] full_fs_4) tail_fs_4 ?e624))
(let (?e626 (bvadd ?e16 tail_fs_4))
(let (?e627 (ite (= bv1[1] empty_fs_4) tail_fs_4 ?e626))
(let (?e628 (ite (= bv1[1] enqeue_4) ?e625 ?e627))
(let (?e629 (ite (= bv1[1] ?e623) ?e628 tail_fs_4))
(let (?e630 (ite (= bv1[1] reset_4) ?e629 ?e1))
(let (?e631 (ite (= ?e474 tail_fs_4) bv1[1] bv0[1]))
(let (?e632 (ite (= ?e15 tail_fs_4) bv1[1] bv0[1]))
(let (?e633 (ite (= bv1[1] ?e632) ?e18 full_fs_4))
(let (?e634 (ite (= bv1[1] deqeue_4) ?e17 ?e633))
(let (?e635 (ite (= bv1[1] ?e623) ?e634 full_fs_4))
(let (?e636 (ite (= bv1[1] reset_4) ?e635 ?e17))
(let (?e637 (ite (= ?e480 full_fs_4) bv1[1] bv0[1]))
(let (?e638 (ite (= ?e2 tail_fs_4) bv1[1] bv0[1]))
(let (?e639 (ite (= bv1[1] ?e638) ?e18 empty_fs_4))
(let (?e640 (ite (= bv1[1] enqeue_4) ?e17 ?e639))
(let (?e641 (ite (= bv1[1] ?e623) ?e640 empty_fs_4))
(let (?e642 (ite (= bv1[1] reset_4) ?e641 ?e18))
(let (?e643 (ite (= ?e486 empty_fs_4) bv1[1] bv0[1]))
(let (?e644 (bvand (bvnot empty_fs_4) deqeue_4))
(let (?e645 (select a593 head_fs_4))
(let (?e646 (ite (= bv1[1] ?e644) ?e645 data_out_fs_4))
(let (?e647 (ite (= bv1[1] ?e623) ?e646 data_out_fs_4))
(let (?e648 (ite (= bv1[1] reset_4) ?e647 data_out_fs_4))
(let (?e649 (ite (= ?e492 data_out_fs_4) bv1[1] bv0[1]))
(let (?e651 (store a593 tail_fs_4 data_in_4))
(let (?e652 (ite (= bv1[1] full_fs_4) a593 ?e651))
(let (?e653 (select a593 ?e2))
(let (?e654 (store a593 ?e1 ?e653))
(let (?e655 (select a593 ?e3))
(let (?e656 (store ?e654 ?e2 ?e655))
(let (?e657 (select a593 ?e4))
(let (?e658 (store ?e656 ?e3 ?e657))
(let (?e659 (select a593 ?e5))
(let (?e660 (store ?e658 ?e4 ?e659))
(let (?e661 (select a593 ?e6))
(let (?e662 (store ?e660 ?e5 ?e661))
(let (?e663 (select a593 ?e7))
(let (?e664 (store ?e662 ?e6 ?e663))
(let (?e665 (select a593 ?e8))
(let (?e666 (store ?e664 ?e7 ?e665))
(let (?e667 (select a593 ?e9))
(let (?e668 (store ?e666 ?e8 ?e667))
(let (?e669 (select a593 ?e10))
(let (?e670 (store ?e668 ?e9 ?e669))
(let (?e671 (select a593 ?e11))
(let (?e672 (store ?e670 ?e10 ?e671))
(let (?e673 (select a593 ?e12))
(let (?e674 (store ?e672 ?e11 ?e673))
(let (?e675 (select a593 ?e13))
(let (?e676 (store ?e674 ?e12 ?e675))
(let (?e677 (select a593 ?e14))
(let (?e678 (store ?e676 ?e13 ?e677))
(let (?e679 (select a593 ?e15))
(let (?e680 (store ?e678 ?e14 ?e679))
(let (?e681 (ite (= bv1[1] enqeue_4) ?e652 ?e680))
(let (?e682 (ite (= bv1[1] ?e623) ?e681 a593))
(let (?e683 (ite (= bv1[1] reset_4) ?e682 a593))
(let (?e684 (ite (= ?e527 a593) bv1[1] bv0[1]))
(let (?e685 (bvadd ?e2 head_fq_4))
(let (?e686 (ite (= bv1[1] empty_fq_4) head_fq_4 ?e685))
(let (?e687 (ite (= bv1[1] deqeue_4) ?e686 head_fq_4))
(let (?e688 (ite (= bv1[1] ?e623) ?e687 head_fq_4))
(let (?e689 (ite (= bv1[1] reset_4) ?e688 ?e1))
(let (?e690 (ite (= ?e533 head_fq_4) bv1[1] bv0[1]))
(let (?e691 (bvadd ?e2 tail_fq_4))
(let (?e692 (ite (= bv1[1] full_fq_4) tail_fq_4 ?e691))
(let (?e693 (ite (= bv1[1] enqeue_4) ?e692 tail_fq_4))
(let (?e694 (ite (= bv1[1] ?e623) ?e693 tail_fq_4))
(let (?e695 (ite (= bv1[1] reset_4) ?e694 ?e1))
(let (?e696 (ite (= ?e539 tail_fq_4) bv1[1] bv0[1]))
(let (?e697 (bvadd ?e2 ?e691))
(let (?e698 (ite (= head_fq_4 ?e697) bv1[1] bv0[1]))
(let (?e699 (ite (= bv1[1] ?e698) ?e18 full_fq_4))
(let (?e700 (ite (= bv1[1] deqeue_4) ?e17 ?e699))
(let (?e701 (ite (= bv1[1] ?e623) ?e700 full_fq_4))
(let (?e702 (ite (= bv1[1] reset_4) ?e701 ?e17))
(let (?e703 (ite (= ?e546 full_fq_4) bv1[1] bv0[1]))
(let (?e704 (ite (= tail_fq_4 ?e685) bv1[1] bv0[1]))
(let (?e705 (ite (= bv1[1] ?e704) ?e18 empty_fq_4))
(let (?e706 (ite (= bv1[1] enqeue_4) ?e17 ?e705))
(let (?e707 (ite (= bv1[1] ?e623) ?e706 empty_fq_4))
(let (?e708 (ite (= bv1[1] reset_4) ?e707 ?e18))
(let (?e709 (ite (= ?e552 empty_fq_4) bv1[1] bv0[1]))
(let (?e710 (bvand (bvnot empty_fq_4) deqeue_4))
(let (?e711 (select a601 head_fq_4))
(let (?e712 (ite (= bv1[1] ?e710) ?e711 data_out_fq_4))
(let (?e713 (ite (= bv1[1] ?e623) ?e712 data_out_fq_4))
(let (?e714 (ite (= bv1[1] reset_4) ?e713 data_out_fq_4))
(let (?e715 (ite (= ?e558 data_out_fq_4) bv1[1] bv0[1]))
(let (?e716 (store a601 tail_fq_4 data_in_4))
(let (?e717 (ite (= bv1[1] full_fq_4) a601 ?e716))
(let (?e718 (ite (= bv1[1] enqeue_4) ?e717 a601))
(let (?e719 (ite (= bv1[1] ?e623) ?e718 a601))
(let (?e720 (ite (= bv1[1] reset_4) ?e719 a601))
(let (?e721 (ite (= ?e564 a601) bv1[1] bv0[1]))
(let (?e722 (ite (= data_out_fs_4 data_out_fq_4) bv1[1] bv0[1]))
(let (?e723 (ite (= full_fs_4 full_fq_4) bv1[1] bv0[1]))
(let (?e724 (ite (= empty_fs_4 empty_fq_4) bv1[1] bv0[1]))
(let (?e725 (bvand ?e723 ?e724))
(let (?e726 (bvand ?e722 ?e725))
(let (?e727 (bvand reset_4 (bvnot ?e726)))
(let (?e730 (concat head_fs_5 tail_fs_5))
(let (?e732 (concat ?e730 full_fs_5))
(let (?e734 (concat ?e732 empty_fs_5))
(let (?e736 (concat ?e734 data_out_fs_5))
(let (?e738 (concat ?e736 head_fq_5))
(let (?e740 (concat ?e738 tail_fq_5))
(let (?e742 (concat ?e740 full_fq_5))
(let (?e744 (concat ?e742 empty_fq_5))
(let (?e746 (concat ?e744 data_out_fq_5))
(let (?e748 (concat ?e746 reset_5))
(let (?e750 (ite (= a40 a749) bv1[1] bv0[1]))
(let (?e751 (ite (= a161 a749) bv1[1] bv0[1]))
(let (?e752 (bvand (bvnot ?e750) (bvnot ?e751)))
(let (?e753 (ite (= a299 a749) bv1[1] bv0[1]))
(let (?e754 (bvand ?e752 (bvnot ?e753)))
(let (?e755 (ite (= a443 a749) bv1[1] bv0[1]))
(let (?e756 (bvand ?e754 (bvnot ?e755)))
(let (?e757 (ite (= a593 a749) bv1[1] bv0[1]))
(let (?e758 (bvand ?e756 (bvnot ?e757)))
(let (?e760 (ite (= a41 a759) bv1[1] bv0[1]))
(let (?e761 (ite (= a163 a759) bv1[1] bv0[1]))
(let (?e762 (bvand (bvnot ?e760) (bvnot ?e761)))
(let (?e763 (ite (= a303 a759) bv1[1] bv0[1]))
(let (?e764 (bvand ?e762 (bvnot ?e763)))
(let (?e765 (ite (= a449 a759) bv1[1] bv0[1]))
(let (?e766 (bvand ?e764 (bvnot ?e765)))
(let (?e767 (ite (= a601 a759) bv1[1] bv0[1]))
(let (?e768 (bvand ?e766 (bvnot ?e767)))
(let (?e769 (bvand (bvnot ?e758) (bvnot ?e768)))
(let (?e770 (ite (= ?e39 ?e748) bv1[1] bv0[1]))
(let (?e771 (ite (= ?e160 ?e748) bv1[1] bv0[1]))
(let (?e772 (bvand (bvnot ?e770) (bvnot ?e771)))
(let (?e773 (ite (= ?e298 ?e748) bv1[1] bv0[1]))
(let (?e774 (bvand ?e772 (bvnot ?e773)))
(let (?e775 (ite (= ?e442 ?e748) bv1[1] bv0[1]))
(let (?e776 (bvand ?e774 (bvnot ?e775)))
(let (?e777 (ite (= ?e592 ?e748) bv1[1] bv0[1]))
(let (?e778 (bvand ?e776 (bvnot ?e777)))
(let (?e779 (bvand ?e769 (bvnot ?e778)))
(let (?e780 (ite (= ?e1 head_fs_5) bv1[1] bv0[1]))
(let (?e781 (ite (= ?e630 tail_fs_5) bv1[1] bv0[1]))
(let (?e782 (ite (= ?e636 full_fs_5) bv1[1] bv0[1]))
(let (?e783 (ite (= ?e642 empty_fs_5) bv1[1] bv0[1]))
(let (?e784 (ite (= ?e648 data_out_fs_5) bv1[1] bv0[1]))
(let (?e785 (ite (= ?e683 a749) bv1[1] bv0[1]))
(let (?e786 (ite (= ?e689 head_fq_5) bv1[1] bv0[1]))
(let (?e787 (ite (= ?e695 tail_fq_5) bv1[1] bv0[1]))
(let (?e788 (ite (= ?e702 full_fq_5) bv1[1] bv0[1]))
(let (?e789 (ite (= ?e708 empty_fq_5) bv1[1] bv0[1]))
(let (?e790 (ite (= ?e714 data_out_fq_5) bv1[1] bv0[1]))
(let (?e791 (ite (= ?e720 a759) bv1[1] bv0[1]))
(let (?e792 (ite (= data_out_fs_5 data_out_fq_5) bv1[1] bv0[1]))
(let (?e793 (ite (= full_fs_5 full_fq_5) bv1[1] bv0[1]))
(let (?e794 (ite (= empty_fs_5 empty_fq_5) bv1[1] bv0[1]))
(let (?e795 (bvand ?e793 ?e794))
(let (?e796 (bvand ?e792 ?e795))
(let (?e797 (bvand (bvnot ?e139) (bvnot ?e167)))
(let (?e798 (bvand ?e168 ?e797))
(let (?e799 (bvand ?e181 ?e798))
(let (?e800 (bvand ?e187 ?e799))
(let (?e801 (bvand ?e193 ?e800))
(let (?e802 (bvand ?e199 ?e801))
(let (?e803 (bvand ?e234 ?e802))
(let (?e804 (bvand ?e240 ?e803))
(let (?e805 (bvand ?e246 ?e804))
(let (?e806 (bvand ?e253 ?e805))
(let (?e807 (bvand ?e259 ?e806))
(let (?e808 (bvand ?e265 ?e807))
(let (?e809 (bvand ?e271 ?e808))
(let (?e810 (bvand reset_1 ?e809))
(let (?e811 (bvand (bvnot ?e277) ?e810))
(let (?e812 (bvand (bvnot ?e311) ?e811))
(let (?e813 (bvand ?e312 ?e812))
(let (?e814 (bvand ?e325 ?e813))
(let (?e815 (bvand ?e331 ?e814))
(let (?e816 (bvand ?e337 ?e815))
(let (?e817 (bvand ?e343 ?e816))
(let (?e818 (bvand ?e378 ?e817))
(let (?e819 (bvand ?e384 ?e818))
(let (?e820 (bvand ?e390 ?e819))
(let (?e821 (bvand ?e397 ?e820))
(let (?e822 (bvand ?e403 ?e821))
(let (?e823 (bvand ?e409 ?e822))
(let (?e824 (bvand ?e415 ?e823))
(let (?e825 (bvand reset_2 ?e824))
(let (?e826 (bvand (bvnot ?e421) ?e825))
(let (?e827 (bvand (bvnot ?e461) ?e826))
(let (?e828 (bvand ?e462 ?e827))
(let (?e829 (bvand ?e475 ?e828))
(let (?e830 (bvand ?e481 ?e829))
(let (?e831 (bvand ?e487 ?e830))
(let (?e832 (bvand ?e493 ?e831))
(let (?e833 (bvand ?e528 ?e832))
(let (?e834 (bvand ?e534 ?e833))
(let (?e835 (bvand ?e540 ?e834))
(let (?e836 (bvand ?e547 ?e835))
(let (?e837 (bvand ?e553 ?e836))
(let (?e838 (bvand ?e559 ?e837))
(let (?e839 (bvand ?e565 ?e838))
(let (?e840 (bvand reset_3 ?e839))
(let (?e841 (bvand (bvnot ?e571) ?e840))
(let (?e842 (bvand (bvnot ?e617) ?e841))
(let (?e843 (bvand ?e618 ?e842))
(let (?e844 (bvand ?e631 ?e843))
(let (?e845 (bvand ?e637 ?e844))
(let (?e846 (bvand ?e643 ?e845))
(let (?e847 (bvand ?e649 ?e846))
(let (?e848 (bvand ?e684 ?e847))
(let (?e849 (bvand ?e690 ?e848))
(let (?e850 (bvand ?e696 ?e849))
(let (?e851 (bvand ?e703 ?e850))
(let (?e852 (bvand ?e709 ?e851))
(let (?e853 (bvand ?e715 ?e852))
(let (?e854 (bvand ?e721 ?e853))
(let (?e855 (bvand reset_4 ?e854))
(let (?e856 (bvand (bvnot ?e727) ?e855))
(let (?e857 (bvand (bvnot ?e779) ?e856))
(let (?e858 (bvand ?e780 ?e857))
(let (?e859 (bvand ?e781 ?e858))
(let (?e860 (bvand ?e782 ?e859))
(let (?e861 (bvand ?e783 ?e860))
(let (?e862 (bvand ?e784 ?e861))
(let (?e863 (bvand ?e785 ?e862))
(let (?e864 (bvand ?e786 ?e863))
(let (?e865 (bvand ?e787 ?e864))
(let (?e866 (bvand ?e788 ?e865))
(let (?e867 (bvand ?e789 ?e866))
(let (?e868 (bvand ?e790 ?e867))
(let (?e869 (bvand ?e791 ?e868))
(let (?e870 (bvand reset_5 ?e869))
(let (?e871 (bvand (bvnot ?e796) ?e870))
(let (?e872 (bvand reset_5 ?e871))
(not (= ?e872 bv0[1]))
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))