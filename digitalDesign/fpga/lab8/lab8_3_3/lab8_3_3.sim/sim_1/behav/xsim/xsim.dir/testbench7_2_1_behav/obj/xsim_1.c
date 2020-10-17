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
extern void execute_348(char*, char *);
extern void execute_349(char*, char *);
extern void execute_350(char*, char *);
extern void execute_351(char*, char *);
extern void execute_362(char*, char *);
extern void execute_363(char*, char *);
extern void execute_356(char*, char *);
extern void execute_357(char*, char *);
extern void execute_358(char*, char *);
extern void execute_359(char*, char *);
extern void execute_360(char*, char *);
extern void execute_361(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_132(char*, char *);
extern void execute_133(char*, char *);
extern void execute_146(char*, char *);
extern void execute_342(char*, char *);
extern void execute_119(char*, char *);
extern void execute_121(char*, char *);
extern void execute_125(char*, char *);
extern void execute_130(char*, char *);
extern void execute_137(char*, char *);
extern void execute_140(char*, char *);
extern void execute_152(char*, char *);
extern void execute_154(char*, char *);
extern void execute_156(char*, char *);
extern void execute_158(char*, char *);
extern void execute_163(char*, char *);
extern void execute_166(char*, char *);
extern void execute_170(char*, char *);
extern void execute_172(char*, char *);
extern void execute_174(char*, char *);
extern void execute_176(char*, char *);
extern void execute_339(char*, char *);
extern void execute_340(char*, char *);
extern void execute_191(char*, char *);
extern void execute_195(char*, char *);
extern void execute_193(char*, char *);
extern void execute_197(char*, char *);
extern void execute_202(char*, char *);
extern void execute_205(char*, char *);
extern void execute_207(char*, char *);
extern void execute_211(char*, char *);
extern void execute_214(char*, char *);
extern void execute_216(char*, char *);
extern void execute_217(char*, char *);
extern void execute_218(char*, char *);
extern void execute_223(char*, char *);
extern void execute_226(char*, char *);
extern void execute_228(char*, char *);
extern void execute_232(char*, char *);
extern void execute_234(char*, char *);
extern void execute_240(char*, char *);
extern void execute_273(char*, char *);
extern void execute_274(char*, char *);
extern void execute_276(char*, char *);
extern void execute_268(char*, char *);
extern void execute_247(char*, char *);
extern void execute_250(char*, char *);
extern void execute_253(char*, char *);
extern void execute_257(char*, char *);
extern void execute_261(char*, char *);
extern void execute_267(char*, char *);
extern void execute_263(char*, char *);
extern void execute_264(char*, char *);
extern void execute_265(char*, char *);
extern void execute_279(char*, char *);
extern void execute_281(char*, char *);
extern void execute_353(char*, char *);
extern void execute_354(char*, char *);
extern void execute_355(char*, char *);
extern void execute_364(char*, char *);
extern void execute_365(char*, char *);
extern void execute_366(char*, char *);
extern void execute_367(char*, char *);
extern void execute_368(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_7(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_9(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_18(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[83] = {(funcp)execute_348, (funcp)execute_349, (funcp)execute_350, (funcp)execute_351, (funcp)execute_362, (funcp)execute_363, (funcp)execute_356, (funcp)execute_357, (funcp)execute_358, (funcp)execute_359, (funcp)execute_360, (funcp)execute_361, (funcp)execute_4, (funcp)execute_5, (funcp)execute_132, (funcp)execute_133, (funcp)execute_146, (funcp)execute_342, (funcp)execute_119, (funcp)execute_121, (funcp)execute_125, (funcp)execute_130, (funcp)execute_137, (funcp)execute_140, (funcp)execute_152, (funcp)execute_154, (funcp)execute_156, (funcp)execute_158, (funcp)execute_163, (funcp)execute_166, (funcp)execute_170, (funcp)execute_172, (funcp)execute_174, (funcp)execute_176, (funcp)execute_339, (funcp)execute_340, (funcp)execute_191, (funcp)execute_195, (funcp)execute_193, (funcp)execute_197, (funcp)execute_202, (funcp)execute_205, (funcp)execute_207, (funcp)execute_211, (funcp)execute_214, (funcp)execute_216, (funcp)execute_217, (funcp)execute_218, (funcp)execute_223, (funcp)execute_226, (funcp)execute_228, (funcp)execute_232, (funcp)execute_234, (funcp)execute_240, (funcp)execute_273, (funcp)execute_274, (funcp)execute_276, (funcp)execute_268, (funcp)execute_247, (funcp)execute_250, (funcp)execute_253, (funcp)execute_257, (funcp)execute_261, (funcp)execute_267, (funcp)execute_263, (funcp)execute_264, (funcp)execute_265, (funcp)execute_279, (funcp)execute_281, (funcp)execute_353, (funcp)execute_354, (funcp)execute_355, (funcp)execute_364, (funcp)execute_365, (funcp)execute_366, (funcp)execute_367, (funcp)execute_368, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_7, (funcp)transaction_9, (funcp)transaction_15, (funcp)transaction_18, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 83;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testbench7_2_1_behav/xsim.reloc",  (void **)funcTab, 83);
	iki_vhdl_file_variable_register(dp + 39296);
	iki_vhdl_file_variable_register(dp + 39352);


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

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 48488, dp + 44256, 0, 11, 0, 11, 12, 1);
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
