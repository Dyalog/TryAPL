:Namespace Crypt
    (⎕IO ⎕ML ⎕WX)←1 3 1

    :Section Constants
    CIPH_AES←9306112
    CIPH_AES_CBC←294518784
    CIPH_AES_CFB←42860544
    CIPH_AES_CTR←76414976
    CIPH_AES_ECB←277741568
    CIPH_AES_GCM←177078272
    CIPH_AES_OFB←59637760
    CIPH_BF←8781824
    CIPH_BF_CBC←293994496
    CIPH_BF_CFB←42336256
    CIPH_BF_ECB←277217280
    CIPH_BF_OFB←59113472
    CIPH_CAST←8781824
    CIPH_CAST_CBC←293994496
    CIPH_CAST_CFB←42336256
    CIPH_CAST_ECB←277217280
    CIPH_CAST_OFB←59113472
    CIPH_CM←9502720
    CIPH_CM_CBC←294715392
    CIPH_CM_CFB←43057152
    CIPH_CM_CTR←76611584
    CIPH_CM_ECB←277938176
    CIPH_CM_GCM←177274880
    CIPH_CM_OFB←59834368
    CIPH_DES←8454144
    CIPH_DESX←8650752
    CIPH_DESX_CBC←293863424
    CIPH_DES_CBC←293666816
    CIPH_DES_CFB←42008576
    CIPH_DES_ECB←276889600
    CIPH_DES_OFB←58785792
    CIPH_IDEA←8716288
    CIPH_IDEA_CBC←293928960
    CIPH_IDEA_CFB←42270720
    CIPH_IDEA_ECB←277151744
    CIPH_IDEA_OFB←59047936
    CIPH_MASK←16711680
    CIPH_NONE←0
    CIPH_RC2←9109504
    CIPH_RC2_CBC←294322176
    CIPH_RC2_CFB←42663936
    CIPH_RC2_ECB←277544960
    CIPH_RC2_OFB←59441152
    CIPH_RC4←9175040
    CIPH_RC5←9240576
    CIPH_RC5_CBC←294453248
    CIPH_RC5_CFB←42795008
    CIPH_RC5_ECB←277676032
    CIPH_RC5_OFB←59572224
    CIPH_SEED←9699328
    CIPH_SEED_CBC←294912000
    CIPH_SEED_CFB←43253760
    CIPH_SEED_ECB←278134784
    CIPH_SEED_GCM←177471488
    CIPH_SEED_OFB←60030976
    CMAC_AES←36352
    CMAC_BF←34560
    CMAC_CAST←34304
    CMAC_CM←37120
    CMAC_DES←33024
    CMAC_DESX←33792
    CMAC_IDEA←34048
    CMAC_RC2←35584
    CMAC_RC5←36096
    CMAC_SEED←37888
    CMOD_CBC←16777216
    CMOD_CCM←150994944
    CMOD_CFB←33554432
    CMOD_CTR←67108864
    CMOD_CTS←83886080
    CMOD_CWC←201326592
    CMOD_EAX←184549376
    CMOD_ECB←0
    CMOD_GCM←167772160
    CMOD_MASK←251658240
    CMOD_OCB←218103808
    CMOD_OFB←50331648
    CPAD_EDI←1342177280
    CPAD_LENG←805306368
    CPAD_MASK←1879048192
    CPAD_NIST←536870912
    CPAD_NONE←0
    CPAD_PKCS←268435456
    CPAD_ZERO←1073741824
    DH_MODP_1024←'MODP_1024'
    DH_MODP_1024_160←'MODP_1024_160'
    DH_MODP_1536←'MODP_1536'
    DH_MODP_2048←'MODP_2048'
    DH_MODP_2048_224←'MODP_2048_224'
    DH_MODP_2048_256←'MODP_2048_256'
    DH_MODP_3072←'MODP_3072'
    DH_MODP_4096←'MODP_4096'
    DH_MODP_6144←'MODP_6144'
    DH_MODP_768←'MODP_768'
    DH_MODP_8192←'MODP_8192'
    DSA_MODP_1024_160←'MODP_1024_160'
    DSA_MODP_2048_224←'MODP_2048_224'
    DSA_MODP_2048_256←'MODP_2048_256'
    EC_IANA_T155C3←'Oakley-EC2N-3'
    EC_IANA_T185C4←'Oakley-EC2N-4'
    EC_POOL_P160R1←'brainpoolP160r1'
    EC_POOL_P160T1←'brainpoolP160t1'
    EC_POOL_P192R1←'brainpoolP192r1'
    EC_POOL_P192T1←'brainpoolP192t1'
    EC_POOL_P224R1←'brainpoolP224r1'
    EC_POOL_P224T1←'brainpoolP224t1'
    EC_POOL_P256R1←'brainpoolP256r1'
    EC_POOL_P256T1←'brainpoolP256t1'
    EC_POOL_P320R1←'brainpoolP320r1'
    EC_POOL_P320T1←'brainpoolP320t1'
    EC_POOL_P384R1←'brainpoolP384r1'
    EC_POOL_P384T1←'brainpoolP384t1'
    EC_POOL_P512R1←'brainpoolP512r1'
    EC_POOL_P512T1←'brainpoolP512t1'
    EC_SECG_P112R1←'secp112r1'
    EC_SECG_P112R2←'secp112r2'
    EC_SECG_P128R1←'secp128r1'
    EC_SECG_P128R2←'secp128r2'
    EC_SECG_P160K1←'secp160k1'
    EC_SECG_P160R1←'secp160r1'
    EC_SECG_P160R2←'secp160r2'
    EC_SECG_P192K1←'secp192k1'
    EC_SECG_P224K1←'secp224k1'
    EC_SECG_P224R1←'secp224r1'
    EC_SECG_P256K1←'secp256k1'
    EC_SECG_P256R1←'prime256v1'
    EC_SECG_P384R1←'secp384r1'
    EC_SECG_P521R1←'secp521r1'
    EC_SECG_T113R1←'sect113r1'
    EC_SECG_T113R2←'sect113r2'
    EC_SECG_T131R1←'sect131r1'
    EC_SECG_T131R2←'sect131r2'
    EC_SECG_T163K1←'sect163k1'
    EC_SECG_T163R1←'sect163r1'
    EC_SECG_T163R2←'sect163r2'
    EC_SECG_T193R1←'sect193r1'
    EC_SECG_T193R2←'sect193r2'
    EC_SECG_T233K1←'sect233k1'
    EC_SECG_T233R1←'sect233r1'
    EC_SECG_T239K1←'sect239k1'
    EC_SECG_T283K1←'sect283k1'
    EC_SECG_T283R1←'sect283r1'
    EC_SECG_T409B1←'sect409r1'
    EC_SECG_T409K1←'sect409k1'
    EC_SECG_T571K1←'sect571k1'
    EC_SECG_T571R1←'sect571r1'
    EC_WTLS_P112R1←'wap-wsg-idm-ecid-wtls8'
    EC_WTLS_P160R1←'wap-wsg-idm-ecid-wtls9'
    EC_WTLS_P224R1←'wap-wsg-idm-ecid-wtls12'
    EC_WTLS_T113R1←'wap-wsg-idm-ecid-wtls1'
    EC_X962_P192V1←'prime192v1'
    EC_X962_P192V2←'prime192v2'
    EC_X962_P192V3←'prime192v3'
    EC_X962_P239V1←'prime239v1'
    EC_X962_P239V2←'prime239v2'
    EC_X962_P239V3←'prime239v3'
    EC_X962_T163V1←'c2pnb163v1'
    EC_X962_T163V2←'c2pnb163v2'
    EC_X962_T163V3←'c2pnb163v3'
    EC_X962_T176V1←'c2pnb176v1'
    EC_X962_T191V1←'c2tnb191v1'
    EC_X962_T191V2←'c2tnb191v2'
    EC_X962_T191V3←'c2tnb191v3'
    EC_X962_T208W1←'c2pnb208w1'
    EC_X962_T239V1←'c2tnb239v1'
    EC_X962_T239V2←'c2tnb239v2'
    EC_X962_T239V3←'c2tnb239v3'
    EC_X962_T272W1←'c2pnb272w1'
    EC_X962_T304W1←'c2pnb304w1'
    EC_X962_T359V1←'c2tnb359v1'
    EC_X962_T368W1←'c2pnb368w1'
    EC_X962_T431R1←'c2tnb431r1'
    HASH_MASK←65280
    HASH_MD2←512
    HASH_MD4←1024
    HASH_MD5←1280
    HASH_MDC2←1536
    HASH_NONE←0
    HASH_RMD160←2048
    HASH_SHA←2816
    HASH_SHA1←3072
    HASH_SHA224←3328
    HASH_SHA256←3584
    HASH_SHA384←3840
    HASH_SHA512←4096
    HASH_WP←256
    HMAC_MD2←16896
    HMAC_MD4←17408
    HMAC_MD5←17664
    HMAC_MDC2←17920
    HMAC_RMD160←18432
    HMAC_SHA←19200
    HMAC_SHA1←19456
    HMAC_SHA224←19712
    HMAC_SHA256←19968
    HMAC_SHA384←20224
    HMAC_SHA512←20480
    HMAC_WP←16640
    HMOD_CIPH←¯2147483648
    HMOD_MASK←¯2147483648
    PKEY_AUTO←0
    PKEY_DH←8
    PKEY_DSA←2
    PKEY_DSA_SHA1←3074
    PKEY_DSA_SHA224←3330
    PKEY_DSA_SHA256←3586
    PKEY_EC←4
    PKEY_EC_SHA1←3076
    PKEY_EC_SHA224←3332
    PKEY_EC_SHA256←3588
    PKEY_EC_SHA384←3844
    PKEY_EC_SHA512←4100
    PKEY_MASK←15
    PKEY_RSA←1
    PKEY_RSA_OAEP←3121
    PKEY_RSA_PK1E←17
    PKEY_RSA_PK1S←129
    PKEY_RSA_PK1S_MD2←641
    PKEY_RSA_PK1S_MD4←1153
    PKEY_RSA_PK1S_MD5←1409
    PKEY_RSA_PK1S_MDC2←1665
    PKEY_RSA_PK1S_RMD160←2177
    PKEY_RSA_PK1S_SHA←2945
    PKEY_RSA_PK1S_SHA1←3201
    PKEY_RSA_PK1S_SHA224←3457
    PKEY_RSA_PK1S_SHA256←3713
    PKEY_RSA_PK1S_SHA384←3969
    PKEY_RSA_PK1S_SHA512←4225
    PKEY_RSA_PK1S_WP←385
    PKEY_RSA_PSS←161
    PKEY_RSA_PSS_MD2←673
    PKEY_RSA_PSS_MD4←1185
    PKEY_RSA_PSS_MD5←1441
    PKEY_RSA_PSS_MDC2←1697
    PKEY_RSA_PSS_RMD160←2209
    PKEY_RSA_PSS_SHA←2977
    PKEY_RSA_PSS_SHA1←3233
    PKEY_RSA_PSS_SHA224←3489
    PKEY_RSA_PSS_SHA256←3745
    PKEY_RSA_PSS_SHA384←4001
    PKEY_RSA_PSS_SHA512←4257
    PKEY_RSA_PSS_WP←417
    PKEY_RSA_SSL3←33
    PKEY_RSA_X931←145
    PKEY_RSA_X931_RMD160←2193
    PKEY_RSA_X931_SHA1←3217
    PKEY_RSA_X931_SHA224←3473
    PKEY_RSA_X931_SHA256←3729
    PKEY_RSA_X931_SHA384←3985
    PKEY_RSA_X931_SHA512←4241
    PKEY_RSA_X931_WP←401
    PPAD_MASK←240
    PPAD_NONE←0
    PPAD_OAEP←48
    PPAD_PK1E←16
    PPAD_PK1S←128
    PPAD_PSS←160
    PPAD_PSSR←176
    PPAD_SSL3←32
    PPAD_X931←144
    :EndSection

    :Section Core

    ∇ D←P Decrypt D
      :Trap 0
          D←_Decrypt P D
      :Case 6
          :Trap 0
              Init''
              D←_Decrypt P D
          :Else
              (1⊃⎕DM)⎕SIGNAL ⎕EN
          :EndTrap
      :Else
          (1⊃⎕DM)⎕SIGNAL ⎕EN
      :EndTrap
    ∇

    ∇ D←P Encrypt D
      :Trap 0
          D←_Encrypt P D
      :Case 6
          :Trap 0
              Init''
              D←_Encrypt P D
          :Else
              (1⊃⎕DM)⎕SIGNAL ⎕EN
          :EndTrap
      :Else
          (1⊃⎕DM)⎕SIGNAL ⎕EN
      :EndTrap
    ∇

    ∇ D←P Hash D
      :Trap 0
          D←_Hash P D
      :Case 6
          :Trap 0
              Init''
              D←_Hash P D
          :Else
              (1⊃⎕DM)⎕SIGNAL ⎕EN
          :EndTrap
      :Else
          (1⊃⎕DM)⎕SIGNAL ⎕EN
      :EndTrap
    ∇

    ∇ D←P PKey D
      :Trap 0
          D←_PKey P D
      :Case 6
          :Trap 0
              Init''
              D←_PKey P D
          :Else
              (1⊃⎕DM)⎕SIGNAL ⎕EN
          :EndTrap
      :Else
          (1⊃⎕DM)⎕SIGNAL ⎕EN
      :EndTrap
    ∇

    ∇ D←Random D
      :Trap 0
          D←_Random⊂D
      :Case 6
          :Trap 0
              Init''
              D←_Random⊂D
          :Else
              (1⊃⎕DM)⎕SIGNAL ⎕EN
          :EndTrap
      :Else
          (1⊃⎕DM)⎕SIGNAL ⎕EN
      :EndTrap
    ∇

    :EndSection

    :Section Initialization and Exit

    ∇ {RCode}←Exit
      :Hold '#.Crypt.Init'
          ⎕EX⊃'_Free' '_Hash' '_Random' '_Encrypt' '_Decrypt' '_PKey'
      :EndHold
      RCode←0
    ∇

    ∇ r←Platform;apl
    ⍝ return best guess for the platform we're running on
      :If 'lin'≡r←{('abcdefghijklmnopqrstuvwxyz',⍵)[(⎕A,⍵)⍳⍵]}3↑apl←⎕IO⊃'.'⎕WG'APLVersion'
          :If 'armv'≡4↑↑⎕SH'uname -m'  ⍝!!! warning, could be Android someday
              r←'arm'
          :EndIf
      :EndIf
      r←r((⎕IO+∨/'-64'⍷apl)⊃'32' '64')
    ∇

    ∇ {RCode}←Init path;platform;dirsep;ExtractPath;wspath;curpath;exepath;AddSep;dll;dir;path;FileExists;found;Library;scriptpath
      :Trap 0
          platform←Platform
          dirsep←'/\'[⎕IO+'win'≡⎕IO⊃platform]
          ExtractPath←{(⍵{(':'=⍬⍴(¯1-⍵)↑⍺)-⍵}(⌽⍵)⍳dirsep)↓⍵}
          AddSep←{⍵,dirsep↓⍨dirsep=¯1↑⍵}
          FileExists←{0::0 ⋄ 1⊣⎕NUNTIE ⍵ ⎕NTIE 0}
     
          dir←(('aix' 'lin' 'arm' 'win'⍳⊂⎕IO⊃platform)⊃'aix' 'linux' 'pi' 'windows'),dirsep
     
          :If 0=≢scriptpath←{0::'' ⋄ AddSep ExtractPath ⍵⍎'SALT_Data.SourceFile'}⎕THIS
              scriptpath←1⊃⎕NPARTS 4⊃5179⌶⍕⎕THIS
          :EndIf
     
          :If 'win'≡⎕IO⊃platform
              wspath←AddSep{⍵{⍵{⎕EX ⍺:⍵}(ExtractPath↑↑/2↑_GetFullPathName ⎕WSID 1024 1024 0),'\',⍺}'_GetFullPathName'⎕NA'I KERNEL32|GetFullPathName* <0T I >T[] >I'}''
              curpath←AddSep↑⎕SH'cd'
              exepath←AddSep{⍵{⍵{⎕EX ⍺:⍵}(ExtractPath↑↑/_GetModuleFileName 0 1024 1024),'\',⍺}'_GetModuleFileName'⎕NA'I KERNEL32|GetModuleFileName* I >T[] I'}''
              dll←'dyacrypt20_',((⎕IO+1)⊃platform),'.dll'
          :Else ⍝ everything else is Linux-based (for now)
              wspath←AddSep ExtractPath ⎕WSID
              curpath←AddSep↑⎕SH'pwd'
              exepath←AddSep 2 ⎕NQ'.' 'GetEnvironment' 'DYALOG'
              dll←'dyacrypt20_',((⎕IO+1)⊃platform),'.so'
          :EndIf
     
          :Hold '#.Crypt.Init'
              :If 0=⎕NC'_Hash'
                  :If 0∊⍴path
                      :For path :In scriptpath wspath curpath exepath
                          :If found←FileExists Library←path,dll ⋄ :Leave ⋄ :EndIf
                          :If found←FileExists Library←path,dir,dll ⋄ :Leave ⋄ :EndIf
                      :EndFor
                  :Else
                      :If ~found←FileExists Library←path,dll
                          found←FileExists Library←path,dir,dll
                      :EndIf
                  :EndIf
     
                  'Dyalog Cryptographic Library file not found'⎕SIGNAL found↓999
     
     ⍝ DyaCryptHash:    Calculate digest
                  '_Hash'⎕NA Library,'|DyaCryptHash',('AW'[⎕IO+80=⎕DR' ']),' <A =A'
     ⍝ DyaCryptRandom:  Generate true random bytes
                  '_Random'⎕NA Library,'|DyaCryptRandom',('AW'[⎕IO+80=⎕DR' ']),' =A'
     ⍝ DyaCryptEncrypt: Encrypt data with optional digest
                  '_Encrypt'⎕NA Library,'|DyaCryptEncrypt',('AW'[⎕IO+80=⎕DR' ']),' <A =A'
     ⍝ DyaCryptDecrypt: Decrypt data with optional verification
                  '_Decrypt'⎕NA Library,'|DyaCryptDecrypt',('AW'[⎕IO+80=⎕DR' ']),' <A =A'
     ⍝ DyaCryptPKey:    Generate and compute public/private keys
                  '_PKey'⎕NA Library,'|DyaCryptPKey',('AW'[⎕IO+80=⎕DR' ']),' <A =A'
     
                                         ⍝ Value Hex  Val.Math Name                      Keysize Blocksz.
                                         ⍝ ---------- -------- ------------------------- ------- --------
                  PKEY_MASK←15           ⍝ 0x0000000F
                  PKEY_AUTO←0            ⍝ 0x00000000   0×16*0 auto cipher
                  PKEY_RSA←1             ⍝ 0x00000001   1×16*0 RSA (asym)                  128..16384-bit
                  PKEY_DSA←2             ⍝ 0x00000002   2×16*0 DSA (asym)                  128..16384-bit
                  PKEY_EC←4              ⍝ 0x00000004   4×16*0 EC  (asym)                  112..  571-bit
                  PKEY_DH←8              ⍝ 0x00000008   8×16*0 DH  (asym)                  128..16384-bit
     
                  PPAD_MASK←15×16        ⍝ 0x000000F0
                  PPAD_NONE←0×16         ⍝ 0x00000000   0×16*1 no scheme
                  PPAD_PK1E←1×16         ⍝ 0x00000010   1×16*1 RSAES-PKCS1-V1_5
                  PPAD_SSL3←2×16         ⍝ 0x00000020   2×16*1 SSL3/TLS1
                  PPAD_OAEP←3×16         ⍝ 0x00000030   3×16*1 RSAES-OAEP
                  PPAD_PK1S←8×16         ⍝ 0x00000080   8×16*1 RSASSA-EMSA-PKCS1-V1_5
                  PPAD_X931←9×16         ⍝ 0x00000090   9×16*1 ANSI-X9.31
                  PPAD_PSS←10×16         ⍝ 0x000000A0  10×16*1 RSASSA-EMSA-PSS non-recoverable
                  PPAD_PSSR←11×16        ⍝ 0x000000A0  11×16*1 RSASSA-EMSA-PSS-R recoverable (rfu.)
     
                  HASH_MASK←255×256      ⍝ 0x0000FF00
                  HASH_NONE←0×256        ⍝ 0x00000000   0×16*2 no digest
                  HASH_WP←1×256          ⍝ 0x00000100   1×16*2 Whirlpool                 512-bit  512-bit
                  HASH_MD2←2×256         ⍝ 0x00000200   2×16*2 MD2                       128-bit  512-bit
                  HASH_MD4←4×256         ⍝ 0x00000400   4×16*2 MD4                       128-bit  512-bit
                  HASH_MD5←5×256         ⍝ 0x00000500   5×16*2 MD5                       128-bit  512-bit
                  HASH_MDC2←6×256        ⍝ 0x00000600   6×16*2 MDC-2                     128-bit  512-bit
                  HASH_RMD160←8×256      ⍝ 0x00000800   8×16*2 RIPEMD-160                160-bit  512-bit
                  HASH_SHA←11×256        ⍝ 0x00000B00  11×16*2 SHA                       128-bit  512-bit
                  HASH_SHA1←12×256       ⍝ 0x00000C00  12×16*2 SHA-1                     160-bit  512-bit
                  HASH_SHA224←13×256     ⍝ 0x00000D00  13×16*2 SHA-224                   224-bit  512-bit
                  HASH_SHA256←14×256     ⍝ 0x00000E00  14×16*2 SHA-256                   256-bit  512-bit
                  HASH_SHA384←15×256     ⍝ 0x00000F00  15×16*2 SHA-384                   384-bit 1024-bit
                  HASH_SHA512←16×256     ⍝ 0x00001000  16×16*2 SHA-512                   512-bit 1024-bit
     
                  HMAC_WP←65×256         ⍝ 0x00004100  65×16*2 HMAC-Whirlpool            512-bit  512-bit
                  HMAC_MD2←66×256        ⍝ 0x00004200  66×16*2 HMAC-MD2                  128-bit  512-bit
                  HMAC_MD4←68×256        ⍝ 0x00004400  68×16*2 HMAC-MD4                  128-bit  512-bit
                  HMAC_MD5←69×256        ⍝ 0x00004500  69×16*2 HMAC-MD5                  128-bit  512-bit
                  HMAC_MDC2←70×256       ⍝ 0x00004600  70×16*2 HMAC-MDC-2                128-bit  512-bit
                  HMAC_RMD160←72×256     ⍝ 0x00004800  72×16*2 HMAC-RIPEMD-160           160-bit  512-bit
                  HMAC_SHA←75×256        ⍝ 0x00004B00  75×16*2 HMAC-SHA                  128-bit  512-bit
                  HMAC_SHA1←76×256       ⍝ 0x00004C00  76×16*2 HMAC-SHA-1                160-bit  512-bit
                  HMAC_SHA224←77×256     ⍝ 0x00004D00  77×16*2 HMAC-SHA-224              224-bit  512-bit
                  HMAC_SHA256←78×256     ⍝ 0x00004E00  78×16*2 HMAC-SHA-256              256-bit  512-bit
                  HMAC_SHA384←79×256     ⍝ 0x00004F00  79×16*2 HMAC-SHA-384              384-bit 1024-bit
                  HMAC_SHA512←80×256     ⍝ 0x00005000  80×16*2 HMAC-SHA-512              512-bit 1024-bit
     
                  CMAC_DES←129×256       ⍝ 0x00008100 129×16*2 CMAC-DES      (7/8)64,128,192-bit   64-bit
                  CMAC_DESX←132×256      ⍝ 0x00008400 132×16*2 CMAC-DES-X            184/192-bit   64-bit
                  CMAC_IDEA←133×256      ⍝ 0x00008500 133×16*2 CMAC-IDEA                 128-bit   64-bit
                  CMAC_CAST←134×256      ⍝ 0x00008600 134×16*2 CMAC-CAST-128        40...128-bit   64-bit
                  CMAC_BF←135×256        ⍝ 0x00008700 135×16*2 CMAC-Blowfish        32...448-bit   64-bit
                  CMAC_RC2←139×256       ⍝ 0x00008B00 139×16*2 CMAC-RC2                  128-bit   64-bit
                  CMAC_RC5←141×256       ⍝ 0x00008D00 141×16*2 CMAC-RC5                  128-bit   64-bit
                  CMAC_AES←142×256       ⍝ 0x00008E00 142×16*2 CMAC-AES          128,192,256-bit  128-bit
                  CMAC_CM←145×256        ⍝ 0x00009100 145×16*2 CMAC-Camellia     128,192,256-bit  128-bit
                  CMAC_SEED←148×256      ⍝ 0x00009400 148×16*2 CMAC-SEED                 128-bit  128-bit
     
                  CIPH_MASK←255×65536    ⍝ 0x00FF0000
                  CIPH_NONE←0×65536      ⍝ 0x00000000   0×16*4 no cipher
                  CIPH_DES←129×65536     ⍝ 0x00810000 129×16*4 1,2,3-keyDES  (7/8)64,128,192-bit   64-bit
                  CIPH_DESX←132×65536    ⍝ 0x00840000 132×16*4 DES-X                     192-bit   64-bit
                  CIPH_IDEA←133×65536    ⍝ 0x00850000 133×16*4 IDEA                      128-bit   64-bit
                  CIPH_CAST←134×65536    ⍝ 0x00860000 134×16*4 CAST5-128              40-128-bit   64-bit
                  CIPH_BF←134×65536      ⍝ 0x00870000 135×16*4 Blowfish               32-448-bit   64-bit
                  CIPH_RC2←139×65536     ⍝ 0x008B0000 139×16*4 RC2                       128-bit   64-bit
                  CIPH_RC4←140×65536     ⍝ 0x008C0000 140×16*4 RC4 (stream)           40-128-bit    8-bit
                  CIPH_RC5←141×65536     ⍝ 0x008D0000 141×16*4 RC5-32/12/16              128-bit   64-bit
                  CIPH_AES←142×65536     ⍝ 0x008E0000 142×16*4 AES               128,192,256-bit  128-bit
                  CIPH_CM←145×65536      ⍝ 0x00910000 145×16*4 Camellia          128,192,256-bit  128-bit
                  CIPH_SEED←148×65536    ⍝ 0x00940000 148×16*4 SEED                      128-bit  128-bit
     
                  CMOD_MASK←15×16777216  ⍝ 0x0F000000
                  CMOD_ECB←0×16777216    ⍝ 0x00000000   0×16*6 ECB Electronic Code Book
                  CMOD_CBC←1×16777216    ⍝ 0x01000000   1×16*6 CBC Cipher Block Chaining
                  CMOD_CFB←2×16777216    ⍝ 0x02000000   2×16*6 CFB Cipher Feedback Mode
                  CMOD_OFB←3×16777216    ⍝ 0x03000000   3×16*6 OFB Output Feedback Mode
                  CMOD_CTR←4×16777216    ⍝ 0x04000000   4×16*6 CTR Counter Mode
                  CMOD_CTS←5×16777216    ⍝ 0x05000000   5×16*6 CTS Ciphertext Stealing Mode        (rfu.)
                  CMOD_CCM←9×16777216    ⍝ 0x09000000   9×16*6 CCM Counter with CBC-MAC            (rfu.)
                  CMOD_GCM←10×16777216   ⍝ 0x0A000000  10×16*6 GCM Galois/Counter Mode
                  CMOD_EAX←11×16777216   ⍝ 0x0B000000  11×16*6 EAX Authenticated Encryption Scheme (rfu.)
                  CMOD_CWC←12×16777216   ⍝ 0x0C000000  12×16*6 CWC Carter-Wegman and Counter Mode  (rfu.)
                  CMOD_OCB←13×16777216   ⍝ 0x0D000000  13×16*6 OCB Offset Codebook Mode            (rfu.)
     
                  CPAD_MASK←7×268435456  ⍝ 0x70000000
                  CPAD_NONE←0×268435456  ⍝ 0x00000000   0×16*7 no scheme
                  CPAD_PKCS←1×268435456  ⍝ 0x10000000   1×16*7 PKCS (repeated padding-length bytes)
                  CPAD_NIST←2×268435456  ⍝ 0x20000000   2×16*7 NIST SP800-38A (0x80,0x00...0x00)   (rfu.)
                  CPAD_LENG←3×268435456  ⍝ 0x30000000   3×16*7 LENG (0x00...0x00,padding-length)   (rfu.)
                  CPAD_ZERO←4×268435456  ⍝ 0x40000000   4×16*7 ZERO (null-bytes)                   (rfu.)
                  CPAD_EDI←5×268435456   ⍝ 0x50000000   5×16*7 EDI (spaces)                        (rfu.)
     
                  HMOD_MASK←¯8×268435456 ⍝ 0x80000000
                  HMOD_CIPH←¯8×268435456 ⍝ 0x80000000  ¯8×16*7 Process HASH or MAC on encrypted data
     
                                                                 ⍝ Algo. Mode  Padding Scheme      Digest
                                                                 ⍝ ----- ----- ------------------- ----------
                  PKEY_RSA_PK1E←PKEY_RSA+PPAD_PK1E               ⍝ RSA   crypt RSAES-PKCS#1 V1.5
                  PKEY_RSA_OAEP←PKEY_RSA+PPAD_OAEP+HASH_SHA1     ⍝ RSA   crypt RSAES-OAEP
                  PKEY_RSA_SSL3←PKEY_RSA+PPAD_SSL3               ⍝ RSA   crypt SSL/TLS
                  PKEY_RSA_PK1S←PKEY_RSA+PPAD_PK1S               ⍝ RSA   sign  RSASSA-PKCS#1 V1.5
                  PKEY_RSA_PK1S_WP←PKEY_RSA_PK1S+HASH_WP         ⍝ RSA   sign  RSASSA-PKCS#1 V1.5  Whirlpool
                  PKEY_RSA_PK1S_MD2←PKEY_RSA_PK1S+HASH_MD2       ⍝ RSA   sign  RSASSA-PKCS#1 V1.5  MD2
                  PKEY_RSA_PK1S_MD4←PKEY_RSA_PK1S+HASH_MD4       ⍝ RSA   sign  RSASSA-PKCS#1 V1.5  MD4
                  PKEY_RSA_PK1S_MD5←PKEY_RSA_PK1S+HASH_MD5       ⍝ RSA   sign  RSASSA-PKCS#1 V1.5  MD5
                  PKEY_RSA_PK1S_MDC2←PKEY_RSA_PK1S+HASH_MDC2     ⍝ RSA   sign  RSASSA-PKCS#1 V1.5  MDC-2
                  PKEY_RSA_PK1S_RMD160←PKEY_RSA_PK1S+HASH_RMD160 ⍝ RSA   sign  RSASSA-PKCS#1 V1.5  RIPEMD-160
                  PKEY_RSA_PK1S_SHA←PKEY_RSA_PK1S+HASH_SHA       ⍝ RSA   sign  RSASSA-PKCS#1 V1.5  SHA
                  PKEY_RSA_PK1S_SHA1←PKEY_RSA_PK1S+HASH_SHA1     ⍝ RSA   sign  RSASSA-PKCS#1 V1.5  SHA-1
                  PKEY_RSA_PK1S_SHA224←PKEY_RSA_PK1S+HASH_SHA224 ⍝ RSA   sign  RSASSA-PKCS#1 V1.5  SHA-224
                  PKEY_RSA_PK1S_SHA256←PKEY_RSA_PK1S+HASH_SHA256 ⍝ RSA   sign  RSASSA-PKCS#1 V1.5  SHA-256
                  PKEY_RSA_PK1S_SHA384←PKEY_RSA_PK1S+HASH_SHA384 ⍝ RSA   sign  RSASSA-PKCS#1 V1.5  SHA-384
                  PKEY_RSA_PK1S_SHA512←PKEY_RSA_PK1S+HASH_SHA512 ⍝ RSA   sign  RSASSA-PKCS#1 V1.5  SHA-512
                  PKEY_RSA_PSS←PKEY_RSA+PPAD_PSS                 ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS
                  PKEY_RSA_PSS_WP←PKEY_RSA_PSS+HASH_WP           ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS Whirlpool
                  PKEY_RSA_PSS_MD2←PKEY_RSA_PSS+HASH_MD2         ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS MD2
                  PKEY_RSA_PSS_MD4←PKEY_RSA_PSS+HASH_MD4         ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS MD4
                  PKEY_RSA_PSS_MD5←PKEY_RSA_PSS+HASH_MD5         ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS MD5
                  PKEY_RSA_PSS_MDC2←PKEY_RSA_PSS+HASH_MDC2       ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS MDC-2
                  PKEY_RSA_PSS_RMD160←PKEY_RSA_PSS+HASH_RMD160   ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS RIPEMD-160
                  PKEY_RSA_PSS_SHA←PKEY_RSA_PSS+HASH_SHA         ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS SHA
                  PKEY_RSA_PSS_SHA1←PKEY_RSA_PSS+HASH_SHA1       ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS SHA-1
                  PKEY_RSA_PSS_SHA224←PKEY_RSA_PSS+HASH_SHA224   ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS SHA-224
                  PKEY_RSA_PSS_SHA256←PKEY_RSA_PSS+HASH_SHA256   ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS SHA-256
                  PKEY_RSA_PSS_SHA384←PKEY_RSA_PSS+HASH_SHA384   ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS SHA-384
                  PKEY_RSA_PSS_SHA512←PKEY_RSA_PSS+HASH_SHA512   ⍝ RSA   sign  RSASSA-PSS/EMSA-PSS SHA-512
                  PKEY_RSA_X931←PKEY_RSA+PPAD_X931               ⍝ RSA   sign  ANSI X9.31
                  PKEY_RSA_X931_WP←PKEY_RSA_X931+HASH_WP         ⍝ RSA   sign  ANSI X9.31          Whirlpool
                  PKEY_RSA_X931_RMD160←PKEY_RSA_X931+HASH_RMD160 ⍝ RSA   sign  ANSI X9.31          RIPEMD-160
                  PKEY_RSA_X931_SHA1←PKEY_RSA_X931+HASH_SHA1     ⍝ RSA   sign  ANSI X9.31          SHA-1
                  PKEY_RSA_X931_SHA224←PKEY_RSA_X931+HASH_SHA224 ⍝ RSA   sign  ANSI X9.31          SHA-224
                  PKEY_RSA_X931_SHA256←PKEY_RSA_X931+HASH_SHA256 ⍝ RSA   sign  ANSI X9.31          SHA-256
                  PKEY_RSA_X931_SHA384←PKEY_RSA_X931+HASH_SHA384 ⍝ RSA   sign  ANSI X9.31          SHA-384
                  PKEY_RSA_X931_SHA512←PKEY_RSA_X931+HASH_SHA512 ⍝ RSA   sign  ANSI X9.31          SHA-512
                  PKEY_DSA_SHA1←PKEY_DSA+HASH_SHA1               ⍝ DSA   sign                      SHA-1
                  PKEY_DSA_SHA224←PKEY_DSA+HASH_SHA224           ⍝ DSA   sign                      SHA-224
                  PKEY_DSA_SHA256←PKEY_DSA+HASH_SHA256           ⍝ DSA   sign                      SHA-256
                  PKEY_EC_SHA1←PKEY_EC+HASH_SHA1                 ⍝ ECDSA sign                      SHA-1
                  PKEY_EC_SHA224←PKEY_EC+HASH_SHA224             ⍝ ECDSA sign                      SHA-224
                  PKEY_EC_SHA256←PKEY_EC+HASH_SHA256             ⍝ ECDSA sign                      SHA-256
                  PKEY_EC_SHA384←PKEY_EC+HASH_SHA384             ⍝ ECDSA sign                      SHA-384
                  PKEY_EC_SHA512←PKEY_EC+HASH_SHA512             ⍝ ECDSA sign                      SHA-512
     
                                                             ⍝ Algrithm Mode Padding Auth
                                                             ⍝ -------- ---- ------- ---------------------
                  CIPH_DES_CBC←CIPH_DES+CMOD_CBC+CPAD_PKCS   ⍝ DES      CBC  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_DES_ECB←CIPH_DES+CMOD_ECB+CPAD_PKCS   ⍝ DES      ECB  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_DES_CFB←CIPH_DES+CMOD_CFB             ⍝ DES      CFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_DES_OFB←CIPH_DES+CMOD_OFB             ⍝ DES      OFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_DESX_CBC←CIPH_DESX+CMOD_CBC+CPAD_PKCS ⍝ DES-X    CBC  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_IDEA_CBC←CIPH_IDEA+CMOD_CBC+CPAD_PKCS ⍝ IDEA     CBC  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_IDEA_ECB←CIPH_IDEA+CMOD_ECB+CPAD_PKCS ⍝ IDEA     ECB  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_IDEA_CFB←CIPH_IDEA+CMOD_CFB           ⍝ IDEA     CFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_IDEA_OFB←CIPH_IDEA+CMOD_OFB           ⍝ IDEA     OFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_CAST_CBC←CIPH_CAST+CMOD_CBC+CPAD_PKCS ⍝ CAST5    CBC  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_CAST_ECB←CIPH_CAST+CMOD_ECB+CPAD_PKCS ⍝ CAST5    ECB  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_CAST_CFB←CIPH_CAST+CMOD_CFB           ⍝ CAST5    CFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_CAST_OFB←CIPH_CAST+CMOD_OFB           ⍝ CAST5    OFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_BF_CBC←CIPH_BF+CMOD_CBC+CPAD_PKCS     ⍝ Blowfish CBC  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_BF_ECB←CIPH_BF+CMOD_ECB+CPAD_PKCS     ⍝ Blowfish EBC  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_BF_CFB←CIPH_BF+CMOD_CFB               ⍝ Blowfish CFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_BF_OFB←CIPH_BF+CMOD_OFB               ⍝ Blowfish OFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_RC2_CBC←CIPH_RC2+CMOD_CBC+CPAD_PKCS   ⍝ RC2      CBC  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_RC2_ECB←CIPH_RC2+CMOD_ECB+CPAD_PKCS   ⍝ RC2      ECB  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_RC2_CFB←CIPH_RC2+CMOD_CFB             ⍝ RC2      CFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_RC2_OFB←CIPH_RC2+CMOD_OFB             ⍝ RC2      OFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_RC5_CBC←CIPH_RC5+CMOD_CBC+CPAD_PKCS   ⍝ RC5      CBC  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_RC5_ECB←CIPH_RC5+CMOD_ECB+CPAD_PKCS   ⍝ RC5      ECB  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_RC5_CFB←CIPH_RC5+CMOD_CFB             ⍝ RC5      CFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_RC5_OFB←CIPH_RC5+CMOD_OFB             ⍝ RC5      OFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_AES_CBC←CIPH_AES+CMOD_CBC+CPAD_PKCS   ⍝ AES      CBC  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_AES_ECB←CIPH_AES+CMOD_ECB+CPAD_PKCS   ⍝ AES      ECB  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_AES_CFB←CIPH_AES+CMOD_CFB             ⍝ AES      CFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_AES_OFB←CIPH_AES+CMOD_OFB             ⍝ AES      OFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_AES_CTR←CIPH_AES+CMOD_CTR             ⍝ AES      CTR  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_AES_GCM←CIPH_AES+CMOD_GCM             ⍝ AES      GCM  na      GHASH implicit
                  CIPH_CM_CBC←CIPH_CM+CMOD_CBC+CPAD_PKCS     ⍝ Camellia CBC  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_CM_ECB←CIPH_CM+CMOD_ECB+CPAD_PKCS     ⍝ Camellia ECB  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_CM_CFB←CIPH_CM+CMOD_CFB               ⍝ Camellia CFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_CM_OFB←CIPH_CM+CMOD_OFB               ⍝ Camellia OFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_CM_CTR←CIPH_CM+CMOD_CTR               ⍝ Camellia CTR  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_CM_GCM←CIPH_CM+CMOD_GCM               ⍝ Camellia GCM  na      GHASH implicit
                  CIPH_SEED_CBC←CIPH_SEED+CMOD_CBC+CPAD_PKCS ⍝ SEED     CBC  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_SEED_ECB←CIPH_SEED+CMOD_ECB+CPAD_PKCS ⍝ SEED     ECB  PKCS    +CMAC_x/HMAC_x/HASH_x
                  CIPH_SEED_CFB←CIPH_SEED+CMOD_CFB           ⍝ SEED     CFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_SEED_OFB←CIPH_SEED+CMOD_OFB           ⍝ SEED     OFB  na      +CMAC_x/HMAC_x/HASH_x
                  CIPH_SEED_GCM←CIPH_SEED+CMOD_GCM           ⍝ SEED     GCM  na      GHASH implicit
     
                                                     ⍝ Reference                 Size Description
                                                     ⍝ --------------------- -------- --------------------------------------------
                  DH_MODP_768←'MODP_768'             ⍝ IANA/RFC4306 Group 1   768 Bit MODP Oakley Group
                  DH_MODP_1024←'MODP_1024'           ⍝ IANA/RFC4306 Group 2  1024 Bit MODP Oakley Group
                  DH_MODP_1536←'MODP_1536'           ⍝ IANA/RFC3526 Group 5  1536-bit MODP Oakley Group
                  DH_MODP_2048←'MODP_2048'           ⍝ IANA/RFC3526 Group 14 2048-bit MODP Group
                  DH_MODP_3072←'MODP_3072'           ⍝ IANA/RFC3526 Group 15 3072-bit MODP Group
                  DH_MODP_4096←'MODP_4096'           ⍝ IANA/RFC3526 Group 16 4096-bit MODP Group
                  DH_MODP_6144←'MODP_6144'           ⍝ IANA/RFC3526 Group 17 6144-bit MODP Group
                  DH_MODP_8192←'MODP_8192'           ⍝ IANA/RFC3526 Group 18 9192-bit MODP Group
                  DH_MODP_1024_160←'MODP_1024_160'   ⍝ IANA/RFC5114 Group 22 1024-bit MODP Group with 160-bit Prime Order Subgroup
                  DH_MODP_2048_224←'MODP_2048_224'   ⍝ IANA/RFC5114 Group 23 2048-bit MODP Group with 224-bit Prime Order Subgroup
                  DH_MODP_2048_256←'MODP_2048_256'   ⍝ IANA/RFC5114 Group 24 2048-bit MODP Group with 256-bit Prime Order Subgroup
     
                  DSA_MODP_1024_160←DH_MODP_1024_160 ⍝ IANA/RFC5114 Group 22 1024-bit MODP Group with 160-bit Prime Order Subgroup
                  DSA_MODP_2048_224←DH_MODP_2048_224 ⍝ IANA/RFC5114 Group 23 2048-bit MODP Group with 224-bit Prime Order Subgroup
                  DSA_MODP_2048_256←DH_MODP_2048_256 ⍝ IANA/RFC5114 Group 24 2048-bit MODP Group with 256-bit Prime Order Subgroup
     
                                                           ⍝ Type Strength    Size D/RSAeqiv Base    Aliases
                                                           ⍝ ---- -------- ------- --------- ------- -----------------------------------------
                  EC_SECG_P112R1←'secp112r1'               ⍝ Fp     56-bit 112-bit   512-bit random  WTLS'wap-wsg-idm-ecid-wtls6'
                  EC_SECG_P112R2←'secp112r2'               ⍝ Fp     56-bit 112-bit   512-bit random
                  EC_SECG_P128R1←'secp128r1'               ⍝ Fp     64-bit 128-bit   704-bit random
                  EC_SECG_P128R2←'secp128r2'               ⍝ Fp     64-bit 128-bit   704-bit random
                  EC_SECG_P160K1←'secp160k1'               ⍝ Fp     80-bit 160-bit  1024-bit Koblitz
                  EC_SECG_P160R1←'secp160r1'               ⍝ Fp     80-bit 160-bit  1024-bit random
                  EC_SECG_P160R2←'secp160r2'               ⍝ Fp     80-bit 160-bit  1024-bit random  WTLS'wap-wsg-idm-ecid-wtls7'
                  EC_SECG_P192K1←'secp192k1'               ⍝ Fp     96-bit 192-bit  1536-bit Koblitz
                  EC_SECG_P224K1←'secp224k1'               ⍝ Fp    112-bit 224-bit  2048-bit Koblitz
                  EC_SECG_P224R1←'secp224r1'               ⍝ Fp    112-bit 224-bit  2048-bit random  NIST'P-224'
                  EC_SECG_P256K1←'secp256k1'               ⍝ Fp    128-bit 256-bit  3072-bit Koblitz
                  EC_SECG_P384R1←'secp384r1'               ⍝ Fp    192-bit 384-bit  7680-bit random  NIST'P-384'
                  EC_SECG_P521R1←'secp521r1'               ⍝ Fp    256-bit 521-bit 15360-bit random  NIST'P-521'
                  EC_SECG_T113R1←'sect113r1'               ⍝ F2*m   56-bit 113-bit   512-bit random  WTLS'wap-wsg-idm-ecid-wtls4'
                  EC_SECG_T113R2←'sect113r2'               ⍝ F2*m   56-bit 113-bit   512-bit random
                  EC_SECG_T131R1←'sect131r1'               ⍝ F2*m   64-bit 131-bit   704-bit random
                  EC_SECG_T131R2←'sect131r2'               ⍝ F2*m   64-bit 131-bit   704-bit random
                  EC_SECG_T163K1←'sect163k1'               ⍝ F2*m   80-bit 163-bit  1024-bit Koblitz NIST'K-163' WTLS'wap-wsg-idm-ecid-wtls3'
                  EC_SECG_T163R1←'sect163r1'               ⍝ F2*m   80-bit 163-bit  1024-bit random
                  EC_SECG_T163R2←'sect163r2'               ⍝ F2*m   80-bit 163-bit  1024-bit random  NIST'B-163'
                  EC_SECG_T193R1←'sect193r1'               ⍝ F2*m   96-bit 193-bit  1536-bit random
                  EC_SECG_T193R2←'sect193r2'               ⍝ F2*m   96-bit 193-bit  1536-bit random
                  EC_SECG_T233K1←'sect233k1'               ⍝ F2*m  112-bit 233-bit  2240-bit Koblitz NIST'K-233' WTLS'wap-wsg-idm-ecid-wtls10'
                  EC_SECG_T233R1←'sect233r1'               ⍝ F2*m  112-bit 233-bit  2240-bit random  NIST'B-233' WTLS'wap-wsg-idm-ecid-wtls11'
                  EC_SECG_T239K1←'sect239k1'               ⍝ F2*m  115-bit 239-bit  2304-bit Koblitz
                  EC_SECG_T283K1←'sect283k1'               ⍝ F2*m  128-bit 283-bit  3456-bit Koblitz NIST'K-283'
                  EC_SECG_T283R1←'sect283r1'               ⍝ F2*m  128-bit 283-bit  3456-bit random  NIST'B-283'
                  EC_SECG_T409K1←'sect409k1'               ⍝ F2*m  192-bit 409-bit  7680-bit Koblitz NIST'K-409'
                  EC_SECG_T409B1←'sect409r1'               ⍝ F2*m  192-bit 409-bit  7680-bit random  NIST'B-409'
                  EC_SECG_T571K1←'sect571k1'               ⍝ F2*m  256-bit 571-bit 15360-bit Koblitz NIST'K-571'
                  EC_SECG_T571R1←'sect571r1'               ⍝ F2*m  256-bit 571-bit 15360-bit random  NIST'B-571'
                  EC_WTLS_P112R1←'wap-wsg-idm-ecid-wtls8'  ⍝ Fp     56-bit 112-bit   512-bit random
                  EC_WTLS_P160R1←'wap-wsg-idm-ecid-wtls9'  ⍝ Fp     80-bit 160-bit  1024-bit random
                  EC_WTLS_P224R1←'wap-wsg-idm-ecid-wtls12' ⍝ Fp    112-bit 224-bit  2048-bit random
                  EC_WTLS_T113R1←'wap-wsg-idm-ecid-wtls1'  ⍝ F2*m   56-bit 113-bit   512-bit random
                  EC_X962_P192V1←'prime192v1'              ⍝ Fp     96-bit 192-bit  1536-bit random  NIST'B-192' SECG'secp192r1'
                  EC_X962_P192V2←'prime192v2'              ⍝ Fp     96-bit 192-bit  1536-bit random
                  EC_X962_P192V3←'prime192v3'              ⍝ Fp     96-bit 192-bit  1536-bit random
                  EC_X962_P239V1←'prime239v1'              ⍝ Fp    115-bit 239-bit  2304-bit random
                  EC_X962_P239V2←'prime239v2'              ⍝ Fp    115-bit 239-bit  2304-bit random
                  EC_X962_P239V3←'prime239v3'              ⍝ Fp    115-bit 239-bit  2304-bit random
                  EC_SECG_P256R1←'prime256v1'              ⍝ Fp    128-bit 256-bit  3072-bit random  NIST'B-256' SECG'secp256r1'
                  EC_X962_T163V1←'c2pnb163v1'              ⍝ F2*m   80-bit 163-bit  1024-bit random  WTLS'wap-wsg-idm-ecid-wtls5'
                  EC_X962_T163V2←'c2pnb163v2'              ⍝ F2*m   80-bit 163-bit  1024-bit random
                  EC_X962_T163V3←'c2pnb163v3'              ⍝ F2*m   80-bit 163-bit  1024-bit random
                  EC_X962_T176V1←'c2pnb176v1'              ⍝ F2*m   80-bit 176-bit  1024-bit random
                  EC_X962_T191V1←'c2tnb191v1'              ⍝ F2*m   95-bit 191-bit  1536-bit random
                  EC_X962_T191V2←'c2tnb191v2'              ⍝ F2*m   95-bit 191-bit  1536-bit random
                  EC_X962_T191V3←'c2tnb191v3'              ⍝ F2*m   95-bit 191-bit  1536-bit random
                  EC_X962_T208W1←'c2pnb208w1'              ⍝ F2*m  104-bit 208-bit  1792-bit Koblitz
                  EC_X962_T239V1←'c2tnb239v1'              ⍝ F2*m  115-bit 239-bit  2304-bit random
                  EC_X962_T239V2←'c2tnb239v2'              ⍝ F2*m  115-bit 239-bit  2304-bit random
                  EC_X962_T239V3←'c2tnb239v3'              ⍝ F2*m  115-bit 239-bit  2304-bit random
                  EC_X962_T272W1←'c2pnb272w1'              ⍝ F2*m  136-bit 272-bit  3456-bit Koblitz
                  EC_X962_T304W1←'c2pnb304w1'              ⍝ F2*m  152-bit 304-bit  4096-bit Koblitz
                  EC_X962_T368W1←'c2pnb368w1'              ⍝ F2*m  184-bit 368-bit  6144-bit Koblitz
                  EC_X962_T359V1←'c2tnb359v1'              ⍝ F2*m  179-bit 359-bit  7680-bit random
                  EC_X962_T431R1←'c2tnb431r1'              ⍝ F2*m  215-bit 431-bit  8192-bit random
                  EC_POOL_P160R1←'brainpoolP160r1'         ⍝ Fp     80-bit 160-bit  1024-bit random
                  EC_POOL_P160T1←'brainpoolP160t1'         ⍝ Fp     80-bit 160-bit  1024-bit Twisted
                  EC_POOL_P192R1←'brainpoolP192r1'         ⍝ Fp     96-bit 192-bit  1536-bit random
                  EC_POOL_P192T1←'brainpoolP192t1'         ⍝ Fp     96-bit 192-bit  1536-bit Twisted
                  EC_POOL_P224R1←'brainpoolP224r1'         ⍝ Fp    112-bit 224-bit  2048-bit random
                  EC_POOL_P224T1←'brainpoolP224t1'         ⍝ Fp    112-bit 224-bit  2048-bit Twisted
                  EC_POOL_P256R1←'brainpoolP256r1'         ⍝ Fp    128-bit 256-bit  3072-bit random
                  EC_POOL_P256T1←'brainpoolP256t1'         ⍝ Fp    128-bit 256-bit  3072-bit Twisted
                  EC_POOL_P320R1←'brainpoolP320r1'         ⍝ Fp    160-bit 320-bit  4096-bit random
                  EC_POOL_P320T1←'brainpoolP320t1'         ⍝ Fp    160-bit 320-bit  4096-bit Twisted
                  EC_POOL_P384R1←'brainpoolP384r1'         ⍝ Fp    192-bit 384-bit  7680-bit random
                  EC_POOL_P384T1←'brainpoolP384t1'         ⍝ Fp    192-bit 384-bit  7680-bit Twisted
                  EC_POOL_P512R1←'brainpoolP512r1'         ⍝ Fp    256-bit 512-bit 15360-bit random
                  EC_POOL_P512T1←'brainpoolP512t1'         ⍝ Fp    256-bit 512-bit 15360-bit Twisted
                  EC_IANA_T155C3←'Oakley-EC2N-3'           ⍝ F2*m   77-bit 155-bit  1024-bit random   **** rfu. for ECDH, not for ECDSA ****
                  EC_IANA_T185C4←'Oakley-EC2N-4'           ⍝ F2*m   92-bit 185-bit  1536-bit random   **** rfu. for ECDH, not for ECDSA ****
              :EndIf
          :EndHold
          RCode←0
      :Else
          RCode←⎕EN
      :EndTrap
    ∇

    :endsection

    :Section Test

    ∇ CIPHERTEST;KEY04;KEY05;KEY08;KEY12;KEY16;KEY24;KEY32;noIV;IV08;IV16;PLAIN
      KEY04←Random 4
      KEY05←Random 5
      KEY08←Random 8
      KEY12←Random 12
      KEY16←Random 16
      KEY24←Random 24
      KEY32←Random 32
      noIV←''
      IV08←Random 8
      IV16←Random 16
      PLAIN←1234567⍴⎕A
     
     
      PLAIN≡1⊃CIPH_DES_CBC KEY08 IV08 Decrypt 1⊃CIPH_DES_CBC KEY08 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_DES_ECB KEY08 noIV Decrypt 1⊃CIPH_DES_ECB KEY08 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_DES_CFB KEY08 IV08 Decrypt 1⊃CIPH_DES_CFB KEY08 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_DES_OFB KEY08 IV08 Decrypt 1⊃CIPH_DES_OFB KEY08 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_DES_CBC KEY16 IV08 Decrypt 1⊃CIPH_DES_CBC KEY16 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_DES_ECB KEY16 noIV Decrypt 1⊃CIPH_DES_ECB KEY16 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_DES_CFB KEY16 IV08 Decrypt 1⊃CIPH_DES_CFB KEY16 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_DES_OFB KEY16 IV08 Decrypt 1⊃CIPH_DES_OFB KEY16 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_DES_CBC KEY24 IV08 Decrypt 1⊃CIPH_DES_CBC KEY24 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_DES_ECB KEY24 noIV Decrypt 1⊃CIPH_DES_ECB KEY24 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_DES_CFB KEY24 IV08 Decrypt 1⊃CIPH_DES_CFB KEY24 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_DES_OFB KEY24 IV08 Decrypt 1⊃CIPH_DES_OFB KEY24 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_DESX_CBC KEY24 IV08 Decrypt 1⊃CIPH_DESX_CBC KEY24 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_IDEA_CBC KEY16 IV08 Decrypt 1⊃CIPH_IDEA_CBC KEY16 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_IDEA_ECB KEY16 noIV Decrypt 1⊃CIPH_IDEA_ECB KEY16 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_IDEA_CFB KEY16 IV08 Decrypt 1⊃CIPH_IDEA_CFB KEY16 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_IDEA_OFB KEY16 IV08 Decrypt 1⊃CIPH_IDEA_OFB KEY16 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_CAST_CBC KEY05 IV08 Decrypt 1⊃CIPH_CAST_CBC KEY05 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CAST_ECB KEY05 noIV Decrypt 1⊃CIPH_CAST_ECB KEY05 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_CAST_CFB KEY05 IV08 Decrypt 1⊃CIPH_CAST_CFB KEY05 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CAST_OFB KEY05 IV08 Decrypt 1⊃CIPH_CAST_OFB KEY05 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_CAST_CBC KEY08 IV08 Decrypt 1⊃CIPH_CAST_CBC KEY08 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CAST_ECB KEY08 noIV Decrypt 1⊃CIPH_CAST_ECB KEY08 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_CAST_CFB KEY08 IV08 Decrypt 1⊃CIPH_CAST_CFB KEY08 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CAST_OFB KEY08 IV08 Decrypt 1⊃CIPH_CAST_OFB KEY08 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_CAST_CBC KEY16 IV08 Decrypt 1⊃CIPH_CAST_CBC KEY16 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CAST_ECB KEY16 noIV Decrypt 1⊃CIPH_CAST_ECB KEY16 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_CAST_CFB KEY16 IV08 Decrypt 1⊃CIPH_CAST_CFB KEY16 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CAST_OFB KEY16 IV08 Decrypt 1⊃CIPH_CAST_OFB KEY16 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_BF_CBC KEY04 IV08 Decrypt 1⊃CIPH_BF_CBC KEY04 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_BF_ECB KEY04 noIV Decrypt 1⊃CIPH_BF_ECB KEY04 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_BF_CFB KEY04 IV08 Decrypt 1⊃CIPH_BF_CFB KEY04 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_BF_OFB KEY04 IV08 Decrypt 1⊃CIPH_BF_OFB KEY04 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_BF_CBC KEY08 IV08 Decrypt 1⊃CIPH_BF_CBC KEY08 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_BF_ECB KEY08 noIV Decrypt 1⊃CIPH_BF_ECB KEY08 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_BF_CFB KEY08 IV08 Decrypt 1⊃CIPH_BF_CFB KEY08 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_BF_OFB KEY08 IV08 Decrypt 1⊃CIPH_BF_OFB KEY08 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_BF_CBC KEY16 IV08 Decrypt 1⊃CIPH_BF_CBC KEY16 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_BF_ECB KEY16 noIV Decrypt 1⊃CIPH_BF_ECB KEY16 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_BF_CFB KEY16 IV08 Decrypt 1⊃CIPH_BF_CFB KEY16 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_BF_OFB KEY16 IV08 Decrypt 1⊃CIPH_BF_OFB KEY16 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_BF_CBC KEY32 IV08 Decrypt 1⊃CIPH_BF_CBC KEY32 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_BF_ECB KEY32 noIV Decrypt 1⊃CIPH_BF_ECB KEY32 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_BF_CFB KEY32 IV08 Decrypt 1⊃CIPH_BF_CFB KEY32 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_BF_OFB KEY32 IV08 Decrypt 1⊃CIPH_BF_OFB KEY32 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_RC2_CBC KEY16 IV08 Decrypt 1⊃CIPH_RC2_CBC KEY16 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_RC2_ECB KEY16 noIV Decrypt 1⊃CIPH_RC2_ECB KEY16 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_RC2_CFB KEY16 IV08 Decrypt 1⊃CIPH_RC2_CFB KEY16 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_RC2_OFB KEY16 IV08 Decrypt 1⊃CIPH_RC2_OFB KEY16 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_RC4 KEY05 noIV Decrypt 1⊃CIPH_RC4 KEY05 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_RC4 KEY08 noIV Decrypt 1⊃CIPH_RC4 KEY08 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_RC4 KEY12 noIV Decrypt 1⊃CIPH_RC4 KEY12 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_RC4 KEY16 noIV Decrypt 1⊃CIPH_RC4 KEY16 noIV Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_RC5_CBC KEY16 IV08 Decrypt 1⊃CIPH_RC5_CBC KEY16 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_RC5_ECB KEY16 noIV Decrypt 1⊃CIPH_RC5_ECB KEY16 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_RC5_CFB KEY16 IV08 Decrypt 1⊃CIPH_RC5_CFB KEY16 IV08 Encrypt PLAIN
      PLAIN≡1⊃CIPH_RC5_OFB KEY16 IV08 Decrypt 1⊃CIPH_RC5_OFB KEY16 IV08 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_AES_CBC KEY16 IV16 Decrypt 1⊃CIPH_AES_CBC KEY16 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_AES_ECB KEY16 noIV Decrypt 1⊃CIPH_AES_ECB KEY16 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_AES_CFB KEY16 IV16 Decrypt 1⊃CIPH_AES_CFB KEY16 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_AES_OFB KEY16 IV16 Decrypt 1⊃CIPH_AES_OFB KEY16 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_AES_CTR KEY16 IV16 Decrypt 1⊃CIPH_AES_CTR KEY16 IV16 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_AES_CBC KEY24 IV16 Decrypt 1⊃CIPH_AES_CBC KEY24 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_AES_ECB KEY24 noIV Decrypt 1⊃CIPH_AES_ECB KEY24 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_AES_CFB KEY24 IV16 Decrypt 1⊃CIPH_AES_CFB KEY24 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_AES_OFB KEY24 IV16 Decrypt 1⊃CIPH_AES_OFB KEY24 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_AES_CTR KEY24 IV16 Decrypt 1⊃CIPH_AES_CTR KEY24 IV16 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_AES_CBC KEY32 IV16 Decrypt 1⊃CIPH_AES_CBC KEY32 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_AES_ECB KEY32 noIV Decrypt 1⊃CIPH_AES_ECB KEY32 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_AES_CFB KEY32 IV16 Decrypt 1⊃CIPH_AES_CFB KEY32 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_AES_OFB KEY32 IV16 Decrypt 1⊃CIPH_AES_OFB KEY32 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_AES_CTR KEY32 IV16 Decrypt 1⊃CIPH_AES_CTR KEY32 IV16 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_CM_CBC KEY16 IV16 Decrypt 1⊃CIPH_CM_CBC KEY16 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CM_ECB KEY16 noIV Decrypt 1⊃CIPH_CM_ECB KEY16 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_CM_CFB KEY16 IV16 Decrypt 1⊃CIPH_CM_CFB KEY16 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CM_OFB KEY16 IV16 Decrypt 1⊃CIPH_CM_OFB KEY16 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CM_CTR KEY16 IV16 Decrypt 1⊃CIPH_CM_CTR KEY16 IV16 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_CM_CBC KEY24 IV16 Decrypt 1⊃CIPH_CM_CBC KEY24 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CM_ECB KEY24 noIV Decrypt 1⊃CIPH_CM_ECB KEY24 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_CM_CFB KEY24 IV16 Decrypt 1⊃CIPH_CM_CFB KEY24 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CM_OFB KEY24 IV16 Decrypt 1⊃CIPH_CM_OFB KEY24 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CM_CTR KEY24 IV16 Decrypt 1⊃CIPH_CM_CTR KEY24 IV16 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_CM_CBC KEY32 IV16 Decrypt 1⊃CIPH_CM_CBC KEY32 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CM_ECB KEY32 noIV Decrypt 1⊃CIPH_CM_ECB KEY32 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_CM_CFB KEY32 IV16 Decrypt 1⊃CIPH_CM_CFB KEY32 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CM_OFB KEY32 IV16 Decrypt 1⊃CIPH_CM_OFB KEY32 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_CM_CTR KEY32 IV16 Decrypt 1⊃CIPH_CM_CTR KEY32 IV16 Encrypt PLAIN
     
      PLAIN≡1⊃CIPH_SEED_CBC KEY16 IV16 Decrypt 1⊃CIPH_SEED_CBC KEY16 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_SEED_ECB KEY16 noIV Decrypt 1⊃CIPH_SEED_ECB KEY16 noIV Encrypt PLAIN
      PLAIN≡1⊃CIPH_SEED_CFB KEY16 IV16 Decrypt 1⊃CIPH_SEED_CFB KEY16 IV16 Encrypt PLAIN
      PLAIN≡1⊃CIPH_SEED_OFB KEY16 IV16 Decrypt 1⊃CIPH_SEED_OFB KEY16 IV16 Encrypt PLAIN
    ∇


    ∇ GCMTEST;Key;IVk;PTx;Aad;CTx;Tag
     
     ⍝ Test Case 1
      Key←#.Win.TxtHex'00000000000000000000000000000000'
      IVk←#.Win.TxtHex'000000000000000000000000'
      Tag←#.Win.TxtHex'58e2fccefa7e3061367f1d57a4e7455a'
     
      ''Tag≡(CIPH_AES_GCM Key IVk)Encrypt''
      ''Tag≡(CIPH_AES_GCM Key IVk)Decrypt''
     
     ⍝ Test Case 2
      Key←#.Win.TxtHex'00000000000000000000000000000000'
      IVk←#.Win.TxtHex'000000000000000000000000'
      PTx←#.Win.TxtHex'00000000000000000000000000000000'
      CTx←#.Win.TxtHex'0388dace60b6a392f328c2b971b2fe78'
      Tag←#.Win.TxtHex'ab6e47d42cec13bdf53a67b21257bddf'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt CTx
     
     ⍝ Test Case 3
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308'
      IVk←#.Win.TxtHex'cafebabefacedbaddecaf888'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b391aafd255'
      CTx←#.Win.TxtHex'42831ec2217774244b7221b784d0d49ce3aa212f2c02a4e035c17e2329aca12e21d514b25466931c7d8f6a5aac84aa051ba30b396a0aac973d58e091473f5985'
      Tag←#.Win.TxtHex'4d5c2af327cd64a62cf35abd2ba6fab4'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt CTx
     
     ⍝ Test Case 4
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308'
      IVk←#.Win.TxtHex'cafebabefacedbaddecaf888'
      Aad←#.Win.TxtHex'feedfacedeadbeeffeedfacedeadbeefabaddad2'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39'
      CTx←#.Win.TxtHex'42831ec2217774244b7221b784d0d49ce3aa212f2c02a4e035c17e2329aca12e21d514b25466931c7d8f6a5aac84aa051ba30b396a0aac973d58e091'
      Tag←#.Win.TxtHex'5bc94fbc3221a5db94fae95ae7121a47'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 5
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308'
      IVk←#.Win.TxtHex'cafebabefacedbad'
      Aad←#.Win.TxtHex'feedfacedeadbeeffeedfacedeadbeefabaddad2'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39'
      CTx←#.Win.TxtHex'61353b4c2806934a777ff51fa22a4755699b2a714fcdc6f83766e5f97b6c742373806900e49f24b22b097544d4896b424989b5e1ebac0f07c23f4598'
      Tag←#.Win.TxtHex'3612d2e79e3b0785561be14aaca2fccb'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 6
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308'
      IVk←#.Win.TxtHex'9313225df88406e555909c5aff5269aa6a7a9538534f7da1e4c303d2a318a728c3c0c95156809539fcf0e2429a6b525416aedbf5a0de6a57a637b39b'
      Aad←#.Win.TxtHex'feedfacedeadbeeffeedfacedeadbeefabaddad2'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39'
      CTx←#.Win.TxtHex'8ce24998625615b603a033aca13fb894be9112a5c3a211a8ba262a3cca7e2ca701e4a9a4fba43c90ccdcb281d48c7c6fd62875d2aca417034c34aee5'
      Tag←#.Win.TxtHex'619cc5aefffe0bfa462af43c1699d050'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 7
      Key←#.Win.TxtHex'000000000000000000000000000000000000000000000000'
      IVk←#.Win.TxtHex'000000000000000000000000'
      Tag←#.Win.TxtHex'cd33b28ac773f74ba00ed1f312572435'
     
      ''Tag≡(CIPH_AES_GCM Key IVk)Encrypt''
      ''Tag≡(CIPH_AES_GCM Key IVk)Decrypt''
     
     ⍝ Test Case 8
      Key←#.Win.TxtHex'000000000000000000000000000000000000000000000000'
      IVk←#.Win.TxtHex'000000000000000000000000'
      PTx←#.Win.TxtHex'00000000000000000000000000000000'
      CTx←#.Win.TxtHex'98e7247c07f0fe411c267e4384b0f600'
      Tag←#.Win.TxtHex'2ff58d80033927ab8ef4d4587514f0fb'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt CTx
     
     ⍝ Test Case 9
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308feffe9928665731c'
      IVk←#.Win.TxtHex'cafebabefacedbaddecaf888'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b391aafd255'
      CTx←#.Win.TxtHex'3980ca0b3c00e841eb06fac4872a2757859e1ceaa6efd984628593b40ca1e19c7d773d00c144c525ac619d18c84a3f4718e2448b2fe324d9ccda2710acade256'
      Tag←#.Win.TxtHex'9924a7c8587336bfb118024db8674a14'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt CTx
     
     ⍝ Test Case 10
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308feffe9928665731c'
      IVk←#.Win.TxtHex'cafebabefacedbaddecaf888'
      Aad←#.Win.TxtHex'feedfacedeadbeeffeedfacedeadbeefabaddad2'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39'
      CTx←#.Win.TxtHex'3980ca0b3c00e841eb06fac4872a2757859e1ceaa6efd984628593b40ca1e19c7d773d00c144c525ac619d18c84a3f4718e2448b2fe324d9ccda2710'
      Tag←#.Win.TxtHex'2519498e80f1478f37ba55bd6d27618c'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 11
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308feffe9928665731c'
      IVk←#.Win.TxtHex'cafebabefacedbad'
      Aad←#.Win.TxtHex'feedfacedeadbeeffeedfacedeadbeefabaddad2'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39'
      CTx←#.Win.TxtHex'0f10f599ae14a154ed24b36e25324db8c566632ef2bbb34f8347280fc4507057fddc29df9a471f75c66541d4d4dad1c9e93a19a58e8b473fa0f062f7'
      Tag←#.Win.TxtHex'65dcc57fcf623a24094fcca40d3533f8'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 12
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308feffe9928665731c'
      IVk←#.Win.TxtHex'9313225df88406e555909c5aff5269aa6a7a9538534f7da1e4c303d2a318a728c3c0c95156809539fcf0e2429a6b525416aedbf5a0de6a57a637b39b'
      Aad←#.Win.TxtHex'feedfacedeadbeeffeedfacedeadbeefabaddad2'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39'
      CTx←#.Win.TxtHex'd27e88681ce3243c4830165a8fdcf9ff1de9a1d8e6b447ef6ef7b79828666e4581e79012af34ddd9e2f037589b292db3e67c036745fa22e7e9b7373b'
      Tag←#.Win.TxtHex'dcf566ff291c25bbb8568fc3d376a6d9'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 13
      Key←#.Win.TxtHex'0000000000000000000000000000000000000000000000000000000000000000'
      IVk←#.Win.TxtHex'000000000000000000000000'
      Tag←#.Win.TxtHex'530f8afbc74536b9a963b4f1c4cb738b'
     
      ''Tag≡(CIPH_AES_GCM Key IVk)Encrypt''
      ''Tag≡(CIPH_AES_GCM Key IVk)Decrypt''
     
     ⍝ Test Case 14
      Key←#.Win.TxtHex'0000000000000000000000000000000000000000000000000000000000000000'
      IVk←#.Win.TxtHex'000000000000000000000000'
      PTx←#.Win.TxtHex'00000000000000000000000000000000'
      CTx←#.Win.TxtHex'cea7403d4d606b6e074ec5d3baf39d18'
      Tag←#.Win.TxtHex'd0d1c8a799996bf0265b98b5d48ab919'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt CTx
     
     ⍝ Test Case 15
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308feffe9928665731c6d6a8f9467308308'
      IVk←#.Win.TxtHex'cafebabefacedbaddecaf888'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b391aafd255'
      CTx←#.Win.TxtHex'522dc1f099567d07f47f37a32a84427d643a8cdcbfe5c0c97598a2bd2555d1aa8cb08e48590dbb3da7b08b1056828838c5f61e6393ba7a0abcc9f662898015ad'
      Tag←#.Win.TxtHex'b094dac5d93471bdec1a502270e3cc6c'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt CTx
     
     ⍝ Test Case 16
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308feffe9928665731c6d6a8f9467308308'
      IVk←#.Win.TxtHex'cafebabefacedbaddecaf888'
      Aad←#.Win.TxtHex'feedfacedeadbeeffeedfacedeadbeefabaddad2'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39'
      CTx←#.Win.TxtHex'522dc1f099567d07f47f37a32a84427d643a8cdcbfe5c0c97598a2bd2555d1aa8cb08e48590dbb3da7b08b1056828838c5f61e6393ba7a0abcc9f662'
      Tag←#.Win.TxtHex'76fc6ece0f4e1768cddf8853bb2d551b'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 17
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308feffe9928665731c6d6a8f9467308308'
      IVk←#.Win.TxtHex'cafebabefacedbad'
      Aad←#.Win.TxtHex'feedfacedeadbeeffeedfacedeadbeefabaddad2'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39'
      CTx←#.Win.TxtHex'c3762df1ca787d32ae47c13bf19844cbaf1ae14d0b976afac52ff7d79bba9de0feb582d33934a4f0954cc2363bc73f7862ac430e64abe499f47c9b1f'
      Tag←#.Win.TxtHex'3a337dbf46a792c45e454913fe2ea8f2'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 18
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308feffe9928665731c6d6a8f9467308308'
      IVk←#.Win.TxtHex'9313225df88406e555909c5aff5269aa6a7a9538534f7da1e4c303d2a318a728c3c0c95156809539fcf0e2429a6b525416aedbf5a0de6a57a637b39b'
      Aad←#.Win.TxtHex'feedfacedeadbeeffeedfacedeadbeefabaddad2'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39'
      CTx←#.Win.TxtHex'5a8def2f0c9e53f1f75d7853659e2a20eeb2b22aafde6419a058ab4f6f746bf40fc0c3b780f244452da3ebf1c5d82cdea2418997200ef82e44ae7e3f'
      Tag←#.Win.TxtHex'a44a8266ee1c8eb0c8b5d4cf5ae9f19a'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 19
      Key←#.Win.TxtHex'0000000000000000000000000000000000000000000000000000000000000000'
      IVk←#.Win.TxtHex'000000000000000000000000'
      PTx←#.Win.TxtHex'00000000000000000000000000000000'
      CTx←#.Win.TxtHex'cea7403d4d606b6e074ec5d3baf39d18'
      Tag←#.Win.TxtHex'd0d1c8a799996bf0265b98b5d48ab919'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt CTx
     
     ⍝ Test Case 20
      Key←#.Win.TxtHex'0000000000000000000000000000000000000000000000000000000000000000'
      IVk←#.Win.TxtHex'000000000000000000000000'
      Aad←#.Win.TxtHex'00000000000000000000000000000000'
      Tag←#.Win.TxtHex'2d45552d8575922b3ca3cc538442fa26'
     
      ''Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad''
      ''Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad''
     
     ⍝ Test Case 21
      Key←#.Win.TxtHex'0000000000000000000000000000000000000000000000000000000000000000'
      IVk←#.Win.TxtHex'000000000000000000000000'
      Aad←#.Win.TxtHex'00000000000000000000000000000000'
      PTx←#.Win.TxtHex'00000000000000000000000000000000'
      CTx←#.Win.TxtHex'cea7403d4d606b6e074ec5d3baf39d18'
      Tag←#.Win.TxtHex'ae9b1771dba9cf62b39be017940330b4'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 22
      Key←#.Win.TxtHex'fb7615b23d80891dd470980bc79584c8b2fb64ce60978f4d17fce45a49e830b7'
      IVk←#.Win.TxtHex'dbd1a3636024b7b402da7d6f'
      PTx←#.Win.TxtHex'a845348ec8c5b5f126f50e76fefd1b1e'
      CTx←#.Win.TxtHex'5df5d1fabcbbdd051538252444178704'
      Tag←#.Win.TxtHex'4c43cce5a574d8a88b43d4353bd60f9f'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt CTx
     
     ⍝ Test Case 23
      Key←#.Win.TxtHex'404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f'
      IVk←#.Win.TxtHex'101112131415161718191a1b'
      Aad←#.Win.TxtHex'000102030405060708090a0b0c0d0e0f10111213'
      PTx←#.Win.TxtHex'202122232425262728292a2b2c2d2e2f3031323334353637'
      CTx←#.Win.TxtHex'591b1ff272b43204868ffc7bc7d521993526b6fa32247c3c'
      Tag←#.Win.TxtHex'7de12a5670e570d8cae624a16df09c08'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 24
      Key←#.Win.TxtHex'404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f'
      IVk←#.Win.TxtHex'101112131415161718191a1b'
      Aad←#.Win.TxtHex'202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f'
      PTx←#.Win.TxtHex'000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f8f9fafbfcfdfeff'
      CTx←#.Win.TxtHex'793b3fd252941224a6afdc5be7f501b9150696da12045c1c6077d3cac774accfc3d530d848d665d81a49cbb500b88bbb624ae61d1667229c302dc6ff0bb4d70bdbbc8566d6f5b158da99a2ff2e01dda629b89c34ad1e5feba70e7aae4328289c3629b0588350581ca8b97ccf1258fa3bbe2c5026047ba72648969cff8ba10ae30e05935df0c693741892b76faf67133abd2cf2031121bd8bb38127a4d2eedeea13276494f402cd7c107fb3ec3b24784834338e55436287092ac4a26f5ea7ea4ad68d73151639b05b24e68b9816d1398376d8e4138594758db9ad3b409259b26dcfc06e722be987b3767f70a7b856b774b1ba2685b368091429fccb8dcdde09e4'
      Tag←#.Win.TxtHex'87ec837abf532855b2cea169d6943fcd'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 25
      Key←#.Win.TxtHex'fb7615b23d80891dd470980bc79584c8b2fb64ce6097878d17fce45a49e830b7'
      IVk←#.Win.TxtHex'dbd1a3636024b7b402da7d6f'
      Aad←#.Win.TxtHex'36'
      PTx←#.Win.TxtHex'a9'
      CTx←#.Win.TxtHex'0a'
      Tag←#.Win.TxtHex'be987d009a4b349aa80cb9c4ebc1e9f4'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 26
      Key←#.Win.TxtHex'f8d476cfd646ea6c2384cb1c27d6195dfef1a9f37b9c8d21a79c21f8cb90d289'
      IVk←#.Win.TxtHex'dbd1a3636024b7b402da7d6f'
      Aad←#.Win.TxtHex'7bd859a247961a21823b380e9fe8b65082ba61d3'
      PTx←#.Win.TxtHex'90ae61cf7baebd4cade494c54a29ae70269aec71'
      CTx←#.Win.TxtHex'ce2027b47a843252013465834d75fd0f0729752e'
      Tag←#.Win.TxtHex'acd8833837ab0ede84f4748da8899c15'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 27
      Key←#.Win.TxtHex'dbbc8566d6f5b158da99a2ff2e01dda629b89c34ad1e5feba70e7aae4328289c'
      IVk←#.Win.TxtHex'cfc06e722be987b3767f70a7b856b774'
      PTx←#.Win.TxtHex'ce2027b47a843252013465834d75fd0f'
      CTx←#.Win.TxtHex'dc03e524830d30f88e197f3acace66ef'
      Tag←#.Win.TxtHex'9984eff6905755d1836f2db04089634c'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt CTx
     
     ⍝ Test Case 28
      Key←#.Win.TxtHex'0e05935df0c693741892b76faf67133abd2cf2031121bd8bb38127a4d2eedeea'
      IVk←#.Win.TxtHex'74b1ba2685b368091429fccb8dcdde09e4'
      Aad←#.Win.TxtHex'7bd859a247961a21823b380e9fe8b65082ba61d3'
      PTx←#.Win.TxtHex'90ae61cf7baebd4cade494c54a29ae70269aec71'
      CTx←#.Win.TxtHex'6be65e56066c4056738c03fe2320974ba3f65e09'
      Tag←#.Win.TxtHex'6108dc417bf32f7fb7554ae52f088f87'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 29
      Key←#.Win.TxtHex'0000000000000000000000000000000000000000000000000000000000000000'
      IVk←#.Win.TxtHex'000000000000000000000000'
      PTx←#.Win.TxtHex'00000000000000000000000000000000'
      CTx←#.Win.TxtHex'cea7403d4d606b6e074ec5d3baf39d18'
      Tag←#.Win.TxtHex'd0d1c8a799996bf0265b98b5d48ab919'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt CTx
     
     ⍝ Test Case 30
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308feffe9928665731c6d6a8f9467308308'
      IVk←#.Win.TxtHex'cafebabefacedbaddecaf888'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b391aafd255'
      CTx←#.Win.TxtHex'522dc1f099567d07f47f37a32a84427d643a8cdcbfe5c0c97598a2bd2555d1aa8cb08e48590dbb3da7b08b1056828838c5f61e6393ba7a0abcc9f662898015ad'
      Tag←#.Win.TxtHex'b094dac5d93471bdec1a502270e3cc6c'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt CTx
     
     ⍝ Test Case 31
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308feffe9928665731c6d6a8f9467308308'
      IVk←#.Win.TxtHex'cafebabefacedbaddecaf888'
      Aad←#.Win.TxtHex'feedfacedeadbeeffeedfacedeadbeefabaddad2'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39'
      CTx←#.Win.TxtHex'522dc1f099567d07f47f37a32a84427d643a8cdcbfe5c0c97598a2bd2555d1aa8cb08e48590dbb3da7b08b1056828838c5f61e6393ba7a0abcc9f662'
      Tag←#.Win.TxtHex'76fc6ece0f4e1768cddf8853bb2d551b'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 32
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308feffe9928665731c6d6a8f9467308308'
      IVk←#.Win.TxtHex'cafebabefacedbad'
      Aad←#.Win.TxtHex'feedfacedeadbeeffeedfacedeadbeefabaddad2'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39'
      CTx←#.Win.TxtHex'c3762df1ca787d32ae47c13bf19844cbaf1ae14d0b976afac52ff7d79bba9de0feb582d33934a4f0954cc2363bc73f7862ac430e64abe499f47c9b1f'
      Tag←#.Win.TxtHex'3a337dbf46a792c45e454913fe2ea8f2'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 33
      Key←#.Win.TxtHex'feffe9928665731c6d6a8f9467308308feffe9928665731c6d6a8f9467308308'
      IVk←#.Win.TxtHex'9313225df88406e555909c5aff5269aa6a7a9538534f7da1e4c303d2a318a728c3c0c95156809539fcf0e2429a6b525416aedbf5a0de6a57a637b39b'
      Aad←#.Win.TxtHex'feedfacedeadbeeffeedfacedeadbeefabaddad2'
      PTx←#.Win.TxtHex'd9313225f88406e5a55909c5aff5269a86a7a9531534f7da2e4c303d8a318a721c3c0c95956809532fcf0e2449a6b525b16aedf5aa0de657ba637b39'
      CTx←#.Win.TxtHex'5a8def2f0c9e53f1f75d7853659e2a20eeb2b22aafde6419a058ab4f6f746bf40fc0c3b780f244452da3ebf1c5d82cdea2418997200ef82e44ae7e3f'
      Tag←#.Win.TxtHex'a44a8266ee1c8eb0c8b5d4cf5ae9f19a'
     
      CTx Tag≡(CIPH_AES_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(CIPH_AES_GCM Key IVk)Decrypt Aad CTx
     
     ⍝ Test Case 34
      Key←#.Win.TxtHex'e91e5e75da65554a48181f3846349562'
      IVk←#.Win.TxtHex'000020e8f5eb00000000315e'
      PTx←#.Win.TxtHex'f57af5fd4ae19562976ec57a5a7ad55a5af5c5e5c5fdf5c55ad57a4a7272d57262e9729566ed66e97ac54a4a5a7ad5e15ae5fdd5fd5ac5d56ae56ad5c572d54ae54ac55a956afd6aed5a4ac562957a9516991691d572fd14e97ae962ed7a9f4a955af572e162f57a956666e17ae1f54a95f566d54a66e16e4afd6a9f7ae1c5c55ae5d56afde916c5e94a6ec56695e14afde1148416e94ad57ac5146ed59d1cc5'
      Aad←#.Win.TxtHex'8008315ebf2e6fe020e8f5eb'
      CTx←#.Win.TxtHex'8a5363682c6b1bbf13c0b09cf747a5512543cb2f129b8bd0e92dfadf735cda8f88c4bbf90288f5e58d20c4f1bb0d58446ea009103ee57ba99cdeabaaa18d4a9a05ddb46e7e5290a5a2284fe50b1f6fe9ad3f1348c354181e85b24f1a552a1193cf0e13eed5ab95ae854fb4f5b0edb2d3ee5eb238c8f4bfb136b2eb6cd78760420680ce1879100014f140a15e07e70133ed9cbb6d57b75d574acb0087eefbac99'
      Tag←#.Win.TxtHex'36cd9ae602be3ee2cd8d5d9d'
     
      CTx Tag≡(⍴¨CTx Tag)↑¨(CIPH_SEED_GCM Key IVk)Encrypt Aad PTx
      PTx Tag≡(⍴¨PTx Tag)↑¨(CIPH_SEED_GCM Key IVk)Decrypt Aad CTx
    ∇

    ∇ PKEYTEST;SEC32;SEC36;SEC128;DIG16;DIG20;DIG24;DIG28;DIG32;DIG36;DIG48;DIG64;PR1;PU1;PR2;PU2;PR;PU
      SEC32←32⍴⎕A
      SEC36←36⍴⎕A
      SEC128←128⍴⎕A
      DIG16←16⍴⎕A
      DIG20←20⍴⎕A
      DIG24←24⍴⎕A
      DIG28←28⍴⎕A
      DIG32←32⍴⎕A
      DIG36←36⍴⎕A
      DIG48←48⍴⎕A
      DIG64←64⍴⎕A
     
     ⍝ DH
      PR1 PU1←PKEY_DH PKey DH_MODP_2048
      PR2 PU2←PKEY_DH PKey DH_MODP_2048
      (PKEY_DH PR1 PKey PU2)≡(PKEY_DH PR2 PKey PU1)
     
     ⍝ RSA
      PR PU←PKEY_RSA PKey 1024
      PKEY_RSA PU PKey PKEY_RSA PR PKey SEC128
      PKEY_RSA PR PKey PKEY_RSA PU PKey SEC128
     
      PKEY_RSA PR PKey PKEY_RSA_PK1E PU PKey SEC32
      PKEY_RSA_PK1E PR PKey PKEY_RSA_PK1E PU PKey SEC32
     
      PKEY_RSA PR PKey PKEY_RSA_SSL3 PU PKey SEC36
      PKEY_RSA_PK1E PR PKey PKEY_RSA_SSL3 PU PKey SEC36
      PKEY_RSA_SSL3 PR PKey PKEY_RSA_PK1E PU PKey SEC36
     
      PKEY_RSA_OAEP PR PKey PKEY_RSA_OAEP PU PKey SEC32
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S PR PKey DIG32
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S PR PKey DIG32
      PKEY_RSA_PK1S PU PKey(PKEY_RSA_PK1S PR PKey DIG32)DIG32
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S_WP PR PKey DIG64
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S_WP PR PKey DIG64
      PKEY_RSA_PK1S_WP PU PKey PKEY_RSA_PK1S_WP PR PKey DIG64
      PKEY_RSA_PK1S_WP PU PKey(PKEY_RSA_PK1S_WP PR PKey DIG64)DIG64
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S_MD2 PR PKey DIG16
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S_MD2 PR PKey DIG16
      PKEY_RSA_PK1S_MD2 PU PKey PKEY_RSA_PK1S_MD2 PR PKey DIG16
      PKEY_RSA_PK1S_MD2 PU PKey(PKEY_RSA_PK1S_MD2 PR PKey DIG16)DIG16
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S_MD4 PR PKey DIG16
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S_MD4 PR PKey DIG16
      PKEY_RSA_PK1S_MD4 PU PKey PKEY_RSA_PK1S_MD4 PR PKey DIG16
      PKEY_RSA_PK1S_MD4 PU PKey(PKEY_RSA_PK1S_MD4 PR PKey DIG16)DIG16
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S_MD5 PR PKey DIG16
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S_MD5 PR PKey DIG16
      PKEY_RSA_PK1S_MD5 PU PKey PKEY_RSA_PK1S_MD5 PR PKey DIG16
      PKEY_RSA_PK1S_MD5 PU PKey(PKEY_RSA_PK1S_MD5 PR PKey DIG16)DIG16
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S_MDC2 PR PKey DIG16
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S_MDC2 PR PKey DIG16
      PKEY_RSA_PK1S_MDC2 PU PKey PKEY_RSA_PK1S_MDC2 PR PKey DIG16
      PKEY_RSA_PK1S_MDC2 PU PKey(PKEY_RSA_PK1S_MDC2 PR PKey DIG16)DIG16
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S_RMD160 PR PKey DIG20
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S_RMD160 PR PKey DIG20
      PKEY_RSA_PK1S_RMD160 PU PKey PKEY_RSA_PK1S_RMD160 PR PKey DIG20
      PKEY_RSA_PK1S_RMD160 PU PKey(PKEY_RSA_PK1S_RMD160 PR PKey DIG20)DIG20
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S_SHA PR PKey DIG20
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S_SHA PR PKey DIG20
      PKEY_RSA_PK1S_SHA PU PKey PKEY_RSA_PK1S_SHA PR PKey DIG20
      PKEY_RSA_PK1S_SHA PU PKey(PKEY_RSA_PK1S_SHA PR PKey DIG20)DIG20
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S_SHA1 PR PKey DIG20
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S_SHA1 PR PKey DIG20
      PKEY_RSA_PK1S_SHA1 PU PKey PKEY_RSA_PK1S_SHA1 PR PKey DIG20
      PKEY_RSA_PK1S_SHA1 PU PKey(PKEY_RSA_PK1S_SHA1 PR PKey DIG20)DIG20
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S_SHA224 PR PKey DIG28
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S_SHA224 PR PKey DIG28
      PKEY_RSA_PK1S_SHA224 PU PKey PKEY_RSA_PK1S_SHA224 PR PKey DIG28
      PKEY_RSA_PK1S_SHA224 PU PKey(PKEY_RSA_PK1S_SHA224 PR PKey DIG28)DIG28
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S_SHA256 PR PKey DIG32
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S_SHA256 PR PKey DIG32
      PKEY_RSA_PK1S_SHA256 PU PKey PKEY_RSA_PK1S_SHA256 PR PKey DIG32
      PKEY_RSA_PK1S_SHA256 PU PKey(PKEY_RSA_PK1S_SHA256 PR PKey DIG32)DIG32
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S_SHA384 PR PKey DIG48
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S_SHA384 PR PKey DIG48
      PKEY_RSA_PK1S_SHA384 PU PKey PKEY_RSA_PK1S_SHA384 PR PKey DIG48
      PKEY_RSA_PK1S_SHA384 PU PKey(PKEY_RSA_PK1S_SHA384 PR PKey DIG48)DIG48
     
      PKEY_RSA PU PKey PKEY_RSA_PK1S_SHA512 PR PKey DIG64
      PKEY_RSA_PK1S PU PKey PKEY_RSA_PK1S_SHA512 PR PKey DIG64
      PKEY_RSA_PK1S_SHA512 PU PKey PKEY_RSA_PK1S_SHA512 PR PKey DIG64
      PKEY_RSA_PK1S_SHA512 PU PKey(PKEY_RSA_PK1S_SHA512 PR PKey DIG64)DIG64
     
      PKEY_RSA_PSS PU PKey(PKEY_RSA_PSS PR PKey DIG20)DIG20
      PKEY_RSA_PSS_WP PU PKey(PKEY_RSA_PSS_WP PR PKey DIG64)DIG64
      PKEY_RSA_PSS_MD2 PU PKey(PKEY_RSA_PSS_MD2 PR PKey DIG16)DIG16
      PKEY_RSA_PSS_MD4 PU PKey(PKEY_RSA_PSS_MD4 PR PKey DIG16)DIG16
      PKEY_RSA_PSS_MD5 PU PKey(PKEY_RSA_PSS_MD5 PR PKey DIG16)DIG16
      ⍝PKEY_RSA_PSS_MDC2 PU PKey(PKEY_RSA_PSS_MDC2 PR PKey DIG16)DIG16
      PKEY_RSA_PSS_RMD160 PU PKey(PKEY_RSA_PSS_RMD160 PR PKey DIG20)DIG20
      PKEY_RSA_PSS_SHA PU PKey(PKEY_RSA_PSS_SHA PR PKey DIG20)DIG20
      PKEY_RSA_PSS_SHA1 PU PKey(PKEY_RSA_PSS_SHA1 PR PKey DIG20)DIG20
      PKEY_RSA_PSS_SHA224 PU PKey(PKEY_RSA_PSS_SHA224 PR PKey DIG28)DIG28
      PKEY_RSA_PSS_SHA256 PU PKey(PKEY_RSA_PSS_SHA256 PR PKey DIG32)DIG32
      PKEY_RSA_PSS_SHA384 PU PKey(PKEY_RSA_PSS_SHA384 PR PKey DIG48)DIG48
      PKEY_RSA_PSS_SHA512 PU PKey(PKEY_RSA_PSS_SHA512 PR PKey DIG64)DIG64
     
      PKEY_RSA PU PKey PKEY_RSA_X931 PR PKey DIG20
      PKEY_RSA_X931 PU PKey PKEY_RSA_X931 PR PKey DIG20
      PKEY_RSA_X931 PU PKey(PKEY_RSA_X931 PR PKey DIG20)DIG20
     
      PKEY_RSA PU PKey PKEY_RSA_X931_WP PR PKey DIG64
      PKEY_RSA_X931 PU PKey PKEY_RSA_X931_WP PR PKey DIG64
      PKEY_RSA_X931_WP PU PKey PKEY_RSA_X931_WP PR PKey DIG64
      PKEY_RSA_X931_WP PU PKey(PKEY_RSA_X931_WP PR PKey DIG64)DIG64
     
      PKEY_RSA PU PKey PKEY_RSA_X931_RMD160 PR PKey DIG20
      PKEY_RSA_X931 PU PKey PKEY_RSA_X931_RMD160 PR PKey DIG20
      PKEY_RSA_X931_RMD160 PU PKey PKEY_RSA_X931_RMD160 PR PKey DIG20
      PKEY_RSA_X931_RMD160 PU PKey(PKEY_RSA_X931_RMD160 PR PKey DIG20)DIG20
     
      PKEY_RSA PU PKey PKEY_RSA_X931_SHA1 PR PKey DIG20
      PKEY_RSA_X931 PU PKey PKEY_RSA_X931_SHA1 PR PKey DIG20
      PKEY_RSA_X931_SHA1 PU PKey PKEY_RSA_X931_SHA1 PR PKey DIG20
      PKEY_RSA_X931_SHA1 PU PKey(PKEY_RSA_X931_SHA1 PR PKey DIG20)DIG20
     
      PKEY_RSA PU PKey PKEY_RSA_X931_SHA224 PR PKey DIG28
      PKEY_RSA_X931 PU PKey PKEY_RSA_X931_SHA224 PR PKey DIG28
      PKEY_RSA_X931_SHA224 PU PKey PKEY_RSA_X931_SHA224 PR PKey DIG28
      PKEY_RSA_X931_SHA224 PU PKey(PKEY_RSA_X931_SHA224 PR PKey DIG28)DIG28
     
      PKEY_RSA PU PKey PKEY_RSA_X931_SHA256 PR PKey DIG32
      PKEY_RSA_X931 PU PKey PKEY_RSA_X931_SHA256 PR PKey DIG32
      PKEY_RSA_X931_SHA256 PU PKey PKEY_RSA_X931_SHA256 PR PKey DIG32
      PKEY_RSA_X931_SHA256 PU PKey(PKEY_RSA_X931_SHA256 PR PKey DIG32)DIG32
     
      PKEY_RSA PU PKey PKEY_RSA_X931_SHA384 PR PKey DIG48
      PKEY_RSA_X931 PU PKey PKEY_RSA_X931_SHA384 PR PKey DIG48
      PKEY_RSA_X931_SHA384 PU PKey PKEY_RSA_X931_SHA384 PR PKey DIG48
      PKEY_RSA_X931_SHA384 PU PKey(PKEY_RSA_X931_SHA384 PR PKey DIG48)DIG48
     
      PKEY_RSA PU PKey PKEY_RSA_X931_SHA512 PR PKey DIG64
      PKEY_RSA_X931 PU PKey PKEY_RSA_X931_SHA512 PR PKey DIG64
      PKEY_RSA_X931_SHA512 PU PKey PKEY_RSA_X931_SHA512 PR PKey DIG64
      PKEY_RSA_X931_SHA512 PU PKey(PKEY_RSA_X931_SHA512 PR PKey DIG64)DIG64
     
     ⍝ DSA
      PR PU←PKEY_DSA PKey DSA_MODP_2048_256
     
      PKEY_DSA PU PKey(PKEY_DSA PR PKey DIG32)DIG32
      PKEY_DSA_SHA1 PU PKey(PKEY_DSA_SHA1 PR PKey DIG20)DIG20
      PKEY_DSA_SHA224 PU PKey(PKEY_DSA_SHA224 PR PKey DIG28)DIG28
      PKEY_DSA_SHA256 PU PKey(PKEY_DSA_SHA256 PR PKey DIG32)DIG32
     
     ⍝ ECDSA
      PR PU←PKEY_EC PKey EC_POOL_P512R1
     
      PKEY_EC PU PKey(PKEY_EC PR PKey DIG20)DIG20
      PKEY_EC_SHA1 PU PKey(PKEY_EC_SHA1 PR PKey DIG20)DIG20
      PKEY_EC_SHA224 PU PKey(PKEY_EC_SHA224 PR PKey DIG28)DIG28
      PKEY_EC_SHA256 PU PKey(PKEY_EC_SHA256 PR PKey DIG32)DIG32
      PKEY_EC_SHA384 PU PKey(PKEY_EC_SHA384 PR PKey DIG48)DIG48
      PKEY_EC_SHA512 PU PKey(PKEY_EC_SHA512 PR PKey DIG64)DIG64
    ∇

    :EndSection

    :Namespace PKCS12
⍝ === VARIABLES ===

        ID_IV←2

        ID_KEY←1

        ID_MAC←3


⍝ === End of variables definition ===

        (⎕IO ⎕ML ⎕WX)←1 3 1

        ∇ DerivedKey←{AlgIdHash}PBKDF(Password Salt Count DerivedKeyLength ID);ToBEBmp;RepMod
     ⍝ Password Based Key Derivation Function according to PKCS#12 Annex B.2
     ⍝
     ⍝ AlgIdHash        One of the supported hash algorithms, default: SHA1
     ⍝                  #.Crypt.HASH_MD2 #.Crypt.HASH_WP     #.Crypt.HASH_SHA224
     ⍝                  #.Crypt.HASH_MD4 #.Crypt.HASH_MDC2   #.Crypt.HASH_SHA256
     ⍝                  #.Crypt.HASH_MD5 #.Crypt.HASH_RMD160 #.Crypt.HASH_SHA384
     ⍝                  #.Crypt.HASH_SHA #.Crypt.HASH_SHA1   #.Crypt.HASH_SHA512
     ⍝
     ⍝ Password         Password string
     ⍝ Salt             Salt string
     ⍝ Count            Iteration count
     ⍝ DerivedKeyLength Number of pseudorandom bytes requested
     ⍝ ID               ID_KEY=1 ID_IV=2 ID_MAC=3
     ⍝
          ToBEBmp←{,{160=⎕DR ⍵:⌽80 ⎕DR,[1.5]⍵ ⋄ (''⍴⎕AV),[1.5]⍵}⍵,(×⍴⍵)⍴⎕AV} ⍝ ⍵ to a 0-terminated big-endian BMPString
          RepMod←{(⍵{⍵+⍺|-⍵}⍴⍺)⍴⍺} ⍝ repeat ⍺ cyclically to a length being the next mulitiple of ⍵
          :If 0=⎕NC'AlgIdHash'
              AlgIdHash←##.HASH_SHA1
          :EndIf
          :Trap 0
              Password←ToBEBmp Password
              Password Salt RepMod←64 64 64 64 64 64 64 64 64 64 128 128 0[##.(HASH_WP HASH_MD2 HASH_MD4 HASH_MD5 HASH_MDC2 HASH_RMD160 HASH_SHA HASH_SHA1 HASH_SHA224 HASH_SHA256 HASH_SHA384 HASH_SHA512)⍳AlgIdHash]
              DerivedKey←AlgIdHash Count DerivedKeyLength ID ##.Hash Salt,Password
          :Else
              (1⊃⎕DM)⎕SIGNAL ⎕EN
          :EndTrap
        ∇

    :EndNamespace

    :Namespace PKCS5
        (⎕IO ⎕ML ⎕WX)←1 3 1

        ∇ DerivedKey←{AlgIdHash}PBKDF1(Password Salt Count DerivedKeyLength)
     ⍝ Password Based Key Derivation Function according to PKCS#5 5.1
     ⍝
     ⍝ When used with DES-CBC (pbeWithMD2AndDES-CBC, pbeWithMD5AndDES),
     ⍝ the first 8 bytes are the key, and the next 8 bytes are the IV.
     ⍝
     ⍝ With Count←0 and Salt←IV, this is the PEM Key Derivation Function
     ⍝ (Header "Proc-Type: 4,ENCRYPTED", "DEK-Info: DES-EDE3-CBC,Hex-IV").
     ⍝
     ⍝ AlgIdHash        One of the supported hash algorithms, default: HASH_MD5
     ⍝                  #.Crypt.HASH_MD2 #.Crypt.HASH_WP     #.Crypt.HASH_SHA224
     ⍝                  #.Crypt.HASH_MD4 #.Crypt.HASH_MDC2   #.Crypt.HASH_SHA256
     ⍝                  #.Crypt.HASH_MD5 #.Crypt.HASH_RMD160 #.Crypt.HASH_SHA384
     ⍝                  #.Crypt.HASH_SHA #.Crypt.HASH_SHA1   #.Crypt.HASH_SHA512
     ⍝
     ⍝ Password         Password string
     ⍝ Salt             Salt string
     ⍝ Count            Iteration count
     ⍝ DerivedKeyLength Number of pseudorandom bytes requested
     ⍝
          :If 0=⎕NC'AlgIdHash'
              AlgIdHash←##.HASH_MD5
          :EndIf
          :Trap 0
              DerivedKey←AlgIdHash Count DerivedKeyLength ##.Hash Password,Salt
          :Else
              (1⊃⎕DM)⎕SIGNAL ⎕EN
          :EndTrap
        ∇

        ∇ DerivedKey←{AlgIdHash}PBKDF2(Password Salt Count DerivedKeyLength)
     ⍝ Password Based Key Derivation Function according to PKCS#5 5.2
     ⍝
     ⍝ The DerivedKey will be a concatenation of the cipher key and the IV.
     ⍝ When used with CMAC, the Password length must match the algo's key length.
     ⍝
     ⍝ AlgIdHash        One of the supported MAC algorithms, default: HMAC_SHA256
     ⍝
     ⍝                  #.Crypt.HMAC_MD2  #.Crypt.HMAC_WP     #.Crypt.HMAC_SHA224
     ⍝                  #.Crypt.HMAC_MD4  #.Crypt.HMAC_MDC2   #.Crypt.HMAC_SHA256
     ⍝                  #.Crypt.HMAC_MD5  #.Crypt.HMAC_RMD160 #.Crypt.HMAC_SHA384
     ⍝                  #.Crypt.HMAC_SHA  #.Crypt.HMAC_SHA1   #.Crypt.HMAC_SHA512
     ⍝                  #.Crypt.CMAC_DES  #.Crypt.CMAC_BF     #.Crypt.CMAC_AES
     ⍝                  #.Crypt.CMAC_DESX #.Crypt.CMAC_RC2    #.Crypt.CMAC_CM
     ⍝                  #.Crypt.CMAC_IDEA #.Crypt.CMAC_RC5    #.Crypt.CMAC_SEED
     ⍝                  #.Crypt.CMAC_CAST
     ⍝
     ⍝ Password         Password string
     ⍝ Salt             Salt string
     ⍝ Count            Iteration count
     ⍝ DerivedKeyLength Number of pseudorandom bytes requested
     ⍝
          :If 0=⎕NC'AlgIdHash'
              AlgIdHash←##.HMAC_SHA256
          :EndIf
          :Trap 0
              DerivedKey←AlgIdHash Password Count DerivedKeyLength ##.Hash Salt
          :Else
              (1⊃⎕DM)⎕SIGNAL ⎕EN
          :EndTrap
        ∇

    :EndNamespace
:EndNamespace
