#ifndef _LDC1101_H_
#define _LDC1101_H_


// cristinel.ababei, copyleft 2020, :-)
// this file includes the class declaration and function definitions for LDC1101 of Texas Instruments;
// LDC1101 is an inductance to digital converter; communication with it is via SPI;
//
// credits:
// this code is an adaptation of the code written by: Victor Sluiter & Bob Giesberts
// https://os.mbed.com/users/bobgiesberts/code/LDC1101/


#include "SPI2.h"


#ifndef PI
#define PI 3.14
#endif


///////////////////////////////////////////////////////////////////////////////
//
// some hard coded info
//
///////////////////////////////////////////////////////////////////////////////

// Example calculations, in my case:
// LHR: setLHRmode  (init() can select RPmode too) <--- LHR mode!
// SENSOR_DIV:  0, is the contents of LHR_CONFIG
// RESP_TIME:   LDC_RESPONSE_TIME_384: Response Time = 384 (default value)
// LHR_RCount:  RCount = 65535 (max), 0xffff done in ctor
// ƒSENSOR-MIN: _f_sensor_min = 1 MHz,  500 kHz (default value)
// LHR_OFFSET: _LHRoffset = 0;
// RPMAX: 96KOhm: RPMAX_96KOhm
// RPMIN: 1KOhm:  RPMIN_1KOhm 
// When LHR_OFFSET = 0x0000, ƒSENSOR can be determined:
// ƒSENSOR = ƒCLKIN × 2^SENSOR_DIV × LHR_DATA / 2^24
// f_sensor: the calculated frequency of the sensor 


// Configuration of FUNC_MODE field of 2 bits of the START_CONFIG register;
// See page 21 of Datasheet:
// Configure functional mode of device. In active mode, the device
// performs conversions. When in Sleep mode, the LDC1101 is in a
// reduced power mode; the device should be configured in this mode.
// Shutdown mode is a minimal current mode in which the device
// configuration is not retained.
// Note that SHUTDOWN_EN must be set to 1 prior to setting
// FUNC_MODE to b10.
// b00: Active conversion mode
// b01: Sleep mode (default value)
// b10: Set device to shutdown mode
// b11: Reserved
typedef enum {LDC_MODE_ACTIVE_CONV = 0, \
              LDC_MODE_SLEEP       = 1, \
              LDC_MODE_SHUTDOWN    = 2} LDC_FUNCTIONAL_MODE;

// Configure conversion interval
// RESP_TIME, Response Time, which is the number of sensor periods used per conversion.
typedef enum {LDC_RESPONSE_TIME_192 = 2, \
              LDC_RESPONSE_TIME_384 = 3, \
              LDC_RESPONSE_TIME_768 = 4, \
              LDC_RESPONSE_TIME_1536= 5, \
              LDC_RESPONSE_TIME_3072= 6, \
              LDC_RESPONSE_TIME_6144= 7} LDC_RESPONSE_TIME;
              
// Register RP_SET Field Descriptions (RW)
typedef enum {RPMAX_96KOhm = 0, \
              RPMAX_48KOhm = 1, \
              RPMAX_24KOhm = 2, \
              RPMAX_12KOhm = 3, \
              RPMAX_6KOhm  = 4, \
              RPMAX_3KOhm  = 5, \
              RPMAX_1_5KOhm  = 6, \
              RPMAX_0_75KOhm = 7} LDC_RP_MAX;
              
typedef enum {RPMIN_96KOhm = 0, \
              RPMIN_48KOhm = 1, \
              RPMIN_24KOhm = 2, \
              RPMIN_12KOhm = 3, \
              RPMIN_6KOhm  = 4, \
              RPMIN_3KOhm  = 5, \
              RPMIN_1_5KOhm  = 6, \
              RPMIN_0_75KOhm = 7} LDC_RP_MIN;

// SENSOR_DIV, page 37-38 in Datasheet
// this will be used as "index" in an array that stores 2^SENSOR_DIV = 1,2,4,8
typedef enum {DIVIDER_0 = 0, \
              DIVIDER_1 = 1, \
              DIVIDER_2 = 2, \
              DIVIDER_3 = 3} DIVIDER;

