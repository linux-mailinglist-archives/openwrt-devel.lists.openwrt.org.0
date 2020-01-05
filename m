Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49875130924
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 17:39:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pejK4R0lDPYf5jl3cTpEFO4XTusgTEts8uYmvM3bJNI=; b=jRMF0NUUj6zhUZ
	dAtDAC8D0YTL5DqBV7N1uWo8vGoObRYEBUNNXsN/J2KwxBl6+5pAMNKQayTdmGdx05HNR/b749cPv
	Ef1JcCXRRicwpdCGsZMLyWTJlpBWepQtNOIDand+DSECXK4ecfA0XRXTYwTJfMNxxug6srFmFaWQh
	W+X5EGuTiFxFVcD78w2uX/ymm0PCum7ibLH75hOzTSo+GT0c5Iyi4np11vDKprnAkqTp3iabuMMtq
	qP8HeXVqsJ/VtywYIKbVzNplvofxRHfxGF5dDGw+FKTVLWhLK8oSJxuvXm/GuI0zwgb109VMPJOeG
	waewwr43MCmyA2itadRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io8w0-0001H8-Gl; Sun, 05 Jan 2020 16:39:24 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io8vf-0001FV-A5
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 16:39:08 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N7Qgn-1jn9Mv0S6P-017nQP for <openwrt-devel@lists.openwrt.org>; Sun, 05
 Jan 2020 17:39:00 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 17:38:08 +0100
Message-Id: <20200105163813.3846-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:id5CKalRyxIbgqIsqRU2KBiX00YZqlRGIBIY8tzi6r14Y4+Jw7j
 5iYeOuU070zqPT/3wRpSs+4NefsJBIrkcDBoZFZdBObsU7Z567KBBhrouzfCCwJ5h2wWKAo
 YYGUzhGBRW3UNoOQcChdjEhJsaS4t55gbCPyigFw6qp6lODju3oejMSVITUi0d4r4zCtqze
 VfFh+M+Ojiiesd4b8GzCg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RdDFPQg0A88=:n62R6oTu6l13IfH2bJ3rbK
 nxQyI5EqrKSPdhrEwIpnzMVO+WT7qcFzv6W/+0cjf5YvDtx5BcnxcYka1wZB4N48CZEG/mygg
 uGEHfabXsO0+mkh8eZGqWmcYF+UlEXpvUQ/rLgM1anm+ivrU/WaWwAdMrqpXJG8cJsPwQ6qKM
 kqMF30PCZ3oVU2E7dfPn005NVusbG9hcgqRGoRBizIOT04Te1Lr5nSpuUcETUZLuX9PcnCGL5
 Mq532RkUN/X+6BUd4YijBG/3Mxdn0cgZ+K9MpvlfZuOQChNIx3s7vjuUw+6lYDkUvoeq87QiY
 pK3jqWztDBLOljnpfpdH/bqDOsbjXxn3O0YBTl9tMPbCJDuz2R9bnzmuznRp5hwR77aHwz4Tz
 RBzkdGueAQlvIvPYNSL7kXc3kpT3e16sYtc8psn3NKirRo6VqDvyNbLTE/RynwKeF+wmgQt/a
 Nycmf0DqrXMe0JbFE6A7SarHF7e37WVFjilnQvhxTkqGjgb7tJZq2OuKmlIoTnyP6yfSfDqCQ
 L1gEi2TBcLUL2Uko6LjCPNJwgLVUSSx2yq/EV+4uOYiOj5rU6u2MLIuQjvN565slcDwjYSiDb
 gI7tNjtwtVggPVrNWuIQDK5ywMbAOLHk4phSCYBAwdRne0O8FyQvDMp6stxfpENnKPUXeInm6
 7GUqUV17hJf6kJhTDmSXggi1W8MkO9cxiTe4qQonBEct10UYZu9szlw8x0/8qPu6rhStWjEhK
 gSDRs4+/hg51k2OwbX4qhnPaJ0sI+4ApuAWL8Q529s1QJ+OTrfPGBOqa3PcPIuAGyqZ3/nl65
 XwdeRDGf3GOuH7WGMUhss6U1uypf3KivarGlEubpY8hZwLRvb+QnVXnj0PslkBLMM/X4evrDV
 n/YNw0fuzACEN+AjMS5o6m27se9h1u9lGauB9/DXg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_083903_953710_53C805B9 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 0/5] Remove kernel 4.9 targets and kernel
 4.9 support
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This removes support for the remaining three kernel 4.9 targets, and
after that for the now "unused" kernel 4.9 support.

The targets seem to be not maintained anymore, for two of them there
were even patches available to bump them to 4.14, but nobody even
attempted to test them.

Support will stay in the 18.06 branch, so device can be used there
until the branch is EOL.

After the three targets are removed, no 4.9 targets remains, and we
can remove support for that kernel version as well and save a small
amount of time for maintaining it.

While at it, also remove several kernel version switches not required
anymore, also some which have been overlooked during earlier kernel
removals.


This submission is mainly for providing review time, I plan to merge
it somewhat after the next 19.07/18.06 release have been made.


Am I supposed to copy the old targets somewhere?
There is https://github.com/openwrt/targets, but this is much older
than the last target removal. Despite, it won't help much without the
current packages etc. anyway. So, I'd just remove them, they are
preserved in history anyway ...

