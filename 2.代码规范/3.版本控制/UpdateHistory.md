# Soft Description

Motor test platform Software of kit

## Update History

### 2020-12-08 version v1.6.1
 - 编码器err bit检测一次就报错
 - 接入ud一圈调零接口

### 2020-12-01 version v1.6.0
 - 调零检测范围增至360度
 - ICMU ERR BIT检测2次才报ERR
 - 修复“TestingCommonFunctions.c”中机械手类型和轴数选择不对的问题

### 2020-11-20 version v1.5.9
 - 加入icmu err bit检查
 - 兼容ddr4和ddr6的软件版本
 
### 2020-11-11 version v1.5.8
 - 修改到正确的“linker_script_IAP.ld”文件

### 2020-10-29 version v1.5.7
 - 刹车保持电流降到1.7A
 - J3电机冷却时间增加：20s->40s
 
### 2020-10-28 version v1.5.6
 - 去掉CommandOverSpeedCheck保护
 
### 2020-10-27 version v1.5.5
 - 去掉CommandStepProtection保护
 
### 2020-10-26 version v1.5.4
 - 修复了100mm板子Flash大小不对导致程序有可能启动不了的问题。
 - 使用从EEPROM读出来的AXIS_NO来提取不同的控制参数和测试平台测试参数

### 2020-10-01 version v1.5.3
 - 加入BOOTLOADER模式锁刹车代码（by杨世林）
 - 调零过程-6A跳到+12改为-6A跳到+6A再跳到+12A。

### 2020-08-31 version v1.5.2
 - 延长老化测试冷却时间：
	* J1J2：从10s增加到20s
	* J3：保持20s不变
	* J4J5J6：保持10s不变
 - 减少老化测试中电机输出给刹车的负载电流的持续时间：
	* J1J2：从6s减少到3s
	* J3：从6s减少到3s
	* J4J5J6：保持6s不变
	
### 2020-08-31 version v1.5.1
 - 刹车保持电流改2.0A
 - Ecat数据帧加入Temperature
 - 80mm版本的LAN9252的qspi通讯速度从20M改为19M
 - 100mm版本的光编码器延时从300ms改为500ms

### 2020-08-11 version v1.5.0
 - ddr6的3.5跟进版本
 - 修复上层发Current Mode会导致报UNIDENTIFIED_RUN_MODE错误的问题。
 - 修复光编码器合成公式不正确的问题
 - 光编码器初始化前延时改为定时器延时100ms
 - 修改RobotType数据结构
 - 修改EEPROM协议：添加无效数据帧
 - 修复刹车pid负向输出不正常的问题
 - 修改flash文件为linker_script_IAP
 
### 2020-07-20 version v1.4.2
 - 修复pBrake指向地址不对的问题
 - 刹车保持电流修改为2.7A
 - 修复在保护状态下会一直发解锁刹车指令的问题
 - 修复从runmode进入configmode过程中，会导致control mode虽然恢复为CurrentControl但是ControlAlgorithm还是ProtectionControl的问题
 - 修改测试0，1，2的屏蔽编码器错误的方式
 - 在测试0，1，7（校准，补偿，空闲）模式下，屏蔽编码器相关错误的上报
 - 修复光编码器错误误报问题

### 2020-06-17 version v1.4.1
 - 刹车解锁电流：20A，刹车维持电流：2.5A
 - 修改Motor Type和Robot Type数据结构（对应SN文档“Model SN Definition-SQ-20200616”)
 - 修改刹车电流为2.7A
 - 当测试模式TestMode在0,1,7的时候，控制模式ControlMode 改为Protection Control.
 - 在写EEPROM的时候刹车解锁
 - 通过GUI来写EEPROM测试成功
 - 刹车电流控制测试成功

 
### 2020-06-17 version v1.4.0
 - 刹车pid控制器统一为1个
 - 添加光编码器支持代码，添加编码器选择逻辑。
 - 添加光编码器补偿功能
 - 把Abnormal状态列为FATAl状态
 - 调零中止后零位会混乱的问题
 - 加入电流持续保护。
 - 调零测试终止后零位会不确定的问题，修复为调零测试终止后零位恢复为调零前的值。
 - “断电或者切换模式时锁刹车”改成“断电或者切换模式时解刹车”

 