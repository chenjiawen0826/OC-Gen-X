import Foundation

//FIXME: These settings are based off the release Sample.plist that comes with OpenCorePkg/Docs
var config = Root(
    acpi: acpi(add: [acpiAdd(comment: "", enabled: false, path: "")],
          delete: [acpiDelete(all: false, comment: "", enabled: false, oemTableId: Data(), tableLength: 0, tableSignature: Data())],
          patch: [acpiPatch(comment: "", count: 0, enabled: false, find: Data(), limit: 0, mask: Data(), oemTableId: Data(), replace: Data(), replaceMask: Data(), skip: 0, tableLength: 0, tableSignature: Data())],
          quirks: acpuQuirks(fadtEnableReset: false, normalizeHeader: false, rebaseRegions: false, resetHwSig: false, resetLogoStatus: false)),
                  
    booter: booter(mmioWhitelist: [mmioWhitelist(address: 0, comment: "", enabled: false)],
                   quirks: booterQuirks(avoidRuntimeDefrag: true, devirtualiseMmio: false, disableSingleUser: false, disableVariableWrite: false, discardHibernateMap: false, enableSafeModeSlide: true, enableWriteUnprotector: true, forceExitBootServices: false, protectMemoryRegion: false, protectSecureBoot: false, protectUefiServices: false, provideCustomSlide: true, provideMaxSlide: 0, rebuildAppleMemoryMap: false, setupVirtualMap: true, signalAppleOS: false, syncRuntimePermissions: false)),
    
    deviceProperties: deviceProperties(add: dpAdd(),
                      delete: dpDelete()),
                
    kernel: kernel(kAdd: [kAdd(bundlePath: "", comment: "", enabled: false, executablePath: "", maxKernel: "", minKernel: "", plistPath: "")],
            kBlock: [kBlock(arch: "Any", comment: "", enabled: false, identifier: "", maxKernel: "", minKernel: "")],
            emulate: emulate(cpuid1Data: Data(), cpuid1Mask: Data()),
            force: [force(arch: "", bundlePath: "", comment: "", enabled: false, executablePath: "", identifier: "", maxKernel: "", minKernel: "", plistPath: "")],
            kPatch: [kPatch(base: "", comment: "", count: 0, enabled: false, find: Data(), identifier: "", limit: 0, mask: Data(), maxKernel: "", minKernel: "", replace: Data(), replaceMask: Data(), skip: 0)],
            kQuirks: kQuirks(appleCpuPmCfgLock: false, appleXcpmCfgLock: false, appleXcpmExtraMsrs: false, appleXcpmForceBoost: false, customSMBIOSGuid: false, disableIoMapper: false, disableRtcChecksum: false, dummyPowerManagement: false, externalDiskIcons: false, increasePciBarSize: false, lapicKernelPanic: false, panicNoKextDump: false, powerTimeoutKernelPanic: false, thirdPartyDrives: false, xhciPortLimit: false),
            scheme: scheme(fuzzyMatch: true, kernelArch: "x86_64", kernelCache: "Auto")),
                
    misc: misc(blessOverRide: [blessOverRide()],
          boot: boot(consoleAttributes: 0, hibernateMode: "None", hideAuxiliary: false, pickerAttributes: 1, pickerAudioAssist: false, pickerMode: "Builtin", pollAppleHotKeys: false, showPicker: true, takeoffDelay: 0, timeout: 5),
          debug: debug(appleDebug: false, applePanic: false, disableWatchDog: false, displayDelay: 0, displayLevel: 2147483648, serialInit: false, sysReport: false, target: 3),
          entries: [entries(arguments: "", auxiliary: false, comment: "", enabled: false, name: "", path: "")],
          security: security(allowNvramReset: false, allowSetDefault: false, apECID: 0, authRestart: false, bootProtect: "Bootstrap", dmgLoading: "Signed", enablePassword: false, exposeSensitiveData: 6, haltLevel: 2147483648, passwordHash: Data(), passwordSalt: Data(), scanPolicy: 17760515, secureBootModel: "Default", vault: "Secure"),
          tools: [tools(arguments: "", auxiliary: false, comment: "", enabled: false, name: "", path: "")]),
                
    nvram: nvram(add: nAdd(addAppleVendorVariableGuid: addAppleVendorVariableGuid(defaultBackgroundColor: Data(), uiScale: Data()), addAppleVendorGuid: addAppleVendorGuid(rtcBlacklist: Data()), addAppleBootVariableGuid: addAppleBootVariableGuid(systemAudioVolume: Data([0x46]), bootArgs: "-v keepsyms=1", csrActiveConfig: Data(), prevLangKbd: Data(), runefiupdater: "No")),
           delete: nDelete(blockAppleVendorVariableGuid: ["UIScale", "DefaultBackgroundColor"], blockAppleVendorGuid: ["rtc-blacklist"], blockAppleBootVariableGuid: ["boot-args"]),
           legacyEnable: false, legacyOverwrite: false,
           legacySchema: legacySchema(legacyAppleBootVariableGuid: ["EFILoginHiDPI", "EFIBluetoothDelay", "LocationServicesEnabled", "SystemAudioVolume", "SystemAudioVolumeDB", "SystemAudioVolumeSaved", "bluetoothActiveControllerInfo", "bluetoothInternalControllerInfo", "flagstate", "fmm-computer-name", "nvda_drv", "prev-lang:kbd"], legacyEfiGlobalVariable: ["Boot0080", "Boot0081", "Boot0082", "BootNext", "BootOrder"]),
           writeFlash: true),
                
    platFormInfo: platFormInfo(automatic: true, generic: generic(adviseWindows: false, mlb: "", processorType: 0, rom: Data(), spoofVendor: true, systemProductName: "", systemSerialNumber: "", systemUUID: ""), updateDataHub: true, updateNVRAM: true, updateSMBIOS: true, updateSMBIOSMode: "Create"),
                
    uefi: uefi(apfs: apfs(enableJumpstart: true, globalConnect: false, hideVerbose: true, jumpstartHotPlug: false, minDate: 0, minVersion: 0),
          audio: audio(audioCodec: 0, audioDevice: "PciRoot(0x0)/Pci(0x1b,0x0)", audioOut: 0, audioSupport: false, minimumVolume: 20, playChime: false, volumeAmplifier: 0),
          connectDrivers: true,
          drivers: [],
          input: input(keyFiltering: false, keyForgetThreshold: 5, keyMergeThreshold: 2, keySupport: true, keySupportMode: "Auto", keySwap: false, pointerSupport: false, pointerSupportMode: "ASUS", timerResolution: 50000),
          output: output(clearScreenOnModeSwitch: false, consoleMode: "", directGopRendering: false, ignoreTextInGraphics: false, provideConsoleGop: true, reconnectOnResChange: false, replaceTabWithSpace: false, resolution: "Max", sanitiseClearScreen: false, textRenderer: "BuiltinGraphics", ugaPassThrough: false),
          protocols: protocols(appleAudio: false, appleBootPolicy: false, appleDebugLog: false, appleEvent: false, appleFramebufferInfo: false, appleImageConversion: false, appleImg4Verification: false, appleKeyMap: false, appleRtcRam: false, appleSecureBoot: false, appleSmcIo: false, appleUserInterfaceTheme: false, dataHub: false, deviceProperties: false, firmwareVolume: false, hashServices: false, osInfo: false, unicodeCollation: false),
          quirks: uQuirks(deduplicateBootOrder: true, exitBootServicesDelay: 0, ignoreInvalidFlexRatio: false, releaseUsbOwnership: false, requestBootVarRouting: true, tscSyncTimeout: 0, unblockFsConnect: false),
          reservedMemory: [reservedMemory()])
)