typedef enum {LDC_RP_PLUS_L_OPERATION = 0, \
              LDC_LHR_OPERATION       = 1} LDC_OPERATION_MODE;

///////////////////////////////////////////////////////////////////////////////
//
// LDC1101 class declaration
// This is a Class to interface to an LDC1101, inductance to digital converter
// IC that communicates via SPI
//
///////////////////////////////////////////////////////////////////////////////

class LDC1101
{
  public:
    // Class to interface to an LDC1101
    LDC1101(int ss_pin, float capacitor, float f_CLKIN, LDC_OPERATION_MODE oper_mode=LDC_LHR_OPERATION);
    ~LDC1101();
    
    // Set power mode.
    // The constructor sets the LDC1101 in Active mode.
    // param mode choose from LDC_MODE_ACTIVE, LDC_MODE STANDBY or LDC_MODE_SHUTDOWN
    void func_mode(LDC_FUNCTIONAL_MODE mode);
    // Set LDC1101 to lowest power setting
    //void sleep(void);
    // Get LDC1101 to work for you again
    void wakeup(void);
    // initial configurations
    void init(void);
    
    // initialises LHR mode
    // Also enables shutdown modus
    void setLHRmode(void);
    void setRPmode(void);
    
    // Sensor divider (p.26)
    // Sensor input divider         (p.35)
    // Because f_CLKIN > 4*f_sensor_max is not realisable for higher frequencies, so there is a divider
    // f_CLKIN > 4 * f_sensor_max / SENSOR_DIV
    // this effectively decreases resolution. Preferable use setLHRoffset instead.
    // div 
    // - DIVIDER_0
    // - DIVIDER_1
    // - DIVIDER_2
    // - DIVIDER_3
    void setDivider(DIVIDER div);
    
    // Settings for RP
    // RPMAX_DIS [7]
    // 0 - not disabled: RP_MAX is driven
    // 1 - disabled: RP_MAX is ignored, current drive is off.
    // RPMIN [2:0]
    // This setting can be calibrated with the target closest to the sensor: R_p(d = 0mm)
    // RPMIN < 0.8 x R_p(d = 0mm)
    // If R_p < 750 Ohm ---> increase distance to target
    void setRPsettings(bool RPMAX_DIS, LDC_RP_MAX rpmax, LDC_RP_MIN rpmin);
     
    // Sensor offset (p.26)
    // The sensor might reach a value > 2^24. To prevent this, set an offset.
    // offset
    // 32 bit value that should be substracted from the current sensor value
    void setLHRoffset( uint32_t offset );
 
    // Set the Response Time parameters. Does not apply in LHR mode (p.17)
    // responsetime 
    // Larger value increases accuracy, but slows down the output data rate. Choose one of these values:
    // - LDC_RESPONSE_TIME_192
    // - LDC_RESPONSE_TIME_384
    // - LDC_RESPONSE_TIME_768
    // - LDC_RESPONSE_TIME_1536
    // - LDC_RESPONSE_TIME_3072
    // - LDC_RESPONSE_TIME_6144
    //              ResponseTime
    // t_conv (s) = ------------
    //              3 x f_sensor
    void setResponseTime(LDC_RESPONSE_TIME responsetime);
    
    // Set the Reference Count parameter.
    // LHR_RCount
    // For LHR mode, the conversion time is set by the reference count LHR_RCOUNT (0x30 & 0x31) (p.34)
    // The conversion time represents the number of clock cycles used to measure the sensor frequency.
    // Higher values for LHR_RCOUNT have a higher effective measurement resolution but a lower sample rate. (p.34)
    // The maximum setting (0xffff) is required for full resolution (p. 35)
    // LHR_RCount = (f_CLKIN/sample rate - 55)/16
    void setReferenceCount(uint16_t LHR_RCount);

    // Set the rample rate (indirectly set the reference count)
    void setSampleRate( float samplerate );
    
    // Set the minimum sensor frequency (so without any target)
    // f_sensor_min
    // f_sensor_min in MHz
    // value between 0.5 and 8 MHz
    void set_fsensor_min(float f_sensor_min);

