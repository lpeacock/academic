/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_375(char*, char *);
extern void execute_376(char*, char *);
extern void execute_377(char*, char *);
extern void execute_378(char*, char *);
extern void execute_379(char*, char *);
extern void execute_421(char*, char *);
extern void execute_422(char*, char *);
extern void execute_423(char*, char *);
extern void execute_384(char*, char *);
extern void execute_385(char*, char *);
extern void execute_386(char*, char *);
extern void execute_387(char*, char *);
extern void execute_420(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_150(char*, char *);
extern void execute_151(char*, char *);
extern void execute_164(char*, char *);
extern void execute_365(char*, char *);
extern void execute_117(char*, char *);
extern void execute_120(char*, char *);
extern void execute_139(char*, char *);
extern void execute_125(char*, char *);
extern void execute_127(char*, char *);
extern void execute_129(char*, char *);
extern void execute_131(char*, char *);
extern void execute_133(char*, char *);
extern void execute_135(char*, char *);
extern void execute_137(char*, char *);
extern void execute_143(char*, char *);
extern void execute_148(char*, char *);
extern void execute_155(char*, char *);
extern void execute_158(char*, char *);
extern void execute_170(char*, char *);
extern void execute_172(char*, char *);
extern void execute_174(char*, char *);
extern void execute_176(char*, char *);
extern void execute_181(char*, char *);
extern void execute_184(char*, char *);
extern void execute_188(char*, char *);
extern void execute_190(char*, char *);
extern void execute_192(char*, char *);
extern void execute_194(char*, char *);
extern void execute_362(char*, char *);
extern void execute_363(char*, char *);
extern void execute_209(char*, char *);
extern void execute_213(char*, char *);
extern void execute_211(char*, char *);
extern void execute_215(char*, char *);
extern void execute_220(char*, char *);
extern void execute_222(char*, char *);
extern void execute_225(char*, char *);
extern void execute_229(char*, char *);
extern void execute_232(char*, char *);
extern void execute_234(char*, char *);
extern void execute_235(char*, char *);
extern void execute_236(char*, char *);
extern void execute_241(char*, char *);
extern void execute_244(char*, char *);
extern void execute_246(char*, char *);
extern void execute_250(char*, char *);
extern void execute_252(char*, char *);
extern void execute_258(char*, char *);
extern void execute_291(char*, char *);
extern void execute_292(char*, char *);
extern void execute_294(char*, char *);
extern void execute_286(char*, char *);
extern void execute_264(char*, char *);
extern void execute_268(char*, char *);
extern void execute_271(char*, char *);
extern void execute_275(char*, char *);
extern void execute_279(char*, char *);
extern void execute_285(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_283(char*, char *);
extern void execute_297(char*, char *);
extern void execute_299(char*, char *);
extern void execute_388(char*, char *);
extern void execute_389(char*, char *);
extern void execute_390(char*, char *);
extern void execute_391(char*, char *);
extern void execute_392(char*, char *);
extern void execute_393(char*, char *);
extern void execute_394(char*, char *);
extern void execute_395(char*, char *);
extern void execute_381(char*, char *);
extern void execute_382(char*, char *);
extern void execute_383(char*, char *);
extern void execute_424(char*, char *);
extern void execute_425(char*, char *);
extern void execute_426(char*, char *);
extern void execute_427(char*, char *);
extern void execute_428(char*, char *);
extern void transaction_3(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_8(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_19(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[101] = {(funcp)execute_375, (funcp)execute_376, (funcp)execute_377, (funcp)execute_378, (funcp)execute_379, (funcp)execute_421, (funcp)execute_422, (funcp)execute_423, (funcp)execute_384, (funcp)execute_385, (funcp)execute_386, (funcp)execute_387, (funcp)execute_420, (funcp)execute_4, (funcp)execute_5, (funcp)execute_150, (funcp)execute_151, (funcp)execute_164, (funcp)execute_365, (funcp)execute_117, (funcp)execute_120, (funcp)execute_139, (funcp)execute_125, (funcp)execute_127, (funcp)execute_129, (funcp)execute_131, (funcp)execute_133, (funcp)execute_135, (funcp)execute_137, (funcp)execute_143, (funcp)execute_148, (funcp)execute_155, (funcp)execute_158, (funcp)execute_170, (funcp)execute_172, (funcp)execute_174, (funcp)execute_176, (funcp)execute_181, (funcp)execute_184, (funcp)execute_188, (funcp)execute_190, (funcp)execute_192, (funcp)execute_194, (funcp)execute_362, (funcp)execute_363, (funcp)execute_209, (funcp)execute_213, (funcp)execute_211, (funcp)execute_215, (funcp)execute_220, (funcp)execute_222, (funcp)execute_225, (funcp)execute_229, (funcp)execute_232, (funcp)execute_234, (funcp)execute_235, (funcp)execute_236, (funcp)execute_241, (funcp)execute_244, (funcp)execute_246, (funcp)execute_250, (funcp)execute_252, (funcp)execute_258, (funcp)execute_291, (funcp)execute_292, (funcp)execute_294, (funcp)execute_286, (funcp)execute_264, (funcp)execute_268, (funcp)execute_271, (funcp)execute_275, (funcp)execute_279, (funcp)execute_285, (funcp)execute_281, (funcp)execute_282, (funcp)execute_283, (funcp)execute_297, (funcp)execute_299, (funcp)execute_388, (funcp)execute_389, (funcp)execute_390, (funcp)execute_391, (funcp)execute_392, (funcp)execute_393, (funcp)execute_394, (funcp)execute_395, (funcp)execute_381, (funcp)execute_382, (funcp)execute_383, (funcp)execute_424, (funcp)execute_425, (funcp)execute_426, (funcp)execute_427, (funcp)execute_428, (funcp)transaction_3, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_8, (funcp)transaction_10, (funcp)transaction_11, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_19};
const int NumRelocateId= 101;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testbench7_2_1_behav/xsim.reloc",  (void **)funcTab, 101);
	iki_vhdl_file_variable_register(dp + 40536);
	iki_vhdl_file_variable_register(dp + 40592);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/testbench7_2_1_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/testbench7_2_1_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 50088, dp + 45552, 0, 12, 0, 12, 13, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/testbench7_2_1_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/testbench7_2_1_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/testbench7_2_1_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