Adrian Schmutzler (5):
  ar7: remove unmaintained target
  ixp4xx: remove unmaintained target
  orion: remove unmaintained target
  kernel: remove support for kernel 4.9
  kernel: remove obsolete kernel version switches

 include/kernel-version.mk                     |    2 -
 include/netfilter.mk                          |   26 +-
 package/boot/apex/Makefile                    |   62 -
 .../boot/apex/patches/001-compile_fix.patch   |   20 -
 .../100-openwrt_nslu2_armeb_config.patch      |   23 -
 .../120-openwrt_nslu2_16mb_armeb_config.patch |   23 -
 .../140-openwrt_fsg3_armeb_config.patch       |   23 -
 .../apex/patches/150-limit_ram_to_64mb.patch  |   22 -
 .../160-openwrt_nas100d_armeb_config.patch    |   20 -
 package/firmware/ixp4xx-microcode/Makefile    |   59 -
 .../ixp4xx-microcode/src/IxNpeMicrocode.h     |  148 -
 .../firmware/ixp4xx-microcode/src/LICENSE.IPL |   27 -
 package/kernel/acx-mac80211/Makefile          |    2 +-
 package/kernel/ar7-atm/Config.in              |   22 -
 package/kernel/ar7-atm/Makefile               |  100 -
 .../090-no-date-time.patch                    |   11 -
 .../patches-D7.04.03.00/100-compile_fix.patch |  768 ---
 .../110-interrupt_fix.patch                   |   37 -
 .../120-no_dumb_inline.patch                  |   11 -
 .../130-powercutback.patch                    |   44 -
 .../patches-D7.04.03.00/140-debug_mode.patch  |   16 -
 .../150-tasklet_mode.patch                    |   11 -
 .../160-module-params.patch                   |  589 --
 .../170-bus_id_removal.patch                  |   19 -
 .../180-git_headers_include.patch             |   39 -
 .../190-2.6.32_proc_fixes.patch               |   92 -
 .../patches-D7.04.03.00/200-2.6.37_args.patch |   32 -
 .../210-3.3-remove-smp_lock.h.patch           |   33 -
 .../220-3.10-update_proc_code.patch           | 2945 ---------
 .../230-compile_fixes.patch                   |   44 -
 .../patches-D7.04.03.00/240-3.18_fixes.patch  |   38 -
 .../patches-D7.04.03.00/250-4.1_fixes.patch   |   20 -
 .../260-fix_function_signatures.patch         |   63 -
 .../090-no-date-time.patch                    |   11 -
 .../patches-D7.05.01.00/100-compile_fix.patch |  808 ---
 .../110-interrupt_fix.patch                   |   37 -
 .../120-no_dumb_inline.patch                  |   11 -
 .../130-powercutback.patch                    |   44 -
 .../patches-D7.05.01.00/140-debug_mode.patch  |   16 -
 .../150-tasklet_mode.patch                    |   11 -
 .../160-module-params.patch                   |  675 ---
 .../170-bus_id_removal.patch                  |   19 -
 .../180-git_headers_include.patch             |   39 -
 .../190-2.6.32_proc_fixes.patch               |   92 -
 .../patches-D7.05.01.00/200-2.6.37_args.patch |   32 -
 .../210-3.3-remove-smp_lock.h.patch           |   33 -
 .../220-3.10-update_proc_code.patch           | 3082 ----------
 .../patches-D7.05.01.00/240-3.18_fixes.patch  |   38 -
 .../patches-D7.05.01.00/250-4.1_fixes.patch   |   20 -
 .../260-fix_function_signatures.patch         |   63 -
 package/kernel/avila-wdt/Makefile             |   34 -
 package/kernel/avila-wdt/src/Makefile         |    1 -
 package/kernel/avila-wdt/src/avila-wdt.c      |  231 -
 .../linux/files/sysctl-tcp-bbr-k4_9.conf      |    5 -
 package/kernel/linux/modules/block.mk         |    3 +-
 package/kernel/linux/modules/crypto.mk        |   32 +-
 package/kernel/linux/modules/fs.mk            |    2 +-
 package/kernel/linux/modules/iio.mk           |    6 +-
 package/kernel/linux/modules/lib.mk           |   16 +-
 package/kernel/linux/modules/netdevices.mk    |    4 +-
 package/kernel/linux/modules/netfilter.mk     |    2 +-
 package/kernel/linux/modules/netsupport.mk    |   22 +-
 package/kernel/linux/modules/other.mk         |   20 +-
 package/kernel/linux/modules/sound.mk         |   33 +-
 package/kernel/linux/modules/usb.mk           |   14 +-
 package/kernel/linux/modules/video.mk         |    4 +-
 package/kernel/linux/modules/w1.mk            |    2 +-
 package/kernel/linux/modules/wireless.mk      |    3 +-
 package/kernel/linux/modules/wpan.mk          |    5 +-
 package/kernel/rtl8812au-ct/Makefile          |    2 +-
 target/linux/ar7/Makefile                     |   25 -
 target/linux/ar7/ac49x/config-default         |    4 -
 target/linux/ar7/ac49x/profiles/210-None.mk   |   17 -
 target/linux/ar7/ac49x/target.mk              |   10 -
 target/linux/ar7/base-files.mk                |   11 -
 .../ar7/base-files/etc/board.d/02_network     |   28 -
 target/linux/ar7/base-files/etc/diag.sh       |   32 -
 target/linux/ar7/base-files/etc/init.d/adam2  |   13 -
 target/linux/ar7/config-4.9                   |  151 -
 .../linux/ar7/files/drivers/mtd/ac49xpart.c   |  221 -
 .../linux/ar7/files/drivers/mtd/titanpart.c   |  234 -
 target/linux/ar7/generic/config-default       |    5 -
 .../linux/ar7/generic/profiles/100-Annex-A.mk |   18 -
 .../linux/ar7/generic/profiles/110-Annex-B.mk |   18 -
 .../linux/ar7/generic/profiles/200-Texas.mk   |   18 -
 target/linux/ar7/generic/profiles/210-None.mk |   17 -
 target/linux/ar7/generic/target.mk            |   12 -
 target/linux/ar7/image/Makefile               |  137 -
 .../patches-4.9/100-fix-highmem-offset.patch  |   11 -
 ...R7-allow-NULL-clock-for-clk_get_rate.patch |   45 -
 target/linux/ar7/patches-4.9/110-flash.patch  |   22 -
 .../160-vlynq_try_remote_first.patch          |  300 -
 .../200-free-mem-below-kernel-offset.patch    |   15 -
 .../patches-4.9/300-add-ac49x-platform.patch  |   85 -
 .../patches-4.9/310-ac49x-prom-support.patch  |   20 -
 .../320-ac49x-mtd-partitions.patch            |   35 -
 .../linux/ar7/patches-4.9/920-ar7part.patch   |  120 -
 .../ar7/patches-4.9/925-actiontec_leds.patch  |   95 -
 .../ar7/patches-4.9/950-cpmac_titan.patch     |   52 -
 target/linux/ar7/src/adam2patcher.c           |   59 -
 ...dcode-path-to-awk-in-scripts-ld-vers.patch |   29 -
 .../011-kbuild-export-SUBARCH.patch           |   23 -
 ...-for-controlling-warnings-to-linux-c.patch |  143 -
 ...te-alias-warning-for-SYSCALL_DEFINEx.patch |   88 -
 .../020-backport_netfilter_rtcache.patch      |  543 --
 .../021-bridge-multicast-to-unicast.patch     |  499 --
 ...rsion-of-alloc_etherdev_mqs-function.patch |   69 -
 ...024-1-tcp-tsq-add-tsq_flags-tsq_enum.patch |   90 -
 ...ve-one-locked-operation-in-tcp_wfree.patch |   48 -
 ...tsq-add-shortcut-in-tcp_tasklet_func.patch |   71 -
 ...cp-tsq-avoid-one-atomic-in-tcp_wfree.patch |   38 -
 ...-a-shortcut-in-tcp_small_queue_check.patch |   37 -
 ...cp_mtu_probe-is-likely-to-exit-early.patch |   55 -
 ...struct-sock-for-better-data-locality.patch |  158 -
 ...ove-tsq_flags-close-to-sk_wmem_alloc.patch |  176 -
 ...-missing-barrier-in-tcp_tasklet_func.patch |   40 -
 ...tcp-allow-drivers-to-tweak-TSQ-logic.patch |   85 -
 ...imit-and-delta-fields-from-struct-ub.patch |   82 -
 ...writeback_interval-value-for-wbuf-ti.patch |   66 -
 ...or-releasing-multiple-instances-of-a.patch |   75 -
 ...flash-use-platform_-set-get-_drvdata.patch |   63 -
 ...h-support-reading-flash-out-of-mappi.patch |   81 -
 ...move-TRX-parsing-code-to-separated-f.patch |  180 -
 ...support-layouts-with-multiple-TRX-pa.patch |  112 -
 ...Macronix-mx25u25635f-to-list-of-know.patch |   22 -
 ...mtd-spi-nor-fix-spansion-quad-enable.patch |   42 -
 ...-mtd-spi-nor-fix-flags-for-s25fl128s.patch |   28 -
 ...td-spi-nor-add-support-for-s25fl208k.patch |   23 -
 ...-Add-at25df321-spi-nor-flash-support.patch |   26 -
 ...mtd-spi-nor-Add-support-for-N25Q016A.patch |   29 -
 ...-mtd-spi-nor-Add-support-for-mr25h40.patch |   25 -
 ...Add-support-for-S3AN-spi-nor-devices.patch |  312 -
 ...spi-nor-improve-macronix_quad_enable.patch |   28 -
 ...ve-WARN_ONCE-message-in-spi_nor_writ.patch |   33 -
 ...me-SPINOR_OP_-macros-of-the-4-byte-a.patch |  187 -
 ...a-stateless-method-to-support-memory.patch |  150 -
 ...Add-lock-unlock-support-for-f25l32pa.patch |   26 -
 ...-nor-Fix-S3AN-addressing-calculation.patch |   35 -
 ...-mtd-spi-nor-Add-support-for-gd25q16.patch |   28 -
 ...mtd-nand-Add-Winbond-manufacturer-id.patch |   34 -
 ...td-introduce-function-max_bad_blocks.patch |   73 -
 ...n-device-node-to-mtd-partition-devic.patch |   50 -
 ...le-stateless-4b-op-codes-for-mx25u25.patch |   29 -
 ...itioning-on-devices-with-0-erasesize.patch |   77 -
 ...tions-factor-out-code-calling-parser.patch |   68 -
 ...ns-add-helper-for-deleting-partition.patch |  119 -
 ...emove-sysfs-files-when-deleting-all-.patch |   45 -
 ...ename-master-to-the-parent-where-app.patch |  606 --
 ...itions-add-support-for-subpartitions.patch |   96 -
 ...ns-add-support-for-partition-parsers.patch |  110 -
 ...parser-out-of-bcm47xxpart-into-a-sep.patch |  320 -
 ...ding-master-MTD-out-of-mtd_add_devic.patch |   74 -
 ...rid-of-the-mtd_add_device_partitions.patch |   93 -
 ...dd-of_match_table-parser-matching-fo.patch |  200 -
 ...t-parser-to-fixed-partitions-as-it-f.patch |   74 -
 ...of_match_table-with-fixed-partitions.patch |   44 -
 ...ding-registering-partitions-to-the-p.patch |  168 -
 ...-improve-handling-TRX-partition-size.patch |   70 -
 .../backport-4.9/070-bcma-from-4.11.patch     |   85 -
 ...te-struct-bgmac-just-once-don-t-copy.patch |  139 -
 ...truct-bcma_mdio-we-don-t-need-anymor.patch |  261 -
 ...e-PHY-subsystem-for-initializing-PHY.patch |   53 -
 ...-master-mode-for-BCM54210E-and-B5021.patch |   50 -
 .../backport-4.9/072-bcma-from-4.12.patch     |   47 -
 ...-Update-Auxiliary-Control-Register-m.patch |   34 -
 ...y-broadcom-Add-support-for-BCM54612E.patch |   94 -
 ...phy-broadcom-add-bcm54xx_auxctl_read.patch |   41 -
 ...-phy-broadcom-Add-BCM54810-PHY-entry.patch |  176 -
 ...-Move-bcm54xx_auxctl_-read-write-to-.patch |   74 -
 ...m-Allow-enabling-or-disabling-of-EEE.patch |   87 -
 ...-Add-support-code-for-reading-PHY-co.patch |  125 -
 ...et-phy-bcm7xxx-Add-entry-for-BCM7278.patch |   38 -
 ...-Implement-EGPHY-workaround-for-7278.patch |   68 -
 ...-use-auxctl-reading-helper-in-BCM546.patch |   45 -
 ...y-broadcom-add-support-for-BCM54210E.patch |   89 -
 ...adcom-rehook-BCM54612E-specific-init.patch |  121 -
 ...-support-new-device-flag-for-setting.patch |   54 -
 ...-variants-of-LED-registering-functio.patch |  120 -
 ...-variant-of-LED-registering-function.patch |   60 -
 ...5-add-thermal-driver-for-bcm2835-SoC.patch |  365 --
 ...roadcom-add-Northstar-thermal-driver.patch |  173 -
 ...B-ports-from-DT-in-the-usbport-LED-t.patch |  106 -
 ...le-working-over-slow-can_sleep-GPIOs.patch |   84 -
 .../087-regmap-make-LZO-cache-optional.patch  |   69 -
 ...90-net-generalize-napi_complete_done.patch | 1412 -----
 ...issing-tunnel-encapsulation-limit-op.patch |   50 -
 ...ort-ipv6_push_frag_opts-for-tunnelin.patch |   31 -
 ...ddress-assignment-via-ifconfig-ioctl.patch |   79 -
 ...3-0001-rtc-ds1307-add-ds1308-variant.patch |   51 -
 ...reserve-link-scope-traffic-original-.patch |   32 -
 ...s3xxx-use-actual-size-reads-for-PCIe.patch |   46 -
 ...s-trigger-Introduce-a-NETDEV-trigger.patch |  588 --
 ...add-of_match_table-with-a-new-DT-bin.patch |   47 -
 ...add-of_match_table-with-the-new-DT-b.patch |   45 -
 ...se-DT-info-for-parsing-partitions-wi.patch |  102 -
 target/linux/generic/config-4.9               | 5345 -----------------
 .../generic/hack-4.9/204-module_strip.patch   |  214 -
 .../hack-4.9/207-disable-modorder.patch       |   44 -
 .../hack-4.9/210-darwin_scripts_include.patch | 3065 ----------
 .../hack-4.9/211-host_tools_portability.patch |   40 -
 .../hack-4.9/212-byteshift_portability.patch  |   65 -
 .../hack-4.9/214-spidev_h_portability.patch   |   24 -
 .../generic/hack-4.9/220-gc_sections.patch    |  448 --
 .../generic/hack-4.9/221-module_exports.patch |  101 -
 .../hack-4.9/230-openwrt_lzma_options.patch   |   71 -
 .../hack-4.9/250-netfilter_depends.patch      |   27 -
 .../generic/hack-4.9/251-sound_kconfig.patch  |  195 -
 .../generic/hack-4.9/259-regmap_dynamic.patch |  100 -
 .../260-crypto_test_dependencies.patch        |   62 -
 .../generic/hack-4.9/280-rfkill-stubs.patch   |   94 -
 ...cache-use-more-efficient-cache-blast.patch |   66 -
 .../301-mips_image_cmdline_hack.patch         |   38 -
 .../321-powerpc_crtsavres_prereq.patch        |   26 -
 .../generic/hack-4.9/531-debloat_lzma.patch   | 1040 ----
 .../640-bridge-only-accept-EAP-locally.patch  |   83 -
 .../hack-4.9/641-bridge_port_isolate.patch    |   76 -
 .../hack-4.9/651-wireless_mesh_header.patch   |   24 -
 .../hack-4.9/660-fq_codel_defaults.patch      |   27 -
 .../661-use_fq_codel_by_default.patch         |   94 -
 .../hack-4.9/662-remove_pfifo_fast.patch      |  159 -
 .../700-swconfig_switch_drivers.patch         |  150 -
 .../702-phy_add_aneg_done_function.patch      |   27 -
 ...710-phy-add-mdio_register_board_info.patch |  197 -
 .../generic/hack-4.9/721-phy_packets.patch    |  176 -
 .../hack-4.9/773-bgmac-add-srab-switch.patch  |   98 -
 .../hack-4.9/901-debloat_sock_diag.patch      |   95 -
 .../generic/hack-4.9/902-debloat_proc.patch   |  406 --
 .../hack-4.9/904-debloat_dma_buf.patch        |   64 -
 .../generic/hack-4.9/910-kobject_uevent.patch |   32 -
 .../911-kobject_add_broadcast_uevent.patch    |   76 -
 ...ays-create-console-node-in-initramfs.patch |   40 -
 .../linux/generic/hack-4.9/930-crashlog.patch |  338 --
 ...problem-with-platfom-data-in-w1-gpio.patch |   38 -
 ...fix-cache-flushing-for-highmem-pages.patch |   30 -
 .../pending-4.9/110-ehci_hcd_ignore_oc.patch  |   79 -
 ...e_mem_map-with-ARCH_PFN_OFFSET-calcu.patch |   82 -
 ...0-add-linux-spidev-compatible-si3210.patch |   18 -
 ..._value_cansleep-for-setting-chipsele.patch |   20 -
 ...ame2-and-add-RENAME_WHITEOUT-support.patch |   62 -
 ...41-jffs2-add-RENAME_EXCHANGE-support.patch |   73 -
 ...ge_allow_receiption_on_disabled_port.patch |   47 -
 ...-generic-parsing-of-linux-part-probe.patch |  181 -
 ...ontrollers-before-the-specified-head.patch |   30 -
 ...et-phy-at803x-add-support-for-AT8032.patch |   70 -
 ...ng-comment-related-to-link-detection.patch |   43 -
 .../pending-4.9/201-extra_optimization.patch  |   32 -
 .../203-kallsyms_uncompressed.patch           |  119 -
 .../205-backtrace_module_info.patch           |   45 -
 .../pending-4.9/220-optimize_inlining.patch   |   70 -
 ...e-filenames-from-deps_initramfs-list.patch |   47 -
 ...able_wilink_platform_without_drivers.patch |   20 -
 .../300-mips_expose_boot_raw.patch            |   40 -
 .../302-mips_no_branch_likely.patch           |   22 -
 .../pending-4.9/304-mips_disable_fpu.patch    |  137 -
 .../pending-4.9/305-mips_module_reloc.patch   |  370 --
 .../306-mips_mem_functions_performance.patch  |  106 -
 .../pending-4.9/307-mips_highmem_offset.patch |   19 -
 .../pending-4.9/308-mips32r2_tune.patch       |   22 -
 ...CPU-option-reporting-to-proc-cpuinfo.patch |  134 -
 .../310-arm_module_unresolved_weak_sym.patch  |   22 -
 ...t-command-line-parameters-from-users.patch |  271 -
 .../332-arc-add-OWRTDTB-section.patch         |   80 -
 ...able-unaligned-access-in-kernel-mode.patch |   24 -
 ...IPS-mm-remove-mips_dma_mapping_error.patch |   32 -
 ...ove-no-op-dma_map_ops-where-possible.patch |  140 -
 .../400-mtd-add-rootfs-split-support.patch    |  108 -
 ...for-different-partition-parser-types.patch |  142 -
 ...arsers-for-rootfs-and-firmware-split.patch |   44 -
 .../403-mtd-hook-mtdsplit-to-Kbuild.patch     |   32 -
 .../404-mtd-add-more-helper-functions.patch   |   76 -
 .../411-mtd-partial_eraseblock_write.patch    |  154 -
 .../412-mtd-partial_eraseblock_unlock.patch   |   40 -
 ...t-add-of_match_table-with-DT-binding.patch |   39 -
 .../pending-4.9/420-mtd-redboot_space.patch   |   41 -
 ...30-mtd-add-myloader-partition-parser.patch |   47 -
 ...check-for-bad-blocks-when-calculatin.patch |   68 -
 ...bcm47xxpart-detect-T_Meter-partition.patch |   37 -
 .../pending-4.9/440-block2mtd_init.patch      |  116 -
 .../pending-4.9/441-block2mtd_probe.patch     |   47 -
 ...-fallback-from-spi_flash_read-to-reg.patch |   36 -
 ...mtd-cfi_cmdset_0002-no-erase_suspend.patch |   25 -
 ...et_0002-add-buffer-write-cmd-timeout.patch |   17 -
 ...25p80-mx-disable-software-protection.patch |   18 -
 ...or-fix-Spansion-regressions-aliased-.patch |   37 -
 ...ort-limiting-4K-sectors-support-base.patch |   56 -
 ...pi-nor-Add-Winbond-w25q128jv-support.patch |   34 -
 .../476-mtd-spi-nor-add-eon-en25q128.patch    |   18 -
 .../477-mtd-add-spi-nor-add-mx25u3235f.patch  |   18 -
 ...support-for-XM25QH64A-and-XM25QH128A.patch |   30 -
 .../479-mtd-spi-nor-add-eon-en25qh32.patch    |   10 -
 .../480-mtd-set-rootfs-to-be-root-dev.patch   |   38 -
 ...mtd-device-named-ubi-or-data-on-boot.patch |   97 -
 ...to-create-ubiblock-device-for-rootfs.patch |   66 -
 ...ting-ubi0-rootfs-in-init-do_mounts.c.patch |   51 -
 ...ROOT_DEV-to-ubiblock-rootfs-if-unset.patch |   34 -
 .../494-mtd-ubi-add-EOF-marker-support.patch  |   60 -
 .../530-jffs2_make_lzma_available.patch       | 5180 ----------------
 .../pending-4.9/532-jffs2_eofdetect.patch     |   65 -
 ...fs-fix-default-compression-selection.patch |   37 -
 .../600-netfilter_conntrack_flush.patch       |   95 -
 ...etfilter_match_bypass_default_checks.patch |  110 -
 ...netfilter_match_bypass_default_table.patch |  119 -
 ...netfilter_match_reduce_memory_access.patch |   22 -
 ...-netfilter_optional_tcp_window_check.patch |   44 -
 .../616-net_optimize_xfrm_calls.patch         |   20 -
 ...del-do-not-defer-queue-length-update.patch |   86 -
 .../pending-4.9/630-packet_socket_type.patch  |  138 -
 .../pending-4.9/655-increase_skb_pad.patch    |   20 -
 ...Add-support-for-MAP-E-FMRs-mesh-mode.patch |  500 --
 ...ng-with-source-address-failed-policy.patch |  255 -
 ...nes-for-_POLICY_FAILED-until-all-cod.patch |   50 -
 ...T-skip-GRO-for-foreign-MAC-addresses.patch |  154 -
 .../681-NET-add-of_get_mac_address_mtd.patch  |  127 -
 .../pending-4.9/701-phy_extension.patch       |   72 -
 ...detach-callback-to-struct-phy_driver.patch |   38 -
 ...-at803x-allow-to-configure-via-pdata.patch |  142 -
 ...net-phy-at803x-fix-at8033-sgmii-mode.patch |   51 -
 .../810-pci_disable_common_quirks.patch       |   60 -
 .../811-pci_disable_usb_common_quirks.patch   |  110 -
 ...ove-annoying-warning-about-bogus-URB.patch |   76 -
 .../pending-4.9/834-ledtrig-libata.patch      |  149 -
 .../pending-4.9/890-uart_optional_sysrq.patch |   40 -
 .../pending-4.9/920-mangle_bootargs.patch     |   71 -
 target/linux/ixp4xx/Makefile                  |   24 -
 target/linux/ixp4xx/base-files/lib/ixp4xx.sh  |   34 -
 .../ixp4xx/base-files/lib/preinit/01_sysinfo  |    9 -
 .../lib/preinit/05_set_ether_mac_ixp4xx       |   32 -
 .../ixp4xx/base-files/lib/upgrade/platform.sh |  137 -
 target/linux/ixp4xx/config-4.9                |  245 -
 .../ixp4xx/generic/profiles/100-Default.mk    |   17 -
 .../generic/profiles/105-Atheros-ath5k.mk     |   17 -
 .../ixp4xx/generic/profiles/200-NSLU2.mk      |   19 -
 .../ixp4xx/generic/profiles/300-NAS100d.mk    |   21 -
 .../generic/profiles/400-DSMG600RevA.mk       |   22 -
 .../ixp4xx/generic/profiles/500-USR8200.mk    |   19 -
 target/linux/ixp4xx/generic/target.mk         |    9 -
 target/linux/ixp4xx/harddisk/config-default   |   20 -
 .../ixp4xx/harddisk/profiles/100-FSG3.mk      |   20 -
 target/linux/ixp4xx/harddisk/target.mk        |    6 -
 target/linux/ixp4xx/image/Makefile            |   76 -
 target/linux/ixp4xx/modules.mk                |   74 -
 ...ohorent_dma_mask-for-ethernet-platfo.patch |  136 -
 ...se-parent-device-for-dma-allocations.patch |   95 -
 .../patches-4.9/020-gateworks_i2c_pld.patch   |  424 --
 .../patches-4.9/030-gpio_line_config.patch    |   73 -
 .../patches-4.9/040-arm_mach_types.patch      |   18 -
 .../090-increase_entropy_pools.patch          |   17 -
 ...00-wg302v2_gateway7001_mac_plat_info.patch |   78 -
 .../patches-4.9/105-wg302v1_support.patch     |  261 -
 .../110-pronghorn_series_support.patch        |  393 --
 .../111-pronghorn_swap_uarts.patch            |   44 -
 .../patches-4.9/115-sidewinder_support.patch  |  286 -
 .../116-sidewinder_fis_location.patch         |   30 -
 .../patches-4.9/120-compex_support.patch      |  199 -
 .../patches-4.9/130-wrt300nv2_support.patch   |  227 -
 .../131-wrt300nv2_mac_plat_info.patch         |   42 -
 .../patches-4.9/132-wrt300nv2_mac_fix.patch   |   72 -
 .../150-lanready_ap1000_support.patch         |  201 -
 .../151-lanready_ap1000_mac_plat_info.patch   |   44 -
 .../patches-4.9/160-delayed_uart_io.patch     |  133 -
 .../patches-4.9/162-wg302v1_mem_fixup.patch   |   37 -
 .../170-ixdpg425_mac_plat_info.patch          |   51 -
 .../175-avila_hss_audio_support.patch         | 2093 -------
 .../patches-4.9/180-tw5334_support.patch      |  287 -
 .../patches-4.9/185-mi424wr_support.patch     |  504 --
 .../patches-4.9/190-cambria_support.patch     | 1131 ----
 ...01-npe_driver_print_license_location.patch |   11 -
 ...05-npe_driver_separate_phy_functions.patch |  127 -
 ...-npe_driver_add_update_link_function.patch |  100 -
 .../207-npe_driver_multiphy_support.patch     |  153 -
 .../patches-4.9/295-latch_led_driver.patch    |  201 -
 .../patches-4.9/300-avila_support.patch       |  726 ---
 .../304-ixp4xx_eth_jumboframe.patch           |   80 -
 .../patches-4.9/310-gtwx5717_spi_bus.patch    |   57 -
 .../311-gtwx5717_mac_plat_info.patch          |   50 -
 .../312-ixp4xx_pata_optimization.patch        |  137 -
 .../patches-4.9/500-usr8200_support.patch     |  347 --
 .../patches-4.9/520-tw2662_support.patch      |  316 -
 .../patches-4.9/530-ap42x_support.patch       |  282 -
 .../patches-4.9/600-skb_avoid_dmabounce.patch |   23 -
 .../900-ixp4xx-crypto-include-module.h.patch  |   10 -
 .../patches-4.9/910-ixp4xx-nr_irq_lines.patch |   22 -
 target/linux/orion/Makefile                   |   24 -
 .../orion/base-files/etc/board.d/02_network   |   15 -
 .../orion/base-files/etc/hotplug.d/usb/10-usb |   54 -
 .../orion/base-files/lib/preinit/01_sysinfo   |   12 -
 target/linux/orion/config-4.9                 |  246 -
 .../base-files/etc/uci-defaults/09_hardware   |   54 -
 .../base-files/lib/upgrade/platform.sh        |   38 -
 target/linux/orion/generic/target.mk          |   14 -
 target/linux/orion/harddisk/config-default    |   38 -
 target/linux/orion/harddisk/target.mk         |   15 -
 target/linux/orion/image/Makefile             |   12 -
 target/linux/orion/image/generic.mk           |  237 -
 target/linux/orion/image/harddisk.mk          |   57 -
 .../000-arm_openwrt_machtypes.patch           |    8 -
 .../100-wrt350nv2_openwrt_partition_map.patch |   32 -
 .../101-wnr854t_partition_map.patch           |   25 -
 .../patches-4.9/200-dt2_board_support.patch   |  562 --
 .../patches-4.9/210-wn802t_support.patch      |   73 -
 400 files changed, 70 insertions(+), 61013 deletions(-)
 delete mode 100644 package/boot/apex/Makefile
 delete mode 100644 package/boot/apex/patches/001-compile_fix.patch
 delete mode 100644 package/boot/apex/patches/100-openwrt_nslu2_armeb_config.patch
 delete mode 100644 package/boot/apex/patches/120-openwrt_nslu2_16mb_armeb_config.patch
 delete mode 100644 package/boot/apex/patches/140-openwrt_fsg3_armeb_config.patch
 delete mode 100644 package/boot/apex/patches/150-limit_ram_to_64mb.patch
 delete mode 100644 package/boot/apex/patches/160-openwrt_nas100d_armeb_config.patch
 delete mode 100644 package/firmware/ixp4xx-microcode/Makefile
 delete mode 100644 package/firmware/ixp4xx-microcode/src/IxNpeMicrocode.h
 delete mode 100644 package/firmware/ixp4xx-microcode/src/LICENSE.IPL
 delete mode 100644 package/kernel/ar7-atm/Config.in
 delete mode 100644 package/kernel/ar7-atm/Makefile
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/090-no-date-time.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/100-compile_fix.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/110-interrupt_fix.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/120-no_dumb_inline.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/130-powercutback.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/140-debug_mode.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/150-tasklet_mode.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/160-module-params.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/170-bus_id_removal.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/180-git_headers_include.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/190-2.6.32_proc_fixes.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/200-2.6.37_args.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/210-3.3-remove-smp_lock.h.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/220-3.10-update_proc_code.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/230-compile_fixes.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/240-3.18_fixes.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/250-4.1_fixes.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/260-fix_function_signatures.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/090-no-date-time.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/100-compile_fix.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/110-interrupt_fix.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/120-no_dumb_inline.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/130-powercutback.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/140-debug_mode.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/150-tasklet_mode.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/160-module-params.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/170-bus_id_removal.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/180-git_headers_include.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/190-2.6.32_proc_fixes.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/200-2.6.37_args.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/210-3.3-remove-smp_lock.h.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/220-3.10-update_proc_code.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/240-3.18_fixes.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/250-4.1_fixes.patch
 delete mode 100644 package/kernel/ar7-atm/patches-D7.05.01.00/260-fix_function_signatures.patch
 delete mode 100644 package/kernel/avila-wdt/Makefile
 delete mode 100644 package/kernel/avila-wdt/src/Makefile
 delete mode 100644 package/kernel/avila-wdt/src/avila-wdt.c
 delete mode 100644 package/kernel/linux/files/sysctl-tcp-bbr-k4_9.conf
 delete mode 100644 target/linux/ar7/Makefile
 delete mode 100644 target/linux/ar7/ac49x/config-default
 delete mode 100644 target/linux/ar7/ac49x/profiles/210-None.mk
 delete mode 100644 target/linux/ar7/ac49x/target.mk
 delete mode 100644 target/linux/ar7/base-files.mk
 delete mode 100755 target/linux/ar7/base-files/etc/board.d/02_network
 delete mode 100644 target/linux/ar7/base-files/etc/diag.sh
 delete mode 100755 target/linux/ar7/base-files/etc/init.d/adam2
 delete mode 100644 target/linux/ar7/config-4.9
 delete mode 100644 target/linux/ar7/files/drivers/mtd/ac49xpart.c
 delete mode 100644 target/linux/ar7/files/drivers/mtd/titanpart.c
 delete mode 100644 target/linux/ar7/generic/config-default
 delete mode 100644 target/linux/ar7/generic/profiles/100-Annex-A.mk
 delete mode 100644 target/linux/ar7/generic/profiles/110-Annex-B.mk
 delete mode 100644 target/linux/ar7/generic/profiles/200-Texas.mk
 delete mode 100644 target/linux/ar7/generic/profiles/210-None.mk
 delete mode 100644 target/linux/ar7/generic/target.mk
 delete mode 100644 target/linux/ar7/image/Makefile
 delete mode 100644 target/linux/ar7/patches-4.9/100-fix-highmem-offset.patch
 delete mode 100644 target/linux/ar7/patches-4.9/101-MIPS-AR7-allow-NULL-clock-for-clk_get_rate.patch
 delete mode 100644 target/linux/ar7/patches-4.9/110-flash.patch
 delete mode 100644 target/linux/ar7/patches-4.9/160-vlynq_try_remote_first.patch
 delete mode 100644 target/linux/ar7/patches-4.9/200-free-mem-below-kernel-offset.patch
 delete mode 100644 target/linux/ar7/patches-4.9/300-add-ac49x-platform.patch
 delete mode 100644 target/linux/ar7/patches-4.9/310-ac49x-prom-support.patch
 delete mode 100644 target/linux/ar7/patches-4.9/320-ac49x-mtd-partitions.patch
 delete mode 100644 target/linux/ar7/patches-4.9/920-ar7part.patch
 delete mode 100644 target/linux/ar7/patches-4.9/925-actiontec_leds.patch
 delete mode 100644 target/linux/ar7/patches-4.9/950-cpmac_titan.patch
 delete mode 100644 target/linux/ar7/src/adam2patcher.c
 delete mode 100644 target/linux/generic/backport-4.9/010-Kbuild-don-t-hardcode-path-to-awk-in-scripts-ld-vers.patch
 delete mode 100644 target/linux/generic/backport-4.9/011-kbuild-export-SUBARCH.patch
 delete mode 100644 target/linux/generic/backport-4.9/012-kbuild-add-macro-for-controlling-warnings-to-linux-c.patch
 delete mode 100644 target/linux/generic/backport-4.9/013-disable-Wattribute-alias-warning-for-SYSCALL_DEFINEx.patch
 delete mode 100644 target/linux/generic/backport-4.9/020-backport_netfilter_rtcache.patch
 delete mode 100644 target/linux/generic/backport-4.9/021-bridge-multicast-to-unicast.patch
 delete mode 100644 target/linux/generic/backport-4.9/022-net-add-devm-version-of-alloc_etherdev_mqs-function.patch
 delete mode 100644 target/linux/generic/backport-4.9/024-1-tcp-tsq-add-tsq_flags-tsq_enum.patch
 delete mode 100644 target/linux/generic/backport-4.9/024-2-tcp-tsq-remove-one-locked-operation-in-tcp_wfree.patch
 delete mode 100644 target/linux/generic/backport-4.9/024-3-tcp-tsq-add-shortcut-in-tcp_tasklet_func.patch
 delete mode 100644 target/linux/generic/backport-4.9/024-4-tcp-tsq-avoid-one-atomic-in-tcp_wfree.patch
 delete mode 100644 target/linux/generic/backport-4.9/024-5-tcp-tsq-add-a-shortcut-in-tcp_small_queue_check.patch
 delete mode 100644 target/linux/generic/backport-4.9/024-6-tcp-tcp_mtu_probe-is-likely-to-exit-early.patch
 delete mode 100644 target/linux/generic/backport-4.9/024-7-net-reorganize-struct-sock-for-better-data-locality.patch
 delete mode 100644 target/linux/generic/backport-4.9/024-8-tcp-tsq-move-tsq_flags-close-to-sk_wmem_alloc.patch
 delete mode 100644 target/linux/generic/backport-4.9/024-9-tcp-add-a-missing-barrier-in-tcp_tasklet_func.patch
 delete mode 100644 target/linux/generic/backport-4.9/025-tcp-allow-drivers-to-tweak-TSQ-logic.patch
 delete mode 100644 target/linux/generic/backport-4.9/030-01-ubifs-Drop-softlimit-and-delta-fields-from-struct-ub.patch
 delete mode 100644 target/linux/generic/backport-4.9/030-02-ubifs-Use-dirty_writeback_interval-value-for-wbuf-ti.patch
 delete mode 100644 target/linux/generic/backport-4.9/040-mm-add-support-for-releasing-multiple-instances-of-a.patch
 delete mode 100644 target/linux/generic/backport-4.9/060-0002-mtd-bcm47xxsflash-use-platform_-set-get-_drvdata.patch
 delete mode 100644 target/linux/generic/backport-4.9/060-0003-mtd-bcm47xxsflash-support-reading-flash-out-of-mappi.patch
 delete mode 100644 target/linux/generic/backport-4.9/060-0004-mtd-bcm47xxpart-move-TRX-parsing-code-to-separated-f.patch
 delete mode 100644 target/linux/generic/backport-4.9/060-0005-mtd-bcm47xxpart-support-layouts-with-multiple-TRX-pa.patch
 delete mode 100644 target/linux/generic/backport-4.9/061-v4.10-0001-mtd-spi-nor-add-Macronix-mx25u25635f-to-list-of-know.patch
 delete mode 100644 target/linux/generic/backport-4.9/061-v4.10-0002-mtd-spi-nor-fix-spansion-quad-enable.patch
 delete mode 100644 target/linux/generic/backport-4.9/061-v4.10-0003-mtd-spi-nor-fix-flags-for-s25fl128s.patch
 delete mode 100644 target/linux/generic/backport-4.9/061-v4.10-0004-mtd-spi-nor-add-support-for-s25fl208k.patch
 delete mode 100644 target/linux/generic/backport-4.9/061-v4.10-0005-mtd-spi-nor-Add-at25df321-spi-nor-flash-support.patch
 delete mode 100644 target/linux/generic/backport-4.9/061-v4.10-0006-mtd-spi-nor-Add-support-for-N25Q016A.patch
 delete mode 100644 target/linux/generic/backport-4.9/061-v4.10-0007-mtd-spi-nor-Add-support-for-mr25h40.patch
 delete mode 100644 target/linux/generic/backport-4.9/062-v4.11-0001-mtd-spi-nor-Add-support-for-S3AN-spi-nor-devices.patch
 delete mode 100644 target/linux/generic/backport-4.9/062-v4.11-0002-mtd-spi-nor-improve-macronix_quad_enable.patch
 delete mode 100644 target/linux/generic/backport-4.9/062-v4.11-0003-mtd-spi-nor-remove-WARN_ONCE-message-in-spi_nor_writ.patch
 delete mode 100644 target/linux/generic/backport-4.9/062-v4.11-0004-mtd-spi-nor-rename-SPINOR_OP_-macros-of-the-4-byte-a.patch
 delete mode 100644 target/linux/generic/backport-4.9/062-v4.11-0005-mtd-spi-nor-add-a-stateless-method-to-support-memory.patch
 delete mode 100644 target/linux/generic/backport-4.9/062-v4.11-0006-mtd-spi-nor-Add-lock-unlock-support-for-f25l32pa.patch
 delete mode 100644 target/linux/generic/backport-4.9/062-v4.11-0007-mtd-spi-nor-Fix-S3AN-addressing-calculation.patch
 delete mode 100644 target/linux/generic/backport-4.9/062-v4.11-0008-mtd-spi-nor-Add-support-for-gd25q16.patch
 delete mode 100644 target/linux/generic/backport-4.9/063-v4.11-0001-mtd-nand-Add-Winbond-manufacturer-id.patch
 delete mode 100644 target/linux/generic/backport-4.9/063-v4.11-0002-mtd-introduce-function-max_bad_blocks.patch
 delete mode 100644 target/linux/generic/backport-4.9/063-v4.11-0003-mtd-Add-partition-device-node-to-mtd-partition-devic.patch
 delete mode 100644 target/linux/generic/backport-4.9/064-v4.12-mtd-spi-nor-enable-stateless-4b-op-codes-for-mx25u25.patch
 delete mode 100644 target/linux/generic/backport-4.9/065-v4.13-0001-mtd-handle-partitioning-on-devices-with-0-erasesize.patch
 delete mode 100644 target/linux/generic/backport-4.9/065-v4.13-0002-mtd-partitions-factor-out-code-calling-parser.patch
 delete mode 100644 target/linux/generic/backport-4.9/065-v4.13-0003-mtd-partitions-add-helper-for-deleting-partition.patch
 delete mode 100644 target/linux/generic/backport-4.9/065-v4.13-0004-mtd-partitions-remove-sysfs-files-when-deleting-all-.patch
 delete mode 100644 target/linux/generic/backport-4.9/065-v4.13-0005-mtd-partitions-rename-master-to-the-parent-where-app.patch
 delete mode 100644 target/linux/generic/backport-4.9/065-v4.13-0006-mtd-partitions-add-support-for-subpartitions.patch
 delete mode 100644 target/linux/generic/backport-4.9/065-v4.13-0007-mtd-partitions-add-support-for-partition-parsers.patch
 delete mode 100644 target/linux/generic/backport-4.9/065-v4.13-0008-mtd-extract-TRX-parser-out-of-bcm47xxpart-into-a-sep.patch
 delete mode 100644 target/linux/generic/backport-4.9/066-v4.17-0001-mtd-move-code-adding-master-MTD-out-of-mtd_add_devic.patch
 delete mode 100644 target/linux/generic/backport-4.9/066-v4.17-0002-mtd-get-rid-of-the-mtd_add_device_partitions.patch
 delete mode 100644 target/linux/generic/backport-4.9/067-v4.17-0001-mtd-partitions-add-of_match_table-parser-matching-fo.patch
 delete mode 100644 target/linux/generic/backport-4.9/067-v4.17-0002-mtd-rename-ofpart-parser-to-fixed-partitions-as-it-f.patch
 delete mode 100644 target/linux/generic/backport-4.9/067-v4.17-0003-mtd-ofpart-add-of_match_table-with-fixed-partitions.patch
 delete mode 100644 target/linux/generic/backport-4.9/068-v4.18-0001-mtd-move-code-adding-registering-partitions-to-the-p.patch
 delete mode 100644 target/linux/generic/backport-4.9/069-v4.18-mtd-bcm47xxpart-improve-handling-TRX-partition-size.patch
 delete mode 100644 target/linux/generic/backport-4.9/070-bcma-from-4.11.patch
 delete mode 100644 target/linux/generic/backport-4.9/071-v4.10-0001-net-bgmac-allocate-struct-bgmac-just-once-don-t-copy.patch
 delete mode 100644 target/linux/generic/backport-4.9/071-v4.10-0002-net-bgmac-drop-struct-bcma_mdio-we-don-t-need-anymor.patch
 delete mode 100644 target/linux/generic/backport-4.9/071-v4.10-0003-net-bgmac-use-PHY-subsystem-for-initializing-PHY.patch
 delete mode 100644 target/linux/generic/backport-4.9/071-v4.15-0001-net-bgmac-enable-master-mode-for-BCM54210E-and-B5021.patch
 delete mode 100644 target/linux/generic/backport-4.9/072-bcma-from-4.12.patch
 delete mode 100644 target/linux/generic/backport-4.9/075-v4.10-0001-net-phy-broadcom-Update-Auxiliary-Control-Register-m.patch
 delete mode 100644 target/linux/generic/backport-4.9/075-v4.10-0002-net-phy-broadcom-Add-support-for-BCM54612E.patch
 delete mode 100644 target/linux/generic/backport-4.9/075-v4.10-0003-net-phy-broadcom-add-bcm54xx_auxctl_read.patch
 delete mode 100644 target/linux/generic/backport-4.9/075-v4.10-0004-net-phy-broadcom-Add-BCM54810-PHY-entry.patch
 delete mode 100644 target/linux/generic/backport-4.9/075-v4.10-0005-net-phy-broadcom-Move-bcm54xx_auxctl_-read-write-to-.patch
 delete mode 100644 target/linux/generic/backport-4.9/076-v4.11-0001-net-phy-broadcom-Allow-enabling-or-disabling-of-EEE.patch
 delete mode 100644 target/linux/generic/backport-4.9/076-v4.11-0002-net-phy-broadcom-Add-support-code-for-reading-PHY-co.patch
 delete mode 100644 target/linux/generic/backport-4.9/076-v4.11-0003-net-phy-bcm7xxx-Add-entry-for-BCM7278.patch
 delete mode 100644 target/linux/generic/backport-4.9/076-v4.11-0004-net-phy-bcm7xxx-Implement-EGPHY-workaround-for-7278.patch
 delete mode 100644 target/linux/generic/backport-4.9/076-v4.11-0005-net-phy-broadcom-use-auxctl-reading-helper-in-BCM546.patch
 delete mode 100644 target/linux/generic/backport-4.9/076-v4.11-0006-net-phy-broadcom-add-support-for-BCM54210E.patch
 delete mode 100644 target/linux/generic/backport-4.9/076-v4.11-0007-net-phy-broadcom-rehook-BCM54612E-specific-init.patch
 delete mode 100644 target/linux/generic/backport-4.9/076-v4.15-0001-net-phy-broadcom-support-new-device-flag-for-setting.patch
 delete mode 100644 target/linux/generic/backport-4.9/080-0001-leds-core-add-OF-variants-of-LED-registering-functio.patch
 delete mode 100644 target/linux/generic/backport-4.9/080-0002-leds-gpio-use-OF-variant-of-LED-registering-function.patch
 delete mode 100644 target/linux/generic/backport-4.9/081-0001-thermal-bcm2835-add-thermal-driver-for-bcm2835-SoC.patch
 delete mode 100644 target/linux/generic/backport-4.9/081-0002-thermal-broadcom-add-Northstar-thermal-driver.patch
 delete mode 100644 target/linux/generic/backport-4.9/082-0001-usb-core-read-USB-ports-from-DT-in-the-usbport-LED-t.patch
 delete mode 100644 target/linux/generic/backport-4.9/085-v4.16-0001-i2c-gpio-Enable-working-over-slow-can_sleep-GPIOs.patch
 delete mode 100644 target/linux/generic/backport-4.9/087-regmap-make-LZO-cache-optional.patch
 delete mode 100644 target/linux/generic/backport-4.9/090-net-generalize-napi_complete_done.patch
 delete mode 100644 target/linux/generic/backport-4.9/094-v4.12-0001-ip6_tunnel-Fix-missing-tunnel-encapsulation-limit-op.patch
 delete mode 100644 target/linux/generic/backport-4.9/094-v4.12-0002-ipv6-Need-to-export-ipv6_push_frag_opts-for-tunnelin.patch
 delete mode 100644 target/linux/generic/backport-4.9/095-Allow-class-e-address-assignment-via-ifconfig-ioctl.patch
 delete mode 100644 target/linux/generic/backport-4.9/095-v4.13-0001-rtc-ds1307-add-ds1308-variant.patch
 delete mode 100644 target/linux/generic/backport-4.9/096-v4.20-netfilter-ipv6-Preserve-link-scope-traffic-original-.patch
 delete mode 100644 target/linux/generic/backport-4.9/101-arm-cns3xxx-use-actual-size-reads-for-PCIe.patch
 delete mode 100644 target/linux/generic/backport-4.9/400-v4.16-leds-trigger-Introduce-a-NETDEV-trigger.patch
 delete mode 100644 target/linux/generic/backport-4.9/400-v4.18-mtd-bcm47xxpart-add-of_match_table-with-a-new-DT-bin.patch
 delete mode 100644 target/linux/generic/backport-4.9/401-v4.19-mtd-parsers-trx-add-of_match_table-with-the-new-DT-b.patch
 delete mode 100644 target/linux/generic/backport-4.9/402-v4.19-mtd-partitions-use-DT-info-for-parsing-partitions-wi.patch
 delete mode 100644 target/linux/generic/config-4.9
 delete mode 100644 target/linux/generic/hack-4.9/204-module_strip.patch
 delete mode 100644 target/linux/generic/hack-4.9/207-disable-modorder.patch
 delete mode 100644 target/linux/generic/hack-4.9/210-darwin_scripts_include.patch
 delete mode 100644 target/linux/generic/hack-4.9/211-host_tools_portability.patch
 delete mode 100644 target/linux/generic/hack-4.9/212-byteshift_portability.patch
 delete mode 100644 target/linux/generic/hack-4.9/214-spidev_h_portability.patch
 delete mode 100644 target/linux/generic/hack-4.9/220-gc_sections.patch
 delete mode 100644 target/linux/generic/hack-4.9/221-module_exports.patch
 delete mode 100644 target/linux/generic/hack-4.9/230-openwrt_lzma_options.patch
 delete mode 100644 target/linux/generic/hack-4.9/250-netfilter_depends.patch
 delete mode 100644 target/linux/generic/hack-4.9/251-sound_kconfig.patch
 delete mode 100644 target/linux/generic/hack-4.9/259-regmap_dynamic.patch
 delete mode 100644 target/linux/generic/hack-4.9/260-crypto_test_dependencies.patch
 delete mode 100644 target/linux/generic/hack-4.9/280-rfkill-stubs.patch
 delete mode 100644 target/linux/generic/hack-4.9/300-MIPS-r4k_cache-use-more-efficient-cache-blast.patch
 delete mode 100644 target/linux/generic/hack-4.9/301-mips_image_cmdline_hack.patch
 delete mode 100644 target/linux/generic/hack-4.9/321-powerpc_crtsavres_prereq.patch
 delete mode 100644 target/linux/generic/hack-4.9/531-debloat_lzma.patch
 delete mode 100644 target/linux/generic/hack-4.9/640-bridge-only-accept-EAP-locally.patch
 delete mode 100644 target/linux/generic/hack-4.9/641-bridge_port_isolate.patch
 delete mode 100644 target/linux/generic/hack-4.9/651-wireless_mesh_header.patch
 delete mode 100644 target/linux/generic/hack-4.9/660-fq_codel_defaults.patch
 delete mode 100644 target/linux/generic/hack-4.9/661-use_fq_codel_by_default.patch
 delete mode 100644 target/linux/generic/hack-4.9/662-remove_pfifo_fast.patch
 delete mode 100644 target/linux/generic/hack-4.9/700-swconfig_switch_drivers.patch
 delete mode 100644 target/linux/generic/hack-4.9/702-phy_add_aneg_done_function.patch
 delete mode 100644 target/linux/generic/hack-4.9/710-phy-add-mdio_register_board_info.patch
 delete mode 100644 target/linux/generic/hack-4.9/721-phy_packets.patch
 delete mode 100644 target/linux/generic/hack-4.9/773-bgmac-add-srab-switch.patch
 delete mode 100644 target/linux/generic/hack-4.9/901-debloat_sock_diag.patch
 delete mode 100644 target/linux/generic/hack-4.9/902-debloat_proc.patch
 delete mode 100644 target/linux/generic/hack-4.9/904-debloat_dma_buf.patch
 delete mode 100644 target/linux/generic/hack-4.9/910-kobject_uevent.patch
 delete mode 100644 target/linux/generic/hack-4.9/911-kobject_add_broadcast_uevent.patch
 delete mode 100644 target/linux/generic/hack-4.9/921-always-create-console-node-in-initramfs.patch
 delete mode 100644 target/linux/generic/hack-4.9/930-crashlog.patch
 delete mode 100644 target/linux/generic/pending-4.9/0931-w1-gpio-fix-problem-with-platfom-data-in-w1-gpio.patch
 delete mode 100644 target/linux/generic/pending-4.9/100-MIPS-fix-cache-flushing-for-highmem-pages.patch
 delete mode 100644 target/linux/generic/pending-4.9/110-ehci_hcd_ignore_oc.patch
 delete mode 100644 target/linux/generic/pending-4.9/120-Fix-alloc_node_mem_map-with-ARCH_PFN_OFFSET-calcu.patch
 delete mode 100644 target/linux/generic/pending-4.9/130-add-linux-spidev-compatible-si3210.patch
 delete mode 100644 target/linux/generic/pending-4.9/131-spi-use-gpio_set_value_cansleep-for-setting-chipsele.patch
 delete mode 100644 target/linux/generic/pending-4.9/140-jffs2-use-.rename2-and-add-RENAME_WHITEOUT-support.patch
 delete mode 100644 target/linux/generic/pending-4.9/141-jffs2-add-RENAME_EXCHANGE-support.patch
 delete mode 100644 target/linux/generic/pending-4.9/150-bridge_allow_receiption_on_disabled_port.patch
 delete mode 100644 target/linux/generic/pending-4.9/161-mtd-part-add-generic-parsing-of-linux-part-probe.patch
 delete mode 100644 target/linux/generic/pending-4.9/170-MIPS-PCI-add-controllers-before-the-specified-head.patch
 delete mode 100644 target/linux/generic/pending-4.9/180-net-phy-at803x-add-support-for-AT8032.patch
 delete mode 100644 target/linux/generic/pending-4.9/190-2-5-e1000e-Fix-wrong-comment-related-to-link-detection.patch
 delete mode 100644 target/linux/generic/pending-4.9/201-extra_optimization.patch
 delete mode 100644 target/linux/generic/pending-4.9/203-kallsyms_uncompressed.patch
 delete mode 100644 target/linux/generic/pending-4.9/205-backtrace_module_info.patch
 delete mode 100644 target/linux/generic/pending-4.9/220-optimize_inlining.patch
 delete mode 100644 target/linux/generic/pending-4.9/240-remove-unsane-filenames-from-deps_initramfs-list.patch
 delete mode 100644 target/linux/generic/pending-4.9/261-enable_wilink_platform_without_drivers.patch
 delete mode 100644 target/linux/generic/pending-4.9/300-mips_expose_boot_raw.patch
 delete mode 100644 target/linux/generic/pending-4.9/302-mips_no_branch_likely.patch
 delete mode 100644 target/linux/generic/pending-4.9/304-mips_disable_fpu.patch
 delete mode 100644 target/linux/generic/pending-4.9/305-mips_module_reloc.patch
 delete mode 100644 target/linux/generic/pending-4.9/306-mips_mem_functions_performance.patch
 delete mode 100644 target/linux/generic/pending-4.9/307-mips_highmem_offset.patch
 delete mode 100644 target/linux/generic/pending-4.9/308-mips32r2_tune.patch
 delete mode 100644 target/linux/generic/pending-4.9/309-MIPS-Add-CPU-option-reporting-to-proc-cpuinfo.patch
 delete mode 100644 target/linux/generic/pending-4.9/310-arm_module_unresolved_weak_sym.patch
 delete mode 100644 target/linux/generic/pending-4.9/330-MIPS-kexec-Accept-command-line-parameters-from-users.patch
 delete mode 100644 target/linux/generic/pending-4.9/332-arc-add-OWRTDTB-section.patch
 delete mode 100644 target/linux/generic/pending-4.9/333-arc-enable-unaligned-access-in-kernel-mode.patch
 delete mode 100644 target/linux/generic/pending-4.9/340-MIPS-mm-remove-mips_dma_mapping_error.patch
 delete mode 100644 target/linux/generic/pending-4.9/341-MIPS-mm-remove-no-op-dma_map_ops-where-possible.patch
 delete mode 100644 target/linux/generic/pending-4.9/400-mtd-add-rootfs-split-support.patch
 delete mode 100644 target/linux/generic/pending-4.9/401-mtd-add-support-for-different-partition-parser-types.patch
 delete mode 100644 target/linux/generic/pending-4.9/402-mtd-use-typed-mtd-parsers-for-rootfs-and-firmware-split.patch
 delete mode 100644 target/linux/generic/pending-4.9/403-mtd-hook-mtdsplit-to-Kbuild.patch
 delete mode 100644 target/linux/generic/pending-4.9/404-mtd-add-more-helper-functions.patch
 delete mode 100644 target/linux/generic/pending-4.9/411-mtd-partial_eraseblock_write.patch
 delete mode 100644 target/linux/generic/pending-4.9/412-mtd-partial_eraseblock_unlock.patch
 delete mode 100644 target/linux/generic/pending-4.9/419-mtd-redboot-add-of_match_table-with-DT-binding.patch
 delete mode 100644 target/linux/generic/pending-4.9/420-mtd-redboot_space.patch
 delete mode 100644 target/linux/generic/pending-4.9/430-mtd-add-myloader-partition-parser.patch
 delete mode 100644 target/linux/generic/pending-4.9/431-mtd-bcm47xxpart-check-for-bad-blocks-when-calculatin.patch
 delete mode 100644 target/linux/generic/pending-4.9/432-mtd-bcm47xxpart-detect-T_Meter-partition.patch
 delete mode 100644 target/linux/generic/pending-4.9/440-block2mtd_init.patch
 delete mode 100644 target/linux/generic/pending-4.9/441-block2mtd_probe.patch
 delete mode 100644 target/linux/generic/pending-4.9/450-mtd-m25p80-allow-fallback-from-spi_flash_read-to-reg.patch
 delete mode 100644 target/linux/generic/pending-4.9/460-mtd-cfi_cmdset_0002-no-erase_suspend.patch
 delete mode 100644 target/linux/generic/pending-4.9/461-mtd-cfi_cmdset_0002-add-buffer-write-cmd-timeout.patch
 delete mode 100644 target/linux/generic/pending-4.9/465-m25p80-mx-disable-software-protection.patch
 delete mode 100644 target/linux/generic/pending-4.9/466-Revert-mtd-spi-nor-fix-Spansion-regressions-aliased-.patch
 delete mode 100644 target/linux/generic/pending-4.9/470-mtd-spi-nor-support-limiting-4K-sectors-support-base.patch
 delete mode 100644 target/linux/generic/pending-4.9/475-mtd-spi-nor-Add-Winbond-w25q128jv-support.patch
 delete mode 100644 target/linux/generic/pending-4.9/476-mtd-spi-nor-add-eon-en25q128.patch
 delete mode 100644 target/linux/generic/pending-4.9/477-mtd-add-spi-nor-add-mx25u3235f.patch
 delete mode 100644 target/linux/generic/pending-4.9/478-mtd-spi-nor-Add-support-for-XM25QH64A-and-XM25QH128A.patch
 delete mode 100644 target/linux/generic/pending-4.9/479-mtd-spi-nor-add-eon-en25qh32.patch
 delete mode 100644 target/linux/generic/pending-4.9/480-mtd-set-rootfs-to-be-root-dev.patch
 delete mode 100644 target/linux/generic/pending-4.9/490-ubi-auto-attach-mtd-device-named-ubi-or-data-on-boot.patch
 delete mode 100644 target/linux/generic/pending-4.9/491-ubi-auto-create-ubiblock-device-for-rootfs.patch
 delete mode 100644 target/linux/generic/pending-4.9/492-try-auto-mounting-ubi0-rootfs-in-init-do_mounts.c.patch
 delete mode 100644 target/linux/generic/pending-4.9/493-ubi-set-ROOT_DEV-to-ubiblock-rootfs-if-unset.patch
 delete mode 100644 target/linux/generic/pending-4.9/494-mtd-ubi-add-EOF-marker-support.patch
 delete mode 100644 target/linux/generic/pending-4.9/530-jffs2_make_lzma_available.patch
 delete mode 100644 target/linux/generic/pending-4.9/532-jffs2_eofdetect.patch
 delete mode 100644 target/linux/generic/pending-4.9/551-ubifs-fix-default-compression-selection.patch
 delete mode 100644 target/linux/generic/pending-4.9/600-netfilter_conntrack_flush.patch
 delete mode 100644 target/linux/generic/pending-4.9/610-netfilter_match_bypass_default_checks.patch
 delete mode 100644 target/linux/generic/pending-4.9/611-netfilter_match_bypass_default_table.patch
 delete mode 100644 target/linux/generic/pending-4.9/612-netfilter_match_reduce_memory_access.patch
 delete mode 100644 target/linux/generic/pending-4.9/613-netfilter_optional_tcp_window_check.patch
 delete mode 100644 target/linux/generic/pending-4.9/616-net_optimize_xfrm_calls.patch
 delete mode 100644 target/linux/generic/pending-4.9/620-net_sched-codel-do-not-defer-queue-length-update.patch
 delete mode 100644 target/linux/generic/pending-4.9/630-packet_socket_type.patch
 delete mode 100644 target/linux/generic/pending-4.9/655-increase_skb_pad.patch
 delete mode 100644 target/linux/generic/pending-4.9/666-Add-support-for-MAP-E-FMRs-mesh-mode.patch
 delete mode 100644 target/linux/generic/pending-4.9/670-ipv6-allow-rejecting-with-source-address-failed-policy.patch
 delete mode 100644 target/linux/generic/pending-4.9/671-net-provide-defines-for-_POLICY_FAILED-until-all-cod.patch
 delete mode 100644 target/linux/generic/pending-4.9/680-NET-skip-GRO-for-foreign-MAC-addresses.patch
 delete mode 100644 target/linux/generic/pending-4.9/681-NET-add-of_get_mac_address_mtd.patch
 delete mode 100644 target/linux/generic/pending-4.9/701-phy_extension.patch
 delete mode 100644 target/linux/generic/pending-4.9/703-phy-add-detach-callback-to-struct-phy_driver.patch
 delete mode 100644 target/linux/generic/pending-4.9/734-net-phy-at803x-allow-to-configure-via-pdata.patch
 delete mode 100644 target/linux/generic/pending-4.9/735-net-phy-at803x-fix-at8033-sgmii-mode.patch
 delete mode 100644 target/linux/generic/pending-4.9/810-pci_disable_common_quirks.patch
 delete mode 100644 target/linux/generic/pending-4.9/811-pci_disable_usb_common_quirks.patch
 delete mode 100644 target/linux/generic/pending-4.9/821-usb-Remove-annoying-warning-about-bogus-URB.patch
 delete mode 100644 target/linux/generic/pending-4.9/834-ledtrig-libata.patch
 delete mode 100644 target/linux/generic/pending-4.9/890-uart_optional_sysrq.patch
 delete mode 100644 target/linux/generic/pending-4.9/920-mangle_bootargs.patch
 delete mode 100644 target/linux/ixp4xx/Makefile
 delete mode 100644 target/linux/ixp4xx/base-files/lib/ixp4xx.sh
 delete mode 100644 target/linux/ixp4xx/base-files/lib/preinit/01_sysinfo
 delete mode 100644 target/linux/ixp4xx/base-files/lib/preinit/05_set_ether_mac_ixp4xx
 delete mode 100644 target/linux/ixp4xx/base-files/lib/upgrade/platform.sh
 delete mode 100644 target/linux/ixp4xx/config-4.9
 delete mode 100644 target/linux/ixp4xx/generic/profiles/100-Default.mk
 delete mode 100644 target/linux/ixp4xx/generic/profiles/105-Atheros-ath5k.mk
 delete mode 100644 target/linux/ixp4xx/generic/profiles/200-NSLU2.mk
 delete mode 100644 target/linux/ixp4xx/generic/profiles/300-NAS100d.mk
 delete mode 100644 target/linux/ixp4xx/generic/profiles/400-DSMG600RevA.mk
 delete mode 100644 target/linux/ixp4xx/generic/profiles/500-USR8200.mk
 delete mode 100644 target/linux/ixp4xx/generic/target.mk
 delete mode 100644 target/linux/ixp4xx/harddisk/config-default
 delete mode 100644 target/linux/ixp4xx/harddisk/profiles/100-FSG3.mk
 delete mode 100644 target/linux/ixp4xx/harddisk/target.mk
 delete mode 100644 target/linux/ixp4xx/image/Makefile
 delete mode 100644 target/linux/ixp4xx/modules.mk
 delete mode 100644 target/linux/ixp4xx/patches-4.9/001-arm-ixp4xx-set-cohorent_dma_mask-for-ethernet-platfo.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/002-ixp4xx_eth-use-parent-device-for-dma-allocations.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/020-gateworks_i2c_pld.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/030-gpio_line_config.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/040-arm_mach_types.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/090-increase_entropy_pools.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/100-wg302v2_gateway7001_mac_plat_info.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/105-wg302v1_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/110-pronghorn_series_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/111-pronghorn_swap_uarts.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/115-sidewinder_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/116-sidewinder_fis_location.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/120-compex_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/130-wrt300nv2_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/131-wrt300nv2_mac_plat_info.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/132-wrt300nv2_mac_fix.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/150-lanready_ap1000_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/151-lanready_ap1000_mac_plat_info.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/160-delayed_uart_io.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/162-wg302v1_mem_fixup.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/170-ixdpg425_mac_plat_info.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/175-avila_hss_audio_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/180-tw5334_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/185-mi424wr_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/190-cambria_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/201-npe_driver_print_license_location.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/205-npe_driver_separate_phy_functions.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/206-npe_driver_add_update_link_function.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/207-npe_driver_multiphy_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/295-latch_led_driver.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/300-avila_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/304-ixp4xx_eth_jumboframe.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/310-gtwx5717_spi_bus.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/311-gtwx5717_mac_plat_info.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/312-ixp4xx_pata_optimization.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/500-usr8200_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/520-tw2662_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/530-ap42x_support.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/600-skb_avoid_dmabounce.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/900-ixp4xx-crypto-include-module.h.patch
 delete mode 100644 target/linux/ixp4xx/patches-4.9/910-ixp4xx-nr_irq_lines.patch
 delete mode 100644 target/linux/orion/Makefile
 delete mode 100755 target/linux/orion/base-files/etc/board.d/02_network
 delete mode 100644 target/linux/orion/base-files/etc/hotplug.d/usb/10-usb
 delete mode 100644 target/linux/orion/base-files/lib/preinit/01_sysinfo
 delete mode 100644 target/linux/orion/config-4.9
 delete mode 100644 target/linux/orion/generic/base-files/etc/uci-defaults/09_hardware
 delete mode 100644 target/linux/orion/generic/base-files/lib/upgrade/platform.sh
 delete mode 100644 target/linux/orion/generic/target.mk
 delete mode 100644 target/linux/orion/harddisk/config-default
 delete mode 100644 target/linux/orion/harddisk/target.mk
 delete mode 100644 target/linux/orion/image/Makefile
 delete mode 100644 target/linux/orion/image/generic.mk
 delete mode 100644 target/linux/orion/image/harddisk.mk
 delete mode 100644 target/linux/orion/patches-4.9/000-arm_openwrt_machtypes.patch
 delete mode 100644 target/linux/orion/patches-4.9/100-wrt350nv2_openwrt_partition_map.patch
 delete mode 100644 target/linux/orion/patches-4.9/101-wnr854t_partition_map.patch
 delete mode 100644 target/linux/orion/patches-4.9/200-dt2_board_support.patch
 delete mode 100644 target/linux/orion/patches-4.9/210-wn802t_support.patch

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
