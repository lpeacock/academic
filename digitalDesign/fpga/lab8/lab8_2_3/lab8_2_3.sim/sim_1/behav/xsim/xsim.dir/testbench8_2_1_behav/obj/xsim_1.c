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
extern void execute_321(char*, char *);
extern void execute_127(char*, char *);
extern void execute_128(char*, char *);
extern void execute_141(char*, char *);
extern void execute_315(char*, char *);
extern void execute_115(char*, char *);
extern void execute_117(char*, char *);
extern void execute_125(char*, char *);
extern void execute_132(char*, char *);
extern void execute_135(char*, char *);
extern void execute_147(char*, char *);
extern void execute_149(char*, char *);
extern void execute_151(char*, char *);
extern void execute_153(char*, char *);
extern void execute_158(char*, char *);
extern void execute_161(char*, char *);
extern void execute_165(char*, char *);
extern void execute_167(char*, char *);
extern void execute_169(char*, char *);
extern void execute_171(char*, char *);
extern void execute_312(char*, char *);
extern void execute_313(char*, char *);
extern void execute_186(char*, char *);
extern void execute_190(char*, char *);
extern void execute_188(char*, char *);
extern void execute_192(char*, char *);
extern void execute_197(char*, char *);
extern void execute_200(char*, char *);
extern void execute_203(char*, char *);
extern void execute_206(char*, char *);
extern void execute_209(char*, char *);
extern void execute_211(char*, char *);
extern void execute_212(char*, char *);
extern void execute_213(char*, char *);
extern void execute_218(char*, char *);
extern void execute_221(char*, char *);
extern void execute_223(char*, char *);
extern void execute_227(char*, char *);
extern void execute_229(char*, char *);
extern void execute_235(char*, char *);
extern void execute_266(char*, char *);
extern void execute_267(char*, char *);
extern void execute_269(char*, char *);
extern void execute_261(char*, char *);
extern void execute_242(char*, char *);
extern void execute_245(char*, char *);
extern void execute_248(char*, char *);
extern void execute_251(char*, char *);
extern void execute_254(char*, char *);
extern void execute_260(char*, char *);
extern void execute_256(char*, char *);
extern void execute_257(char*, char *);
extern void execute_258(char*, char *);
extern void execute_272(char*, char *);
extern void execute_274(char*, char *);
extern void execute_323(char*, char *);
extern void execute_324(char*, char *);
extern void execute_325(char*, char *);
extern void execute_326(char*, char *);
extern void execute_327(char*, char *);
extern void execute_328(char*, char *);
extern void execute_329(char*, char *);
extern void execute_330(char*, char *);
extern void transaction_3(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_5(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[68] = {(funcp)execute_321, (funcp)execute_127, (funcp)execute_128, (funcp)execute_141, (funcp)execute_315, (funcp)execute_115, (funcp)execute_117, (funcp)execute_125, (funcp)execute_132, (funcp)execute_135, (funcp)execute_147, (funcp)execute_149, (funcp)execute_151, (funcp)execute_153, (funcp)execute_158, (funcp)execute_161, (funcp)execute_165, (funcp)execute_167, (funcp)execute_169, (funcp)execute_171, (funcp)execute_312, (funcp)execute_313, (funcp)execute_186, (funcp)execute_190, (funcp)execute_188, (funcp)execute_192, (funcp)execute_197, (funcp)execute_200, (funcp)execute_203, (funcp)execute_206, (funcp)execute_209, (funcp)execute_211, (funcp)execute_212, (funcp)execute_213, (funcp)execute_218, (funcp)execute_221, (funcp)execute_223, (funcp)execute_227, (funcp)execute_229, (funcp)execute_235, (funcp)execute_266, (funcp)execute_267, (funcp)execute_269, (funcp)execute_261, (funcp)execute_242, (funcp)execute_245, (funcp)execute_248, (funcp)execute_251, (funcp)execute_254, (funcp)execute_260, (funcp)execute_256, (funcp)execute_257, (funcp)execute_258, (funcp)execute_272, (funcp)execute_274, (funcp)execute_323, (funcp)execute_324, (funcp)execute_325, (funcp)execute_326, (funcp)execute_327, (funcp)execute_328, (funcp)execute_329, (funcp)execute_330, (funcp)transaction_3, (funcp)transaction_5, (funcp)vhdl_transfunc_eventcallback, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_0};
const int NumRelocateId= 68;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testbench8_2_1_behav/xsim.reloc",  (void **)funcTab, 68);
	iki_vhdl_file_variable_register(dp + 36304);
	iki_vhdl_file_variable_register(dp + 36360);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/testbench8_2_1_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/testbench8_2_1_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 41568, dp + 41040, 0, 7, 0, 7, 8, 1);
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
    iki_set_sv_type_file_path_name("xsim.dir/testbench8_2_1_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/testbench8_2_1_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/testbench8_2_1_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