    // Set the value of the external capacitor
    // This is needed for the calculation of the inductance.
    void setCapacitor(float c) {
      _cap = c;
    };
    // Set the value of the external clock
    // If PWMout is used to generate a clock signal, this will update the output frequency.s
    void setFrequency(float frequency) {
      _fCLKIN = frequency;
    };


    // () some get/query functions;
    
    uint8_t get_status(void);
    uint8_t get_LHR_status(void);
    bool is_New_LHR_data(void);
    bool is_RP_L_DataReady(void); 
    bool is_Oscillation_Error(void);
    

    // () calculate stuff with sensor data
    
    // get the quality
    float get_Q(void); 
    // get the calculated value for f_sensor    
    float get_fsensor(uint32_t Ldata = 0);
    // get the set minimum value for f_sensor (0x04[7:5])  
    float get_fsensor_min(void);
    // get the calculated inductance value
    float get_Inductance(uint32_t Ldata = 0);


    // () functions to get data from the LDC1101 sensor;
    
    float get_RP( uint16_t RPdata = 0);
    // Read LHR_Data, the raw 24-bit inductance value.
    // This is needed for the calculation of the inductance.
    // It reads from addresses 0x38, 0x39 & 0x3A.
    uint32_t get_LHR_Data(void);
    uint16_t get_L_Data(void);
    uint16_t get_RP_Data(void);   
    
    // get the reference frequency (f_CLKIN)
    float get_fCLKIN(void) {return _fCLKIN;}
    
    // get the responsetime: RESP_TIME
    uint16_t get_responsetime(void) { 
      uint16_t resps[] = {0, 0, 192, 384, 768, 1536, 3072, 6144}; 
      uint8_t resp[1]; 
      readSPI(resp, 0x04, 1); 
      return resps[(resp[0] & 0x07)]; 
    }; 
    
    // get RPmin
    float get_RPmin(void) {return _RPmin;}
    // get RPmax
    float get_RPmax(void) {return _RPmax;}
    
    // get the reference count
    uint16_t get_Rcount(void) { 
      uint8_t rcount[2] = {0,1}; 
      readSPI(rcount, 0x30, 2); 
      return ((rcount[1] << 8) | rcount[0]); 
    };

    // get the divider
    uint8_t get_two_to_divider(void) {return _two_to_divider;}
    // get LHR_OFFSET
    uint32_t get_LHRoffset(void) {return _LHRoffset;}
    // get the capacitance
    float get_cap(void) {return _cap;}
    LDC_OPERATION_MODE get_operation_mode(void) { return _operation_mode; }
 
  private:
    void readSPI( uint8_t *data, uint8_t address, uint8_t num_bytes = 1);
    void writeSPI( uint8_t *data, uint8_t address, uint8_t num_bytes = 1);   
    void writeSPIregister( uint8_t reg, uint8_t value) { writeSPI( &value, reg); }; 
    //void suicide( void *obj) { delete obj; };   
    
    LDC_OPERATION_MODE _operation_mode; // P+R, LHR
    uint16_t _responsetime;  // RESP_TIME, Response Time, which is the number of sensor periods used per conversion.
    uint8_t _two_to_divider; // 2^SENSOR_DIV is stored here; used in formula of fSENSOR; a trick to avoid the calculation of 2^SENSOR_DIV each time sSENSOR is calculated
    uint32_t _LHRoffset;     // LHR_OFFSET actually multiplied by 256 (2^8) so that I do not need to multiply by 2^8 when I calculate fSENSOR
    float _RPmin;            // RP_MIN
    float _RPmax;            // RP_MAX
    float _fsensor;          // f_sensor: the calculated frequency of the sensor
    float _f_sensor_min;     // f_sensor_min: setting for the lowest expected value for f_sensor
    float _inductance;       // the calculated inductance
    float _fCLKIN;           // f_CLKIN: frequency of external clock: 10MHz in my case
    float _cap;              // capacitor: 270 pF
    uint32_t _L_data;        // The raw measured data for inductance <--- NOT USED
    uint16_t _Rcount;        // The reference count

    int _ss_pin;             // slave select pin;
    SPIClass2 _SPI2;         // custom SPI object, uses IDE pin 9 (not 10) as slave-select-pin for ProximityBoard
};

#endif
