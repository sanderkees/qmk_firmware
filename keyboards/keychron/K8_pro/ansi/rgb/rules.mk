# MCU name
MCU = STM32L433
 
# Bootloader selection
BOOTLOADER = stm32-dfu

# Build Options
#   change yes to no to disable
#
BOOTMAGIC_ENABLE = yes      # Enable boot magic
MOUSEKEY_ENABLE = yes       # Mouse keys
EXTRAKEY_ENABLE = yes       # Audio control and System control
CONSOLE_ENABLE = no         # Console for debug
COMMAND_ENABLE = no         # Commands for debug and configuration
# Do not enable SLEEP_LED_ENABLE. it uses the same timer as BACKLIGHT_ENABLE
SLEEP_LED_ENABLE = no       # Breathing sleep LED during USB suspend
# if this doesn't work, see here: https://github.com/tmk/tmk_keyboard/wiki/FAQ#nkro-doesnt-work
NKRO_ENABLE = yes           # USB Nkey Rollover
BACKLIGHT_ENABLE = no       # Enable keyboard backlight functionality
RGBLIGHT_ENABLE = no        # Enable keyboard RGB underglow
BLUETOOTH_ENABLE = no       # Enable Bluetooth with
BLUETOOTH_DRIVER = custom
AUDIO_ENABLE = no           # Audio output on port C6
DIP_SWITCH_ENABLE = yes
RAW_ENABLE = yes

# Enter lower-power sleep mode when on the ChibiOS idle thread
OPT_DEFS += -DCORTEX_ENABLE_WFI_IDLE=TRUE
OPT_DEFS += -DNO_USB_STARTUP_CHECK -DENABLE_FACTORY_TEST
OPT_DEFS += -DKC_BLUETOOTH_ENABLE

CUSTOM_MATRIX = lite
SRC += /keyboards/keychron/K8_pro/matrix.c

RGB_MATRIX_ENABLE = yes
RGB_MATRIX_DRIVER = CKLED2001
OPENRGB_ENABLE = yes

include keyboards/keychron/bluetooth/bluetooth.mk


