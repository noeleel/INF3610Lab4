set C_TypeInfoList {{ 
"sobel_filter" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"inter_pix": [[], {"array": ["0", [2073600]]}] }, {"out_pix": [[], {"array": [ {"scalar": "unsigned int"}, [2073600]]}] }],[],""], 
"0": [ "uint8_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}]
}}
set moduleName sobel_filter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sobel_filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ inter_pix int 8 regular {array 2073600 { 1 3 } 1 1 }  }
	{ out_pix int 32 regular {array 2073600 { 0 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inter_pix", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inter_pix","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2073599,"step" : 1}]}]}]} , 
 	{ "Name" : "out_pix", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_pix","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2073599,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inter_pix_address0 sc_out sc_lv 21 signal 0 } 
	{ inter_pix_ce0 sc_out sc_logic 1 signal 0 } 
	{ inter_pix_q0 sc_in sc_lv 8 signal 0 } 
	{ out_pix_address0 sc_out sc_lv 21 signal 1 } 
	{ out_pix_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_pix_we0 sc_out sc_logic 1 signal 1 } 
	{ out_pix_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inter_pix_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "inter_pix", "role": "address0" }} , 
 	{ "name": "inter_pix_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_pix", "role": "ce0" }} , 
 	{ "name": "inter_pix_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_pix", "role": "q0" }} , 
 	{ "name": "out_pix_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "out_pix", "role": "address0" }} , 
 	{ "name": "out_pix_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_pix", "role": "ce0" }} , 
 	{ "name": "out_pix_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_pix", "role": "we0" }} , 
 	{ "name": "out_pix_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_pix", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sobel_filter",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "inter_pix", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_pix", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	sobel_filter {
		inter_pix {Type I LastRead 1 FirstWrite -1}
		out_pix {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2073603", "Max" : "2073603"}
	, {"Name" : "Interval", "Min" : "2073604", "Max" : "2073604"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	inter_pix { ap_memory {  { inter_pix_address0 mem_address 1 21 }  { inter_pix_ce0 mem_ce 1 1 }  { inter_pix_q0 mem_dout 0 8 } } }
	out_pix { ap_memory {  { out_pix_address0 mem_address 1 21 }  { out_pix_ce0 mem_ce 1 1 }  { out_pix_we0 mem_we 1 1 }  { out_pix_d0 mem_din 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
