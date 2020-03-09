/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
#include "project.h"

int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */

    /* Place your initialization/startup code here (e.g. MyInst_Start()) */

          
      PWM_Start(); // Needed for exercise part2
    
    for(;;)
    {
        /* Place your application code here. */
        
        /*Exercise 1
        LED_Write( ! LED_Read() );
        CyDelay( 200 );*/
        
        
        /*Exercise 2
        LED_Write( ! SW1_Read() );*/
       
        /*Exercise 3
         if ( SW1_Read() ){
        LED_Write( ! LED_Read() );
        CyDelay( 800 );
        }
        else{
        LED_Write( ! LED_Read() );
        CyDelay( 200 ); 
        }*/
        
      
        
        
    }
}

/* [] END OF FILE */
