/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/Documentos David/Universidad/3ero A/Arquitectura de ordenadores/tarea/tercera unidad/trabajo final/EjercicioBitSlice/EjercicioBitSlice/registro_instrucciones4bits.vhd";



static void work_a_2488798360_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2832);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(20, ng0);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t7 = (t0 + 2912);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t8, 4U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

LAB5:    t2 = (t0 + 992U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

}


extern void work_a_2488798360_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2488798360_3212880686_p_0};
	xsi_register_didat("work_a_2488798360_3212880686", "isim/ts_cpu4bits_isim_beh.exe.sim/work/a_2488798360_3212880686.didat");
	xsi_register_executes(pe);
}
