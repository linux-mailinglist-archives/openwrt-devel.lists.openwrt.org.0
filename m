Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFF9156D07
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 00:13:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nYUomZrP94kwdmxfM4/66K+trS827ak5RfdLrjFOc5Q=; b=rqYETDW7/zgof8ZTR8p+VP37q
	NKro53VHODcvHH6lzhqd3BA+x8ki5NJPf+1r+pDQack9vmbdzklOgOeufZ9GLw4b9292UcKuxAmc2
	PHQjG3i+S26nfYwY1VPzFRGBiMtEV/liPMl6WtmY1ioyZAaj0NIhiIBZ9ySREbkIhZzsVlAlkavb9
	yYyt+GhvpomUkGAsGB/wQvpxKO/FH2s0/gcSpwOgT+dPrlNwB6Of5VUaSX/nh4bwdrq4ui4K5FKi+
	3FAEKYJpDo2oRFo8OlePYJ5ImA9yoouY8kNEcwq2rEEMOIW+BmUgrG5Nr8JoVmi9kEFcpVbNnpWfl
	Szhq0vRmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0vlW-0007j7-Ni; Sun, 09 Feb 2020 23:13:26 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0vlE-0007in-8c
 for openwrt-devel@lists.openwrt.org; Sun, 09 Feb 2020 23:13:13 +0000
Received: from desktop ([188.195.207.249]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mbzdn-1je83h2GUR-00dab5 for <openwrt-devel@lists.openwrt.org>; Mon, 10 Feb
 2020 00:12:58 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20200209191715.9915-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20200209191715.9915-1-freifunk@adrianschmutzler.de>
Date: Mon, 10 Feb 2020 00:12:57 +0100
Message-ID: <014401d5df9e$77cd7cc0$67687640$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJyiTOre+vtN1FjzSozp9te3k2XyqbaKNHQ
X-Provags-ID: V03:K1:5dWMF89uShuegD8cXpOuAoygqbMPJPrqqpxLteHcWn/Tx8vPXGe
 ZNlwveYKfid7KxO+sB2VlSEjxaCBHXyv3XySrZDV/bvf541GTZVL45vmuXADtZcct7+7tDO
 ZMtb+vT3jDwsRn80TLjL1Bdb7cM6oLW2pmF1HDcatE2BnZ3CQ8FOnIJMovHwxfiP3WiTjAR
 XZYLWvZgnU0HPHtuH2yYw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jY7EkO1vqVI=:HTV2UmD3G7lgjOkE8W+qc+
 HM0aqqov+CChNxIpt5IvqEL1Ehvir6OOR+XTyfJFzw/xe4HD7F+xTljJtHveV7HD8tNf3ENzY
 oKxXO7PY1N1EoHQceViBPwYe5P605jQFW+nT33H62uM5yUcgB7AQOl/DcqLLWgCLPW/epuHpZ
 aLQ+HBdBtjvMMWekNq2C7qu1fBa15oZBuM9D9N+gsIpWY7yeM3U69207ksX7Bsxk8u3eDiPme
 Gv/B6SN0z5hYRAlS84Yke6ws1+tCzcIF1JxN9taXDhO/MrdIzDbjYNkursccUXvGNC3y79upY
 SKMNhOB7rOP/72PTVEtKiGag9c0UdvoxQsNzjQWLue5h48xDifpOTM89hVg0P1XCpT6guWauL
 Hmt+A67rk5o2lU6/ZZ6T5vWsfE4u5utOWjF7ocxFVXljMXWGuNs5yY5MbXoIc5NcO19DmLBeN
 MVPj5XK+NbwzBxnQqhrc9vje3ew88eyXKaQ1AvmRNAPdLJelSnkEfre+IeHDh+txDRcxOeQeS
 GuIHCaZzJpUQ/D7pLksks5oVpgZy/l0AgLRkhm3YC8l58hj146EYWK64kp3FbX9NLbs98dBsh
 fcKAv79OcCMNHI6nB1djvDacWtwiuHn8+GnqpZSk6VY8w5M0sCwAmA6a4e8CSAcshnLUUBEru
 Qq9eCJSblqFq7+dOwe0h5klHEzzjdMdp1sj1bgskusW3fZITJnliknguZkHUdYMp0QmqFU2qQ
 RT+EUSIm7iygvn8YuJhG3bh6i2w/wlp8Imu5eBOpjZygu3rZHEiQyQ4dYq5pIqob2eo+NBcJa
 IeSNHBy0Ut22ctm/3mZlJ3QYtXnzjuDOEg+RzQBGkP8TyKgcUv21bI7t48T6HgGsyBHRle8
X-Spam-Note: CRM114 run bypassed due to message size (454625 bytes)
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] brcm2708: rename target to bcm27xx
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
Content-Type: multipart/mixed; boundary="===============6079105793958246610=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6079105793958246610==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=SITc13+3Oy7yGM=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=SITc13+3Oy7yGM=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Adrian Schmutzler
> Sent: Sonntag, 9. Februar 2020 20:17
> To: openwrt-devel@lists.openwrt.org
> Cc: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH] brcm2708: rename target to bcm27xx
>=20
> This change makes the names of Broadcom targets consistent by using
> the common notation based on SoC/CPU ID (which is used internally
> anyway), bcmXXXX instead of brcmXXXX.
> This is even used for target TITLE in make menuconfig already,
> only the short target name used brcm so far.
>=20
> Despite, since subtargets range from bcm2708 to bcm2711, it seems
> appropriate to use bcm27xx instead of bcm2708 (again, as already done
> for BOARDNAME).
>=20
> This also renames the packages brcm2708-userland and brcm2708-gpu-fw.
>=20
> Cc: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
>=20
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

This has two references in openwrt-packages that will need to be updated in=
 case this is merged (just as a reminder, I will take care myself):

adsc@buildfff:/data/openwrt-packages$ grep -rni "brcm" .
./utils/collectd/Makefile:371:$(eval $(call BuildPlugin,cpufreq,CPU Freq in=
put,cpufreq,@(TARGET_x86||TARGET_x86_64||TARGET_mvebu||TARGET_ipq806x||TARG=
ET_armvirt||TARGET_ipq40xx||TARGET_brcm2708_bcm2709))) # Only enable on tar=
gets with CPUs supporting frequency scaling
[...]
./net/lcdringer/Makefile:34:  DEPENDS:=3D+libgee +libgstreamer1 +loudmouth =
@TARGET_brcm2708

There are no references for brcm47xx or brcm63xx in packages, and no refere=
nces to any of the targets in luci.

Best

Adrian

> ---
>  config/Config-images.in                        |  2 +-
>  config/Config-kernel.in                        |  2 +-
>  package/firmware/cypress-nvram/Makefile        |  8 ++++----
>  .../Makefile                                   | 18 +++++++++---------
>  package/kernel/linux/modules/netdevices.mk     |  4 ++--
>  package/kernel/mac80211/broadcom.mk            |  2 +-
>  .../Makefile                                   | 14 +++++++-------
>  .../001-interface-vcms_host-cmake-fixes.patch  |  0
>  target/linux/{brcm2708 =3D> bcm27xx}/Makefile    |  4 ++--
>  .../base-files/etc/board.d/02_network          |  0
>  .../base-files/etc/diag.sh                     |  0
>  .../base-files/etc/inittab                     |  0
>  .../lib/preinit/05_set_preinit_iface_brcm2708  |  0
>  .../base-files/lib/preinit/79_move_config      |  0
>  .../base-files/lib/upgrade/keep.d/platform     |  0
>  .../base-files/lib/upgrade/platform.sh         |  0
>  .../{brcm2708 =3D> bcm27xx}/bcm2708/config-4.19  |  0
>  .../{brcm2708 =3D> bcm27xx}/bcm2708/target.mk    |  0
>  .../{brcm2708 =3D> bcm27xx}/bcm2709/config-4.19  |  0
>  .../{brcm2708 =3D> bcm27xx}/bcm2709/target.mk    |  0
>  .../{brcm2708 =3D> bcm27xx}/bcm2710/config-4.19  |  0
>  .../{brcm2708 =3D> bcm27xx}/bcm2710/target.mk    |  0
>  .../{brcm2708 =3D> bcm27xx}/bcm2711/config-4.19  |  0
>  .../{brcm2708 =3D> bcm27xx}/bcm2711/target.mk    |  0
>  .../linux/{brcm2708 =3D> bcm27xx}/image/Makefile |  0
>  .../{brcm2708 =3D> bcm27xx}/image/cmdline.txt    |  0
>  .../{brcm2708 =3D> bcm27xx}/image/config.txt     |  0
>  .../image/distroconfig.txt                     |  0
>  .../image/gen_rpi_sdcard_img.sh                |  0
>  target/linux/{brcm2708 =3D> bcm27xx}/modules.mk  |  2 +-
>  .../{brcm2708 =3D> bcm27xx}/modules/hwmon.mk     |  4 ++--
>  .../linux/{brcm2708 =3D> bcm27xx}/modules/i2c.mk |  2 +-
>  .../{brcm2708 =3D> bcm27xx}/modules/other.mk     |  8 ++++----
>  .../{brcm2708 =3D> bcm27xx}/modules/sound.mk     |  4 ++--
>  .../linux/{brcm2708 =3D> bcm27xx}/modules/spi.mk |  4 ++--
>  .../{brcm2708 =3D> bcm27xx}/modules/video.mk     |  8 ++++----
>  ...evert-702b94bff3c50542a6e4ab9a4f4cef0.patch |  0
>  ...-smsx95xx-fix-crimes-against-truesize.patch |  0
>  ...mental-Enable-turbo_mode-and-packetsi.patch |  0
>  ...low-mac-address-to-be-set-in-smsc95xx.patch |  0
>  ...se_resource-against-resources-without.patch |  0
>  ...vent-spurious-interrupts-and-trap-the.patch |  0
>  ...bcm2836-Avoid-Invalid-trigger-warning.patch |  0
>  ...-0008-irqchip-bcm2835-Add-FIQ-support.patch |  0
>  ...chip-irq-bcm2835-Add-2836-FIQ-support.patch |  0
>  ...35-Support-pin-groups-other-than-7-11.patch |  0
>  ...pi-bcm2835-Disable-forced-software-CS.patch |  0
>  ...0-0012-spi-bcm2835-Remove-unused-code.patch |  0
>  ...35-Load-driver-early-and-support-lega.patch |  0
>  ...-0014-firmware-Updated-mailbox-header.patch |  0
>  ...-rtc-Add-SPI-alias-for-pcf2123-driver.patch |  0
>  ...2835-Support-setting-reboot-partition.patch |  0
>  ...r-off-rather-than-busy-spinning-when-.patch |  0
>  ...m-Make-RASPBERRYPI_POWER-depend-on-PM.patch |  0
>  ...ocks-early-during-the-boot-process-so.patch |  0
>  ...Avoid-initialising-if-already-enabled.patch |  0
>  ...e-dtco-targets-when-filtering-symbols.patch |  0
>  ...-Mark-used-PLLs-and-dividers-CRITICAL.patch |  0
>  ...clk-bcm2835-Add-claim-clocks-property.patch |  0
>  ...835-Read-max-core-clock-from-firmware.patch |  0
>  ...k-GPIO-clocks-enabled-at-boot-as-crit.patch |  0
>  ...-Demote-deferral-errors-to-INFO-level.patch |  0
>  .../950-0027-Update-vfpmodule.c.patch          |  0
>  ...50-0028-i2c-bcm2835-Add-debug-support.patch |  0
>  ...0-0029-mm-Remove-the-PFN-busy-warning.patch |  0
>  ...30-ASoC-Add-prompt-for-ICS43432-codec.patch |  0
>  ...-bcm2836-Remove-regmap-and-syscon-use.patch |  0
>  ...78xx-Enable-LEDs-and-auto-negotiation.patch |  0
>  ...11-Don-t-use-DT-aliases-for-numbering.patch |  0
>  ...-0034-amba_pl011-Round-input-clock-up.patch |  0
>  ...1-Insert-mb-for-correct-FIFO-handling.patch |  0
>  ...-Add-cts-event-workaround-DT-property.patch |  0
>  ...-Set-base-to-0-give-expected-gpio-num.patch |  0
>  ...-0038-Main-bcm2708-bcm2709-linux-port.patch |  0
>  .../950-0039-Add-dwc_otg-driver.patch          |  0
>  .../950-0040-bcm2708-framebuffer-driver.patch  |  0
>  ...onsole-framebuffer-imageblit-function.patch |  0
>  ...042-dmaengine-Add-support-for-BCM2708.patch |  0
>  ...0043-MMC-added-alternative-MMC-driver.patch |  0
>  ...sdhost-driver-and-an-overlay-to-enabl.patch |  0
>  ...em-driver-for-querying-firmware-memor.patch |  0
>  ...ore-shared-memory-service-for-BCM2835.patch |  0
>  ...-device-for-rootless-user-GPIO-access.patch |  0
>  .../patches-4.19/950-0048-Add-SMI-driver.patch |  0
>  ...i-use-clock-manager-and-fix-reload-is.patch |  0
>  .../950-0050-Add-SMI-NAND-driver.patch         |  0
>  .../950-0051-Add-cpufreq-driver.patch          |  0
>  .../950-0052-Add-Chris-Boot-s-i2c-driver.patch |  0
>  ...50-0053-char-broadcom-Add-vcio-module.patch |  0
>  ...firmware-bcm2835-Support-ARCH_BCM270x.patch |  0
>  ...nlimg-and-knlinfo-scripts-from-tools-.patch |  0
>  ...-BCM2708-Add-core-Device-Tree-support.patch |  0
>  ...pwr_led-and-the-required-input-trigge.patch |  0
>  ...950-0058-fbdev-add-FBIOCOPYAREA-ioctl.patch |  0
>  ...Added-Device-IDs-for-August-DVB-T-205.patch |  0
>  ...touchscreen-driver-for-pi-LCD-display.patch |  0
>  ...to_user-and-__copy_from_user-performa.patch |  0
>  ...roff-Allow-it-to-work-on-Raspberry-Pi.patch |  0
>  ...dd-Raspberry-Pi-Sense-HAT-core-driver.patch |  0
>  ...512x-implement-set_tdm_slot-interface.patch |  0
>  ...950-0065-ASoC-Add-support-for-Rpi-DAC.patch |  0
>  ...O-Sound-Card-support-for-Raspberry-Pi.patch |  0
>  ...-0067-Added-support-for-HiFiBerry-DAC.patch |  0
>  ...r-HiFiBerry-Amp-amplifier-add-on-boar.patch |  0
>  .../950-0069-Add-driver-for-rpi-proto.patch    |  0
>  ...Add-Support-for-JustBoom-Audio-boards.patch |  0
>  ...or.net-Pi-soundcard-with-low-jitter-a.patch |  0
>  ...RRA-DigiDAC1-soundcard-using-WM8741-W.patch |  0
>  ...pport-for-Dion-Audio-LOCO-DAC-AMP-HAT.patch |  0
>  ...boards-Initial-2-channel-stereo-suppo.patch |  0
>  ...-Allo-Piano-DAC-2.1-plus-add-on-board.patch |  0
>  ...-Allo-Boss-DAC-add-on-board-for-Raspb.patch |  0
>  ...Support-for-Blokas-Labs-pisound-board.patch |  0
>  ...dd-driver-for-Cirrus-Logic-Audio-Card.patch |  0
>  ...rt-for-Dion-Audio-LOCO-V2-DAC-AMP-HAT.patch |  0
>  ...port-for-Fe-Pi-audio-sound-card.-1867.patch |  0
>  ...-the-AudioInjector.net-Octo-sound-car.patch |  0
>  ...support-for-Google-voiceHAT-soundcard.patch |  0
>  ...river-and-overlay-for-Allo-Katana-DAC.patch |  0
>  ...eric-RPI-driver-for-simple-soundcards.patch |  0
>  ...config-and-Makefile-for-sound-soc-bcm.patch |  0
>  ...Create-a-generic-Pi-Hat-WM8804-driver.patch |  0
>  ...play-add-backlight-driver-and-overlay.patch |  0
>  ...-bcm2835-virtgpio-Virtual-GPIO-driver.patch |  0
>  ...0089-OF-DT-Overlay-configfs-interface.patch |  0
>  ...ci_h5-Don-t-send-conf_req-when-ACTIVE.patch |  0
>  ...guration-and-device-tree-differences..patch |  0
>  ...-DWC_OTG-Port-dwc_otg-driver-to-ARM64.patch |  0
>  ...ound-Robin-dispatch-IRQs-between-CPUs.patch |  0
>  ...dware-emulation-of-deprecated-instruc.patch |  0
>  ...-rules-for-.dtbo-files-for-dts-overla.patch |  0
>  ...096-cache-export-clean-and-invalidate.patch |  0
>  ...7-AXI-performance-monitor-driver-2222.patch |  0
>  ...p2515-Use-DT-supplied-interrupt-flags.patch |  0
>  ...p-of-the-ft5406-driver-to-use-DT-2189.patch |  0
>  ...cm2835-Set-Serial-number-and-Revision.patch |  0
>  ...-FIQs-to-avoid-__irq_startup-warnings.patch |  0
>  ...8250-bcm2835aux-suppress-EPROBE_DEFER.patch |  0
>  ...mware-Export-the-general-transaction-.patch |  0
>  ...ode-for-using-the-closed-firmware-for.patch |  0
>  ...the-primary-and-cursor-planes-in-fkms.patch |  0
>  ..._DEBUG_ATOMIC-for-the-insides-of-fkms.patch |  0
>  ...ding-of-page-flip-completion-events-i.patch |  0
>  ...pport-for-setting-DPMS-in-firmwarekms.patch |  0
>  ...dd-FB-modifier-support-to-firmwarekms.patch |  0
>  ...sing-enable-disable-vblank-handlers-i.patch |  0
>  ...firmware-overscan-offset-to-hardware-.patch |  0
>  ...ning-about-vblank-interrupts-before-D.patch |  0
>  ...T_CURSOR_INFO-when-the-cursor-content.patch |  0
>  ...duplicate-primary-cursor-fields-from-.patch |  0
>  .../950-0115-vc4_firmware_kms-fix-build.patch  |  0
>  .../950-0116-hack-cache-Fix-linker-error.patch |  0
>  ...lso-set-bus-numbers-from-reg-property.patch |  0
>  ...nd-bcm-Fix-memset-dereference-warning.patch |  0
>  ...lear-option-to-pps-gpio-via-dtoverlay.patch |  0
>  ...n78xx-Read-initial-EEE-status-from-DT.patch |  0
>  ...efault-mouse-polling-interval-to-60Hz.patch |  0
>  ...n-t-prevent-IRQ-usage-of-output-GPIOs.patch |  0
>  ...-to-export-gpio-used-by-gpio-poweroff.patch |  0
>  ...spberrypi-Notify-firmware-of-a-reboot.patch |  0
>  ...-bcm2835-Calc.-FIQ_START-at-boot-time.patch |  0
>  ...gfs-Use-of_overlay_fdt_apply-API-call.patch |  0
>  ...-Disable-TCP-Segmentation-Offload-TSO.patch |  0
>  ...ve-enabling-of-EEE-into-PHY-init-code.patch |  0
>  ...c04_services-Derive-g_cache_line_size.patch |  0
>  .../950-0130-Add-rpi-poe-fan-driver.patch      |  0
>  ..._SPI_DRV-should-select-DVB_CXD2880-wi.patch |  0
>  ...Implement-a-DMA-pool-for-small-bulk-t.patch |  0
>  ...T-Use-upstreamed-GPIO-expander-driver.patch |  0
>  ...-0134-overlays-Fix-a-few-dtc-warnings.patch |  0
>  ...able-txp-interrupt-unless-using-vc4-k.patch |  0
>  ...pi-Prevent-voltage-low-warnings-from-.patch |  0
>  ...rrypi-Add-backward-compatible-get_thr.patch |  0
>  ...6is7xx-Don-t-spin-if-no-data-received.patch |  0
>  ...9-Add-device-tree-overlay-for-HD44780.patch |  0
>  ...ys-Add-addr-parameter-to-i2c-rtc-gpio.patch |  0
>  ...-the-18-bit-DPI-pinmux-to-the-RPI-DTs.patch |  0
>  ...-overlay-for-the-Adafruit-Kippah-with.patch |  0
>  ...-stale-notes-about-vc4-s-CMA-alignmen.patch |  0
>  ...ke-GPIO-CSs-honour-the-SPI_NO_CS-flag.patch |  0
>  ...RPi-CM3-dts-to-arm64-mimic-the-RPi-3B.patch |  0
>  ...-audioinjector.net-ultra-soundcard.-2.patch |  0
>  ...SoC-cs4265-Add-a-S-PDIF-enable-switch.patch |  0
>  ...cs4265-Add-native-32bit-I2S-transport.patch |  0
>  ...-0149-BCM270X_DT-Add-gpio-fan-overlay.patch |  0
>  ...f-driver-for-BigBen-Interactive-PS3OF.patch |  0
>  ...ASoC-cs4265-Add-a-MIC-pre.-route-2696.patch |  0
>  ...0152-Update-gpio-fan-overlay.dts-2711.patch |  0
>  ...-step_wise-add-support-for-hysteresis.patch |  0
>  ...-step_wise-avoid-throttling-at-hyster.patch |  0
>  ...djust-rpi-poe-fan-overlay-trip-points.patch |  0
>  ...add-overrides-for-PoE-HAT-fan-control.patch |  0
>  ...verlays-Add-gpio-no-bank0-irq-overlay.patch |  0
>  ...b-2017-model-device-tree-overlay-2721.patch |  0
>  ...-sdhost-Recover-from-MMC_SEND_EXT_CSD.patch |  0
>  ...pi3-disable-bt-Clear-out-bt_pins-node.patch |  0
>  ...523-properly-handle-oscillator-stop-b.patch |  0
>  ...art0-return-GPIOs-14-and-15-to-inputs.patch |  0
>  ...-bcm2835-sdhost-Fix-warnings-on-arm64.patch |  0
>  ...-0164-Fix-warning-in-bcm2835-smi-nand.patch |  0
>  ...-ov5647-Add-set_fmt-and-get_fmt-calls.patch |  0
>  ...tion-DT-add-device-tree-for-PWDN-cont.patch |  0
>  ...edia-ov5647-Add-support-for-PWDN-GPIO.patch |  0
>  ...d-support-for-non-continuous-clock-mo.patch |  0
>  ...a-tc358743-Increase-FIFO-level-to-374.patch |  0
>  ...fix-connected-active-CSI-2-lane-repor.patch |  0
>  ...3-Add-support-for-972Mbit-s-link-freq.patch |  0
>  ...8743-Check-I2C-succeeded-during-probe.patch |  0
>  ...7180-Default-to-the-first-valid-input.patch |  0
>  ...dv7180-Add-YPrPb-support-for-ADV7282M.patch |  0
>  ...-Add-helper-defines-for-printing-FOUR.patch |  0
>  ...s-Document-BCM283x-CSI2-CCP2-receiver.patch |  0
>  ...nicam-Driver-for-CCP2-CSI2-camera-int.patch |  0
>  ...0-Nasty-hack-to-allow-input-selection.patch |  0
>  ...x-DT-Add-CSI-nodes-to-the-device-tree.patch |  0
>  ...CSI-defines-for-all-the-downstream-Pi.patch |  0
>  ...verlays-for-ADV7282M-OV5647-and-TC358.patch |  0
>  ...support-for-ADV7280-M-ADV7281-M-and-A.patch |  0
>  ...L-dereference-in-the-import_dmabuf-er.patch |  0
>  .../950-0184-Update-README-2750.patch          |  0
>  ...Remove-superfluous-address-size-cells.patch |  0
>  ...-soundcard-drop-PWRDN-register-writes.patch |  0
>  ...dcard-configure-wm8804-clocks-only-on.patch |  0
>  ...i2c-on-0-1-option-to-TC358743-ADV7282.patch |  0
>  ...0189-overlays-Update-upstream-overlay.patch |  0
>  ...M2708_DT-update-firmware-node-binding.patch |  0
>  ...BCM2710_DT-fix-gpio-expander-bindings.patch |  0
>  ...cm283x-The-lan7515-PHY-node-has-moved.patch |  0
>  ...8xx-Support-auto-downshift-to-100Mb-s.patch |  0
>  ...gs-Document-microchip-downshift-after.patch |  0
>  ...bcm283x-Set-downshift-after-for-Pi-3B.patch |  0
>  ...70X_DT-Add-new-Ethernet-DT-parameters.patch |  0
>  ...ark-eth_downshift_after-as-an-integer.patch |  0
>  ...IQ-Fix-bad-mode-in-data-abort-handler.patch |  0
>  ...-lirc-rpi-Remove-in-favour-of-gpio-ir.patch |  0
>  ...nicam-Pass-through-the-colorspace-on-.patch |  0
>  ...Return-an-appropriate-colorspace-from.patch |  0
>  ...35-camera-Move-module-info-to-the-end.patch |  0
>  ...rm-Fix-platform-device-unregistration.patch |  0
>  ...iq_arm-Fix-camera-device-registration.patch |  0
>  ...-camera-Provide-more-specific-probe-e.patch |  0
>  ...-camera-Add-hint-about-possible-fault.patch |  0
>  ...rm-Improve-error-handling-on-loading-.patch |  0
>  ...-camera-Do-not-bulk-receive-from-serv.patch |  0
>  ...-camera-Ensure-H264-header-bytes-get-.patch |  0
>  ...-camera-Correctly-denote-key-frames-i.patch |  0
>  ...bcm2835-camera-Return-early-on-errors.patch |  0
>  ...35-camera-Remove-dead-email-addresses.patch |  0
>  ...5-camera-Fix-comment-style-violations.patch |  0
>  ...5-camera-Fix-spacing-around-operators.patch |  0
>  ...35-camera-Reduce-length-of-enum-names.patch |  0
>  ...-camera-Fix-multiple-line-dereference.patch |  0
>  ...bcm2835-camera-Fix-brace-style-issues.patch |  0
>  ...-camera-Fix-missing-lines-between-ite.patch |  0
>  ...-camera-Fix-logical-continuation-spli.patch |  0
>  ...-camera-Fix-open-parenthesis-alignmen.patch |  0
>  ...-camera-Set-sequence-number-correctly.patch |  0
>  ...-camera-Ensure-timestamps-never-go-ba.patch |  0
>  ...-camera-Avoid-unneeded-internal-decla.patch |  0
>  ...-camera-Add-multiple-inclusion-protec.patch |  0
>  ...-camera-Unify-header-inclusion-define.patch |  0
>  ...-camera-Fix-alignment-should-match-op.patch |  0
>  ...-camera-Fix-multiple-assignments-shou.patch |  0
>  ...-camera-Fix-up-all-formatting-in-mmal.patch |  0
>  ...-camera-Use-enums-for-max-value-in-co.patch |  0
>  ...-camera-Correct-V4L2_CID_COLORFX_CBCR.patch |  0
>  ...-camera-Remove-amend-some-obsolete-co.patch |  0
>  ...rvices-Split-vchiq-mmal-into-a-module.patch |  0
>  ...hiq-Allocate-and-free-components-as-r.patch |  0
>  ...vchiq-Avoid-use-of-bool-in-structures.patch |  0
>  ...chiq-Make-timeout-a-defined-parameter.patch |  0
>  ...hiq-Make-a-mmal_buf-struct-for-passin.patch |  0
>  ...vchiq-Add-support-for-event-callbacks.patch |  0
>  ...rvices-Support-sending-data-to-MMAL-p.patch |  0
>  ...rvices-Fixup-vchiq-mmal-include-order.patch |  0
>  ...c04_services-Add-new-vc-sm-cma-driver.patch |  0
>  ...-cma-Fixup-driver-for-older-VCHI-APIs.patch |  0
>  ...rvices-Use-vc-sm-cma-to-support-zero-.patch |  0
>  ...f2-Allow-exporting-of-a-struct-dmabuf.patch |  0
>  ..._services-Add-a-V4L2-M2M-codec-driver.patch |  0
>  ...rm-Register-bcm2835-codec-as-a-platfo.patch |  0
>  ...rm-Register-vcsm-cma-as-a-platform-dr.patch |  0
>  ...-camera-Fix-stride-on-RGB3-BGR3-forma.patch |  0
>  ...tpm-Make-SECURITYFS-a-weak-dependency.patch |  0
>  ...lay-for-SLB9760-Iridium-LetsTrust-TPM.patch |  0
>  ...-driver-for-3Dlab-Nano-soundcard-2758.patch |  0
>  ...pdate-README-with-removal-of-lirc-rpi.patch |  0
>  ...-camera-Check-the-error-for-REPEAT_SE.patch |  0
>  ...ange-default-pull-configuration-to-up.patch |  0
>  ...rrypi-Report-the-fw-variant-during-pr.patch |  0
>  ...rrypi-Report-the-fw-git-hash-during-p.patch |  0
>  ...s-broadcom-Enable-fixups-for-overlays.patch |  0
>  ...i-audio-fix-sgtl5000-compatible-strin.patch |  0
>  ...-add-dereference-to-fix-DMA-transfers.patch |  0
>  ...ce-link-events-to-minimize-poll-storm.patch |  0
>  ...rt-for-AudioSense-Pi-add-on-soundcard.patch |  0
>  ...device-tree-support-for-AudioSense-Pi.patch |  0
>  ...rlays-sdio-Add-enhanced-1-bit-support.patch |  0
>  ...-with-port_addr-assignment-for-single.patch |  0
>  ...driver-for-the-HiFiBerry-DAC-ADC-2694.patch |  0
>  ...nt-on-the-pwmchip-device-upon-channel.patch |  0
>  ...-Add-ssd1306-overlay-for-OLED-display.patch |  0
>  ...verlays-mcp23017-Support-the-MCP23008.patch |  0
>  ...950-0268-overlays-Add-mcp342x-overlay.patch |  0
>  ...9-char-vcio-Add-compat-ioctl-handling.patch |  0
>  ...il-probe-if-rpi_firmware-is-not-found.patch |  0
>  ...hiq-Fix-client_component-for-64-bit-k.patch |  0
>  ...-camera-Add-sanity-checks-for-queue_s.patch |  0
>  ...-camera-Set-the-field-value-within-ea.patch |  0
>  ...Fix-up-compat-ioctls-for-64bit-kernel.patch |  0
>  ...ar-vc_mem-Fix-all-coding-style-issues.patch |  0
>  ...k-bcm2835-Use-zd-when-printing-size_t.patch |  0
>  ...d-rpi_sense_core-of-compatible-string.patch |  0
>  ...re_kms-Fix-up-64-bit-compile-warnings.patch |  0
>  ...6-Clear-build-warning-on-64-bit-build.patch |  0
>  ...lays-Correct-DT-handling-camera-GPIOs.patch |  0
>  ...a-ov5647-Use-gpiod_set_value_cansleep.patch |  0
>  ...nicam-Power-on-subdev-on-open-release.patch |  0
>  ...njector-octo-revert-to-dummy-supplies.patch |  0
>  ...-camera-Correct-ctrl-min-max-step-def.patch |  0
>  ...-codec-variable-vb2-may-be-used-unini.patch |  0
>  ...-codec-Fix-potentially-uninitialised-.patch |  0
>  ...o-bcm2708_fb-Add-compat_ioctl-support.patch |  0
>  ...2708_fb-Fix-warnings-on-64-bit-builds.patch |  0
>  ...m2708_fb-Clean-up-coding-style-issues.patch |  0
>  ...dma-Add-support-for-per-channel-flags.patch |  0
>  ...et-the-DISDEBUG-flag-for-SD-transfers.patch |  0
>  ...-Implement-the-digital_mute-interface.patch |  0
>  ...x-a-double-unlock-in-pcm512x_digital_.patch |  0
>  ...an-up-build-warnings-on-64bit-kernels.patch |  0
>  ...-dma-allocation-for-mphi-dummy_send-b.patch |  0
>  ...rm-Set-up-dma-ranges-on-child-devices.patch |  0
>  ...g-vc-sm-cma-Correct-DMA-configuration.patch |  0
>  ...ma-Use-a-void-pointer-as-the-handle-w.patch |  0
>  ...ing-vc-sm-cma-Fix-up-for-64bit-builds.patch |  0
>  ...0300-configs-Enable-the-AD193x-codecs.patch |  0
>  ...balenaFin-v1.1.0-carrier-board-update.patch |  0
>  ...s-Update-driver-to-not-use-plane-crtc.patch |  0
>  ...ming-the-CTM-is-conditional-on-runnin.patch |  0
>  ...hiq-Add-in-the-Bayer-encoding-formats.patch |  0
>  ...hiq-Always-return-the-param-size-from.patch |  0
>  ...hiq-If-the-VPU-returns-an-error-don-t.patch |  0
>  ..._codec-Query-supported-formats-from-t.patch |  0
>  ..._codec-Add-support-for-the-ISP-as-an-.patch |  0
>  ..._codec-Add-an-option-for-ignoring-Bay.patch |  0
>  ..._codec-Fix-handling-of-VB2_MEMORY_DMA.patch |  0
>  ...hiq-Update-mmal_parameters.h-with-rec.patch |  0
>  ..._codec-Include-timing-info-in-SPS-hea.patch |  0
>  ...ait-for-vblank-on-fkms-cursor-updates.patch |  0
>  ...-kernel-module-in-Real-Time-kernel-co.patch |  0
>  .../950-0315-Added-mute-stream-func.patch      |  0
>  ...8xx-EEE-support-is-now-a-PHY-property.patch |  0
>  ..._cma-Remove-erroneous-misc_deregister.patch |  0
>  ...akefile-include-on-out-of-tree-builds.patch |  0
>  ...9-vcsm-Remove-set-but-unused-variable.patch |  0
>  ...-vcsm-Reduce-scope-of-local-functions.patch |  0
>  ...-codec-NULL-component-handle-on-queue.patch |  0
>  ...ma-Remove-the-debugfs-directory-on-re.patch |  0
>  ...-sm-cma-Use-devm_-allocs-for-sm_state.patch |  0
>  ...-cma-Don-t-fail-if-debugfs-calls-fail.patch |  0
>  ...ma-Ensure-mutex-and-idr-are-destroyed.patch |  0
>  ..._codec-Clean-up-logging-on-unloading-.patch |  0
>  ...Allow-for-sg-entries-that-cross-pages.patch |  0
>  ...dded-4-bit-support-on-GPIOs-34-39.-29.patch |  0
>  ...x-multiple-instantiation-of-sc16is7xx.patch |  0
>  ...0330-bcm2835-mmc-Fix-DMA-channel-leak.patch |  0
>  ...mmc-Fix-struct-mmc_host-leak-on-probe.patch |  0
>  ...-mmc-Fix-duplicate-free_irq-on-remove.patch |  0
>  ...cm2835-mmc-Handle-mmc_add_host-errors.patch |  0
>  ...uplicate-reset-of-driver-data-on-remo.patch |  0
>  ...ys-Add-max17040-support-to-i2c-sensor.patch |  0
>  ...nicam-Add-support-for-enum-framesizes.patch |  0
>  ...-codec-Refactor-default-resolution-co.patch |  0
>  .../950-0338-nvmem-add-type-attribute.patch    |  0
>  .../950-0339-rtc-rv3028-add-new-driver.patch   |  0
>  ...0-0340-overlays-Add-rv3028-to-i2c-rtc.patch |  0
>  ...2x4-SND_SOC_DAPM_MICBIAS-is-deprecate.patch |  0
>  ...2x4-Break-out-clock-setting-into-sepa.patch |  0
>  ...ic32x4-Properly-Set-Processing-Blocks.patch |  0
>  ...4-ASoC-tlv320aic32x4-Model-PLL-in-CCF.patch |  0
>  ...lv320aic32x4-Model-CODEC_CLKIN-in-CCF.patch |  0
>  ...aic32x4-Model-DAC-ADC-dividers-in-CCF.patch |  0
>  ...v320aic32x4-Model-BDIV-divider-in-CCF.patch |  0
>  ...aic32x4-Control-clock-gating-with-CCF.patch |  0
>  ...2x4-Move-aosr-and-dosr-setting-to-sep.patch |  0
>  ...ic32x4-Dynamically-Determine-Clocking.patch |  0
>  ...320aic32x4-Restructure-set_dai_sysclk.patch |  0
>  ...-tlv320aic32x4-Remove-mclk-references.patch |  0
>  ...lv320aic32x4-Allow-192000-Sample-Rate.patch |  0
>  ...aic32x4-Only-enable-with-common-clock.patch |  0
>  ...diophonics-I-Sabre-9038Q2M-DAC-driver.patch |  0
>  ...oC-tlv320aic32x4-Change-author-s-name.patch |  0
>  ...2x4-Update-copyright-and-use-SPDX-ide.patch |  0
>  ...2x4-Add-Switch-for-Setting-Common-Mod.patch |  0
>  ...c32x4-Add-Playback-PowerTune-Controls.patch |  0
>  ...erlays-Add-Support-for-the-UDRC-DRAWS.patch |  0
>  ..._split-when-we-actually-need-to-do-a-.patch |  0
>  ...0x-fetch-touchscreen-geometry-from-DT.patch |  0
>  ...Input-ili210x-add-DT-binding-document.patch |  0
>  ...d-core-Device-Tree-support-ilitek251x.patch |  0
>  ...king-around-dequeueing-and-killing-UR.patch |  0
>  ...28-Add-backup-switchover-mode-support.patch |  0
>  ...ings-rv3028-backup-switchover-support.patch |  0
>  ...3028-backup-switchover-support-to-i2c.patch |  0
>  ...-Maxim-MAX98357A-I2S-DAC-overlay-2935.patch |  0
>  ...xes-for-audioinjector-octo-under-4.19.patch |  0
>  .../950-0371-overlays-Add-PiGlow-overlay.patch |  0
>  ...ng-bcm2835-audio-Clean-up-mutex-locks.patch |  0
>  ...-audio-Remove-redundant-spdif-stream-.patch |  0
>  ...-audio-Clean-up-include-files-in-bcm2.patch |  0
>  ...-audio-Remove-redundant-substream-mas.patch |  0
>  ...-audio-Fix-mute-controls-volume-handl.patch |  0
>  ...-audio-Remove-redundant-function-call.patch |  0
>  ...35-audio-Remove-superfluous-open-flag.patch |  0
>  ...-audio-Drop-useless-running-flag-and-.patch |  0
>  ...-audio-Fix-incorrect-draining-handlin.patch |  0
>  ...ng-bcm2835-audio-Kill-unused-spinlock.patch |  0
>  ...-audio-Use-PCM-runtime-values-instead.patch |  0
>  ...-audio-Drop-unnecessary-pcm-indirect-.patch |  0
>  ...bcm2835-audio-Drop-useless-NULL-check.patch |  0
>  ...-audio-Propagate-parameter-setup-erro.patch |  0
>  ...-audio-Drop-debug-messages-in-bcm2835.patch |  0
>  ...-audio-Drop-superfluous-mutex-lock-du.patch |  0
>  ...2835-audio-Add-10ms-period-constraint.patch |  0
>  ...bcm2835-audio-Make-single-vchi-handle.patch |  0
>  ...-audio-Code-refactoring-of-vchiq-acce.patch |  0
>  ...2835-audio-Operate-non-atomic-PCM-ops.patch |  0
>  ...g-bcm2835-audio-Use-card-private_data.patch |  0
>  ...-audio-Use-standard-error-print-helpe.patch |  0
>  ...-audio-Remove-unnecessary-header-file.patch |  0
>  ...-audio-Move-module-parameter-descript.patch |  0
>  ...835-audio-Use-coherent-device-buffers.patch |  0
>  ...-audio-Set-SNDRV_PCM_INFO_SYNC_APPLPT.patch |  0
>  ...5-audio-Simplify-PCM-creation-helpers.patch |  0
>  ...-audio-Simplify-kctl-creation-helpers.patch |  0
>  ...-audio-Simplify-card-object-managemen.patch |  0
>  ...-audio-unify-FOURCC-command-definitio.patch |  0
>  ...5-audio-don-t-initialize-memory-twice.patch |  0
>  ...-audio-reorder-variable-declarations-.patch |  0
>  ...-audio-use-anonymous-union-in-struct-.patch |  0
>  ...-audio-more-generic-probe-function-na.patch |  0
>  ...-audio-rename-platform_driver-structu.patch |  0
>  ...407-staging-bcm2835-audio-update-TODO.patch |  0
>  ...bcm2835-audio-interpolate-audio-delay.patch |  0
>  ...ing-bcm2835-audio-Enable-compile-test.patch |  0
>  ...-audio-use-module_platform_driver-mac.patch |  0
>  ...-audio-double-free-in-init-error-path.patch |  0
>  ...s-Increase-default-coherent-pool-size.patch |  0
>  ...-use-default-alignment-for-rx-buffers.patch |  0
>  ...-codec-Correct-port-width-calc-for-tr.patch |  0
>  ...-codec-Remove-height-padding-for-ISP-.patch |  0
>  ...hiq-Free-the-event-context-for-contro.patch |  0
>  ...-Also-set-coherent_pool-1M-for-BT-Pis.patch |  0
>  ...s-rpi-sense-add-upstream-humidity-com.patch |  0
>  ...l-vchiq-Fix-memory-leak-in-error-path.patch |  0
>  ...mal-Fix-memory-leak-of-vchiq-instance.patch |  0
>  ...d-IQaudIO-Pi-Codec-board-support-2969.patch |  0
>  ...t-on-output_write-retry-with-readback.patch |  0
>  ...482-cosmetic-fixes-after-54865314f5a1.patch |  0
>  ...odec-Adding-352.8kHz-samplerate-suppo.patch |  0
>  ...oning-driver-for-3Dlab-Nano-soundcard.patch |  0
>  ...-0426-.gitignore-Add-.dtbo-explicitly.patch |  0
>  ...-key-sizes-only-when-Secure-Simple-Pa.patch |  0
>  ..._otg-Clean-up-interrupt-claiming-code.patch |  0
>  ...lete-the-deprecated-sdio-1bit-overlay.patch |  0
>  ...Remove-upstream-aux-interrupt-overlay.patch |  0
>  ...tandardise-on-compatible-brcm-bcm2835.patch |  0
>  ...c4-Remove-interrupt-and-DMA-trampling.patch |  0
>  ...T-Add-non-removable-clone-of-mmc-node.patch |  0
>  ...270X_DT-usb-Refactor-DTS-and-overlays.patch |  0
>  ...0435-overlays-Update-upstream-overlay.patch |  0
>  ...ypo-after-49695ac46861-reset-on-outpu.patch |  0
>  ...-BCM270X_DT-Rename-Pi-Zero-W-DT-files.patch |  0
>  ...CM270X_DT-Create-bcm2708-rpi-zero.dts.patch |  0
>  ...x-mmc-related-overlays-after-refactor.patch |  0
>  .../950-0440-Fixed-48k-timing-issue.patch      |  0
>  ...-codec-Convert-V4L2-nsec-timestamps-t.patch |  0
>  ...-codec-Add-support-for-setting-S_PARM.patch |  0
>  ...Make-GPIO-an-output-for-strong-pullup.patch |  0
>  ...ays-Update-w1-gpio-and-w1-gpio-pullup.patch |  0
>  ...-Fix-DMA-channel-leak-on-error-remove.patch |  0
>  ...0446-i2c-bcm2835-Model-Divider-in-CCF.patch |  0
>  ..._services-Use-correct-cache-line-size.patch |  0
>  ...tty-amba-pl011-allow-shared-interrupt.patch |  0
>  ...uce-register-ranges-for-UART-SPI-and-.patch |  0
>  ...end-the-WDT-DT-node-out-to-cover-the-.patch |  0
>  ...0451-ARM-dts-Add-label-to-bcm2835-RNG.patch |  0
>  ...e-fb-rather-than-leds-for-dpi-overlay.patch |  0
>  .../950-0453-BCM270X_DT-Minor-tidy-up.patch    |  0
>  ...454-arm-bcm2835-Fix-FIQ-early-ioremap.patch |  0
>  ...py_from_user-if-BCM2835_FAST_MEMCPY-n.patch |  0
>  ...-Broadcom-STB-PCIe-host-controller-dr.patch |  0
>  ...-dma-range-mapping-for-inbound-traffi.patch |  0
>  ...0-0458-PCI-brcmstb-Add-MSI-capability.patch |  0
>  ...i-Add-DT-docs-for-Brcmstb-PCIe-device.patch |  0
>  ...0460-pcie-brcmstb-Changes-for-BCM2711.patch |  0
>  ...-arm-bcm2835-DMA-can-only-address-1GB.patch |  0
>  ...ost-Support-64-bit-physical-addresses.patch |  0
>  ...63-mmc-sdhci-Mask-spurious-interrupts.patch |  0
>  ...-Add-support-for-emmc2-of-the-BCM2838.patch |  0
>  ...wrng-iproc-rng200-Add-BCM2838-support.patch |  0
>  ...l-brcmstb_thermal-Add-BCM2838-support.patch |  0
>  ...0467-vchiq-Add-36-bit-address-support.patch |  0
>  ...2835-pcm.c-Support-multichannel-audio.patch |  0
>  ...mgenet-constrain-max-DMA-burst-length.patch |  0
>  ...-Better-coalescing-parameter-defaults.patch |  0
>  ...e-link-energy-detect-powerdown-for-ex.patch |  0
>  ...lit-out-the-BCM54213PE-from-the-BCM54.patch |  0
>  ...configure-the-LED-outputs-to-be-more-.patch |  0
>  ...ose-appropriate-IRQ-handover-strategy.patch |  0
>  ...hci-Disable-the-XHCI-5-second-timeout.patch |  0
>  ...-Show-that-the-VIA-VL805-supports-LPM.patch |  0
>  ...m2835-enable-shared-interrupt-support.patch |  0
>  ...d-chardev-for-mmap-ing-Argon-control-.patch |  0
>  ...-clk-bcm2835-Don-t-wait-for-pllh-lock.patch |  0
>  ...-bcm2835-watchdog-s-DT-probe-to-an-MF.patch |  0
>  ...-pm-Add-support-for-power-domains-und.patch |  0
>  ...-pm-Fix-PM_IMAGE_PERI-power-domain-su.patch |  0
>  ...-pm-Fix-error-paths-of-initialization.patch |  0
>  ...c-bcm-bcm2835-pm-Add-support-for-2711.patch |  0
>  ...syncobj_find_fence-to-support-timelin.patch |  0
>  ...se-after-free-race-accessing-the-sche.patch |  0
>  ...ittle-debugfs-entry-for-measuring-the.patch |  0
>  ...a-comment-about-what-uses-v3d_job_dep.patch |  0
>  ...Clean-up-the-reservation-object-setup.patch |  0
>  ...upport-for-submitting-jobs-to-the-TFU.patch |  0
>  ...e-dev-argument-to-lock-unlock-of-BO-r.patch |  0
>  ...d-missing-fence-timeline-name-for-TFU.patch |  0
>  ...ore-tracepoints-for-V3D-GPU-rendering.patch |  0
>  ...-drm-v3d-Drop-unused-v3d_flush_caches.patch |  0
>  ...n-t-bother-flushing-L1TD-at-job-start.patch |  0
>  ...op-the-wait-for-L2T-flush-to-complete.patch |  0
>  ...d-Stop-trying-to-flush-L2C-on-V3D-3.3.patch |  0
>  ...lidate-the-caches-from-the-outside-in.patch |  0
>  ...stats-accounting-for-dma-buf-imported.patch |  0
>  ...top-level-kerneldoc-for-the-addition-.patch |  0
>  ...oops-at-boot-with-firmwarekms-on-4.19.patch |  0
>  ...0502-drm-v3d-Add-support-for-V3D-v4.2.patch |  0
>  ...Don-t-try-to-set-OVRTMUOUT-on-V3D-4.x.patch |  0
>  ...re-the-GPU-is-on-when-measuring-clock.patch |  0
>  ...950-0505-drm-v3d-Add-support-for-2711.patch |  0
>  ...U-flush-if-the-device-is-currently-of.patch |  0
>  ...07-drm-v3d-Hook-up-the-runtime-PM-ops.patch |  0
>  ...8-drm-v3d-HACK-gut-runtime-pm-for-now.patch |  0
>  ...9-drm-v3d-Update-to-upstream-IRQ-code.patch |  0
>  ...the-fence-signaled-from-IRQs-to-irq_f.patch |  0
>  ...-0511-drm-v3d-Refactor-job-management.patch |  0
>  ...-Add-missing-implicit-synchronization.patch |  0
>  ...chronization-firmwarekms-against-GL-r.patch |  0
>  ...re-that-vblank-waits-work-without-v3d.patch |  0
>  ...the-format-modifiers-for-firmware-kms.patch |  0
>  ...x-vblank-timestamping-for-firmwarekms.patch |  0
>  ...itch-to-the-newer-mailbox-frame-buffe.patch |  0
>  ...-an-overlay-plane-to-vc4-firmware-kms.patch |  0
>  ...Increase-max-screen-size-to-4096x4096.patch |  0
>  ...support-for-multiple-displays-to-fkms.patch |  0
>  .../950-0521-drm-vc4-Fix-build-warning.patch   |  0
>  ...display-to-blank-during-initialisatio.patch |  0
>  ...3-drm-vc4-Remove-now-unused-structure.patch |  0
>  ...he-display-ID-for-each-display-in-FKM.patch |  0
>  ...-display-number-when-querying-the-dis.patch |  0
>  ...-call-drm_crtc_vblank_-on-off-from-vc.patch |  0
>  ...port-for-H-V-flips-on-each-plane-for-.patch |  0
>  ...unused-vc4_fkms_cancel_page_flip-func.patch |  0
>  ...-over-all-planes-in-vc4_crtc_-dis-en-.patch |  0
>  ...kms-into-line-with-kms-in-blocking-do.patch |  0
>  ...vc4-Increase-max_width-height-to-7680.patch |  0
>  ...ads-the-EDID-from-fw-and-supports-mod.patch |  0
>  ...-support-for-setting-leaf-clock-rates.patch |  0
>  ...ow-reparenting-leaf-clocks-while-they.patch |  0
>  ...d-support-for-compute-shader-dispatch.patch |  0
>  ...rm-v3d-Clock-V3D-down-when-not-in-use.patch |  0
>  ...e-kms-Remove-incorrect-overscan-suppo.patch |  0
>  ...38-drm-vc4-Log-flags-in-fkms-mode-set.patch |  0
>  ...-firmware-kms-Fix-DSI-display-support.patch |  0
>  ...obe-DPI-DSI-timings-from-the-firmware.patch |  0
>  ...the-case-where-there-are-no-available.patch |  0
>  ...-0542-drm-vc4-Support-the-VEC-in-FKMS.patch |  0
>  ...p-typo-when-setting-HDMI-aspect-ratio.patch |  0
>  ...drm-vc4-Correct-SAND-support-for-FKMS.patch |  0
>  ...o-query-the-VPU-for-HDMI-clock-limits.patch |  0
>  ...olution-of-7680-is-conditional-on-bei.patch |  0
>  ...ma-Remove-obsolete-comment-and-make-f.patch |  0
>  ...ma-Add-in-allocation-for-VPU-requests.patch |  0
>  ...50-0549-staging-vc-sm-cma-Update-TODO.patch |  0
>  ...m-cma-Add-in-userspace-allocation-API.patch |  0
>  ...ing-vcsm-cma-Add-cache-control-ioctls.patch |  0
>  ...ma-Alter-dev-node-permissions-to-0666.patch |  0
>  ...a-Drop-logging-level-on-messages-in-v.patch |  0
>  ...a-Fixup-the-alloc-code-handling-of-ke.patch |  0
>  ...ulti-frame-buffer-support-from-the-Pi.patch |  0
>  ...-Move-BCM2835-6-7-specific-to-bcm2835.patch |  0
>  ...dd-bcm2711-rpi-4-b.dts-and-components.patch |  0
>  ...rlays-Add-i2c3-6-and-uart2-5-overlays.patch |  0
>  ...evicetree-add-overlays-for-spi-3-to-6.patch |  0
>  ...verlays-Add-the-spi-gpio40-45-overlay.patch |  0
>  ...rmit-LPAE-and-PCIE_BRCMSTB-on-BCM2835.patch |  0
>  ...50-0562-2711-Add-basic-64-bit-support.patch |  0
>  ...-Correct-vchiq-compatible-string-2840.patch |  0
>  ...ge-downstream-vchiq-compatible-string.patch |  0
>  ...835-dma-Add-proper-40-bit-DMA-support.patch |  0
>  ...eave-bulk-channel-in-dma-channel-mask.patch |  0
>  ...7-SQUASH-bcm2835-dma-Remove-debugging.patch |  0
>  ...-dts-Include-CSI-lane-config-for-csi1.patch |  0
>  ...rm-vc4-Fix-T-format-modifiers-in-FKMS.patch |  0
>  ...1-dts-Disable-the-v3d-node-by-default.patch |  0
>  ...340MHz-clock-limit-from-FKMS-now-scra.patch |  0
>  ...g-for-updating-interrupt-endpoint-int.patch |  0
>  ...xhci_fixup_endpoint-for-interval-adju.patch |  0
>  ..._fixup_endpoint-after-mangling-interv.patch |  0
>  ...tus-of-which-display-is-updated-throu.patch |  0
>  ...-look-at-the-modifiers-correctly-for-.patch |  0
>  ...arm-dts-Fix-Pi4-PWR-LED-configuration.patch |  0
>  ...-Correct-gic400-memory-address-ranges.patch |  0
>  ...se-the-old-dma-controller-for-OF-conf.patch |  0
>  ...0580-drm-vc4-Limit-fkms-to-modes-85Hz.patch |  0
>  ...bcm2835-Add-bcm2838-compatible-string.patch |  0
>  ...prove-the-bcm27xx-inclusion-hierarchy.patch |  0
>  ...m-dts-First-draft-of-upstream-Pi4-DTS.patch |  0
>  ...-Fix-compatible-string-for-ds1307-RTC.patch |  0
>  ...s-Fix-further-maxim-ds1307-references.patch |  0
>  ...s-Cosmetic-change-to-upstream-overlay.patch |  0
>  ...name-w1_family-struct-fixing-c-p-typo.patch |  0
>  ...-output_write-cosmetic-fixes-simplify.patch |  0
>  ...s2413-add-retry-support-to-state_read.patch |  0
>  ...the-slave-is-not-responding-during-re.patch |  0
>  ...-w1-ds2413-fix-state-byte-comparision.patch |  0
>  ...-DMA-channel-and-memory-leak-in-vc4-3.patch |  0
>  ...2708_fb-Revert-cma-allocation-attempt.patch |  0
>  ...port-for-color-encoding-on-YUV-planes.patch |  0
>  ...Add-coherent_pool-1M-to-Pi-4-bootargs.patch |  0
>  ...-Correct-gpio-fan-gpio-flags-for-4.19.patch |  0
>  ...a-Remove-cache-manipulation-ioctl-fro.patch |  0
>  ...sm-cma-Rework-to-use-dma-APIs-not-CMA.patch |  0
>  ...ma-Fix-the-few-remaining-coding-style.patch |  0
>  ....h-add-new-capabilities-for-buffer-ty.patch |  0
>  ...-set-reqbufs-create_bufs-capabilities.patch |  0
>  ...ow-reqbufs-0-with-in-use-MMAP-buffers.patch |  0
>  ...eal-parameters-to-the-rpi-poe-overlay.patch |  0
>  ...-pi3-overlays-to-be-less-model-specif.patch |  0
>  ...e-IRQ-request-after-clock-code-in-pro.patch |  0
>  ...2835-Ensure-clock-exists-when-probing.patch |  0
>  ...erlays-i2c-gpio-Fix-the-bus-parameter.patch |  0
>  ...l011-Make-TX-optimisation-conditional.patch |  0
>  ...for-host-controllers-that-don-t-updat.patch |  0
>  ...835-Set-clock-stretch-timeout-to-35ms.patch |  0
>  ...35-Add-missing-dependency-on-MFD_CORE.patch |  0
>  .../950-0612-overlays-Add-PCF2129-RTC.patch    |  0
>  ...ays-dpi18-and-dpi24-vc4-compatibility.patch |  0
>  ...lays-Add-i2c0-and-i2c1-for-regularity.patch |  0
>  ...Remove-spinlock-usage-around-spi_sync.patch |  0
>  ...arm64-mm-Limit-the-DMA-zone-for-arm64.patch |  0
>  ...4-Query-firmware-for-custom-HDMI-mode.patch |  0
>  ...e-drm-vrefresh-to-the-firmware-on-mod.patch |  0
>  ...overlays-audremap-Support-GPIOs-18-19.patch |  0
>  ...Fix-drm_mode_create_tv_properties-doc.patch |  0
>  ...nector-Clarify-the-unit-of-TV-margins.patch |  0
>  ...-Allow-creation-of-margin-props-alone.patch |  0
>  ...rgin-setup-into-account-when-updating.patch |  0
>  ...ch-margin-props-to-the-HDMI-connector.patch |  0
>  ...m-vc4-Add-support-for-margins-to-fkms.patch |  0
>  ...vc4-Ensure-zpos-is-always-initialised.patch |  0
>  ...-missing-properties-for-pmu-and-gic-n.patch |  0
>  ...dds-the-Hifiberry-DAC-ADC-PRO-version.patch |  0
>  ...-codecs-Correct-Katana-minimum-volume.patch |  0
>  ...present-but-empty-dmas-disables-audio.patch |  0
>  ...ys-Add-audio-parameter-to-vc4-kms-v3d.patch |  0
>  ...-overlays-Update-the-upstream-overlay.patch |  0
>  ...rrupt-handing-for-non-existent-displa.patch |  0
>  ...e-correct-name-for-the-Raspberry-Pi-v.patch |  0
>  ...-char-rpivid-also-support-legacy-name.patch |  0
>  ...ice-quirks-for-Freeway-Airmouse-T3-an.patch |  0
>  ...-Add-Broadcast-RGB-connector-property.patch |  0
>  ...dd-documentation-for-drm_cmdline_mode.patch |  0
>  ...modes-Rewrite-the-command-line-parser.patch |  0
>  ...pport-modes-names-on-the-command-line.patch |  0
>  ...-to-specify-rotation-and-reflection-o.patch |  0
>  ...ctor-Introduce-a-TV-margins-structure.patch |  0
>  ...3-drm-modes-Parse-overscan-properties.patch |  0
>  ...a-function-to-reset-connector-TV-prop.patch |  0
>  ...dmi-Set-default-state-margin-at-reset.patch |  0
>  ...kms-Set-default-state-margin-at-reset.patch |  0
>  ...-apply-cmdline-s-rotation-if-it-wasn-.patch |  0
>  ...2835-codec-switch-to-multi-planar-API.patch |  0
>  ...-codec-implement-V4L2_CID_MIN_BUFFERS.patch |  0
>  ...-codec-set-device_caps-in-struct-vide.patch |  0
>  ...0651-Add-HDMI1-facility-to-the-driver.patch |  0
>  ...s-Add-baudrate-parameter-to-i2c3-i2c6.patch |  0
>  ...-the-vblank-warnings-on-mode-switchin.patch |  0
>  ...4-drm-vc4-Remove-unused-mode-variable.patch |  0
>  ...-codec-Expand-logging-on-format-setti.patch |  0
>  ...-codec-Correct-bytesperline-on-format.patch |  0
>  ...sing-NULL-check-to-vc4_crtc_consume_e.patch |  0
>  ...et-Workaround-2-for-Pi4-Ethernet-fail.patch |  0
>  ...drm-vc4-Fix-TILE_Y_OFFSET-definitions.patch |  0
>  ...-Define-missing-PITCH0_SINK_PIX-field.patch |  0
>  ..._atomic_helper_check_plane_state-to-s.patch |  0
>  ...fsets-adjustment-out-of-setup_clippin.patch |  0
>  ...-positioning-of-planes-using-T_TILES-.patch |  0
>  ...L-pointer-dereference-in-the-async-up.patch |  0
>  ...bcm2711-rpi-4-b-I2C-aliases-and-pulls.patch |  0
>  ...more-event-ring-segment-table-entries.patch |  0
>  ...gn_buf-for-small-IN-control-transfers.patch |  0
>  ...mstb-bounce-buffer-implementation-to-.patch |  0
>  ...0669-configs-arm64-vcm2711-Enable-V3D.patch |  0
>  ...lays-sc16ic752-i2c-Fix-xtal-parameter.patch |  0
>  ...671-vc-sm-cma-Fix-compatibility-ioctl.patch |  0
>  ...-codec-add-support-for-V4L2_CID_MPEG_.patch |  0
>  ...-codec-remove-unnecessary-padding-on-.patch |  0
>  ...-add-missing-Raspberry-Pi-model-names.patch |  0
>  ...-arch-arm-Add-model-string-to-cpuinfo.patch |  0
>  ...-Add-Revision-Serial-Model-to-cpuinfo.patch |  0
>  ...gs-Add-binding-for-the-Sony-IMX219-se.patch |  0
>  ...i2c-Add-driver-for-Sony-IMX219-sensor.patch |  0
>  ...overlay-for-the-Sony-IMX219-image-sen.patch |  0
>  ...-codec-Fix-non-documentation-comment-.patch |  0
>  ...cm2835-codec-Fix-declaration-of-roles.patch |  0
>  ...bcm2835-codec-Add-role-to-device-name.patch |  0
>  ...-codec-Pass-driver-context-to-create-.patch |  0
>  ...35-codec-add-media-controller-support.patch |  0
>  ...unicam-Reduce-scope-of-local-function.patch |  0
>  ...5-unicam-add-media-controller-support.patch |  0
>  ...ize-under-arm64-or-any-other-platform.patch |  0
>  ..._unmap_sg-calls-to-free-relevant-swio.patch |  0
>  ...17-rename-the-GPIO-pins-node-with-the.patch |  0
>  ...17-Add-option-for-not-connecting-the-.patch |  0
>  ...50-0691-v4l2-Add-a-Greyworld-AWB-mode.patch |  0
>  ...bcm2835-camera-Add-greyworld-AWB-mode.patch |  0
>  ...3-PCI-brcmstb-Fix-compilation-warning.patch |  0
>  ...r-margins-in-composite-SDTV-mode-3223.patch |  0
>  ...fiberry-DAC-DSP-soundcard-driver-3224.patch |  0
>  ...ng-bcm2835-codec-Allow-height-of-1920.patch |  0
>  ...-codec-Correct-g-s_selection-API-MPLA.patch |  0
>  ...r-gpio-Allow-nonexclusive-GPIO-access.patch |  0
>  ...ble-nonexclusive-gpiods-from-DT-nodes.patch |  0
>  ...700-Fix-poll-rate-on-touchscreen-3238.patch |  0
>  ...S-for-Pi-2B-rev-1.2-with-BCM2837-3235.patch |  0
>  ...aches-at-the-end-of-render-jobs-on-re.patch |  0
>  ...-audio-Fix-draining-behavior-regressi.patch |  0
>  ...layout-of-struct-vc4_display_settings.patch |  0
>  ...m283x-Fix-DTC-warning-for-memory-node.patch |  0
>  ...m27xx-Fix-DTC-warning-for-memory-node.patch |  0
>  ...Enable-DMA-support-for-SPI-controller.patch |  0
>  ...-rpi-Drop-unnecessary-address-cells-s.patch |  0
>  ...-rpi-Define-the-downstream-MMC-interf.patch |  0
>  ...-Define-MMC-interfaces-at-board-level.patch |  0
>  ...835-rpi-zero-w-Fix-bus-width-of-sdhci.patch |  0
>  ...-rpi-Define-the-downstream-HDMI-power.patch |  0
>  ...ts-bcm283x-Enable-HDMI-at-board-level.patch |  0
>  ...roduce-SoC-specific-clock-registratio.patch |  0
>  ...m2835-Add-BCM2711_CLOCK_EMMC2-support.patch |  0
>  ...board-clk-and-pinctrl-to-bcm2711-comp.patch |  0
>  ...trl-bcm2835-Switch-to-SPDX-identifier.patch |  0
>  ...bcm2835-declare-pin-config-as-generic.patch |  0
>  ...-Direct-GPIO-config-changes-to-generi.patch |  0
>  ...-Add-support-for-BCM2711-pull-up-func.patch |  0
>  ...A-device-names-check-for-enable-state.patch |  0
>  ...unce64.c-dev_err-dev_info-for-info-me.patch |  0
>  ...-gpio-shutdown-Add-debounce-parameter.patch |  0
>  ...0724-overlays-fix-compatible-for-RPi4.patch |  0
>  ...5-bcm2711-Retain-support-for-old-dtbs.patch |  0
>  ...-unicam-Add-support-for-raw14-formats.patch |  0
>  ...nicam-Rework-to-not-cache-the-list-of.patch |  0
>  ...nicam-Support-unpacking-CSI-format-to.patch |  0
>  ...nicam-Add-support-for-luma-greyscale-.patch |  0
>  ...port-for-YUV-color-encodings-and-rang.patch |  0
>  ...gative-X-Y-positioning-on-SAND-planes.patch |  0
>  ...732-drm-vc4-Add-support-for-H-V-flips.patch |  0
>  ...-handling-of-rotation-parameter-in-fk.patch |  0
>  .../950-0734-overlays-Add-w5500-overlay.patch  |  0
>  ...nicam-Replace-hard-coded-loop-limit-w.patch |  0
>  ...nicam-Fix-one-to-many-mapping-for-YUY.patch |  0
>  ...-binding-for-the-Infineon-IRS1125-sen.patch |  0
>  ...-driver-for-the-Infineon-IRS1125-dept.patch |  0
>  ...d-an-overlay-for-the-Infineon-IRS1125.patch |  0
>  ...ndcard-Fixed-MCLKDIV-for-Allo-Digione.patch |  0
>  ...2838-Disable-DWC-OTG-block-by-default.patch |  0
>  ...-codec-Add-support-for-ENUM_FRAMESIZE.patch |  0
>  ...-codec-Correct-buffer-type-check-on-G.patch |  0
>  ...-codec-Set-default-and-error-check-ti.patch |  0
>  ...-codec-Fix-imbalance-in-dma_buf_get-d.patch |  0
>  ...alls-for-firmware-display-blank-unbla.patch |  0
>  ...-0747-rpi-poe-fan-fix-def_pwm1-writes.patch |  0
>  ...-Encode-link-speed-and-activity-into-.patch |  0
>  ...low-ethernet-LED-mode-to-be-set-via-d.patch |  0
>  ...overlays-smi-fix-typo-in-comment-3320.patch |  0
>  ...ange-the-default-ethernet-LED-actions.patch |  0
>  ...ays-README-Remove-trailing-whitespace.patch |  0
>  ...50-0753-overlays-Add-apds9960-overlay.patch |  0
>  ...s-pitft35-resistive-add-upstream-comp.patch |  0
>  ...-bcm2835-Avoid-null-pointer-exception.patch |  0
>  ...-Handle-missing-clock-more-gracefully.patch |  0
>  ...scpi-scmi-Fix-freeing-of-dynamic-OPPs.patch |  0
>  ...-driver-interfacing-with-Raspberry-Pi.patch |  0
>  ...9-cpufreq-add-driver-for-Raspberry-Pi.patch |  0
>  ...mware-raspberrypi-register-clk-device.patch |  0
>  ...-register-platform-device-for-raspber.patch |  0
>  .../950-0762-clk-bcm2835-remove-pllb.patch     |  0
>  ...v3d_drv-Allow-clock-retrieval-by-name.patch |  0
>  ...e-clock-so-firmware-knows-we-are-usin.patch |  0
>  ...-Allow-cpufreq-driver-to-also-adjust-.patch |  0
>  ...lk-raspberrypi-Also-support-v3d-clock.patch |  0
>  ...50-0767-clk-bcm2835-Disable-v3d-clock.patch |  0
>  ...lk-raspberrypi-Also-support-v3d-clock.patch |  0
>  ...lk-raspberrypi-Also-support-v3d-clock.patch |  0
>  ...freq-Only-report-integer-pll-divisor-.patch |  0
>  ...lk-raspberrypi-Also-support-v3d-clock.patch |  0
>  ...0772-arm-dts-Correct-Pi-4B-LED-values.patch |  0
>  ...dma_mask-as-well-as-coherent_dma_mask.patch |  0
>  ...950-0774-arm-dts-2711-Add-pcie0-alias.patch |  0
>  ...dev-Completely-disable-the-DT-warning.patch |  0
>  ...-V3D-interactions-if-the-v3d-componen.patch |  0
>  ...first-codec-is-master-in-multicodec-s.patch |  0
>  ...ltaneous-use-of-JustBoom-DAC-and-Digi.patch |  0
>  ...g-the-urb-transfer_buffer-too-early-3.patch |  0
>  ...lays-Make-mcp342x-run-time-compatible.patch |  0
>  ...ys-dht11-Allow-multiple-instantiation.patch |  0
>  ...overlays-i2c-rtc-Add-pcf85363-support.patch |  0
>  ...ctrl-bcm2835-Remove-gpiochip-on-error.patch |  0
>  ...m2835-Change-init-order-for-gpio-hogs.patch |  0
>  ...mmunication-fixes-for-scaled-down-CPU.patch |  0
>  ...pca963x-Fix-open-drain-initialization.patch |  0
>  ...0787-add-BME680-to-i2c-sensor-overlay.patch |  0
>  ...in-endpoint-max-packet-and-transfer-s.patch |  0
>  ...-pause-when-cancelling-split-transact.patch |  0
>  ...-add-a-barrier-on-entry-into-FIQ-hand.patch |  0
>  ...l-device-tree-overlay-for-SPI-devices.patch |  0
>  ...ound-Add-the-HiFiBerry-DAC-HD-version.patch |  0
>  ...alise-rpi-firmware-before-clk-bcm2835.patch |  0
>  ...-settings-of-HiFiBerry-DAC-ADC-PRO-ca.patch |  0
>  ...lays-Use-preferred-compatible-strings.patch |  0
>  ...ty-amba-pl011-Add-un-throttle-support.patch |  0
>  ...950-0797-Fix-i2c-pwm-pca9685a-overlay.patch |  0
>  ...ature-to-HiFiBerry-DAC-ADC-PRO-sound-.patch |  0
>  ...ature-to-HiFiBerry-DAC-ADC-sound-card.patch |  0
>  ...ature-to-HiFiBerry-DAC-DAC-PRO-sound-.patch |  0
>  ...eading-Pisound-board-hardware-revisio.patch |  0
>  ...ci-iproc-Fix-vmmc-regulators-on-iProc.patch |  0
>  ...eclare-RPi-4B-SD-card-power-regulator.patch |  0
>  ...ounce-buffer-support-is-for-BCM2711B0.patch |  0
>  ...si-Use-BCM2711-PCIe-compatible-string.patch |  0
>  ...06-ARM-dts-Remove-bcm2838-rpi-4-b.dts.patch |  0
>  ...l011-Avoid-rare-write-when-full-error.patch |  0
>  ...-Raspberry-Pi-FW-loader-for-VIA-VL805.patch |  0
>  ...orrect-the-eth_led-colour-assignments.patch |  0
>  ...erlays-Remove-hack-from-uart0-overlay.patch |  0
>  ...-sd_poll_once-dtparam-to-bcm283x-2711.patch |  0
>  ...overlays-Add-ssd1306-spi-overlay-3440.patch |  0
>  ...1106-spi-and-ssd1351-spi-overlays-344.patch |  0
>  ...4-overlays-dwc2-Increase-RX-FIFO-size.patch |  0
>  ...verlays-Fix-mcp23017-s-addr-parameter.patch |  0
>  ...1106-spi-ssd1306-spi-and-ssd1351-spi-.patch |  0
>  ...-spi-ssd1306-spi-ssd1351-spi-overlays.patch |  0
>  853 files changed, 43 insertions(+), 43 deletions(-)
>  rename package/kernel/{brcm2708-gpu-fw =3D> bcm2708-gpu-fw}/Makefile
> (95%)
>  rename package/utils/{brcm2708-userland =3D> bcm2708-userland}/Makefile
> (85%)
>  rename package/utils/{brcm2708-userland =3D> bcm2708-
> userland}/patches/001-interface-vcms_host-cmake-fixes.patch (100%)
>  rename target/linux/{brcm2708 =3D> bcm27xx}/Makefile (96%)
>  rename target/linux/{brcm2708 =3D> bcm27xx} ...... manually deleted thes=
e to
> still fit into the list
>=20
> diff --git a/config/Config-images.in b/config/Config-images.in
> index 4ee0273f63..a32de19826 100644
> --- a/config/Config-images.in
> +++ b/config/Config-images.in
> @@ -262,7 +262,7 @@ menu "Target Images"
>  		int "Kernel partition size (in MB)"
>  		depends on GRUB_IMAGES || USES_BOOT_PART
>  		default 8 if TARGET_apm821xx_sata
> -		default 64 if TARGET_brcm2708
> +		default 64 if TARGET_bcm27xx
>  		default 16
>=20
>  	config TARGET_ROOTFS_PARTSIZE
> diff --git a/config/Config-kernel.in b/config/Config-kernel.in
> index 20930326ca..db17f6a9dd 100644
> --- a/config/Config-kernel.in
> +++ b/config/Config-kernel.in
> @@ -550,7 +550,7 @@ if KERNEL_CGROUPS
>=20
>  		config KERNEL_BLK_DEV_THROTTLING
>  			bool "Enable throttling policy"
> -			default y if TARGET_brcm2708
> +			default y if TARGET_bcm27xx
>=20
>  		config KERNEL_BLK_DEV_THROTTLING_LOW
>  			bool "Block throttling .low limit interface support
> (EXPERIMENTAL)"
> diff --git a/package/firmware/cypress-nvram/Makefile
> b/package/firmware/cypress-nvram/Makefile
> index 418a2b0d7e..ef4044c6d0 100644
> --- a/package/firmware/cypress-nvram/Makefile
> +++ b/package/firmware/cypress-nvram/Makefile
> @@ -34,7 +34,7 @@ endef
>  define Package/cypress-nvram-43430-sdio-rpi-3b
>    $(Package/cypress-nvram-default)
>    TITLE:=3DCYW43430 NVRAM for Raspberry Pi 3B
> -  DEPENDS:=3D@TARGET_brcm2708
> +  DEPENDS:=3D@TARGET_bcm27xx
>  endef
>=20
>  define Package/cypress-nvram-43430-sdio-rpi-3b/install
> @@ -50,7 +50,7 @@ $(eval $(call BuildPackage,cypress-nvram-43430-sdio-
> rpi-3b))
>  define Package/cypress-nvram-43430-sdio-rpi-zero-w
>    $(Package/cypress-nvram-default)
>    TITLE:=3DCYW43430 NVRAM for Raspberry Pi Zero W
> -  DEPENDS:=3D@TARGET_brcm2708
> +  DEPENDS:=3D@TARGET_bcm27xx
>  endef
>=20
>  define Package/cypress-nvram-43430-sdio-rpi-zero-w/install
> @@ -66,7 +66,7 @@ $(eval $(call BuildPackage,cypress-nvram-43430-sdio-
> rpi-zero-w))
>  define Package/cypress-nvram-43455-sdio-rpi-3b-plus
>    $(Package/cypress-nvram-default)
>    TITLE:=3DCYW43455 NVRAM for Raspberry Pi 3B+
> -  DEPENDS:=3D@TARGET_brcm2708
> +  DEPENDS:=3D@TARGET_bcm27xx
>  endef
>=20
>  define Package/cypress-nvram-43455-sdio-rpi-3b-plus/install
> @@ -82,7 +82,7 @@ $(eval $(call BuildPackage,cypress-nvram-43455-sdio-
> rpi-3b-plus))
>  define Package/cypress-nvram-43455-sdio-rpi-4b
>    $(Package/cypress-nvram-default)
>    TITLE:=3DCYW43455 NVRAM for Raspberry Pi 4B
> -  DEPENDS:=3D@TARGET_brcm2708
> +  DEPENDS:=3D@TARGET_bcm27xx
>  endef
>=20
>  define Package/cypress-nvram-43455-sdio-rpi-4b/install
> diff --git a/package/kernel/brcm2708-gpu-fw/Makefile
> b/package/kernel/bcm2708-gpu-fw/Makefile
> similarity index 95%
> rename from package/kernel/brcm2708-gpu-fw/Makefile
> rename to package/kernel/bcm2708-gpu-fw/Makefile
> index fa53f48333..da39120126 100644
> --- a/package/kernel/brcm2708-gpu-fw/Makefile
> +++ b/package/kernel/bcm2708-gpu-fw/Makefile
> @@ -8,7 +8,7 @@
>  include $(TOPDIR)/rules.mk
>  include $(INCLUDE_DIR)/kernel.mk
>=20
> -PKG_NAME:=3Dbrcm2708-gpu-fw
> +PKG_NAME:=3Dbcm2708-gpu-fw
>  PKG_VERSION:=3D2020-01-30
>  PKG_RELEASE:=3D63bdbe0ea609a69f5c0a2212d608ef3d9915a7ad
>=20
> @@ -133,16 +133,16 @@ define Download/start4x_elf
>  endef
>  $(eval $(call Download,start4x_elf))
>=20
> -define Package/brcm2708-gpu-fw
> +define Package/bcm2708-gpu-fw
>    SECTION:=3Dboot
>    CATEGORY:=3DBoot Loaders
> -  DEPENDS:=3D@TARGET_brcm2708
> -  TITLE:=3Dbrcm2708-gpu-fw
> -  DEFAULT:=3Dy if TARGET_brcm2708
> +  DEPENDS:=3D@TARGET_bcm27xx
> +  TITLE:=3Dbcm2708-gpu-fw
> +  DEFAULT:=3Dy if TARGET_bcm27xx
>  endef
>=20
> -define Package/brcm2708-gpu-fw/description
> - GPU and kernel boot firmware for brcm2708.
> +define Package/bcm2708-gpu-fw/description
> + GPU and kernel boot firmware for bcm2708.
>  endef
>=20
>  define Build/Prepare
> @@ -168,7 +168,7 @@ define Build/Compile
>  	true
>  endef
>=20
> -define Package/brcm2708-gpu-fw/install
> +define Package/bcm2708-gpu-fw/install
>  	true
>  endef
>=20
> @@ -189,4 +189,4 @@ define Build/InstallDev
>  	$(CP) $(PKG_BUILD_DIR)/fixup4x.dat $(KERNEL_BUILD_DIR)
>  endef
>=20
> -$(eval $(call BuildPackage,brcm2708-gpu-fw))
> +$(eval $(call BuildPackage,bcm2708-gpu-fw))
> diff --git a/package/kernel/linux/modules/netdevices.mk
> b/package/kernel/linux/modules/netdevices.mk
> index 7aa97a8d9b..4fcd03ae85 100644
> --- a/package/kernel/linux/modules/netdevices.mk
> +++ b/package/kernel/linux/modules/netdevices.mk
> @@ -125,7 +125,7 @@ $(eval $(call KernelPackage,mii))
>  define KernelPackage/mdio-gpio
>    SUBMENU:=3D$(NETWORK_DEVICES_MENU)
>    TITLE:=3D Supports GPIO lib-based MDIO busses
> -  DEPENDS:=3D+kmod-libphy @GPIO_SUPPORT
> +(TARGET_armvirt||TARGET_brcm2708_bcm2708||TARGET_samsung||TAR
> GET_tegra):kmod-of-mdio
> +  DEPENDS:=3D+kmod-libphy @GPIO_SUPPORT
> +(TARGET_armvirt||TARGET_bcm27xx_bcm2708||TARGET_samsung||TAR
> GET_tegra):kmod-of-mdio
>    KCONFIG:=3D \
>  	CONFIG_MDIO_BITBANG \
>  	CONFIG_MDIO_GPIO
> @@ -320,7 +320,7 @@ $(eval $(call KernelPackage,switch-rtl8306))
>  define KernelPackage/switch-rtl8366-smi
>    SUBMENU:=3D$(NETWORK_DEVICES_MENU)
>    TITLE:=3DRealtek RTL8366 SMI switch interface support
> -  DEPENDS:=3D@GPIO_SUPPORT +kmod-swconfig
> +(TARGET_armvirt||TARGET_brcm2708_bcm2708||TARGET_samsung||TAR
> GET_tegra):kmod-of-mdio
> +  DEPENDS:=3D@GPIO_SUPPORT +kmod-swconfig
> +(TARGET_armvirt||TARGET_bcm27xx_bcm2708||TARGET_samsung||TAR
> GET_tegra):kmod-of-mdio
>    KCONFIG:=3DCONFIG_RTL8366_SMI
>    FILES:=3D$(LINUX_DIR)/drivers/net/phy/rtl8366_smi.ko
>    AUTOLOAD:=3D$(call AutoLoad,42,rtl8366_smi)
> diff --git a/package/kernel/mac80211/broadcom.mk
> b/package/kernel/mac80211/broadcom.mk
> index c725c4924f..41320bcc12 100644
> --- a/package/kernel/mac80211/broadcom.mk
> +++ b/package/kernel/mac80211/broadcom.mk
> @@ -449,7 +449,7 @@ define KernelPackage/brcmfmac/config
>=20
>  	config BRCMFMAC_SDIO
>  		bool "Enable SDIO bus interface support"
> -		default y if TARGET_brcm2708
> +		default y if TARGET_bcm27xx
>  		default y if TARGET_sunxi
>  		default n
>  		help
> diff --git a/package/utils/brcm2708-userland/Makefile
> b/package/utils/bcm2708-userland/Makefile
> similarity index 85%
> rename from package/utils/brcm2708-userland/Makefile
> rename to package/utils/bcm2708-userland/Makefile
> index 7fea952974..65db69b259 100644
> --- a/package/utils/brcm2708-userland/Makefile
> +++ b/package/utils/bcm2708-userland/Makefile
> @@ -7,7 +7,7 @@
>=20
>  include $(TOPDIR)/rules.mk
>=20
> -PKG_NAME:=3Dbrcm2708-userland
> +PKG_NAME:=3Dbcm2708-userland
>  PKG_VERSION:=3D42ec119e03eb8dffc7c83e2ac0e665e333abbef6
>  PKG_RELEASE:=3D1
>=20
> @@ -34,19 +34,19 @@ include $(INCLUDE_DIR)/cmake.mk
>  TAR_OPTIONS:=3D--strip-components 1 $(TAR_OPTIONS)
>  TAR_CMD=3D$(HOST_TAR) -C $(1) $(TAR_OPTIONS)
>=20
> -define Package/brcm2708-userland
> +define Package/bcm2708-userland
>    SECTION:=3Dutils
>    CATEGORY:=3DUtilities
> -  DEPENDS:=3D@TARGET_brcm2708
> +  DEPENDS:=3D@TARGET_bcm27xx
>    TITLE:=3DBCM2708 userland tools
> -  DEFAULT:=3Dy if TARGET_brcm2708
> +  DEFAULT:=3Dy if TARGET_bcm27xx
>  endef
>=20
> -define Package/brcm2708-userland/description
> +define Package/bcm2708-userland/description
>    BCM2708 userland tools including vcgencmd and tvservice.
>  endef
>=20
> -define Package/brcm2708-userland/install
> +define Package/bcm2708-userland/install
>  	$(INSTALL_DIR) $(1)/usr/bin
>  	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/dtparam $(1)/usr/bin
>  	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/dtoverlay $(1)/usr/bin
> @@ -61,4 +61,4 @@ define Package/brcm2708-userland/install
>  	$(CP) $(PKG_INSTALL_DIR)/usr/lib/ $(1)/usr/
>  endef
>=20
> -$(eval $(call BuildPackage,brcm2708-userland))
> +$(eval $(call BuildPackage,bcm2708-userland))
> diff --git a/package/utils/brcm2708-userland/patches/001-interface-
> vcms_host-cmake-fixes.patch b/package/utils/bcm2708-
> userland/patches/001-interface-vcms_host-cmake-fixes.patch
> similarity index 100%
> rename from package/utils/brcm2708-userland/patches/001-interface-
> vcms_host-cmake-fixes.patch
> rename to package/utils/bcm2708-userland/patches/001-interface-
> vcms_host-cmake-fixes.patch
> diff --git a/target/linux/brcm2708/Makefile
> b/target/linux/bcm27xx/Makefile
> similarity index 96%
> rename from target/linux/brcm2708/Makefile
> rename to target/linux/bcm27xx/Makefile
> index d93575891e..6a89104084 100644
> --- a/target/linux/brcm2708/Makefile
> +++ b/target/linux/bcm27xx/Makefile
> @@ -8,7 +8,7 @@
>  include $(TOPDIR)/rules.mk
>=20
>  ARCH:=3Darm
> -BOARD:=3Dbrcm2708
> +BOARD:=3Dbcm27xx
>  BOARDNAME:=3DBroadcom BCM27xx
>  FEATURES:=3Dext4 audio usb usbgadget display gpio fpu squashfs rootfs-pa=
rt
> boot-part
>  MAINTAINER:=3D=C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> @@ -23,7 +23,7 @@ endef
>=20
>  include $(INCLUDE_DIR)/target.mk
>  DEFAULT_PACKAGES +=3D \
> -	brcm2708-gpu-fw \
> +	bcm2708-gpu-fw \
>  	kmod-usb-hid \
>  	kmod-sound-core kmod-sound-arm-bcm2835 \
>  	kmod-fs-vfat kmod-nls-cp437 kmod-nls-iso8859-1 \
> diff --git a/target/linux/brcm2708/base-files/etc/board.d/02_network
> b/target/linux/bcm27xx/base-files/etc/board.d/02_network
> similarity index 100%
> rename from target/linux/brcm2708/base-files/etc/board.d/02_network
> rename to target/linux/bcm27xx/base-files/etc/board.d/02_network
> diff --git a/target/linux/brcm2708/base-files/etc/diag.sh
> b/target/linux/bcm27xx/base-files/etc/diag.sh
> similarity index 100%
> rename from target/linux/brcm2708/base-files/etc/diag.sh
> rename to target/linux/bcm27xx/base-files/etc/diag.sh
> diff --git a/target/linux/brcm2708/base-files/etc/inittab
> b/target/linux/bcm27xx/base-files/etc/inittab
> similarity index 100%
> rename from target/linux/brcm2708/base-files/etc/inittab
> rename to target/linux/bcm27xx/base-files/etc/inittab
> diff --git a/target/linux/brcm2708/base-
> files/lib/preinit/05_set_preinit_iface_brcm2708
> b/target/linux/bcm27xx/base-
> files/lib/preinit/05_set_preinit_iface_brcm2708
> similarity index 100%
> rename from target/linux/brcm2708/base-
> files/lib/preinit/05_set_preinit_iface_brcm2708
> rename to target/linux/bcm27xx/base-
> files/lib/preinit/05_set_preinit_iface_brcm2708
> diff --git a/target/linux/brcm2708/base-files/lib/preinit/79_move_config
> b/target/linux/bcm27xx/base-files/lib/preinit/79_move_config
> similarity index 100%
> rename from target/linux/brcm2708/base-files/lib/preinit/79_move_config
> rename to target/linux/bcm27xx/base-files/lib/preinit/79_move_config
> diff --git a/target/linux/brcm2708/base-files/lib/upgrade/keep.d/platform
> b/target/linux/bcm27xx/base-files/lib/upgrade/keep.d/platform
> similarity index 100%
> rename from target/linux/brcm2708/base-
> files/lib/upgrade/keep.d/platform
> rename to target/linux/bcm27xx/base-files/lib/upgrade/keep.d/platform
> diff --git a/target/linux/brcm2708/base-files/lib/upgrade/platform.sh
> b/target/linux/bcm27xx/base-files/lib/upgrade/platform.sh
> similarity index 100%
> rename from target/linux/brcm2708/base-files/lib/upgrade/platform.sh
> rename to target/linux/bcm27xx/base-files/lib/upgrade/platform.sh
> diff --git a/target/linux/brcm2708/bcm2708/config-4.19
> b/target/linux/bcm27xx/bcm2708/config-4.19
> similarity index 100%
> rename from target/linux/brcm2708/bcm2708/config-4.19
> rename to target/linux/bcm27xx/bcm2708/config-4.19
> diff --git a/target/linux/brcm2708/bcm2708/target.mk
> b/target/linux/bcm27xx/bcm2708/target.mk
> similarity index 100%
> rename from target/linux/brcm2708/bcm2708/target.mk
> rename to target/linux/bcm27xx/bcm2708/target.mk
> diff --git a/target/linux/brcm2708/bcm2709/config-4.19
> b/target/linux/bcm27xx/bcm2709/config-4.19
> similarity index 100%
> rename from target/linux/brcm2708/bcm2709/config-4.19
> rename to target/linux/bcm27xx/bcm2709/config-4.19
> diff --git a/target/linux/brcm2708/bcm2709/target.mk
> b/target/linux/bcm27xx/bcm2709/target.mk
> similarity index 100%
> rename from target/linux/brcm2708/bcm2709/target.mk
> rename to target/linux/bcm27xx/bcm2709/target.mk
> diff --git a/target/linux/brcm2708/bcm2710/config-4.19
> b/target/linux/bcm27xx/bcm2710/config-4.19
> similarity index 100%
> rename from target/linux/brcm2708/bcm2710/config-4.19
> rename to target/linux/bcm27xx/bcm2710/config-4.19
> diff --git a/target/linux/brcm2708/bcm2710/target.mk
> b/target/linux/bcm27xx/bcm2710/target.mk
> similarity index 100%
> rename from target/linux/brcm2708/bcm2710/target.mk
> rename to target/linux/bcm27xx/bcm2710/target.mk
> diff --git a/target/linux/brcm2708/bcm2711/config-4.19
> b/target/linux/bcm27xx/bcm2711/config-4.19
> similarity index 100%
> rename from target/linux/brcm2708/bcm2711/config-4.19
> rename to target/linux/bcm27xx/bcm2711/config-4.19
> diff --git a/target/linux/brcm2708/bcm2711/target.mk
> b/target/linux/bcm27xx/bcm2711/target.mk
> similarity index 100%
> rename from target/linux/brcm2708/bcm2711/target.mk
> rename to target/linux/bcm27xx/bcm2711/target.mk
> diff --git a/target/linux/brcm2708/image/Makefile
> b/target/linux/bcm27xx/image/Makefile
> similarity index 100%
> rename from target/linux/brcm2708/image/Makefile
> rename to target/linux/bcm27xx/image/Makefile
> diff --git a/target/linux/brcm2708/image/cmdline.txt
> b/target/linux/bcm27xx/image/cmdline.txt
> similarity index 100%
> rename from target/linux/brcm2708/image/cmdline.txt
> rename to target/linux/bcm27xx/image/cmdline.txt
> diff --git a/target/linux/brcm2708/image/config.txt
> b/target/linux/bcm27xx/image/config.txt
> similarity index 100%
> rename from target/linux/brcm2708/image/config.txt
> rename to target/linux/bcm27xx/image/config.txt
> diff --git a/target/linux/brcm2708/image/distroconfig.txt
> b/target/linux/bcm27xx/image/distroconfig.txt
> similarity index 100%
> rename from target/linux/brcm2708/image/distroconfig.txt
> rename to target/linux/bcm27xx/image/distroconfig.txt
> diff --git a/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh
> b/target/linux/bcm27xx/image/gen_rpi_sdcard_img.sh
> similarity index 100%
> rename from target/linux/brcm2708/image/gen_rpi_sdcard_img.sh
> rename to target/linux/bcm27xx/image/gen_rpi_sdcard_img.sh
> diff --git a/target/linux/brcm2708/modules.mk
> b/target/linux/bcm27xx/modules.mk
> similarity index 74%
> rename from target/linux/brcm2708/modules.mk
> rename to target/linux/bcm27xx/modules.mk
> index 3e51e84879..480509193f 100644
> --- a/target/linux/brcm2708/modules.mk
> +++ b/target/linux/bcm27xx/modules.mk
> @@ -5,4 +5,4 @@
>  # See /LICENSE for more information.
>  #
>=20
> -include $(TOPDIR)/target/linux/brcm2708/modules/*.mk
> +include $(TOPDIR)/target/linux/bcm27xx/modules/*.mk
> diff --git a/target/linux/brcm2708/modules/hwmon.mk
> b/target/linux/bcm27xx/modules/hwmon.mk
> similarity index 91%
> rename from target/linux/brcm2708/modules/hwmon.mk
> rename to target/linux/bcm27xx/modules/hwmon.mk
> index 9b790010b3..5081cee1d3 100644
> --- a/target/linux/brcm2708/modules/hwmon.mk
> +++ b/target/linux/bcm27xx/modules/hwmon.mk
> @@ -10,7 +10,7 @@ define KernelPackage/hwmon-raspberrypi
>    KCONFIG:=3DCONFIG_SENSORS_RASPBERRYPI_HWMON
>    FILES:=3D$(LINUX_DIR)/drivers/hwmon/raspberrypi-hwmon.ko
>    AUTOLOAD:=3D$(call AutoLoad,60,raspberrypi-hwmon)
> -  $(call AddDepends/hwmon,@TARGET_brcm2708)
> +  $(call AddDepends/hwmon,@TARGET_bcm27xx)
>  endef
>=20
>  define KernelPackage/hwmon-raspberrypi/description
> @@ -23,7 +23,7 @@ $(eval $(call KernelPackage,hwmon-raspberrypi))
>  define KernelPackage/hwmon-rpi-poe-fan
>    SUBMENU:=3D$(HWMON_MENU)
>    TITLE:=3DRaspberry Pi PoE HAT fan
> -  DEPENDS:=3D@TARGET_brcm2708 +kmod-hwmon-core
> +  DEPENDS:=3D@TARGET_bcm27xx +kmod-hwmon-core
>    KCONFIG:=3DCONFIG_SENSORS_RPI_POE_FAN
>    FILES:=3D$(LINUX_DIR)/drivers/hwmon/rpi-poe-fan.ko
>    AUTOLOAD:=3D$(call AutoProbe,rpi-poe-fan)
> diff --git a/target/linux/brcm2708/modules/i2c.mk
> b/target/linux/bcm27xx/modules/i2c.mk
> similarity index 92%
> rename from target/linux/brcm2708/modules/i2c.mk
> rename to target/linux/bcm27xx/modules/i2c.mk
> index ebba032f94..15beac41e5 100644
> --- a/target/linux/brcm2708/modules/i2c.mk
> +++ b/target/linux/bcm27xx/modules/i2c.mk
> @@ -11,7 +11,7 @@ I2C_BCM2835_MODULES:=3D\
>  define KernelPackage/i2c-bcm2835
>    $(call i2c_defaults,$(I2C_BCM2835_MODULES),59)
>    TITLE:=3DBroadcom BCM2835 I2C master controller driver
> -  DEPENDS:=3D@TARGET_brcm2708 +kmod-i2c-core
> +  DEPENDS:=3D@TARGET_bcm27xx +kmod-i2c-core
>  endef
>=20
>  define KernelPackage/i2c-bcm2835/description
> diff --git a/target/linux/brcm2708/modules/other.mk
> b/target/linux/bcm27xx/modules/other.mk
> similarity index 92%
> rename from target/linux/brcm2708/modules/other.mk
> rename to target/linux/bcm27xx/modules/other.mk
> index ce3b2b6fb0..077c5e67a8 100644
> --- a/target/linux/brcm2708/modules/other.mk
> +++ b/target/linux/bcm27xx/modules/other.mk
> @@ -13,7 +13,7 @@ define KernelPackage/pwm-bcm2835
>      CONFIG_PWM_BCM2835
>    FILES:=3D$(LINUX_DIR)/drivers/pwm/pwm-bcm2835.ko
>    AUTOLOAD:=3D$(call AutoLoad,60,pwm-bcm2835)
> -  DEPENDS:=3D@TARGET_brcm2708
> +  DEPENDS:=3D@TARGET_bcm27xx
>  endef
>=20
>  define KernelPackage/pwm-bcm2835/description
> @@ -30,7 +30,7 @@ define KernelPackage/random-bcm2835
>      CONFIG_HW_RANDOM_BCM2835
>    FILES:=3D$(LINUX_DIR)/drivers/char/hw_random/bcm2835-rng.ko
>    AUTOLOAD:=3D$(call AutoLoad,11,bcm2835-rng)
> -  DEPENDS:=3D@TARGET_brcm2708 +kmod-random-core
> +  DEPENDS:=3D@TARGET_bcm27xx +kmod-random-core
>  endef
>=20
>  define KernelPackage/random-bcm2835/description
> @@ -46,7 +46,7 @@ define KernelPackage/smi-bcm2835
>    KCONFIG:=3DCONFIG_BCM2835_SMI
>    FILES:=3D$(LINUX_DIR)/drivers/misc/bcm2835_smi.ko
>    AUTOLOAD:=3D$(call AutoLoad,20,bcm2835_smi)
> -  DEPENDS:=3D@TARGET_brcm2708
> +  DEPENDS:=3D@TARGET_bcm27xx
>  endef
>=20
>  define KernelPackage/smi-bcm2835/description
> @@ -63,7 +63,7 @@ define KernelPackage/smi-bcm2835-dev
>    KCONFIG:=3DCONFIG_BCM2835_SMI_DEV
>    FILES:=3D$(LINUX_DIR)/drivers/char/broadcom/bcm2835_smi_dev.ko
>    AUTOLOAD:=3D$(call AutoLoad,21,bcm2835_smi_dev)
> -  DEPENDS:=3D@TARGET_brcm2708 +kmod-smi-bcm2835
> +  DEPENDS:=3D@TARGET_bcm27xx +kmod-smi-bcm2835
>  endef
>=20
>  define KernelPackage/smi-bcm2835-dev/description
> diff --git a/target/linux/brcm2708/modules/sound.mk
> b/target/linux/bcm27xx/modules/sound.mk
> similarity index 99%
> rename from target/linux/brcm2708/modules/sound.mk
> rename to target/linux/bcm27xx/modules/sound.mk
> index b7da77b854..8d449a51fa 100644
> --- a/target/linux/brcm2708/modules/sound.mk
> +++ b/target/linux/bcm27xx/modules/sound.mk
> @@ -14,7 +14,7 @@ define KernelPackage/sound-arm-bcm2835
>    FILES:=3D \
>      $(LINUX_DIR)/drivers/staging/vc04_services/bcm2835-audio/snd-
> bcm2835.ko
>    AUTOLOAD:=3D$(call AutoLoad,68,snd-bcm2835)
> -  DEPENDS:=3D@TARGET_brcm2708
> +  DEPENDS:=3D@TARGET_bcm27xx
>    $(call AddDepends/sound)
>  endef
>=20
> @@ -36,7 +36,7 @@ define KernelPackage/sound-soc-bcm2835-i2s
>    FILES:=3D \
>      $(LINUX_DIR)/sound/soc/bcm/snd-soc-bcm2835-i2s.ko
>    AUTOLOAD:=3D$(call AutoLoad,68,snd-soc-bcm2835-i2s)
> -  DEPENDS:=3D@TARGET_brcm2708 +kmod-sound-soc-core
> +  DEPENDS:=3D@TARGET_bcm27xx +kmod-sound-soc-core
>    $(call AddDepends/sound)
>  endef
>=20
> diff --git a/target/linux/brcm2708/modules/spi.mk
> b/target/linux/bcm27xx/modules/spi.mk
> similarity index 95%
> rename from target/linux/brcm2708/modules/spi.mk
> rename to target/linux/bcm27xx/modules/spi.mk
> index eaddbadf6f..8840852149 100644
> --- a/target/linux/brcm2708/modules/spi.mk
> +++ b/target/linux/bcm27xx/modules/spi.mk
> @@ -14,7 +14,7 @@ define KernelPackage/spi-bcm2835
>      CONFIG_SPI_MASTER=3Dy
>    FILES:=3D$(LINUX_DIR)/drivers/spi/spi-bcm2835.ko
>    AUTOLOAD:=3D$(call AutoLoad,89,spi-bcm2835)
> -  DEPENDS:=3D@TARGET_brcm2708
> +  DEPENDS:=3D@TARGET_bcm27xx
>  endef
>=20
>  define KernelPackage/spi-bcm2835/description
> @@ -33,7 +33,7 @@ define KernelPackage/spi-bcm2835-aux
>      CONFIG_SPI_MASTER=3Dy
>    FILES:=3D$(LINUX_DIR)/drivers/spi/spi-bcm2835aux.ko
>    AUTOLOAD:=3D$(call AutoLoad,89,spi-bcm2835aux)
> -  DEPENDS:=3D@TARGET_brcm2708
> +  DEPENDS:=3D@TARGET_bcm27xx
>  endef
>=20
>  define KernelPackage/spi-bcm2835-aux/description
> diff --git a/target/linux/brcm2708/modules/video.mk
> b/target/linux/bcm27xx/modules/video.mk
> similarity index 90%
> rename from target/linux/brcm2708/modules/video.mk
> rename to target/linux/bcm27xx/modules/video.mk
> index 7f5b05060f..f1da7d8321 100644
> --- a/target/linux/brcm2708/modules/video.mk
> +++ b/target/linux/bcm27xx/modules/video.mk
> @@ -13,7 +13,7 @@ define KernelPackage/camera-bcm2835
>    FILES:=3D \
>      $(LINUX_DIR)/drivers/staging/vc04_services/bcm2835-camera/bcm2835-
> v4l2.ko
>    AUTOLOAD:=3D$(call AutoLoad,65,bcm2835-v4l2)
> -  $(call AddDepends/video,@TARGET_brcm2708 +kmod-vchiq-mmal-
> bcm2835 +kmod-video-videobuf2)
> +  $(call AddDepends/video,@TARGET_bcm27xx +kmod-vchiq-mmal-
> bcm2835 +kmod-video-videobuf2)
>  endef
>=20
>  define KernelPackage/camera-bcm2835/description
> @@ -28,7 +28,7 @@ define KernelPackage/drm-vc4
>    SUBMENU:=3D$(VIDEO_MENU)
>    TITLE:=3DBroadcom VC4 Graphics
>    DEPENDS:=3D \
> -    @TARGET_brcm2708 +kmod-drm \
> +    @TARGET_bcm27xx +kmod-drm \
>      +kmod-sound-core \
>      +kmod-sound-soc-core
>    KCONFIG:=3D \
> @@ -56,7 +56,7 @@ define KernelPackage/vc-sm-cma
>      CONFIG_BCM_VC_SM_CMA
>    FILES:=3D \
>      $(LINUX_DIR)/drivers/staging/vc04_services/vc-sm-cma/vc-sm-cma.ko
> -  $(call AddDepends/video,@TARGET_brcm2708)
> +  $(call AddDepends/video,@TARGET_bcm27xx)
>  endef
>=20
>  define KernelPackage/vc-sm-cma/description
> @@ -74,7 +74,7 @@ define KernelPackage/vchiq-mmal-bcm2835
>      CONFIG_VIDEO_CODEC_BCM2835=3Dn
>    FILES:=3D \
>      $(LINUX_DIR)/drivers/staging/vc04_services/vchiq-mmal/bcm2835-mmal-
> vchiq.ko
> -  $(call AddDepends/video,@TARGET_brcm2708 +kmod-vc-sm-cma)
> +  $(call AddDepends/video,@TARGET_bcm27xx +kmod-vc-sm-cma)
>  endef
>=20
>  define KernelPackage/vchiq-mmal-bcm2835/description
> diff --git a/target/linux/brcm2708/patches-4.19/950-0001-arm-partially-
> revert-702b94bff3c50542a6e4ab9a4f4cef0.patch
> b/target/linux/bcm27xx/patches-4.19/950-0001-arm-partially-revert-
> 702b94bff3c50542a6e4ab9a4f4cef0.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0001-arm-partially-
> revert-702b94bff3c50542a6e4ab9a4f4cef0.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0001-arm-partially-
> revert-702b94bff3c50542a6e4ab9a4f4cef0.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0002-smsx95xx-fix-
> crimes-against-truesize.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0002-smsx95xx-fix-crimes-against-truesize.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0002-smsx95xx-fix-
> crimes-against-truesize.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0002-smsx95xx-fix-
> crimes-against-truesize.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0003-smsc95xx-
> Experimental-Enable-turbo_mode-and-packetsi.patch
> b/target/linux/bcm27xx/patches-4.19/950-0003-smsc95xx-Experimental-
> Enable-turbo_mode-and-packetsi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0003-smsc95xx-
> Experimental-Enable-turbo_mode-and-packetsi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0003-smsc95xx-
> Experimental-Enable-turbo_mode-and-packetsi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0004-Allow-mac-
> address-to-be-set-in-smsc95xx.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0004-Allow-mac-address-to-be-set-in-smsc95xx.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0004-Allow-mac-
> address-to-be-set-in-smsc95xx.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0004-Allow-mac-address-
> to-be-set-in-smsc95xx.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0005-Protect-
> __release_resource-against-resources-without.patch
> b/target/linux/bcm27xx/patches-4.19/950-0005-Protect-
> __release_resource-against-resources-without.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0005-Protect-
> __release_resource-against-resources-without.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0005-Protect-
> __release_resource-against-resources-without.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0006-irq-bcm2836-
> Prevent-spurious-interrupts-and-trap-the.patch
> b/target/linux/bcm27xx/patches-4.19/950-0006-irq-bcm2836-Prevent-
> spurious-interrupts-and-trap-the.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0006-irq-bcm2836-
> Prevent-spurious-interrupts-and-trap-the.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0006-irq-bcm2836-
> Prevent-spurious-interrupts-and-trap-the.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0007-irq-bcm2836-
> Avoid-Invalid-trigger-warning.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0007-irq-bcm2836-Avoid-Invalid-trigger-warning.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0007-irq-bcm2836-
> Avoid-Invalid-trigger-warning.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0007-irq-bcm2836-Avoid-
> Invalid-trigger-warning.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0008-irqchip-bcm2835-
> Add-FIQ-support.patch b/target/linux/bcm27xx/patches-4.19/950-0008-
> irqchip-bcm2835-Add-FIQ-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0008-irqchip-
> bcm2835-Add-FIQ-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0008-irqchip-bcm2835-
> Add-FIQ-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0009-irqchip-irq-
> bcm2835-Add-2836-FIQ-support.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0009-irqchip-irq-bcm2835-Add-2836-FIQ-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0009-irqchip-irq-
> bcm2835-Add-2836-FIQ-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0009-irqchip-irq-
> bcm2835-Add-2836-FIQ-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0010-spi-bcm2835-
> Support-pin-groups-other-than-7-11.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0010-spi-bcm2835-Support-pin-groups-other-than-7-11.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0010-spi-bcm2835-
> Support-pin-groups-other-than-7-11.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0010-spi-bcm2835-
> Support-pin-groups-other-than-7-11.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0011-spi-bcm2835-
> Disable-forced-software-CS.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0011-spi-bcm2835-Disable-forced-software-CS.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0011-spi-bcm2835-
> Disable-forced-software-CS.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0011-spi-bcm2835-
> Disable-forced-software-CS.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0012-spi-bcm2835-
> Remove-unused-code.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0012-spi-bcm2835-Remove-unused-code.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0012-spi-bcm2835-
> Remove-unused-code.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0012-spi-bcm2835-
> Remove-unused-code.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0013-dmaengine-
> bcm2835-Load-driver-early-and-support-lega.patch
> b/target/linux/bcm27xx/patches-4.19/950-0013-dmaengine-bcm2835-Load-
> driver-early-and-support-lega.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0013-dmaengine-
> bcm2835-Load-driver-early-and-support-lega.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0013-dmaengine-
> bcm2835-Load-driver-early-and-support-lega.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0014-firmware-
> Updated-mailbox-header.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0014-firmware-Updated-mailbox-header.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0014-firmware-
> Updated-mailbox-header.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0014-firmware-Updated-
> mailbox-header.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0015-rtc-Add-SPI-alia=
s-
> for-pcf2123-driver.patch b/target/linux/bcm27xx/patches-4.19/950-0015-rtc-
> Add-SPI-alias-for-pcf2123-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0015-rtc-Add-SPI-
> alias-for-pcf2123-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0015-rtc-Add-SPI-alias-
> for-pcf2123-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0016-watchdog-
> bcm2835-Support-setting-reboot-partition.patch
> b/target/linux/bcm27xx/patches-4.19/950-0016-watchdog-bcm2835-
> Support-setting-reboot-partition.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0016-watchdog-
> bcm2835-Support-setting-reboot-partition.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0016-watchdog-
> bcm2835-Support-setting-reboot-partition.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0017-reboot-Use-
> power-off-rather-than-busy-spinning-when-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0017-reboot-Use-power-off-
> rather-than-busy-spinning-when-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0017-reboot-Use-
> power-off-rather-than-busy-spinning-when-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0017-reboot-Use-power-
> off-rather-than-busy-spinning-when-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0018-bcm-Make-
> RASPBERRYPI_POWER-depend-on-PM.patch
> b/target/linux/bcm27xx/patches-4.19/950-0018-bcm-Make-
> RASPBERRYPI_POWER-depend-on-PM.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0018-bcm-Make-
> RASPBERRYPI_POWER-depend-on-PM.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0018-bcm-Make-
> RASPBERRYPI_POWER-depend-on-PM.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0019-Register-the-
> clocks-early-during-the-boot-process-so.patch
> b/target/linux/bcm27xx/patches-4.19/950-0019-Register-the-clocks-early-
> during-the-boot-process-so.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0019-Register-the-
> clocks-early-during-the-boot-process-so.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0019-Register-the-clocks-
> early-during-the-boot-process-so.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0020-bcm2835-rng-
> Avoid-initialising-if-already-enabled.patch b/target/linux/bcm27xx/patche=
s-
> 4.19/950-0020-bcm2835-rng-Avoid-initialising-if-already-enabled.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0020-bcm2835-rng-
> Avoid-initialising-if-already-enabled.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0020-bcm2835-rng-
> Avoid-initialising-if-already-enabled.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0021-kbuild-Ignore-dt=
co-
> targets-when-filtering-symbols.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0021-kbuild-Ignore-dtco-targets-when-filtering-symbols.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0021-kbuild-Ignore-
> dtco-targets-when-filtering-symbols.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0021-kbuild-Ignore-dtco-
> targets-when-filtering-symbols.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0022-clk-bcm2835-Mark-
> used-PLLs-and-dividers-CRITICAL.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0022-clk-bcm2835-Mark-used-PLLs-and-dividers-CRITICAL.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0022-clk-bcm2835-
> Mark-used-PLLs-and-dividers-CRITICAL.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0022-clk-bcm2835-Mark-
> used-PLLs-and-dividers-CRITICAL.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0023-clk-bcm2835-Add-
> claim-clocks-property.patch b/target/linux/bcm27xx/patches-4.19/950-0023-
> clk-bcm2835-Add-claim-clocks-property.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0023-clk-bcm2835-
> Add-claim-clocks-property.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0023-clk-bcm2835-Add-
> claim-clocks-property.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0024-clk-bcm2835-Read-
> max-core-clock-from-firmware.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0024-clk-bcm2835-Read-max-core-clock-from-firmware.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0024-clk-bcm2835-
> Read-max-core-clock-from-firmware.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0024-clk-bcm2835-Read-
> max-core-clock-from-firmware.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0025-clk-bcm2835-Mark-
> GPIO-clocks-enabled-at-boot-as-crit.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0025-clk-bcm2835-Mark-GPIO-clocks-enabled-at-boot-as-crit.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0025-clk-bcm2835-
> Mark-GPIO-clocks-enabled-at-boot-as-crit.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0025-clk-bcm2835-Mark-
> GPIO-clocks-enabled-at-boot-as-crit.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0026-sound-Demote-
> deferral-errors-to-INFO-level.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0026-sound-Demote-deferral-errors-to-INFO-level.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0026-sound-Demote-
> deferral-errors-to-INFO-level.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0026-sound-Demote-
> deferral-errors-to-INFO-level.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0027-Update-
> vfpmodule.c.patch b/target/linux/bcm27xx/patches-4.19/950-0027-Update-
> vfpmodule.c.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0027-Update-
> vfpmodule.c.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0027-Update-
> vfpmodule.c.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0028-i2c-bcm2835-Add-
> debug-support.patch b/target/linux/bcm27xx/patches-4.19/950-0028-i2c-
> bcm2835-Add-debug-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0028-i2c-bcm2835-
> Add-debug-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0028-i2c-bcm2835-Add-
> debug-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0029-mm-Remove-the-
> PFN-busy-warning.patch b/target/linux/bcm27xx/patches-4.19/950-0029-
> mm-Remove-the-PFN-busy-warning.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0029-mm-Remove-
> the-PFN-busy-warning.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0029-mm-Remove-the-
> PFN-busy-warning.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0030-ASoC-Add-prompt-
> for-ICS43432-codec.patch b/target/linux/bcm27xx/patches-4.19/950-0030-
> ASoC-Add-prompt-for-ICS43432-codec.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0030-ASoC-Add-
> prompt-for-ICS43432-codec.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0030-ASoC-Add-prompt-
> for-ICS43432-codec.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0031-irqchip-irq-
> bcm2836-Remove-regmap-and-syscon-use.patch
> b/target/linux/bcm27xx/patches-4.19/950-0031-irqchip-irq-bcm2836-
> Remove-regmap-and-syscon-use.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0031-irqchip-irq-
> bcm2836-Remove-regmap-and-syscon-use.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0031-irqchip-irq-
> bcm2836-Remove-regmap-and-syscon-use.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0032-lan78xx-Enable-
> LEDs-and-auto-negotiation.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0032-lan78xx-Enable-LEDs-and-auto-negotiation.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0032-lan78xx-Enable-
> LEDs-and-auto-negotiation.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0032-lan78xx-Enable-
> LEDs-and-auto-negotiation.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0033-amba_pl011-Don-t-
> use-DT-aliases-for-numbering.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0033-amba_pl011-Don-t-use-DT-aliases-for-numbering.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0033-amba_pl011-
> Don-t-use-DT-aliases-for-numbering.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0033-amba_pl011-Don-t-
> use-DT-aliases-for-numbering.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0034-amba_pl011-
> Round-input-clock-up.patch b/target/linux/bcm27xx/patches-4.19/950-0034-
> amba_pl011-Round-input-clock-up.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0034-amba_pl011-
> Round-input-clock-up.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0034-amba_pl011-
> Round-input-clock-up.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0035-amba_pl011-
> Insert-mb-for-correct-FIFO-handling.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0035-amba_pl011-Insert-mb-for-correct-FIFO-handling.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0035-amba_pl011-
> Insert-mb-for-correct-FIFO-handling.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0035-amba_pl011-Insert-
> mb-for-correct-FIFO-handling.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0036-amba_pl011-Add-
> cts-event-workaround-DT-property.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0036-amba_pl011-Add-cts-event-workaround-DT-property.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0036-amba_pl011-
> Add-cts-event-workaround-DT-property.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0036-amba_pl011-Add-
> cts-event-workaround-DT-property.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0037-pinctrl-bcm2835-
> Set-base-to-0-give-expected-gpio-num.patch
> b/target/linux/bcm27xx/patches-4.19/950-0037-pinctrl-bcm2835-Set-base-
> to-0-give-expected-gpio-num.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0037-pinctrl-
> bcm2835-Set-base-to-0-give-expected-gpio-num.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0037-pinctrl-bcm2835-
> Set-base-to-0-give-expected-gpio-num.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0038-Main-bcm2708-
> bcm2709-linux-port.patch b/target/linux/bcm27xx/patches-4.19/950-0038-
> Main-bcm2708-bcm2709-linux-port.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0038-Main-bcm2708-
> bcm2709-linux-port.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0038-Main-bcm2708-
> bcm2709-linux-port.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0039-Add-dwc_otg-
> driver.patch b/target/linux/bcm27xx/patches-4.19/950-0039-Add-dwc_otg-
> driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0039-Add-dwc_otg-
> driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0039-Add-dwc_otg-
> driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0040-bcm2708-
> framebuffer-driver.patch b/target/linux/bcm27xx/patches-4.19/950-0040-
> bcm2708-framebuffer-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0040-bcm2708-
> framebuffer-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0040-bcm2708-
> framebuffer-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0041-Speed-up-console-
> framebuffer-imageblit-function.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0041-Speed-up-console-framebuffer-imageblit-function.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0041-Speed-up-
> console-framebuffer-imageblit-function.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0041-Speed-up-console-
> framebuffer-imageblit-function.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0042-dmaengine-Add-
> support-for-BCM2708.patch b/target/linux/bcm27xx/patches-4.19/950-0042-
> dmaengine-Add-support-for-BCM2708.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0042-dmaengine-
> Add-support-for-BCM2708.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0042-dmaengine-Add-
> support-for-BCM2708.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0043-MMC-added-
> alternative-MMC-driver.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0043-MMC-added-alternative-MMC-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0043-MMC-added-
> alternative-MMC-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0043-MMC-added-
> alternative-MMC-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0044-Adding-bcm2835-
> sdhost-driver-and-an-overlay-to-enabl.patch
> b/target/linux/bcm27xx/patches-4.19/950-0044-Adding-bcm2835-sdhost-
> driver-and-an-overlay-to-enabl.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0044-Adding-
> bcm2835-sdhost-driver-and-an-overlay-to-enabl.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0044-Adding-bcm2835-
> sdhost-driver-and-an-overlay-to-enabl.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0045-vc_mem-Add-
> vc_mem-driver-for-querying-firmware-memor.patch
> b/target/linux/bcm27xx/patches-4.19/950-0045-vc_mem-Add-vc_mem-
> driver-for-querying-firmware-memor.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0045-vc_mem-Add-
> vc_mem-driver-for-querying-firmware-memor.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0045-vc_mem-Add-
> vc_mem-driver-for-querying-firmware-memor.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0046-vcsm-VideoCore-
> shared-memory-service-for-BCM2835.patch
> b/target/linux/bcm27xx/patches-4.19/950-0046-vcsm-VideoCore-shared-
> memory-service-for-BCM2835.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0046-vcsm-
> VideoCore-shared-memory-service-for-BCM2835.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0046-vcsm-VideoCore-
> shared-memory-service-for-BCM2835.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0047-Add-dev-
> gpiomem-device-for-rootless-user-GPIO-access.patch
> b/target/linux/bcm27xx/patches-4.19/950-0047-Add-dev-gpiomem-device-
> for-rootless-user-GPIO-access.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0047-Add-dev-
> gpiomem-device-for-rootless-user-GPIO-access.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0047-Add-dev-gpiomem-
> device-for-rootless-user-GPIO-access.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0048-Add-SMI-
> driver.patch b/target/linux/bcm27xx/patches-4.19/950-0048-Add-SMI-
> driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0048-Add-SMI-
> driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0048-Add-SMI-
> driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0049-MISC-bcm2835-
> smi-use-clock-manager-and-fix-reload-is.patch
> b/target/linux/bcm27xx/patches-4.19/950-0049-MISC-bcm2835-smi-use-
> clock-manager-and-fix-reload-is.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0049-MISC-bcm2835-
> smi-use-clock-manager-and-fix-reload-is.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0049-MISC-bcm2835-smi-
> use-clock-manager-and-fix-reload-is.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0050-Add-SMI-NAND-
> driver.patch b/target/linux/bcm27xx/patches-4.19/950-0050-Add-SMI-
> NAND-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0050-Add-SMI-
> NAND-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0050-Add-SMI-NAND-
> driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0051-Add-cpufreq-
> driver.patch b/target/linux/bcm27xx/patches-4.19/950-0051-Add-cpufreq-
> driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0051-Add-cpufreq-
> driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0051-Add-cpufreq-
> driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0052-Add-Chris-Boot-s-
> i2c-driver.patch b/target/linux/bcm27xx/patches-4.19/950-0052-Add-Chris-
> Boot-s-i2c-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0052-Add-Chris-Boot-
> s-i2c-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0052-Add-Chris-Boot-s-
> i2c-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0053-char-broadcom-
> Add-vcio-module.patch b/target/linux/bcm27xx/patches-4.19/950-0053-
> char-broadcom-Add-vcio-module.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0053-char-broadcom-
> Add-vcio-module.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0053-char-broadcom-
> Add-vcio-module.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0054-firmware-
> bcm2835-Support-ARCH_BCM270x.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0054-firmware-bcm2835-Support-ARCH_BCM270x.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0054-firmware-
> bcm2835-Support-ARCH_BCM270x.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0054-firmware-bcm2835-
> Support-ARCH_BCM270x.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0055-scripts-Add-
> mkknlimg-and-knlinfo-scripts-from-tools-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0055-scripts-Add-mkknlimg-and-
> knlinfo-scripts-from-tools-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0055-scripts-Add-
> mkknlimg-and-knlinfo-scripts-from-tools-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0055-scripts-Add-
> mkknlimg-and-knlinfo-scripts-from-tools-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0056-BCM2708-Add-
> core-Device-Tree-support.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0056-BCM2708-Add-core-Device-Tree-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0056-BCM2708-Add-
> core-Device-Tree-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0056-BCM2708-Add-
> core-Device-Tree-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0057-BCM270x_DT-Add-
> pwr_led-and-the-required-input-trigge.patch
> b/target/linux/bcm27xx/patches-4.19/950-0057-BCM270x_DT-Add-pwr_led-
> and-the-required-input-trigge.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0057-BCM270x_DT-
> Add-pwr_led-and-the-required-input-trigge.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0057-BCM270x_DT-Add-
> pwr_led-and-the-required-input-trigge.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0058-fbdev-add-
> FBIOCOPYAREA-ioctl.patch b/target/linux/bcm27xx/patches-4.19/950-0058-
> fbdev-add-FBIOCOPYAREA-ioctl.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0058-fbdev-add-
> FBIOCOPYAREA-ioctl.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0058-fbdev-add-
> FBIOCOPYAREA-ioctl.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0059-Added-Device-IDs-
> for-August-DVB-T-205.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0059-Added-Device-IDs-for-August-DVB-T-205.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0059-Added-Device-
> IDs-for-August-DVB-T-205.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0059-Added-Device-IDs-
> for-August-DVB-T-205.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0060-rpi-ft5406-Add-
> touchscreen-driver-for-pi-LCD-display.patch
> b/target/linux/bcm27xx/patches-4.19/950-0060-rpi-ft5406-Add-touchscreen-
> driver-for-pi-LCD-display.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0060-rpi-ft5406-Add-
> touchscreen-driver-for-pi-LCD-display.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0060-rpi-ft5406-Add-
> touchscreen-driver-for-pi-LCD-display.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0061-Improve-
> __copy_to_user-and-__copy_from_user-performa.patch
> b/target/linux/bcm27xx/patches-4.19/950-0061-Improve-__copy_to_user-
> and-__copy_from_user-performa.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0061-Improve-
> __copy_to_user-and-__copy_from_user-performa.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0061-Improve-
> __copy_to_user-and-__copy_from_user-performa.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0062-gpio-poweroff-
> Allow-it-to-work-on-Raspberry-Pi.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0062-gpio-poweroff-Allow-it-to-work-on-Raspberry-Pi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0062-gpio-poweroff-
> Allow-it-to-work-on-Raspberry-Pi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0062-gpio-poweroff-
> Allow-it-to-work-on-Raspberry-Pi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0063-mfd-Add-
> Raspberry-Pi-Sense-HAT-core-driver.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0063-mfd-Add-Raspberry-Pi-Sense-HAT-core-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0063-mfd-Add-
> Raspberry-Pi-Sense-HAT-core-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0063-mfd-Add-
> Raspberry-Pi-Sense-HAT-core-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0064-ASoC-pcm512x-
> implement-set_tdm_slot-interface.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0064-ASoC-pcm512x-implement-set_tdm_slot-interface.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0064-ASoC-pcm512x-
> implement-set_tdm_slot-interface.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0064-ASoC-pcm512x-
> implement-set_tdm_slot-interface.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0065-ASoC-Add-
> support-for-Rpi-DAC.patch b/target/linux/bcm27xx/patches-4.19/950-0065-
> ASoC-Add-support-for-Rpi-DAC.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0065-ASoC-Add-
> support-for-Rpi-DAC.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0065-ASoC-Add-support-
> for-Rpi-DAC.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0066-Add-IQaudIO-
> Sound-Card-support-for-Raspberry-Pi.patch
> b/target/linux/bcm27xx/patches-4.19/950-0066-Add-IQaudIO-Sound-Card-
> support-for-Raspberry-Pi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0066-Add-IQaudIO-
> Sound-Card-support-for-Raspberry-Pi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0066-Add-IQaudIO-
> Sound-Card-support-for-Raspberry-Pi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0067-Added-support-
> for-HiFiBerry-DAC.patch b/target/linux/bcm27xx/patches-4.19/950-0067-
> Added-support-for-HiFiBerry-DAC.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0067-Added-support-
> for-HiFiBerry-DAC.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0067-Added-support-for-
> HiFiBerry-DAC.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0068-Added-driver-for-
> HiFiBerry-Amp-amplifier-add-on-boar.patch
> b/target/linux/bcm27xx/patches-4.19/950-0068-Added-driver-for-HiFiBerry-
> Amp-amplifier-add-on-boar.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0068-Added-driver-
> for-HiFiBerry-Amp-amplifier-add-on-boar.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0068-Added-driver-for-
> HiFiBerry-Amp-amplifier-add-on-boar.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0069-Add-driver-for-r=
pi-
> proto.patch b/target/linux/bcm27xx/patches-4.19/950-0069-Add-driver-for-
> rpi-proto.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0069-Add-driver-for-
> rpi-proto.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0069-Add-driver-for-rpi-
> proto.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0070-Add-Support-for-
> JustBoom-Audio-boards.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0070-Add-Support-for-JustBoom-Audio-boards.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0070-Add-Support-
> for-JustBoom-Audio-boards.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0070-Add-Support-for-
> JustBoom-Audio-boards.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0071-New-
> AudioInjector.net-Pi-soundcard-with-low-jitter-a.patch
> b/target/linux/bcm27xx/patches-4.19/950-0071-New-AudioInjector.net-Pi-
> soundcard-with-low-jitter-a.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0071-New-
> AudioInjector.net-Pi-soundcard-with-low-jitter-a.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0071-New-
> AudioInjector.net-Pi-soundcard-with-low-jitter-a.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0072-New-driver-for-
> RRA-DigiDAC1-soundcard-using-WM8741-W.patch
> b/target/linux/bcm27xx/patches-4.19/950-0072-New-driver-for-RRA-
> DigiDAC1-soundcard-using-WM8741-W.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0072-New-driver-for-
> RRA-DigiDAC1-soundcard-using-WM8741-W.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0072-New-driver-for-
> RRA-DigiDAC1-soundcard-using-WM8741-W.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0073-Add-support-for-
> Dion-Audio-LOCO-DAC-AMP-HAT.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0073-Add-support-for-Dion-Audio-LOCO-DAC-AMP-HAT.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0073-Add-support-
> for-Dion-Audio-LOCO-DAC-AMP-HAT.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0073-Add-support-for-
> Dion-Audio-LOCO-DAC-AMP-HAT.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0074-Allo-Piano-DAC-
> boards-Initial-2-channel-stereo-suppo.patch
> b/target/linux/bcm27xx/patches-4.19/950-0074-Allo-Piano-DAC-boards-
> Initial-2-channel-stereo-suppo.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0074-Allo-Piano-DAC-
> boards-Initial-2-channel-stereo-suppo.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0074-Allo-Piano-DAC-
> boards-Initial-2-channel-stereo-suppo.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0075-Add-support-for-
> Allo-Piano-DAC-2.1-plus-add-on-board.patch
> b/target/linux/bcm27xx/patches-4.19/950-0075-Add-support-for-Allo-Piano-
> DAC-2.1-plus-add-on-board.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0075-Add-support-
> for-Allo-Piano-DAC-2.1-plus-add-on-board.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0075-Add-support-for-
> Allo-Piano-DAC-2.1-plus-add-on-board.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0076-Add-support-for-
> Allo-Boss-DAC-add-on-board-for-Raspb.patch
> b/target/linux/bcm27xx/patches-4.19/950-0076-Add-support-for-Allo-Boss-
> DAC-add-on-board-for-Raspb.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0076-Add-support-
> for-Allo-Boss-DAC-add-on-board-for-Raspb.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0076-Add-support-for-
> Allo-Boss-DAC-add-on-board-for-Raspb.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0077-Support-for-
> Blokas-Labs-pisound-board.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0077-Support-for-Blokas-Labs-pisound-board.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0077-Support-for-
> Blokas-Labs-pisound-board.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0077-Support-for-Blokas-
> Labs-pisound-board.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0078-ASoC-Add-driver-
> for-Cirrus-Logic-Audio-Card.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0078-ASoC-Add-driver-for-Cirrus-Logic-Audio-Card.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0078-ASoC-Add-
> driver-for-Cirrus-Logic-Audio-Card.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0078-ASoC-Add-driver-
> for-Cirrus-Logic-Audio-Card.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0079-sound-Support-
> for-Dion-Audio-LOCO-V2-DAC-AMP-HAT.patch
> b/target/linux/bcm27xx/patches-4.19/950-0079-sound-Support-for-Dion-
> Audio-LOCO-V2-DAC-AMP-HAT.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0079-sound-Support-
> for-Dion-Audio-LOCO-V2-DAC-AMP-HAT.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0079-sound-Support-for-
> Dion-Audio-LOCO-V2-DAC-AMP-HAT.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0080-Add-support-for-
> Fe-Pi-audio-sound-card.-1867.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0080-Add-support-for-Fe-Pi-audio-sound-card.-1867.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0080-Add-support-
> for-Fe-Pi-audio-sound-card.-1867.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0080-Add-support-for-
> Fe-Pi-audio-sound-card.-1867.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0081-Add-support-for-
> the-AudioInjector.net-Octo-sound-car.patch
> b/target/linux/bcm27xx/patches-4.19/950-0081-Add-support-for-the-
> AudioInjector.net-Octo-sound-car.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0081-Add-support-
> for-the-AudioInjector.net-Octo-sound-car.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0081-Add-support-for-
> the-AudioInjector.net-Octo-sound-car.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0082-Driver-support-f=
or-
> Google-voiceHAT-soundcard.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0082-Driver-support-for-Google-voiceHAT-soundcard.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0082-Driver-support-
> for-Google-voiceHAT-soundcard.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0082-Driver-support-for-
> Google-voiceHAT-soundcard.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0083-Driver-and-
> overlay-for-Allo-Katana-DAC.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0083-Driver-and-overlay-for-Allo-Katana-DAC.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0083-Driver-and-
> overlay-for-Allo-Katana-DAC.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0083-Driver-and-overlay-
> for-Allo-Katana-DAC.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0084-ASoC-Add-generic-
> RPI-driver-for-simple-soundcards.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0084-ASoC-Add-generic-RPI-driver-for-simple-soundcards.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0084-ASoC-Add-
> generic-RPI-driver-for-simple-soundcards.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0084-ASoC-Add-generic-
> RPI-driver-for-simple-soundcards.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0085-ASoC-Add-Kconfig-
> and-Makefile-for-sound-soc-bcm.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0085-ASoC-Add-Kconfig-and-Makefile-for-sound-soc-bcm.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0085-ASoC-Add-
> Kconfig-and-Makefile-for-sound-soc-bcm.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0085-ASoC-Add-Kconfig-
> and-Makefile-for-sound-soc-bcm.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0086-ASoC-Create-a-
> generic-Pi-Hat-WM8804-driver.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0086-ASoC-Create-a-generic-Pi-Hat-WM8804-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0086-ASoC-Create-a-
> generic-Pi-Hat-WM8804-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0086-ASoC-Create-a-
> generic-Pi-Hat-WM8804-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0087-rpi_display-add-
> backlight-driver-and-overlay.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0087-rpi_display-add-backlight-driver-and-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0087-rpi_display-add-
> backlight-driver-and-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0087-rpi_display-add-
> backlight-driver-and-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0088-bcm2835-virtgpio-
> Virtual-GPIO-driver.patch b/target/linux/bcm27xx/patches-4.19/950-0088-
> bcm2835-virtgpio-Virtual-GPIO-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0088-bcm2835-
> virtgpio-Virtual-GPIO-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0088-bcm2835-virtgpio-
> Virtual-GPIO-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0089-OF-DT-Overlay-
> configfs-interface.patch b/target/linux/bcm27xx/patches-4.19/950-0089-OF-
> DT-Overlay-configfs-interface.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0089-OF-DT-Overlay-
> configfs-interface.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0089-OF-DT-Overlay-
> configfs-interface.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0090-hci_h5-Don-t-
> send-conf_req-when-ACTIVE.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0090-hci_h5-Don-t-send-conf_req-when-ACTIVE.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0090-hci_h5-Don-t-
> send-conf_req-when-ACTIVE.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0090-hci_h5-Don-t-send-
> conf_req-when-ACTIVE.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0091-Add-arm64-
> configuration-and-device-tree-differences..patch
> b/target/linux/bcm27xx/patches-4.19/950-0091-Add-arm64-configuration-
> and-device-tree-differences..patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0091-Add-arm64-
> configuration-and-device-tree-differences..patch
> rename to target/linux/bcm27xx/patches-4.19/950-0091-Add-arm64-
> configuration-and-device-tree-differences..patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0092-ARM64-DWC_OTG-
> Port-dwc_otg-driver-to-ARM64.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0092-ARM64-DWC_OTG-Port-dwc_otg-driver-to-ARM64.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0092-ARM64-
> DWC_OTG-Port-dwc_otg-driver-to-ARM64.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0092-ARM64-DWC_OTG-
> Port-dwc_otg-driver-to-ARM64.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0093-ARM64-Round-
> Robin-dispatch-IRQs-between-CPUs.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0093-ARM64-Round-Robin-dispatch-IRQs-between-CPUs.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0093-ARM64-Round-
> Robin-dispatch-IRQs-between-CPUs.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0093-ARM64-Round-
> Robin-dispatch-IRQs-between-CPUs.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0094-ARM64-Force-
> hardware-emulation-of-deprecated-instruc.patch
> b/target/linux/bcm27xx/patches-4.19/950-0094-ARM64-Force-hardware-
> emulation-of-deprecated-instruc.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0094-ARM64-Force-
> hardware-emulation-of-deprecated-instruc.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0094-ARM64-Force-
> hardware-emulation-of-deprecated-instruc.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0095-build-arm64-Add-
> rules-for-.dtbo-files-for-dts-overla.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0095-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0095-build-arm64-
> Add-rules-for-.dtbo-files-for-dts-overla.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0095-build-arm64-Add-
> rules-for-.dtbo-files-for-dts-overla.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0096-cache-export-
> clean-and-invalidate.patch b/target/linux/bcm27xx/patches-4.19/950-0096-
> cache-export-clean-and-invalidate.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0096-cache-export-
> clean-and-invalidate.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0096-cache-export-
> clean-and-invalidate.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0097-AXI-performance-
> monitor-driver-2222.patch b/target/linux/bcm27xx/patches-4.19/950-0097-
> AXI-performance-monitor-driver-2222.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0097-AXI-
> performance-monitor-driver-2222.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0097-AXI-performance-
> monitor-driver-2222.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0098-mcp2515-Use-DT-
> supplied-interrupt-flags.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0098-mcp2515-Use-DT-supplied-interrupt-flags.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0098-mcp2515-Use-
> DT-supplied-interrupt-flags.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0098-mcp2515-Use-DT-
> supplied-interrupt-flags.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0099-Tidy-up-of-the-
> ft5406-driver-to-use-DT-2189.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0099-Tidy-up-of-the-ft5406-driver-to-use-DT-2189.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0099-Tidy-up-of-the-
> ft5406-driver-to-use-DT-2189.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0099-Tidy-up-of-the-
> ft5406-driver-to-use-DT-2189.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0100-ARM-bcm2835-Set-
> Serial-number-and-Revision.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0100-ARM-bcm2835-Set-Serial-number-and-Revision.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0100-ARM-bcm2835-
> Set-Serial-number-and-Revision.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0100-ARM-bcm2835-Set-
> Serial-number-and-Revision.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0101-ARM-Activate-
> FIQs-to-avoid-__irq_startup-warnings.patch
> b/target/linux/bcm27xx/patches-4.19/950-0101-ARM-Activate-FIQs-to-
> avoid-__irq_startup-warnings.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0101-ARM-Activate-
> FIQs-to-avoid-__irq_startup-warnings.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0101-ARM-Activate-FIQs-
> to-avoid-__irq_startup-warnings.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0102-serial-8250-
> bcm2835aux-suppress-EPROBE_DEFER.patch
> b/target/linux/bcm27xx/patches-4.19/950-0102-serial-8250-bcm2835aux-
> suppress-EPROBE_DEFER.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0102-serial-8250-
> bcm2835aux-suppress-EPROBE_DEFER.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0102-serial-8250-
> bcm2835aux-suppress-EPROBE_DEFER.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0103-raspberrypi-
> firmware-Export-the-general-transaction-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0103-raspberrypi-firmware-
> Export-the-general-transaction-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0103-raspberrypi-
> firmware-Export-the-general-transaction-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0103-raspberrypi-
> firmware-Export-the-general-transaction-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0104-drm-vc4-Add-a-
> mode-for-using-the-closed-firmware-for.patch
> b/target/linux/bcm27xx/patches-4.19/950-0104-drm-vc4-Add-a-mode-for-
> using-the-closed-firmware-for.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0104-drm-vc4-Add-a-
> mode-for-using-the-closed-firmware-for.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0104-drm-vc4-Add-a-
> mode-for-using-the-closed-firmware-for.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0105-drm-vc4-Name-
> the-primary-and-cursor-planes-in-fkms.patch
> b/target/linux/bcm27xx/patches-4.19/950-0105-drm-vc4-Name-the-primary-
> and-cursor-planes-in-fkms.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0105-drm-vc4-Name-
> the-primary-and-cursor-planes-in-fkms.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0105-drm-vc4-Name-
> the-primary-and-cursor-planes-in-fkms.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0106-drm-vc4-Add-
> DRM_DEBUG_ATOMIC-for-the-insides-of-fkms.patch
> b/target/linux/bcm27xx/patches-4.19/950-0106-drm-vc4-Add-
> DRM_DEBUG_ATOMIC-for-the-insides-of-fkms.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0106-drm-vc4-Add-
> DRM_DEBUG_ATOMIC-for-the-insides-of-fkms.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0106-drm-vc4-Add-
> DRM_DEBUG_ATOMIC-for-the-insides-of-fkms.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0107-drm-vc4-Fix-
> sending-of-page-flip-completion-events-i.patch
> b/target/linux/bcm27xx/patches-4.19/950-0107-drm-vc4-Fix-sending-of-
> page-flip-completion-events-i.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0107-drm-vc4-Fix-
> sending-of-page-flip-completion-events-i.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0107-drm-vc4-Fix-
> sending-of-page-flip-completion-events-i.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0108-drm-vc4-Add-
> support-for-setting-DPMS-in-firmwarekms.patch
> b/target/linux/bcm27xx/patches-4.19/950-0108-drm-vc4-Add-support-for-
> setting-DPMS-in-firmwarekms.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0108-drm-vc4-Add-
> support-for-setting-DPMS-in-firmwarekms.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0108-drm-vc4-Add-
> support-for-setting-DPMS-in-firmwarekms.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0109-drm-vc4-Add-FB-
> modifier-support-to-firmwarekms.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0109-drm-vc4-Add-FB-modifier-support-to-firmwarekms.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0109-drm-vc4-Add-
> FB-modifier-support-to-firmwarekms.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0109-drm-vc4-Add-FB-
> modifier-support-to-firmwarekms.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0110-drm-vc4-Add-
> missing-enable-disable-vblank-handlers-i.patch
> b/target/linux/bcm27xx/patches-4.19/950-0110-drm-vc4-Add-missing-
> enable-disable-vblank-handlers-i.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0110-drm-vc4-Add-
> missing-enable-disable-vblank-handlers-i.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0110-drm-vc4-Add-
> missing-enable-disable-vblank-handlers-i.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0111-vc4_fkms-Apply-
> firmware-overscan-offset-to-hardware-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0111-vc4_fkms-Apply-firmware-
> overscan-offset-to-hardware-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0111-vc4_fkms-
> Apply-firmware-overscan-offset-to-hardware-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0111-vc4_fkms-Apply-
> firmware-overscan-offset-to-hardware-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0112-drm-vc4-Fix-
> warning-about-vblank-interrupts-before-D.patch
> b/target/linux/bcm27xx/patches-4.19/950-0112-drm-vc4-Fix-warning-about-
> vblank-interrupts-before-D.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0112-drm-vc4-Fix-
> warning-about-vblank-interrupts-before-D.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0112-drm-vc4-Fix-
> warning-about-vblank-interrupts-before-D.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0113-drm-vc4-Skip-
> SET_CURSOR_INFO-when-the-cursor-content.patch
> b/target/linux/bcm27xx/patches-4.19/950-0113-drm-vc4-Skip-
> SET_CURSOR_INFO-when-the-cursor-content.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0113-drm-vc4-Skip-
> SET_CURSOR_INFO-when-the-cursor-content.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0113-drm-vc4-Skip-
> SET_CURSOR_INFO-when-the-cursor-content.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0114-drm-vc4-Remove-
> duplicate-primary-cursor-fields-from-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0114-drm-vc4-Remove-duplicate-
> primary-cursor-fields-from-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0114-drm-vc4-
> Remove-duplicate-primary-cursor-fields-from-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0114-drm-vc4-Remove-
> duplicate-primary-cursor-fields-from-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0115-
> vc4_firmware_kms-fix-build.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0115-vc4_firmware_kms-fix-build.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0115-
> vc4_firmware_kms-fix-build.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0115-vc4_firmware_kms-
> fix-build.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0116-hack-cache-Fix-
> linker-error.patch b/target/linux/bcm27xx/patches-4.19/950-0116-hack-
> cache-Fix-linker-error.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0116-hack-cache-Fix-
> linker-error.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0116-hack-cache-Fix-
> linker-error.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0117-i2c-gpio-Also-se=
t-
> bus-numbers-from-reg-property.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0117-i2c-gpio-Also-set-bus-numbers-from-reg-property.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0117-i2c-gpio-Also-
> set-bus-numbers-from-reg-property.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0117-i2c-gpio-Also-set-
> bus-numbers-from-reg-property.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0118-sound-bcm-Fix-
> memset-dereference-warning.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0118-sound-bcm-Fix-memset-dereference-warning.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0118-sound-bcm-Fix-
> memset-dereference-warning.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0118-sound-bcm-Fix-
> memset-dereference-warning.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0119-added-
> capture_clear-option-to-pps-gpio-via-dtoverlay.patch
> b/target/linux/bcm27xx/patches-4.19/950-0119-added-capture_clear-
> option-to-pps-gpio-via-dtoverlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0119-added-
> capture_clear-option-to-pps-gpio-via-dtoverlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0119-added-
> capture_clear-option-to-pps-gpio-via-dtoverlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0120-lan78xx-Read-
> initial-EEE-status-from-DT.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0120-lan78xx-Read-initial-EEE-status-from-DT.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0120-lan78xx-Read-
> initial-EEE-status-from-DT.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0120-lan78xx-Read-
> initial-EEE-status-from-DT.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0121-hid-Reduce-
> default-mouse-polling-interval-to-60Hz.patch
> b/target/linux/bcm27xx/patches-4.19/950-0121-hid-Reduce-default-mouse-
> polling-interval-to-60Hz.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0121-hid-Reduce-
> default-mouse-polling-interval-to-60Hz.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0121-hid-Reduce-
> default-mouse-polling-interval-to-60Hz.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0122-gpiolib-Don-t-
> prevent-IRQ-usage-of-output-GPIOs.patch
> b/target/linux/bcm27xx/patches-4.19/950-0122-gpiolib-Don-t-prevent-IRQ-
> usage-of-output-GPIOs.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0122-gpiolib-Don-t-
> prevent-IRQ-usage-of-output-GPIOs.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0122-gpiolib-Don-t-
> prevent-IRQ-usage-of-output-GPIOs.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0123-Add-ability-to-
> export-gpio-used-by-gpio-poweroff.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0123-Add-ability-to-export-gpio-used-by-gpio-poweroff.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0123-Add-ability-to-
> export-gpio-used-by-gpio-poweroff.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0123-Add-ability-to-
> export-gpio-used-by-gpio-poweroff.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0124-firmware-
> raspberrypi-Notify-firmware-of-a-reboot.patch
> b/target/linux/bcm27xx/patches-4.19/950-0124-firmware-raspberrypi-
> Notify-firmware-of-a-reboot.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0124-firmware-
> raspberrypi-Notify-firmware-of-a-reboot.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0124-firmware-
> raspberrypi-Notify-firmware-of-a-reboot.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0125-irqchip-irq-
> bcm2835-Calc.-FIQ_START-at-boot-time.patch
> b/target/linux/bcm27xx/patches-4.19/950-0125-irqchip-irq-bcm2835-Calc.-
> FIQ_START-at-boot-time.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0125-irqchip-irq-
> bcm2835-Calc.-FIQ_START-at-boot-time.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0125-irqchip-irq-
> bcm2835-Calc.-FIQ_START-at-boot-time.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0126-of-configfs-Use-
> of_overlay_fdt_apply-API-call.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0126-of-configfs-Use-of_overlay_fdt_apply-API-call.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0126-of-configfs-Use-
> of_overlay_fdt_apply-API-call.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0126-of-configfs-Use-
> of_overlay_fdt_apply-API-call.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0127-net-lan78xx-
> Disable-TCP-Segmentation-Offload-TSO.patch
> b/target/linux/bcm27xx/patches-4.19/950-0127-net-lan78xx-Disable-TCP-
> Segmentation-Offload-TSO.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0127-net-lan78xx-
> Disable-TCP-Segmentation-Offload-TSO.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0127-net-lan78xx-
> Disable-TCP-Segmentation-Offload-TSO.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0128-lan78xx-Move-
> enabling-of-EEE-into-PHY-init-code.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0128-lan78xx-Move-enabling-of-EEE-into-PHY-init-code.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0128-lan78xx-Move-
> enabling-of-EEE-into-PHY-init-code.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0128-lan78xx-Move-
> enabling-of-EEE-into-PHY-init-code.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0129-staging-
> vc04_services-Derive-g_cache_line_size.patch
> b/target/linux/bcm27xx/patches-4.19/950-0129-staging-vc04_services-
> Derive-g_cache_line_size.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0129-staging-
> vc04_services-Derive-g_cache_line_size.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0129-staging-
> vc04_services-Derive-g_cache_line_size.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0130-Add-rpi-poe-fan-
> driver.patch b/target/linux/bcm27xx/patches-4.19/950-0130-Add-rpi-poe-
> fan-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0130-Add-rpi-poe-
> fan-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0130-Add-rpi-poe-fan-
> driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0131-cxd2880-
> CXD2880_SPI_DRV-should-select-DVB_CXD2880-wi.patch
> b/target/linux/bcm27xx/patches-4.19/950-0131-cxd2880-CXD2880_SPI_DRV-
> should-select-DVB_CXD2880-wi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0131-cxd2880-
> CXD2880_SPI_DRV-should-select-DVB_CXD2880-wi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0131-cxd2880-
> CXD2880_SPI_DRV-should-select-DVB_CXD2880-wi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0132-vchiq_2835_arm-
> Implement-a-DMA-pool-for-small-bulk-t.patch
> b/target/linux/bcm27xx/patches-4.19/950-0132-vchiq_2835_arm-
> Implement-a-DMA-pool-for-small-bulk-t.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0132-
> vchiq_2835_arm-Implement-a-DMA-pool-for-small-bulk-t.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0132-vchiq_2835_arm-
> Implement-a-DMA-pool-for-small-bulk-t.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0133-BCM2708_DT-Use-
> upstreamed-GPIO-expander-driver.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0133-BCM2708_DT-Use-upstreamed-GPIO-expander-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0133-BCM2708_DT-
> Use-upstreamed-GPIO-expander-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0133-BCM2708_DT-Use-
> upstreamed-GPIO-expander-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0134-overlays-Fix-a-f=
ew-
> dtc-warnings.patch b/target/linux/bcm27xx/patches-4.19/950-0134-
> overlays-Fix-a-few-dtc-warnings.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0134-overlays-Fix-a-
> few-dtc-warnings.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0134-overlays-Fix-a-few-
> dtc-warnings.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0135-bcm2708-rpi-
> Disable-txp-interrupt-unless-using-vc4-k.patch
> b/target/linux/bcm27xx/patches-4.19/950-0135-bcm2708-rpi-Disable-txp-
> interrupt-unless-using-vc4-k.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0135-bcm2708-rpi-
> Disable-txp-interrupt-unless-using-vc4-k.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0135-bcm2708-rpi-
> Disable-txp-interrupt-unless-using-vc4-k.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0136-hwmon-
> raspberrypi-Prevent-voltage-low-warnings-from-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0136-hwmon-raspberrypi-
> Prevent-voltage-low-warnings-from-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0136-hwmon-
> raspberrypi-Prevent-voltage-low-warnings-from-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0136-hwmon-
> raspberrypi-Prevent-voltage-low-warnings-from-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0137-firmware-
> raspberrypi-Add-backward-compatible-get_thr.patch
> b/target/linux/bcm27xx/patches-4.19/950-0137-firmware-raspberrypi-Add-
> backward-compatible-get_thr.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0137-firmware-
> raspberrypi-Add-backward-compatible-get_thr.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0137-firmware-
> raspberrypi-Add-backward-compatible-get_thr.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0138-sc16is7xx-Don-t-
> spin-if-no-data-received.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0138-sc16is7xx-Don-t-spin-if-no-data-received.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0138-sc16is7xx-Don-
> t-spin-if-no-data-received.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0138-sc16is7xx-Don-t-
> spin-if-no-data-received.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0139-Add-device-tree-
> overlay-for-HD44780.patch b/target/linux/bcm27xx/patches-4.19/950-0139-
> Add-device-tree-overlay-for-HD44780.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0139-Add-device-
> tree-overlay-for-HD44780.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0139-Add-device-tree-
> overlay-for-HD44780.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0140-overlays-Add-add=
r-
> parameter-to-i2c-rtc-gpio.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0140-overlays-Add-addr-parameter-to-i2c-rtc-gpio.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0140-overlays-Add-
> addr-parameter-to-i2c-rtc-gpio.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0140-overlays-Add-addr-
> parameter-to-i2c-rtc-gpio.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0141-ARM-BCM270X-
> Add-the-18-bit-DPI-pinmux-to-the-RPI-DTs.patch
> b/target/linux/bcm27xx/patches-4.19/950-0141-ARM-BCM270X-Add-the-18-
> bit-DPI-pinmux-to-the-RPI-DTs.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0141-ARM-BCM270X-
> Add-the-18-bit-DPI-pinmux-to-the-RPI-DTs.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0141-ARM-BCM270X-
> Add-the-18-bit-DPI-pinmux-to-the-RPI-DTs.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0142-overlays-Add-an-
> overlay-for-the-Adafruit-Kippah-with.patch
> b/target/linux/bcm27xx/patches-4.19/950-0142-overlays-Add-an-overlay-
> for-the-Adafruit-Kippah-with.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0142-overlays-Add-
> an-overlay-for-the-Adafruit-Kippah-with.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0142-overlays-Add-an-
> overlay-for-the-Adafruit-Kippah-with.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0143-overlays-Remove-
> stale-notes-about-vc4-s-CMA-alignmen.patch
> b/target/linux/bcm27xx/patches-4.19/950-0143-overlays-Remove-stale-
> notes-about-vc4-s-CMA-alignmen.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0143-overlays-
> Remove-stale-notes-about-vc4-s-CMA-alignmen.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0143-overlays-Remove-
> stale-notes-about-vc4-s-CMA-alignmen.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0144-spi-Make-GPIO-
> CSs-honour-the-SPI_NO_CS-flag.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0144-spi-Make-GPIO-CSs-honour-the-SPI_NO_CS-flag.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0144-spi-Make-GPIO-
> CSs-honour-the-SPI_NO_CS-flag.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0144-spi-Make-GPIO-
> CSs-honour-the-SPI_NO_CS-flag.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0145-devicetree-add-
> RPi-CM3-dts-to-arm64-mimic-the-RPi-3B.patch
> b/target/linux/bcm27xx/patches-4.19/950-0145-devicetree-add-RPi-CM3-
> dts-to-arm64-mimic-the-RPi-3B.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0145-devicetree-add-
> RPi-CM3-dts-to-arm64-mimic-the-RPi-3B.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0145-devicetree-add-
> RPi-CM3-dts-to-arm64-mimic-the-RPi-3B.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0146-Add-support-for-
> audioinjector.net-ultra-soundcard.-2.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0146-Add-support-for-audioinjector.net-ultra-soundcard.-2.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0146-Add-support-
> for-audioinjector.net-ultra-soundcard.-2.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0146-Add-support-for-
> audioinjector.net-ultra-soundcard.-2.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0147-ASoC-cs4265-Add-
> a-S-PDIF-enable-switch.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0147-ASoC-cs4265-Add-a-S-PDIF-enable-switch.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0147-ASoC-cs4265-
> Add-a-S-PDIF-enable-switch.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0147-ASoC-cs4265-Add-
> a-S-PDIF-enable-switch.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0148-ASoC-cs4265-Add-
> native-32bit-I2S-transport.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0148-ASoC-cs4265-Add-native-32bit-I2S-transport.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0148-ASoC-cs4265-
> Add-native-32bit-I2S-transport.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0148-ASoC-cs4265-Add-
> native-32bit-I2S-transport.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0149-BCM270X_DT-Add-
> gpio-fan-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-0149-
> BCM270X_DT-Add-gpio-fan-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0149-BCM270X_DT-
> Add-gpio-fan-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0149-BCM270X_DT-Add-
> gpio-fan-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0150-HID-hid-bigbenff-
> driver-for-BigBen-Interactive-PS3OF.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0150-HID-hid-bigbenff-driver-for-BigBen-Interactive-PS3OF.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0150-HID-hid-
> bigbenff-driver-for-BigBen-Interactive-PS3OF.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0150-HID-hid-bigbenff-
> driver-for-BigBen-Interactive-PS3OF.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0151-ASoC-cs4265-Add-
> a-MIC-pre.-route-2696.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0151-ASoC-cs4265-Add-a-MIC-pre.-route-2696.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0151-ASoC-cs4265-
> Add-a-MIC-pre.-route-2696.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0151-ASoC-cs4265-Add-
> a-MIC-pre.-route-2696.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0152-Update-gpio-fan-
> overlay.dts-2711.patch b/target/linux/bcm27xx/patches-4.19/950-0152-
> Update-gpio-fan-overlay.dts-2711.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0152-Update-gpio-
> fan-overlay.dts-2711.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0152-Update-gpio-fan-
> overlay.dts-2711.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0153-drivers-thermal-
> step_wise-add-support-for-hysteresis.patch
> b/target/linux/bcm27xx/patches-4.19/950-0153-drivers-thermal-step_wise-
> add-support-for-hysteresis.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0153-drivers-thermal-
> step_wise-add-support-for-hysteresis.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0153-drivers-thermal-
> step_wise-add-support-for-hysteresis.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0154-drivers-thermal-
> step_wise-avoid-throttling-at-hyster.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0154-drivers-thermal-step_wise-avoid-throttling-at-hyster.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0154-drivers-thermal-
> step_wise-avoid-throttling-at-hyster.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0154-drivers-thermal-
> step_wise-avoid-throttling-at-hyster.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0155-hwmon-adjust-rpi-
> poe-fan-overlay-trip-points.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0155-hwmon-adjust-rpi-poe-fan-overlay-trip-points.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0155-hwmon-adjust-
> rpi-poe-fan-overlay-trip-points.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0155-hwmon-adjust-rpi-
> poe-fan-overlay-trip-points.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0156-overlays-add-
> overrides-for-PoE-HAT-fan-control.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0156-overlays-add-overrides-for-PoE-HAT-fan-control.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0156-overlays-add-
> overrides-for-PoE-HAT-fan-control.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0156-overlays-add-
> overrides-for-PoE-HAT-fan-control.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0157-overlays-Add-gpi=
o-
> no-bank0-irq-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-0157-
> overlays-Add-gpio-no-bank0-irq-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0157-overlays-Add-
> gpio-no-bank0-irq-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0157-overlays-Add-gpio-
> no-bank0-irq-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0158-Add-hy28b-2017-
> model-device-tree-overlay-2721.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0158-Add-hy28b-2017-model-device-tree-overlay-2721.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0158-Add-hy28b-
> 2017-model-device-tree-overlay-2721.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0158-Add-hy28b-2017-
> model-device-tree-overlay-2721.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0159-mmc-bcm2835-
> sdhost-Recover-from-MMC_SEND_EXT_CSD.patch
> b/target/linux/bcm27xx/patches-4.19/950-0159-mmc-bcm2835-sdhost-
> Recover-from-MMC_SEND_EXT_CSD.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0159-mmc-bcm2835-
> sdhost-Recover-from-MMC_SEND_EXT_CSD.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0159-mmc-bcm2835-
> sdhost-Recover-from-MMC_SEND_EXT_CSD.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0160-overlays-pi3-
> disable-bt-Clear-out-bt_pins-node.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0160-overlays-pi3-disable-bt-Clear-out-bt_pins-node.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0160-overlays-pi3-
> disable-bt-Clear-out-bt_pins-node.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0160-overlays-pi3-
> disable-bt-Clear-out-bt_pins-node.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0161-Revert-rtc-pcf85=
23-
> properly-handle-oscillator-stop-b.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0161-Revert-rtc-pcf8523-properly-handle-oscillator-stop-b.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0161-Revert-rtc-
> pcf8523-properly-handle-oscillator-stop-b.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0161-Revert-rtc-pcf8523-
> properly-handle-oscillator-stop-b.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0162-overlays-uart0-
> return-GPIOs-14-and-15-to-inputs.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0162-overlays-uart0-return-GPIOs-14-and-15-to-inputs.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0162-overlays-uart0-
> return-GPIOs-14-and-15-to-inputs.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0162-overlays-uart0-
> return-GPIOs-14-and-15-to-inputs.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0163-mmc-bcm2835-
> sdhost-Fix-warnings-on-arm64.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0163-mmc-bcm2835-sdhost-Fix-warnings-on-arm64.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0163-mmc-bcm2835-
> sdhost-Fix-warnings-on-arm64.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0163-mmc-bcm2835-
> sdhost-Fix-warnings-on-arm64.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0164-Fix-warning-in-
> bcm2835-smi-nand.patch b/target/linux/bcm27xx/patches-4.19/950-0164-
> Fix-warning-in-bcm2835-smi-nand.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0164-Fix-warning-in-
> bcm2835-smi-nand.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0164-Fix-warning-in-
> bcm2835-smi-nand.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0165-media-ov5647-
> Add-set_fmt-and-get_fmt-calls.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0165-media-ov5647-Add-set_fmt-and-get_fmt-calls.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0165-media-ov5647-
> Add-set_fmt-and-get_fmt-calls.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0165-media-ov5647-Add-
> set_fmt-and-get_fmt-calls.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0166-media-
> Documentation-DT-add-device-tree-for-PWDN-cont.patch
> b/target/linux/bcm27xx/patches-4.19/950-0166-media-Documentation-DT-
> add-device-tree-for-PWDN-cont.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0166-media-
> Documentation-DT-add-device-tree-for-PWDN-cont.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0166-media-
> Documentation-DT-add-device-tree-for-PWDN-cont.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0167-media-ov5647-
> Add-support-for-PWDN-GPIO.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0167-media-ov5647-Add-support-for-PWDN-GPIO.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0167-media-ov5647-
> Add-support-for-PWDN-GPIO.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0167-media-ov5647-Add-
> support-for-PWDN-GPIO.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0168-media-ov5647-
> Add-support-for-non-continuous-clock-mo.patch
> b/target/linux/bcm27xx/patches-4.19/950-0168-media-ov5647-Add-support-
> for-non-continuous-clock-mo.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0168-media-ov5647-
> Add-support-for-non-continuous-clock-mo.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0168-media-ov5647-Add-
> support-for-non-continuous-clock-mo.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0169-media-tc358743-
> Increase-FIFO-level-to-374.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0169-media-tc358743-Increase-FIFO-level-to-374.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0169-media-
> tc358743-Increase-FIFO-level-to-374.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0169-media-tc358743-
> Increase-FIFO-level-to-374.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0170-media-tc358743-
> fix-connected-active-CSI-2-lane-repor.patch
> b/target/linux/bcm27xx/patches-4.19/950-0170-media-tc358743-fix-
> connected-active-CSI-2-lane-repor.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0170-media-
> tc358743-fix-connected-active-CSI-2-lane-repor.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0170-media-tc358743-fix-
> connected-active-CSI-2-lane-repor.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0171-media-tc358743-
> Add-support-for-972Mbit-s-link-freq.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0171-media-tc358743-Add-support-for-972Mbit-s-link-freq.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0171-media-
> tc358743-Add-support-for-972Mbit-s-link-freq.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0171-media-tc358743-
> Add-support-for-972Mbit-s-link-freq.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0172-media-tc358743-
> Check-I2C-succeeded-during-probe.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0172-media-tc358743-Check-I2C-succeeded-during-probe.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0172-media-
> tc358743-Check-I2C-succeeded-during-probe.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0172-media-tc358743-
> Check-I2C-succeeded-during-probe.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0173-media-adv7180-
> Default-to-the-first-valid-input.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0173-media-adv7180-Default-to-the-first-valid-input.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0173-media-adv7180-
> Default-to-the-first-valid-input.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0173-media-adv7180-
> Default-to-the-first-valid-input.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0174-media-adv7180-
> Add-YPrPb-support-for-ADV7282M.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0174-media-adv7180-Add-YPrPb-support-for-ADV7282M.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0174-media-adv7180-
> Add-YPrPb-support-for-ADV7282M.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0174-media-adv7180-
> Add-YPrPb-support-for-ADV7282M.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0175-media-videodev2-
> Add-helper-defines-for-printing-FOUR.patch
> b/target/linux/bcm27xx/patches-4.19/950-0175-media-videodev2-Add-
> helper-defines-for-printing-FOUR.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0175-media-
> videodev2-Add-helper-defines-for-printing-FOUR.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0175-media-videodev2-
> Add-helper-defines-for-printing-FOUR.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0176-dt-bindings-
> Document-BCM283x-CSI2-CCP2-receiver.patch
> b/target/linux/bcm27xx/patches-4.19/950-0176-dt-bindings-Document-
> BCM283x-CSI2-CCP2-receiver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0176-dt-bindings-
> Document-BCM283x-CSI2-CCP2-receiver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0176-dt-bindings-
> Document-BCM283x-CSI2-CCP2-receiver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0177-media-bcm2835-
> unicam-Driver-for-CCP2-CSI2-camera-int.patch
> b/target/linux/bcm27xx/patches-4.19/950-0177-media-bcm2835-unicam-
> Driver-for-CCP2-CSI2-camera-int.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0177-media-
> bcm2835-unicam-Driver-for-CCP2-CSI2-camera-int.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0177-media-bcm2835-
> unicam-Driver-for-CCP2-CSI2-camera-int.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0178-media-adv7180-
> Nasty-hack-to-allow-input-selection.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0178-media-adv7180-Nasty-hack-to-allow-input-selection.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0178-media-adv7180-
> Nasty-hack-to-allow-input-selection.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0178-media-adv7180-
> Nasty-hack-to-allow-input-selection.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0179-BCM283x-DT-Add-
> CSI-nodes-to-the-device-tree.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0179-BCM283x-DT-Add-CSI-nodes-to-the-device-tree.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0179-BCM283x-DT-
> Add-CSI-nodes-to-the-device-tree.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0179-BCM283x-DT-Add-
> CSI-nodes-to-the-device-tree.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0180-BCM270X_DT-Add-
> CSI-defines-for-all-the-downstream-Pi.patch
> b/target/linux/bcm27xx/patches-4.19/950-0180-BCM270X_DT-Add-CSI-
> defines-for-all-the-downstream-Pi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0180-BCM270X_DT-
> Add-CSI-defines-for-all-the-downstream-Pi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0180-BCM270X_DT-Add-
> CSI-defines-for-all-the-downstream-Pi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0181-arm-dt-Add-DT-
> overlays-for-ADV7282M-OV5647-and-TC358.patch
> b/target/linux/bcm27xx/patches-4.19/950-0181-arm-dt-Add-DT-overlays-
> for-ADV7282M-OV5647-and-TC358.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0181-arm-dt-Add-DT-
> overlays-for-ADV7282M-OV5647-and-TC358.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0181-arm-dt-Add-DT-
> overlays-for-ADV7282M-OV5647-and-TC358.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0182-dtoverlays-Add-
> support-for-ADV7280-M-ADV7281-M-and-A.patch
> b/target/linux/bcm27xx/patches-4.19/950-0182-dtoverlays-Add-support-for-
> ADV7280-M-ADV7281-M-and-A.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0182-dtoverlays-Add-
> support-for-ADV7280-M-ADV7281-M-and-A.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0182-dtoverlays-Add-
> support-for-ADV7280-M-ADV7281-M-and-A.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0183-vcsm-Fix-an-NULL-
> dereference-in-the-import_dmabuf-er.patch
> b/target/linux/bcm27xx/patches-4.19/950-0183-vcsm-Fix-an-NULL-
> dereference-in-the-import_dmabuf-er.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0183-vcsm-Fix-an-
> NULL-dereference-in-the-import_dmabuf-er.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0183-vcsm-Fix-an-NULL-
> dereference-in-the-import_dmabuf-er.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0184-Update-README-
> 2750.patch b/target/linux/bcm27xx/patches-4.19/950-0184-Update-
> README-2750.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0184-Update-
> README-2750.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0184-Update-README-
> 2750.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0185-overlays-Remove-
> superfluous-address-size-cells.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0185-overlays-Remove-superfluous-address-size-cells.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0185-overlays-
> Remove-superfluous-address-size-cells.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0185-overlays-Remove-
> superfluous-address-size-cells.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0186-rpi-wm8804-
> soundcard-drop-PWRDN-register-writes.patch
> b/target/linux/bcm27xx/patches-4.19/950-0186-rpi-wm8804-soundcard-
> drop-PWRDN-register-writes.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0186-rpi-wm8804-
> soundcard-drop-PWRDN-register-writes.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0186-rpi-wm8804-
> soundcard-drop-PWRDN-register-writes.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0187-rpi-wm8804-
> soundcard-configure-wm8804-clocks-only-on.patch
> b/target/linux/bcm27xx/patches-4.19/950-0187-rpi-wm8804-soundcard-
> configure-wm8804-clocks-only-on.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0187-rpi-wm8804-
> soundcard-configure-wm8804-clocks-only-on.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0187-rpi-wm8804-
> soundcard-configure-wm8804-clocks-only-on.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0188-dtoverlays-Add-
> i2c-on-0-1-option-to-TC358743-ADV7282.patch
> b/target/linux/bcm27xx/patches-4.19/950-0188-dtoverlays-Add-i2c-on-0-1-
> option-to-TC358743-ADV7282.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0188-dtoverlays-Add-
> i2c-on-0-1-option-to-TC358743-ADV7282.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0188-dtoverlays-Add-i2c-
> on-0-1-option-to-TC358743-ADV7282.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0189-overlays-Update-
> upstream-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-0189-
> overlays-Update-upstream-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0189-overlays-
> Update-upstream-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0189-overlays-Update-
> upstream-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0190-BCM2708_DT-
> update-firmware-node-binding.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0190-BCM2708_DT-update-firmware-node-binding.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0190-BCM2708_DT-
> update-firmware-node-binding.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0190-BCM2708_DT-
> update-firmware-node-binding.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0191-BCM2710_DT-fix-
> gpio-expander-bindings.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0191-BCM2710_DT-fix-gpio-expander-bindings.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0191-BCM2710_DT-
> fix-gpio-expander-bindings.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0191-BCM2710_DT-fix-
> gpio-expander-bindings.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0192-ARM-dts-bcm283x-
> The-lan7515-PHY-node-has-moved.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0192-ARM-dts-bcm283x-The-lan7515-PHY-node-has-moved.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0192-ARM-dts-
> bcm283x-The-lan7515-PHY-node-has-moved.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0192-ARM-dts-bcm283x-
> The-lan7515-PHY-node-has-moved.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0193-net-lan78xx-
> Support-auto-downshift-to-100Mb-s.patch
> b/target/linux/bcm27xx/patches-4.19/950-0193-net-lan78xx-Support-auto-
> downshift-to-100Mb-s.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0193-net-lan78xx-
> Support-auto-downshift-to-100Mb-s.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0193-net-lan78xx-
> Support-auto-downshift-to-100Mb-s.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0194-dt-bindings-
> Document-microchip-downshift-after.patch
> b/target/linux/bcm27xx/patches-4.19/950-0194-dt-bindings-Document-
> microchip-downshift-after.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0194-dt-bindings-
> Document-microchip-downshift-after.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0194-dt-bindings-
> Document-microchip-downshift-after.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0195-ARM-dts-bcm283x-
> Set-downshift-after-for-Pi-3B.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0195-ARM-dts-bcm283x-Set-downshift-after-for-Pi-3B.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0195-ARM-dts-
> bcm283x-Set-downshift-after-for-Pi-3B.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0195-ARM-dts-bcm283x-
> Set-downshift-after-for-Pi-3B.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0196-BCM270X_DT-Add-
> new-Ethernet-DT-parameters.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0196-BCM270X_DT-Add-new-Ethernet-DT-parameters.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0196-BCM270X_DT-
> Add-new-Ethernet-DT-parameters.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0196-BCM270X_DT-Add-
> new-Ethernet-DT-parameters.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0197-BCM270X_DT-
> Mark-eth_downshift_after-as-an-integer.patch
> b/target/linux/bcm27xx/patches-4.19/950-0197-BCM270X_DT-Mark-
> eth_downshift_after-as-an-integer.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0197-BCM270X_DT-
> Mark-eth_downshift_after-as-an-integer.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0197-BCM270X_DT-
> Mark-eth_downshift_after-as-an-integer.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0198-dwc-otg-FIQ-Fix-
> bad-mode-in-data-abort-handler.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0198-dwc-otg-FIQ-Fix-bad-mode-in-data-abort-handler.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0198-dwc-otg-FIQ-
> Fix-bad-mode-in-data-abort-handler.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0198-dwc-otg-FIQ-Fix-
> bad-mode-in-data-abort-handler.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0199-lirc-rpi-Remove-=
in-
> favour-of-gpio-ir.patch b/target/linux/bcm27xx/patches-4.19/950-0199-lirc-
> rpi-Remove-in-favour-of-gpio-ir.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0199-lirc-rpi-Remove-
> in-favour-of-gpio-ir.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0199-lirc-rpi-Remove-in-
> favour-of-gpio-ir.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0200-media-bcm2835-
> unicam-Pass-through-the-colorspace-on-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0200-media-bcm2835-unicam-
> Pass-through-the-colorspace-on-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0200-media-
> bcm2835-unicam-Pass-through-the-colorspace-on-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0200-media-bcm2835-
> unicam-Pass-through-the-colorspace-on-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0201-media-tc358743-
> Return-an-appropriate-colorspace-from.patch
> b/target/linux/bcm27xx/patches-4.19/950-0201-media-tc358743-Return-an-
> appropriate-colorspace-from.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0201-media-
> tc358743-Return-an-appropriate-colorspace-from.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0201-media-tc358743-
> Return-an-appropriate-colorspace-from.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0202-staging-bcm2835-
> camera-Move-module-info-to-the-end.patch
> b/target/linux/bcm27xx/patches-4.19/950-0202-staging-bcm2835-camera-
> Move-module-info-to-the-end.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0202-staging-
> bcm2835-camera-Move-module-info-to-the-end.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0202-staging-bcm2835-
> camera-Move-module-info-to-the-end.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0203-staging-vchiq_ar=
m-
> Fix-platform-device-unregistration.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0203-staging-vchiq_arm-Fix-platform-device-unregistration.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0203-staging-
> vchiq_arm-Fix-platform-device-unregistration.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0203-staging-vchiq_arm-
> Fix-platform-device-unregistration.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0204-staging-vchiq_ar=
m-
> Fix-camera-device-registration.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0204-staging-vchiq_arm-Fix-camera-device-registration.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0204-staging-
> vchiq_arm-Fix-camera-device-registration.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0204-staging-vchiq_arm-
> Fix-camera-device-registration.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0205-staging-bcm2835-
> camera-Provide-more-specific-probe-e.patch
> b/target/linux/bcm27xx/patches-4.19/950-0205-staging-bcm2835-camera-
> Provide-more-specific-probe-e.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0205-staging-
> bcm2835-camera-Provide-more-specific-probe-e.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0205-staging-bcm2835-
> camera-Provide-more-specific-probe-e.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0206-staging-bcm2835-
> camera-Add-hint-about-possible-fault.patch
> b/target/linux/bcm27xx/patches-4.19/950-0206-staging-bcm2835-camera-
> Add-hint-about-possible-fault.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0206-staging-
> bcm2835-camera-Add-hint-about-possible-fault.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0206-staging-bcm2835-
> camera-Add-hint-about-possible-fault.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0207-staging-vchiq_ar=
m-
> Improve-error-handling-on-loading-.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0207-staging-vchiq_arm-Improve-error-handling-on-loading-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0207-staging-
> vchiq_arm-Improve-error-handling-on-loading-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0207-staging-vchiq_arm-
> Improve-error-handling-on-loading-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0208-staging-bcm2835-
> camera-Do-not-bulk-receive-from-serv.patch
> b/target/linux/bcm27xx/patches-4.19/950-0208-staging-bcm2835-camera-
> Do-not-bulk-receive-from-serv.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0208-staging-
> bcm2835-camera-Do-not-bulk-receive-from-serv.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0208-staging-bcm2835-
> camera-Do-not-bulk-receive-from-serv.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0209-staging-bcm2835-
> camera-Ensure-H264-header-bytes-get-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0209-staging-bcm2835-camera-
> Ensure-H264-header-bytes-get-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0209-staging-
> bcm2835-camera-Ensure-H264-header-bytes-get-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0209-staging-bcm2835-
> camera-Ensure-H264-header-bytes-get-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0210-staging-bcm2835-
> camera-Correctly-denote-key-frames-i.patch
> b/target/linux/bcm27xx/patches-4.19/950-0210-staging-bcm2835-camera-
> Correctly-denote-key-frames-i.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0210-staging-
> bcm2835-camera-Correctly-denote-key-frames-i.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0210-staging-bcm2835-
> camera-Correctly-denote-key-frames-i.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0211-staging-bcm2835-
> camera-Return-early-on-errors.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0211-staging-bcm2835-camera-Return-early-on-errors.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0211-staging-
> bcm2835-camera-Return-early-on-errors.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0211-staging-bcm2835-
> camera-Return-early-on-errors.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0212-staging-bcm2835-
> camera-Remove-dead-email-addresses.patch
> b/target/linux/bcm27xx/patches-4.19/950-0212-staging-bcm2835-camera-
> Remove-dead-email-addresses.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0212-staging-
> bcm2835-camera-Remove-dead-email-addresses.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0212-staging-bcm2835-
> camera-Remove-dead-email-addresses.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0213-staging-bcm2835-
> camera-Fix-comment-style-violations.patch
> b/target/linux/bcm27xx/patches-4.19/950-0213-staging-bcm2835-camera-
> Fix-comment-style-violations.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0213-staging-
> bcm2835-camera-Fix-comment-style-violations.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0213-staging-bcm2835-
> camera-Fix-comment-style-violations.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0214-staging-bcm2835-
> camera-Fix-spacing-around-operators.patch
> b/target/linux/bcm27xx/patches-4.19/950-0214-staging-bcm2835-camera-
> Fix-spacing-around-operators.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0214-staging-
> bcm2835-camera-Fix-spacing-around-operators.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0214-staging-bcm2835-
> camera-Fix-spacing-around-operators.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0215-staging-bcm2835-
> camera-Reduce-length-of-enum-names.patch
> b/target/linux/bcm27xx/patches-4.19/950-0215-staging-bcm2835-camera-
> Reduce-length-of-enum-names.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0215-staging-
> bcm2835-camera-Reduce-length-of-enum-names.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0215-staging-bcm2835-
> camera-Reduce-length-of-enum-names.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0216-staging-bcm2835-
> camera-Fix-multiple-line-dereference.patch
> b/target/linux/bcm27xx/patches-4.19/950-0216-staging-bcm2835-camera-
> Fix-multiple-line-dereference.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0216-staging-
> bcm2835-camera-Fix-multiple-line-dereference.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0216-staging-bcm2835-
> camera-Fix-multiple-line-dereference.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0217-staging-bcm2835-
> camera-Fix-brace-style-issues.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0217-staging-bcm2835-camera-Fix-brace-style-issues.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0217-staging-
> bcm2835-camera-Fix-brace-style-issues.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0217-staging-bcm2835-
> camera-Fix-brace-style-issues.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0218-staging-bcm2835-
> camera-Fix-missing-lines-between-ite.patch
> b/target/linux/bcm27xx/patches-4.19/950-0218-staging-bcm2835-camera-
> Fix-missing-lines-between-ite.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0218-staging-
> bcm2835-camera-Fix-missing-lines-between-ite.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0218-staging-bcm2835-
> camera-Fix-missing-lines-between-ite.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0219-staging-bcm2835-
> camera-Fix-logical-continuation-spli.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0219-staging-bcm2835-camera-Fix-logical-continuation-spli.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0219-staging-
> bcm2835-camera-Fix-logical-continuation-spli.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0219-staging-bcm2835-
> camera-Fix-logical-continuation-spli.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0220-staging-bcm2835-
> camera-Fix-open-parenthesis-alignmen.patch
> b/target/linux/bcm27xx/patches-4.19/950-0220-staging-bcm2835-camera-
> Fix-open-parenthesis-alignmen.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0220-staging-
> bcm2835-camera-Fix-open-parenthesis-alignmen.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0220-staging-bcm2835-
> camera-Fix-open-parenthesis-alignmen.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0221-staging-bcm2835-
> camera-Set-sequence-number-correctly.patch
> b/target/linux/bcm27xx/patches-4.19/950-0221-staging-bcm2835-camera-
> Set-sequence-number-correctly.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0221-staging-
> bcm2835-camera-Set-sequence-number-correctly.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0221-staging-bcm2835-
> camera-Set-sequence-number-correctly.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0222-staging-bcm2835-
> camera-Ensure-timestamps-never-go-ba.patch
> b/target/linux/bcm27xx/patches-4.19/950-0222-staging-bcm2835-camera-
> Ensure-timestamps-never-go-ba.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0222-staging-
> bcm2835-camera-Ensure-timestamps-never-go-ba.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0222-staging-bcm2835-
> camera-Ensure-timestamps-never-go-ba.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0223-staging-bcm2835-
> camera-Avoid-unneeded-internal-decla.patch
> b/target/linux/bcm27xx/patches-4.19/950-0223-staging-bcm2835-camera-
> Avoid-unneeded-internal-decla.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0223-staging-
> bcm2835-camera-Avoid-unneeded-internal-decla.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0223-staging-bcm2835-
> camera-Avoid-unneeded-internal-decla.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0224-staging-bcm2835-
> camera-Add-multiple-inclusion-protec.patch
> b/target/linux/bcm27xx/patches-4.19/950-0224-staging-bcm2835-camera-
> Add-multiple-inclusion-protec.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0224-staging-
> bcm2835-camera-Add-multiple-inclusion-protec.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0224-staging-bcm2835-
> camera-Add-multiple-inclusion-protec.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0225-staging-bcm2835-
> camera-Unify-header-inclusion-define.patch
> b/target/linux/bcm27xx/patches-4.19/950-0225-staging-bcm2835-camera-
> Unify-header-inclusion-define.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0225-staging-
> bcm2835-camera-Unify-header-inclusion-define.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0225-staging-bcm2835-
> camera-Unify-header-inclusion-define.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0226-staging-bcm2835-
> camera-Fix-alignment-should-match-op.patch
> b/target/linux/bcm27xx/patches-4.19/950-0226-staging-bcm2835-camera-
> Fix-alignment-should-match-op.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0226-staging-
> bcm2835-camera-Fix-alignment-should-match-op.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0226-staging-bcm2835-
> camera-Fix-alignment-should-match-op.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0227-staging-bcm2835-
> camera-Fix-multiple-assignments-shou.patch
> b/target/linux/bcm27xx/patches-4.19/950-0227-staging-bcm2835-camera-
> Fix-multiple-assignments-shou.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0227-staging-
> bcm2835-camera-Fix-multiple-assignments-shou.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0227-staging-bcm2835-
> camera-Fix-multiple-assignments-shou.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0228-staging-bcm2835-
> camera-Fix-up-all-formatting-in-mmal.patch
> b/target/linux/bcm27xx/patches-4.19/950-0228-staging-bcm2835-camera-
> Fix-up-all-formatting-in-mmal.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0228-staging-
> bcm2835-camera-Fix-up-all-formatting-in-mmal.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0228-staging-bcm2835-
> camera-Fix-up-all-formatting-in-mmal.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0229-staging-bcm2835-
> camera-Use-enums-for-max-value-in-co.patch
> b/target/linux/bcm27xx/patches-4.19/950-0229-staging-bcm2835-camera-
> Use-enums-for-max-value-in-co.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0229-staging-
> bcm2835-camera-Use-enums-for-max-value-in-co.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0229-staging-bcm2835-
> camera-Use-enums-for-max-value-in-co.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0230-staging-bcm2835-
> camera-Correct-V4L2_CID_COLORFX_CBCR.patch
> b/target/linux/bcm27xx/patches-4.19/950-0230-staging-bcm2835-camera-
> Correct-V4L2_CID_COLORFX_CBCR.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0230-staging-
> bcm2835-camera-Correct-V4L2_CID_COLORFX_CBCR.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0230-staging-bcm2835-
> camera-Correct-V4L2_CID_COLORFX_CBCR.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0231-staging-bcm2835-
> camera-Remove-amend-some-obsolete-co.patch
> b/target/linux/bcm27xx/patches-4.19/950-0231-staging-bcm2835-camera-
> Remove-amend-some-obsolete-co.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0231-staging-
> bcm2835-camera-Remove-amend-some-obsolete-co.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0231-staging-bcm2835-
> camera-Remove-amend-some-obsolete-co.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0232-staging-
> vc04_services-Split-vchiq-mmal-into-a-module.patch
> b/target/linux/bcm27xx/patches-4.19/950-0232-staging-vc04_services-Split-
> vchiq-mmal-into-a-module.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0232-staging-
> vc04_services-Split-vchiq-mmal-into-a-module.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0232-staging-
> vc04_services-Split-vchiq-mmal-into-a-module.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0233-staging-mmal-
> vchiq-Allocate-and-free-components-as-r.patch
> b/target/linux/bcm27xx/patches-4.19/950-0233-staging-mmal-vchiq-
> Allocate-and-free-components-as-r.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0233-staging-mmal-
> vchiq-Allocate-and-free-components-as-r.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0233-staging-mmal-
> vchiq-Allocate-and-free-components-as-r.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0234-staging-mmal-
> vchiq-Avoid-use-of-bool-in-structures.patch
> b/target/linux/bcm27xx/patches-4.19/950-0234-staging-mmal-vchiq-Avoid-
> use-of-bool-in-structures.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0234-staging-mmal-
> vchiq-Avoid-use-of-bool-in-structures.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0234-staging-mmal-
> vchiq-Avoid-use-of-bool-in-structures.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0235-staging-mmal-
> vchiq-Make-timeout-a-defined-parameter.patch
> b/target/linux/bcm27xx/patches-4.19/950-0235-staging-mmal-vchiq-Make-
> timeout-a-defined-parameter.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0235-staging-mmal-
> vchiq-Make-timeout-a-defined-parameter.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0235-staging-mmal-
> vchiq-Make-timeout-a-defined-parameter.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0236-staging-mmal-
> vchiq-Make-a-mmal_buf-struct-for-passin.patch
> b/target/linux/bcm27xx/patches-4.19/950-0236-staging-mmal-vchiq-Make-
> a-mmal_buf-struct-for-passin.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0236-staging-mmal-
> vchiq-Make-a-mmal_buf-struct-for-passin.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0236-staging-mmal-
> vchiq-Make-a-mmal_buf-struct-for-passin.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0237-staging-mmal-
> vchiq-Add-support-for-event-callbacks.patch
> b/target/linux/bcm27xx/patches-4.19/950-0237-staging-mmal-vchiq-Add-
> support-for-event-callbacks.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0237-staging-mmal-
> vchiq-Add-support-for-event-callbacks.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0237-staging-mmal-
> vchiq-Add-support-for-event-callbacks.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0238-staging-
> vc04_services-Support-sending-data-to-MMAL-p.patch
> b/target/linux/bcm27xx/patches-4.19/950-0238-staging-vc04_services-
> Support-sending-data-to-MMAL-p.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0238-staging-
> vc04_services-Support-sending-data-to-MMAL-p.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0238-staging-
> vc04_services-Support-sending-data-to-MMAL-p.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0239-staging-
> vc04_services-Fixup-vchiq-mmal-include-order.patch
> b/target/linux/bcm27xx/patches-4.19/950-0239-staging-vc04_services-Fixup-
> vchiq-mmal-include-order.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0239-staging-
> vc04_services-Fixup-vchiq-mmal-include-order.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0239-staging-
> vc04_services-Fixup-vchiq-mmal-include-order.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0240-staging-
> vc04_services-Add-new-vc-sm-cma-driver.patch
> b/target/linux/bcm27xx/patches-4.19/950-0240-staging-vc04_services-Add-
> new-vc-sm-cma-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0240-staging-
> vc04_services-Add-new-vc-sm-cma-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0240-staging-
> vc04_services-Add-new-vc-sm-cma-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0241-staging-vc-sm-cm=
a-
> Fixup-driver-for-older-VCHI-APIs.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0241-staging-vc-sm-cma-Fixup-driver-for-older-VCHI-APIs.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0241-staging-vc-sm-
> cma-Fixup-driver-for-older-VCHI-APIs.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0241-staging-vc-sm-cma-
> Fixup-driver-for-older-VCHI-APIs.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0242-staging-
> vc04_services-Use-vc-sm-cma-to-support-zero-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0242-staging-vc04_services-Use-
> vc-sm-cma-to-support-zero-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0242-staging-
> vc04_services-Use-vc-sm-cma-to-support-zero-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0242-staging-
> vc04_services-Use-vc-sm-cma-to-support-zero-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0243-media-videobuf2-
> Allow-exporting-of-a-struct-dmabuf.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0243-media-videobuf2-Allow-exporting-of-a-struct-dmabuf.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0243-media-
> videobuf2-Allow-exporting-of-a-struct-dmabuf.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0243-media-videobuf2-
> Allow-exporting-of-a-struct-dmabuf.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0244-staging-
> vc04_services-Add-a-V4L2-M2M-codec-driver.patch
> b/target/linux/bcm27xx/patches-4.19/950-0244-staging-vc04_services-Add-
> a-V4L2-M2M-codec-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0244-staging-
> vc04_services-Add-a-V4L2-M2M-codec-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0244-staging-
> vc04_services-Add-a-V4L2-M2M-codec-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0245-staging-vchiq_ar=
m-
> Register-bcm2835-codec-as-a-platfo.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0245-staging-vchiq_arm-Register-bcm2835-codec-as-a-platfo.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0245-staging-
> vchiq_arm-Register-bcm2835-codec-as-a-platfo.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0245-staging-vchiq_arm-
> Register-bcm2835-codec-as-a-platfo.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0246-staging-vchiq_ar=
m-
> Register-vcsm-cma-as-a-platform-dr.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0246-staging-vchiq_arm-Register-vcsm-cma-as-a-platform-dr.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0246-staging-
> vchiq_arm-Register-vcsm-cma-as-a-platform-dr.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0246-staging-vchiq_arm-
> Register-vcsm-cma-as-a-platform-dr.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0247-staging-bcm2835-
> camera-Fix-stride-on-RGB3-BGR3-forma.patch
> b/target/linux/bcm27xx/patches-4.19/950-0247-staging-bcm2835-camera-
> Fix-stride-on-RGB3-BGR3-forma.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0247-staging-
> bcm2835-camera-Fix-stride-on-RGB3-BGR3-forma.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0247-staging-bcm2835-
> camera-Fix-stride-on-RGB3-BGR3-forma.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0248-tpm-Make-
> SECURITYFS-a-weak-dependency.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0248-tpm-Make-SECURITYFS-a-weak-dependency.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0248-tpm-Make-
> SECURITYFS-a-weak-dependency.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0248-tpm-Make-
> SECURITYFS-a-weak-dependency.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0249-Add-overlay-for-
> SLB9760-Iridium-LetsTrust-TPM.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0249-Add-overlay-for-SLB9760-Iridium-LetsTrust-TPM.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0249-Add-overlay-
> for-SLB9760-Iridium-LetsTrust-TPM.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0249-Add-overlay-for-
> SLB9760-Iridium-LetsTrust-TPM.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0250-ASoC-add-driver-
> for-3Dlab-Nano-soundcard-2758.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0250-ASoC-add-driver-for-3Dlab-Nano-soundcard-2758.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0250-ASoC-add-
> driver-for-3Dlab-Nano-soundcard-2758.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0250-ASoC-add-driver-
> for-3Dlab-Nano-soundcard-2758.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0251-overlays-Update-
> README-with-removal-of-lirc-rpi.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0251-overlays-Update-README-with-removal-of-lirc-rpi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0251-overlays-
> Update-README-with-removal-of-lirc-rpi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0251-overlays-Update-
> README-with-removal-of-lirc-rpi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0252-staging-bcm2835-
> camera-Check-the-error-for-REPEAT_SE.patch
> b/target/linux/bcm27xx/patches-4.19/950-0252-staging-bcm2835-camera-
> Check-the-error-for-REPEAT_SE.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0252-staging-
> bcm2835-camera-Check-the-error-for-REPEAT_SE.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0252-staging-bcm2835-
> camera-Check-the-error-for-REPEAT_SE.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0253-gpio-ir-change-
> default-pull-configuration-to-up.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0253-gpio-ir-change-default-pull-configuration-to-up.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0253-gpio-ir-change-
> default-pull-configuration-to-up.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0253-gpio-ir-change-
> default-pull-configuration-to-up.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0254-firmware-
> raspberrypi-Report-the-fw-variant-during-pr.patch
> b/target/linux/bcm27xx/patches-4.19/950-0254-firmware-raspberrypi-
> Report-the-fw-variant-during-pr.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0254-firmware-
> raspberrypi-Report-the-fw-variant-during-pr.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0254-firmware-
> raspberrypi-Report-the-fw-variant-during-pr.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0255-firmware-
> raspberrypi-Report-the-fw-git-hash-during-p.patch
> b/target/linux/bcm27xx/patches-4.19/950-0255-firmware-raspberrypi-
> Report-the-fw-git-hash-during-p.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0255-firmware-
> raspberrypi-Report-the-fw-git-hash-during-p.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0255-firmware-
> raspberrypi-Report-the-fw-git-hash-during-p.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0256-arm64-dts-
> broadcom-Enable-fixups-for-overlays.patch
> b/target/linux/bcm27xx/patches-4.19/950-0256-arm64-dts-broadcom-
> Enable-fixups-for-overlays.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0256-arm64-dts-
> broadcom-Enable-fixups-for-overlays.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0256-arm64-dts-
> broadcom-Enable-fixups-for-overlays.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0257-dtoverlays-fe-pi-
> audio-fix-sgtl5000-compatible-strin.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0257-dtoverlays-fe-pi-audio-fix-sgtl5000-compatible-strin.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0257-dtoverlays-fe-
> pi-audio-fix-sgtl5000-compatible-strin.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0257-dtoverlays-fe-pi-
> audio-fix-sgtl5000-compatible-strin.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0258-bcm2835_smi-re-
> add-dereference-to-fix-DMA-transfers.patch
> b/target/linux/bcm27xx/patches-4.19/950-0258-bcm2835_smi-re-add-
> dereference-to-fix-DMA-transfers.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0258-bcm2835_smi-
> re-add-dereference-to-fix-DMA-transfers.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0258-bcm2835_smi-re-
> add-dereference-to-fix-DMA-transfers.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0259-lan78xx-Debounce-
> link-events-to-minimize-poll-storm.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0259-lan78xx-Debounce-link-events-to-minimize-poll-storm.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0259-lan78xx-
> Debounce-link-events-to-minimize-poll-storm.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0259-lan78xx-Debounce-
> link-events-to-minimize-poll-storm.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0260-ASoC-Add-
> support-for-AudioSense-Pi-add-on-soundcard.patch
> b/target/linux/bcm27xx/patches-4.19/950-0260-ASoC-Add-support-for-
> AudioSense-Pi-add-on-soundcard.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0260-ASoC-Add-
> support-for-AudioSense-Pi-add-on-soundcard.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0260-ASoC-Add-support-
> for-AudioSense-Pi-add-on-soundcard.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0261-BCM270X-Adding-
> device-tree-support-for-AudioSense-Pi.patch
> b/target/linux/bcm27xx/patches-4.19/950-0261-BCM270X-Adding-device-
> tree-support-for-AudioSense-Pi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0261-BCM270X-
> Adding-device-tree-support-for-AudioSense-Pi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0261-BCM270X-Adding-
> device-tree-support-for-AudioSense-Pi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0262-overlays-sdio-Ad=
d-
> enhanced-1-bit-support.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0262-overlays-sdio-Add-enhanced-1-bit-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0262-overlays-sdio-
> Add-enhanced-1-bit-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0262-overlays-sdio-Add-
> enhanced-1-bit-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0263-dwc_otg-fix-bug-
> with-port_addr-assignment-for-single.patch
> b/target/linux/bcm27xx/patches-4.19/950-0263-dwc_otg-fix-bug-with-
> port_addr-assignment-for-single.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0263-dwc_otg-fix-
> bug-with-port_addr-assignment-for-single.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0263-dwc_otg-fix-bug-
> with-port_addr-assignment-for-single.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0264-Added-driver-for-
> the-HiFiBerry-DAC-ADC-2694.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0264-Added-driver-for-the-HiFiBerry-DAC-ADC-2694.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0264-Added-driver-
> for-the-HiFiBerry-DAC-ADC-2694.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0264-Added-driver-for-
> the-HiFiBerry-DAC-ADC-2694.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0265-pwm-Send-a-
> uevent-on-the-pwmchip-device-upon-channel.patch
> b/target/linux/bcm27xx/patches-4.19/950-0265-pwm-Send-a-uevent-on-
> the-pwmchip-device-upon-channel.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0265-pwm-Send-a-
> uevent-on-the-pwmchip-device-upon-channel.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0265-pwm-Send-a-
> uevent-on-the-pwmchip-device-upon-channel.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0266-overlays-Add-
> ssd1306-overlay-for-OLED-display.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0266-overlays-Add-ssd1306-overlay-for-OLED-display.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0266-overlays-Add-
> ssd1306-overlay-for-OLED-display.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0266-overlays-Add-
> ssd1306-overlay-for-OLED-display.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0267-overlays-
> mcp23017-Support-the-MCP23008.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0267-overlays-mcp23017-Support-the-MCP23008.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0267-overlays-
> mcp23017-Support-the-MCP23008.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0267-overlays-mcp23017-
> Support-the-MCP23008.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0268-overlays-Add-
> mcp342x-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-0268-
> overlays-Add-mcp342x-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0268-overlays-Add-
> mcp342x-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0268-overlays-Add-
> mcp342x-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0269-char-vcio-Add-
> compat-ioctl-handling.patch b/target/linux/bcm27xx/patches-4.19/950-0269-
> char-vcio-Add-compat-ioctl-handling.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0269-char-vcio-Add-
> compat-ioctl-handling.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0269-char-vcio-Add-
> compat-ioctl-handling.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0270-char-vcio-Fail-
> probe-if-rpi_firmware-is-not-found.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0270-char-vcio-Fail-probe-if-rpi_firmware-is-not-found.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0270-char-vcio-Fail-
> probe-if-rpi_firmware-is-not-found.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0270-char-vcio-Fail-
> probe-if-rpi_firmware-is-not-found.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0271-staging-mmal-
> vchiq-Fix-client_component-for-64-bit-k.patch
> b/target/linux/bcm27xx/patches-4.19/950-0271-staging-mmal-vchiq-Fix-
> client_component-for-64-bit-k.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0271-staging-mmal-
> vchiq-Fix-client_component-for-64-bit-k.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0271-staging-mmal-
> vchiq-Fix-client_component-for-64-bit-k.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0272-staging-bcm2835-
> camera-Add-sanity-checks-for-queue_s.patch
> b/target/linux/bcm27xx/patches-4.19/950-0272-staging-bcm2835-camera-
> Add-sanity-checks-for-queue_s.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0272-staging-
> bcm2835-camera-Add-sanity-checks-for-queue_s.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0272-staging-bcm2835-
> camera-Add-sanity-checks-for-queue_s.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0273-staging-bcm2835-
> camera-Set-the-field-value-within-ea.patch
> b/target/linux/bcm27xx/patches-4.19/950-0273-staging-bcm2835-camera-
> Set-the-field-value-within-ea.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0273-staging-
> bcm2835-camera-Set-the-field-value-within-ea.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0273-staging-bcm2835-
> camera-Set-the-field-value-within-ea.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0274-char-vc_mem-Fix-
> up-compat-ioctls-for-64bit-kernel.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0274-char-vc_mem-Fix-up-compat-ioctls-for-64bit-kernel.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0274-char-vc_mem-
> Fix-up-compat-ioctls-for-64bit-kernel.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0274-char-vc_mem-Fix-
> up-compat-ioctls-for-64bit-kernel.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0275-char-vc_mem-Fix-
> all-coding-style-issues.patch b/target/linux/bcm27xx/patches-4.19/950-027=
5-
> char-vc_mem-Fix-all-coding-style-issues.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0275-char-vc_mem-
> Fix-all-coding-style-issues.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0275-char-vc_mem-Fix-
> all-coding-style-issues.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0276-clk-clk-bcm2835-
> Use-zd-when-printing-size_t.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0276-clk-clk-bcm2835-Use-zd-when-printing-size_t.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0276-clk-clk-
> bcm2835-Use-zd-when-printing-size_t.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0276-clk-clk-bcm2835-
> Use-zd-when-printing-size_t.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0277-mfd-Add-
> rpi_sense_core-of-compatible-string.patch
> b/target/linux/bcm27xx/patches-4.19/950-0277-mfd-Add-rpi_sense_core-
> of-compatible-string.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0277-mfd-Add-
> rpi_sense_core-of-compatible-string.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0277-mfd-Add-
> rpi_sense_core-of-compatible-string.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0278-gpu-
> vc4_firmware_kms-Fix-up-64-bit-compile-warnings.patch
> b/target/linux/bcm27xx/patches-4.19/950-0278-gpu-vc4_firmware_kms-Fix-
> up-64-bit-compile-warnings.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0278-gpu-
> vc4_firmware_kms-Fix-up-64-bit-compile-warnings.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0278-gpu-
> vc4_firmware_kms-Fix-up-64-bit-compile-warnings.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0279-input-rpi-ft5406-
> Clear-build-warning-on-64-bit-build.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0279-input-rpi-ft5406-Clear-build-warning-on-64-bit-build.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0279-input-rpi-
> ft5406-Clear-build-warning-on-64-bit-build.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0279-input-rpi-ft5406-
> Clear-build-warning-on-64-bit-build.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0280-dtoverlays-Corre=
ct-
> DT-handling-camera-GPIOs.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0280-dtoverlays-Correct-DT-handling-camera-GPIOs.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0280-dtoverlays-
> Correct-DT-handling-camera-GPIOs.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0280-dtoverlays-Correct-
> DT-handling-camera-GPIOs.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0281-media-ov5647-
> Use-gpiod_set_value_cansleep.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0281-media-ov5647-Use-gpiod_set_value_cansleep.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0281-media-ov5647-
> Use-gpiod_set_value_cansleep.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0281-media-ov5647-Use-
> gpiod_set_value_cansleep.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0282-media-bcm2835-
> unicam-Power-on-subdev-on-open-release.patch
> b/target/linux/bcm27xx/patches-4.19/950-0282-media-bcm2835-unicam-
> Power-on-subdev-on-open-release.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0282-media-
> bcm2835-unicam-Power-on-subdev-on-open-release.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0282-media-bcm2835-
> unicam-Power-on-subdev-on-open-release.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0283-audioinjector-oc=
to-
> revert-to-dummy-supplies.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0283-audioinjector-octo-revert-to-dummy-supplies.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0283-audioinjector-
> octo-revert-to-dummy-supplies.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0283-audioinjector-octo-
> revert-to-dummy-supplies.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0284-staging-bcm2835-
> camera-Correct-ctrl-min-max-step-def.patch
> b/target/linux/bcm27xx/patches-4.19/950-0284-staging-bcm2835-camera-
> Correct-ctrl-min-max-step-def.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0284-staging-
> bcm2835-camera-Correct-ctrl-min-max-step-def.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0284-staging-bcm2835-
> camera-Correct-ctrl-min-max-step-def.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0285-staging-bcm2835-
> codec-variable-vb2-may-be-used-unini.patch
> b/target/linux/bcm27xx/patches-4.19/950-0285-staging-bcm2835-codec-
> variable-vb2-may-be-used-unini.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0285-staging-
> bcm2835-codec-variable-vb2-may-be-used-unini.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0285-staging-bcm2835-
> codec-variable-vb2-may-be-used-unini.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0286-staging-bcm2835-
> codec-Fix-potentially-uninitialised-.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0286-staging-bcm2835-codec-Fix-potentially-uninitialised-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0286-staging-
> bcm2835-codec-Fix-potentially-uninitialised-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0286-staging-bcm2835-
> codec-Fix-potentially-uninitialised-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0287-video-bcm2708_fb-
> Add-compat_ioctl-support.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0287-video-bcm2708_fb-Add-compat_ioctl-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0287-video-
> bcm2708_fb-Add-compat_ioctl-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0287-video-bcm2708_fb-
> Add-compat_ioctl-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0288-video-bcm2708_fb-
> Fix-warnings-on-64-bit-builds.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0288-video-bcm2708_fb-Fix-warnings-on-64-bit-builds.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0288-video-
> bcm2708_fb-Fix-warnings-on-64-bit-builds.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0288-video-bcm2708_fb-
> Fix-warnings-on-64-bit-builds.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0289-video-bcm2708_fb-
> Clean-up-coding-style-issues.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0289-video-bcm2708_fb-Clean-up-coding-style-issues.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0289-video-
> bcm2708_fb-Clean-up-coding-style-issues.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0289-video-bcm2708_fb-
> Clean-up-coding-style-issues.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0290-bcm2835-dma-
> Add-support-for-per-channel-flags.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0290-bcm2835-dma-Add-support-for-per-channel-flags.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0290-bcm2835-dma-
> Add-support-for-per-channel-flags.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0290-bcm2835-dma-Add-
> support-for-per-channel-flags.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0291-bcm283x-Set-the-
> DISDEBUG-flag-for-SD-transfers.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0291-bcm283x-Set-the-DISDEBUG-flag-for-SD-transfers.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0291-bcm283x-Set-
> the-DISDEBUG-flag-for-SD-transfers.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0291-bcm283x-Set-the-
> DISDEBUG-flag-for-SD-transfers.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0292-ASoC-pcm512x-
> Implement-the-digital_mute-interface.patch
> b/target/linux/bcm27xx/patches-4.19/950-0292-ASoC-pcm512x-Implement-
> the-digital_mute-interface.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0292-ASoC-pcm512x-
> Implement-the-digital_mute-interface.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0292-ASoC-pcm512x-
> Implement-the-digital_mute-interface.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0293-ASoC-pcm512x-Fix-
> a-double-unlock-in-pcm512x_digital_.patch
> b/target/linux/bcm27xx/patches-4.19/950-0293-ASoC-pcm512x-Fix-a-
> double-unlock-in-pcm512x_digital_.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0293-ASoC-pcm512x-
> Fix-a-double-unlock-in-pcm512x_digital_.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0293-ASoC-pcm512x-Fix-
> a-double-unlock-in-pcm512x_digital_.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0294-usb-dwc_otg-
> Clean-up-build-warnings-on-64bit-kernels.patch
> b/target/linux/bcm27xx/patches-4.19/950-0294-usb-dwc_otg-Clean-up-
> build-warnings-on-64bit-kernels.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0294-usb-dwc_otg-
> Clean-up-build-warnings-on-64bit-kernels.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0294-usb-dwc_otg-
> Clean-up-build-warnings-on-64bit-kernels.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0295-usb-dwc_otg-Use-
> dma-allocation-for-mphi-dummy_send-b.patch
> b/target/linux/bcm27xx/patches-4.19/950-0295-usb-dwc_otg-Use-dma-
> allocation-for-mphi-dummy_send-b.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0295-usb-dwc_otg-
> Use-dma-allocation-for-mphi-dummy_send-b.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0295-usb-dwc_otg-Use-
> dma-allocation-for-mphi-dummy_send-b.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0296-staging-vchiq_ar=
m-
> Set-up-dma-ranges-on-child-devices.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0296-staging-vchiq_arm-Set-up-dma-ranges-on-child-devices.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0296-staging-
> vchiq_arm-Set-up-dma-ranges-on-child-devices.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0296-staging-vchiq_arm-
> Set-up-dma-ranges-on-child-devices.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0297-staging-vc-sm-cm=
a-
> Correct-DMA-configuration.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0297-staging-vc-sm-cma-Correct-DMA-configuration.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0297-staging-vc-sm-
> cma-Correct-DMA-configuration.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0297-staging-vc-sm-cma-
> Correct-DMA-configuration.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0298-staging-vc-sm-cm=
a-
> Use-a-void-pointer-as-the-handle-w.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0298-staging-vc-sm-cma-Use-a-void-pointer-as-the-handle-
> w.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0298-staging-vc-sm-
> cma-Use-a-void-pointer-as-the-handle-w.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0298-staging-vc-sm-cma-
> Use-a-void-pointer-as-the-handle-w.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0299-staging-vc-sm-cm=
a-
> Fix-up-for-64bit-builds.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0299-staging-vc-sm-cma-Fix-up-for-64bit-builds.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0299-staging-vc-sm-
> cma-Fix-up-for-64bit-builds.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0299-staging-vc-sm-cma-
> Fix-up-for-64bit-builds.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0300-configs-Enable-
> the-AD193x-codecs.patch b/target/linux/bcm27xx/patches-4.19/950-0300-
> configs-Enable-the-AD193x-codecs.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0300-configs-Enable-
> the-AD193x-codecs.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0300-configs-Enable-the-
> AD193x-codecs.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0301-overlays-
> balenaFin-v1.1.0-carrier-board-update.patch
> b/target/linux/bcm27xx/patches-4.19/950-0301-overlays-balenaFin-v1.1.0-
> carrier-board-update.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0301-overlays-
> balenaFin-v1.1.0-carrier-board-update.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0301-overlays-balenaFin-
> v1.1.0-carrier-board-update.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0302-gpu-vc4-fkms-
> Update-driver-to-not-use-plane-crtc.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0302-gpu-vc4-fkms-Update-driver-to-not-use-plane-crtc.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0302-gpu-vc4-fkms-
> Update-driver-to-not-use-plane-crtc.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0302-gpu-vc4-fkms-
> Update-driver-to-not-use-plane-crtc.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0303-drm-vc4-
> Programming-the-CTM-is-conditional-on-runnin.patch
> b/target/linux/bcm27xx/patches-4.19/950-0303-drm-vc4-Programming-the-
> CTM-is-conditional-on-runnin.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0303-drm-vc4-
> Programming-the-CTM-is-conditional-on-runnin.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0303-drm-vc4-
> Programming-the-CTM-is-conditional-on-runnin.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0304-staging-
> mmal_vchiq-Add-in-the-Bayer-encoding-formats.patch
> b/target/linux/bcm27xx/patches-4.19/950-0304-staging-mmal_vchiq-Add-in-
> the-Bayer-encoding-formats.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0304-staging-
> mmal_vchiq-Add-in-the-Bayer-encoding-formats.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0304-staging-
> mmal_vchiq-Add-in-the-Bayer-encoding-formats.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0305-staging-mmal-
> vchiq-Always-return-the-param-size-from.patch
> b/target/linux/bcm27xx/patches-4.19/950-0305-staging-mmal-vchiq-Always-
> return-the-param-size-from.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0305-staging-mmal-
> vchiq-Always-return-the-param-size-from.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0305-staging-mmal-
> vchiq-Always-return-the-param-size-from.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0306-staging-mmal-
> vchiq-If-the-VPU-returns-an-error-don-t.patch
> b/target/linux/bcm27xx/patches-4.19/950-0306-staging-mmal-vchiq-If-the-
> VPU-returns-an-error-don-t.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0306-staging-mmal-
> vchiq-If-the-VPU-returns-an-error-don-t.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0306-staging-mmal-
> vchiq-If-the-VPU-returns-an-error-don-t.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0307-staging-
> bcm2835_codec-Query-supported-formats-from-t.patch
> b/target/linux/bcm27xx/patches-4.19/950-0307-staging-bcm2835_codec-
> Query-supported-formats-from-t.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0307-staging-
> bcm2835_codec-Query-supported-formats-from-t.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0307-staging-
> bcm2835_codec-Query-supported-formats-from-t.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0308-staging-
> bcm2835_codec-Add-support-for-the-ISP-as-an-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0308-staging-bcm2835_codec-
> Add-support-for-the-ISP-as-an-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0308-staging-
> bcm2835_codec-Add-support-for-the-ISP-as-an-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0308-staging-
> bcm2835_codec-Add-support-for-the-ISP-as-an-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0309-staging-
> bcm2835_codec-Add-an-option-for-ignoring-Bay.patch
> b/target/linux/bcm27xx/patches-4.19/950-0309-staging-bcm2835_codec-
> Add-an-option-for-ignoring-Bay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0309-staging-
> bcm2835_codec-Add-an-option-for-ignoring-Bay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0309-staging-
> bcm2835_codec-Add-an-option-for-ignoring-Bay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0310-staging-
> bcm2835_codec-Fix-handling-of-VB2_MEMORY_DMA.patch
> b/target/linux/bcm27xx/patches-4.19/950-0310-staging-bcm2835_codec-Fix-
> handling-of-VB2_MEMORY_DMA.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0310-staging-
> bcm2835_codec-Fix-handling-of-VB2_MEMORY_DMA.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0310-staging-
> bcm2835_codec-Fix-handling-of-VB2_MEMORY_DMA.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0311-staging-mmal-
> vchiq-Update-mmal_parameters.h-with-rec.patch
> b/target/linux/bcm27xx/patches-4.19/950-0311-staging-mmal-vchiq-Update-
> mmal_parameters.h-with-rec.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0311-staging-mmal-
> vchiq-Update-mmal_parameters.h-with-rec.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0311-staging-mmal-
> vchiq-Update-mmal_parameters.h-with-rec.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0312-staging-
> bcm2835_codec-Include-timing-info-in-SPS-hea.patch
> b/target/linux/bcm27xx/patches-4.19/950-0312-staging-bcm2835_codec-
> Include-timing-info-in-SPS-hea.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0312-staging-
> bcm2835_codec-Include-timing-info-in-SPS-hea.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0312-staging-
> bcm2835_codec-Include-timing-info-in-SPS-hea.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0313-drm-vc4-Don-t-
> wait-for-vblank-on-fkms-cursor-updates.patch
> b/target/linux/bcm27xx/patches-4.19/950-0313-drm-vc4-Don-t-wait-for-
> vblank-on-fkms-cursor-updates.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0313-drm-vc4-Don-t-
> wait-for-vblank-on-fkms-cursor-updates.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0313-drm-vc4-Don-t-
> wait-for-vblank-on-fkms-cursor-updates.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0314-Fix-for-Pisound-
> kernel-module-in-Real-Time-kernel-co.patch
> b/target/linux/bcm27xx/patches-4.19/950-0314-Fix-for-Pisound-kernel-
> module-in-Real-Time-kernel-co.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0314-Fix-for-Pisound-
> kernel-module-in-Real-Time-kernel-co.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0314-Fix-for-Pisound-
> kernel-module-in-Real-Time-kernel-co.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0315-Added-mute-
> stream-func.patch b/target/linux/bcm27xx/patches-4.19/950-0315-Added-
> mute-stream-func.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0315-Added-mute-
> stream-func.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0315-Added-mute-
> stream-func.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0316-lan78xx-EEE-
> support-is-now-a-PHY-property.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0316-lan78xx-EEE-support-is-now-a-PHY-property.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0316-lan78xx-EEE-
> support-is-now-a-PHY-property.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0316-lan78xx-EEE-
> support-is-now-a-PHY-property.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0317-staging-
> vc_sm_cma-Remove-erroneous-misc_deregister.patch
> b/target/linux/bcm27xx/patches-4.19/950-0317-staging-vc_sm_cma-
> Remove-erroneous-misc_deregister.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0317-staging-
> vc_sm_cma-Remove-erroneous-misc_deregister.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0317-staging-
> vc_sm_cma-Remove-erroneous-misc_deregister.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0318-vcsm-Fix-makefil=
e-
> include-on-out-of-tree-builds.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0318-vcsm-Fix-makefile-include-on-out-of-tree-builds.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0318-vcsm-Fix-
> makefile-include-on-out-of-tree-builds.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0318-vcsm-Fix-makefile-
> include-on-out-of-tree-builds.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0319-vcsm-Remove-set-
> but-unused-variable.patch b/target/linux/bcm27xx/patches-4.19/950-0319-
> vcsm-Remove-set-but-unused-variable.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0319-vcsm-Remove-
> set-but-unused-variable.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0319-vcsm-Remove-set-
> but-unused-variable.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0320-vcsm-Reduce-
> scope-of-local-functions.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0320-vcsm-Reduce-scope-of-local-functions.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0320-vcsm-Reduce-
> scope-of-local-functions.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0320-vcsm-Reduce-
> scope-of-local-functions.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0321-staging-bcm2835-
> codec-NULL-component-handle-on-queue.patch
> b/target/linux/bcm27xx/patches-4.19/950-0321-staging-bcm2835-codec-
> NULL-component-handle-on-queue.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0321-staging-
> bcm2835-codec-NULL-component-handle-on-queue.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0321-staging-bcm2835-
> codec-NULL-component-handle-on-queue.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0322-staging-vc-sm-cm=
a-
> Remove-the-debugfs-directory-on-re.patch
> b/target/linux/bcm27xx/patches-4.19/950-0322-staging-vc-sm-cma-Remove-
> the-debugfs-directory-on-re.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0322-staging-vc-sm-
> cma-Remove-the-debugfs-directory-on-re.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0322-staging-vc-sm-cma-
> Remove-the-debugfs-directory-on-re.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0323-staging-vc-sm-cm=
a-
> Use-devm_-allocs-for-sm_state.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0323-staging-vc-sm-cma-Use-devm_-allocs-for-sm_state.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0323-staging-vc-sm-
> cma-Use-devm_-allocs-for-sm_state.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0323-staging-vc-sm-cma-
> Use-devm_-allocs-for-sm_state.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0324-staging-vc-sm-cm=
a-
> Don-t-fail-if-debugfs-calls-fail.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0324-staging-vc-sm-cma-Don-t-fail-if-debugfs-calls-fail.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0324-staging-vc-sm-
> cma-Don-t-fail-if-debugfs-calls-fail.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0324-staging-vc-sm-cma-
> Don-t-fail-if-debugfs-calls-fail.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0325-staging-vc-sm-cm=
a-
> Ensure-mutex-and-idr-are-destroyed.patch
> b/target/linux/bcm27xx/patches-4.19/950-0325-staging-vc-sm-cma-Ensure-
> mutex-and-idr-are-destroyed.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0325-staging-vc-sm-
> cma-Ensure-mutex-and-idr-are-destroyed.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0325-staging-vc-sm-cma-
> Ensure-mutex-and-idr-are-destroyed.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0326-staging-
> bcm2835_codec-Clean-up-logging-on-unloading-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0326-staging-bcm2835_codec-
> Clean-up-logging-on-unloading-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0326-staging-
> bcm2835_codec-Clean-up-logging-on-unloading-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0326-staging-
> bcm2835_codec-Clean-up-logging-on-unloading-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0327-bcm2835-sdhost-
> Allow-for-sg-entries-that-cross-pages.patch
> b/target/linux/bcm27xx/patches-4.19/950-0327-bcm2835-sdhost-Allow-for-
> sg-entries-that-cross-pages.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0327-bcm2835-
> sdhost-Allow-for-sg-entries-that-cross-pages.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0327-bcm2835-sdhost-
> Allow-for-sg-entries-that-cross-pages.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0328-overlays-sdio-
> Added-4-bit-support-on-GPIOs-34-39.-29.patch
> b/target/linux/bcm27xx/patches-4.19/950-0328-overlays-sdio-Added-4-bit-
> support-on-GPIOs-34-39.-29.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0328-overlays-sdio-
> Added-4-bit-support-on-GPIOs-34-39.-29.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0328-overlays-sdio-
> Added-4-bit-support-on-GPIOs-34-39.-29.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0329-overlays-Fix-
> multiple-instantiation-of-sc16is7xx.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0329-overlays-Fix-multiple-instantiation-of-sc16is7xx.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0329-overlays-Fix-
> multiple-instantiation-of-sc16is7xx.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0329-overlays-Fix-
> multiple-instantiation-of-sc16is7xx.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0330-bcm2835-mmc-Fix-
> DMA-channel-leak.patch b/target/linux/bcm27xx/patches-4.19/950-0330-
> bcm2835-mmc-Fix-DMA-channel-leak.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0330-bcm2835-mmc-
> Fix-DMA-channel-leak.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0330-bcm2835-mmc-Fix-
> DMA-channel-leak.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0331-bcm2835-mmc-Fix-
> struct-mmc_host-leak-on-probe.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0331-bcm2835-mmc-Fix-struct-mmc_host-leak-on-probe.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0331-bcm2835-mmc-
> Fix-struct-mmc_host-leak-on-probe.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0331-bcm2835-mmc-Fix-
> struct-mmc_host-leak-on-probe.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0332-bcm2835-mmc-Fix-
> duplicate-free_irq-on-remove.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0332-bcm2835-mmc-Fix-duplicate-free_irq-on-remove.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0332-bcm2835-mmc-
> Fix-duplicate-free_irq-on-remove.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0332-bcm2835-mmc-Fix-
> duplicate-free_irq-on-remove.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0333-bcm2835-mmc-
> Handle-mmc_add_host-errors.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0333-bcm2835-mmc-Handle-mmc_add_host-errors.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0333-bcm2835-mmc-
> Handle-mmc_add_host-errors.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0333-bcm2835-mmc-
> Handle-mmc_add_host-errors.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0334-bcm2835-mmc-
> Deduplicate-reset-of-driver-data-on-remo.patch
> b/target/linux/bcm27xx/patches-4.19/950-0334-bcm2835-mmc-Deduplicate-
> reset-of-driver-data-on-remo.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0334-bcm2835-mmc-
> Deduplicate-reset-of-driver-data-on-remo.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0334-bcm2835-mmc-
> Deduplicate-reset-of-driver-data-on-remo.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0335-overlays-Add-
> max17040-support-to-i2c-sensor.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0335-overlays-Add-max17040-support-to-i2c-sensor.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0335-overlays-Add-
> max17040-support-to-i2c-sensor.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0335-overlays-Add-
> max17040-support-to-i2c-sensor.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0336-media-bcm2835-
> unicam-Add-support-for-enum-framesizes.patch
> b/target/linux/bcm27xx/patches-4.19/950-0336-media-bcm2835-unicam-
> Add-support-for-enum-framesizes.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0336-media-
> bcm2835-unicam-Add-support-for-enum-framesizes.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0336-media-bcm2835-
> unicam-Add-support-for-enum-framesizes.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0337-staging-bcm2835-
> codec-Refactor-default-resolution-co.patch
> b/target/linux/bcm27xx/patches-4.19/950-0337-staging-bcm2835-codec-
> Refactor-default-resolution-co.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0337-staging-
> bcm2835-codec-Refactor-default-resolution-co.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0337-staging-bcm2835-
> codec-Refactor-default-resolution-co.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0338-nvmem-add-type-
> attribute.patch b/target/linux/bcm27xx/patches-4.19/950-0338-nvmem-add-
> type-attribute.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0338-nvmem-add-
> type-attribute.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0338-nvmem-add-type-
> attribute.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0339-rtc-rv3028-add-
> new-driver.patch b/target/linux/bcm27xx/patches-4.19/950-0339-rtc-rv3028-
> add-new-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0339-rtc-rv3028-add-
> new-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0339-rtc-rv3028-add-
> new-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0340-overlays-Add-
> rv3028-to-i2c-rtc.patch b/target/linux/bcm27xx/patches-4.19/950-0340-
> overlays-Add-rv3028-to-i2c-rtc.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0340-overlays-Add-
> rv3028-to-i2c-rtc.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0340-overlays-Add-
> rv3028-to-i2c-rtc.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0341-ASoC-
> tlv320aic32x4-SND_SOC_DAPM_MICBIAS-is-deprecate.patch
> b/target/linux/bcm27xx/patches-4.19/950-0341-ASoC-tlv320aic32x4-
> SND_SOC_DAPM_MICBIAS-is-deprecate.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0341-ASoC-
> tlv320aic32x4-SND_SOC_DAPM_MICBIAS-is-deprecate.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0341-ASoC-tlv320aic32x4-
> SND_SOC_DAPM_MICBIAS-is-deprecate.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0342-ASoC-
> tlv320aic32x4-Break-out-clock-setting-into-sepa.patch
> b/target/linux/bcm27xx/patches-4.19/950-0342-ASoC-tlv320aic32x4-Break-
> out-clock-setting-into-sepa.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0342-ASoC-
> tlv320aic32x4-Break-out-clock-setting-into-sepa.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0342-ASoC-tlv320aic32x4-
> Break-out-clock-setting-into-sepa.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0343-ASoC-
> tlv320aic32x4-Properly-Set-Processing-Blocks.patch
> b/target/linux/bcm27xx/patches-4.19/950-0343-ASoC-tlv320aic32x4-
> Properly-Set-Processing-Blocks.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0343-ASoC-
> tlv320aic32x4-Properly-Set-Processing-Blocks.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0343-ASoC-tlv320aic32x4-
> Properly-Set-Processing-Blocks.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0344-ASoC-
> tlv320aic32x4-Model-PLL-in-CCF.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0344-ASoC-tlv320aic32x4-Model-PLL-in-CCF.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0344-ASoC-
> tlv320aic32x4-Model-PLL-in-CCF.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0344-ASoC-tlv320aic32x4-
> Model-PLL-in-CCF.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0345-ASoC-
> tlv320aic32x4-Model-CODEC_CLKIN-in-CCF.patch
> b/target/linux/bcm27xx/patches-4.19/950-0345-ASoC-tlv320aic32x4-Model-
> CODEC_CLKIN-in-CCF.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0345-ASoC-
> tlv320aic32x4-Model-CODEC_CLKIN-in-CCF.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0345-ASoC-tlv320aic32x4-
> Model-CODEC_CLKIN-in-CCF.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0346-ASoC-
> tlv320aic32x4-Model-DAC-ADC-dividers-in-CCF.patch
> b/target/linux/bcm27xx/patches-4.19/950-0346-ASoC-tlv320aic32x4-Model-
> DAC-ADC-dividers-in-CCF.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0346-ASoC-
> tlv320aic32x4-Model-DAC-ADC-dividers-in-CCF.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0346-ASoC-tlv320aic32x4-
> Model-DAC-ADC-dividers-in-CCF.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0347-ASoC-
> tlv320aic32x4-Model-BDIV-divider-in-CCF.patch
> b/target/linux/bcm27xx/patches-4.19/950-0347-ASoC-tlv320aic32x4-Model-
> BDIV-divider-in-CCF.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0347-ASoC-
> tlv320aic32x4-Model-BDIV-divider-in-CCF.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0347-ASoC-tlv320aic32x4-
> Model-BDIV-divider-in-CCF.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0348-ASoC-
> tlv320aic32x4-Control-clock-gating-with-CCF.patch
> b/target/linux/bcm27xx/patches-4.19/950-0348-ASoC-tlv320aic32x4-Control-
> clock-gating-with-CCF.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0348-ASoC-
> tlv320aic32x4-Control-clock-gating-with-CCF.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0348-ASoC-tlv320aic32x4-
> Control-clock-gating-with-CCF.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0349-ASoC-
> tlv320aic32x4-Move-aosr-and-dosr-setting-to-sep.patch
> b/target/linux/bcm27xx/patches-4.19/950-0349-ASoC-tlv320aic32x4-Move-
> aosr-and-dosr-setting-to-sep.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0349-ASoC-
> tlv320aic32x4-Move-aosr-and-dosr-setting-to-sep.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0349-ASoC-tlv320aic32x4-
> Move-aosr-and-dosr-setting-to-sep.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0350-ASoC-
> tlv320aic32x4-Dynamically-Determine-Clocking.patch
> b/target/linux/bcm27xx/patches-4.19/950-0350-ASoC-tlv320aic32x4-
> Dynamically-Determine-Clocking.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0350-ASoC-
> tlv320aic32x4-Dynamically-Determine-Clocking.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0350-ASoC-tlv320aic32x4-
> Dynamically-Determine-Clocking.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0351-ASoC-
> tlv320aic32x4-Restructure-set_dai_sysclk.patch
> b/target/linux/bcm27xx/patches-4.19/950-0351-ASoC-tlv320aic32x4-
> Restructure-set_dai_sysclk.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0351-ASoC-
> tlv320aic32x4-Restructure-set_dai_sysclk.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0351-ASoC-tlv320aic32x4-
> Restructure-set_dai_sysclk.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0352-ASoC-
> tlv320aic32x4-Remove-mclk-references.patch
> b/target/linux/bcm27xx/patches-4.19/950-0352-ASoC-tlv320aic32x4-
> Remove-mclk-references.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0352-ASoC-
> tlv320aic32x4-Remove-mclk-references.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0352-ASoC-tlv320aic32x4-
> Remove-mclk-references.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0353-ASoC-
> tlv320aic32x4-Allow-192000-Sample-Rate.patch
> b/target/linux/bcm27xx/patches-4.19/950-0353-ASoC-tlv320aic32x4-Allow-
> 192000-Sample-Rate.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0353-ASoC-
> tlv320aic32x4-Allow-192000-Sample-Rate.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0353-ASoC-tlv320aic32x4-
> Allow-192000-Sample-Rate.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0354-ASoC-
> tlv320aic32x4-Only-enable-with-common-clock.patch
> b/target/linux/bcm27xx/patches-4.19/950-0354-ASoC-tlv320aic32x4-Only-
> enable-with-common-clock.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0354-ASoC-
> tlv320aic32x4-Only-enable-with-common-clock.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0354-ASoC-tlv320aic32x4-
> Only-enable-with-common-clock.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0355-Audiophonics-I-
> Sabre-9038Q2M-DAC-driver.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0355-Audiophonics-I-Sabre-9038Q2M-DAC-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0355-Audiophonics-I-
> Sabre-9038Q2M-DAC-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0355-Audiophonics-I-
> Sabre-9038Q2M-DAC-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0356-ASoC-
> tlv320aic32x4-Change-author-s-name.patch
> b/target/linux/bcm27xx/patches-4.19/950-0356-ASoC-tlv320aic32x4-Change-
> author-s-name.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0356-ASoC-
> tlv320aic32x4-Change-author-s-name.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0356-ASoC-tlv320aic32x4-
> Change-author-s-name.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0357-ASoC-
> tlv320aic32x4-Update-copyright-and-use-SPDX-ide.patch
> b/target/linux/bcm27xx/patches-4.19/950-0357-ASoC-tlv320aic32x4-Update-
> copyright-and-use-SPDX-ide.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0357-ASoC-
> tlv320aic32x4-Update-copyright-and-use-SPDX-ide.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0357-ASoC-tlv320aic32x4-
> Update-copyright-and-use-SPDX-ide.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0358-ASoC-
> tlv320aic32x4-Add-Switch-for-Setting-Common-Mod.patch
> b/target/linux/bcm27xx/patches-4.19/950-0358-ASoC-tlv320aic32x4-Add-
> Switch-for-Setting-Common-Mod.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0358-ASoC-
> tlv320aic32x4-Add-Switch-for-Setting-Common-Mod.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0358-ASoC-tlv320aic32x4-
> Add-Switch-for-Setting-Common-Mod.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0359-ASoC-
> tlv320aic32x4-Add-Playback-PowerTune-Controls.patch
> b/target/linux/bcm27xx/patches-4.19/950-0359-ASoC-tlv320aic32x4-Add-
> Playback-PowerTune-Controls.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0359-ASoC-
> tlv320aic32x4-Add-Playback-PowerTune-Controls.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0359-ASoC-tlv320aic32x4-
> Add-Playback-PowerTune-Controls.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0360-dtoverlays-Add-
> Support-for-the-UDRC-DRAWS.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0360-dtoverlays-Add-Support-for-the-UDRC-DRAWS.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0360-dtoverlays-Add-
> Support-for-the-UDRC-DRAWS.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0360-dtoverlays-Add-
> Support-for-the-UDRC-DRAWS.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0361-dwc_otg-only-
> do_split-when-we-actually-need-to-do-a-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0361-dwc_otg-only-do_split-
> when-we-actually-need-to-do-a-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0361-dwc_otg-only-
> do_split-when-we-actually-need-to-do-a-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0361-dwc_otg-only-
> do_split-when-we-actually-need-to-do-a-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0362-Input-ili210x-fe=
tch-
> touchscreen-geometry-from-DT.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0362-Input-ili210x-fetch-touchscreen-geometry-from-DT.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0362-Input-ili210x-
> fetch-touchscreen-geometry-from-DT.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0362-Input-ili210x-fetch-
> touchscreen-geometry-from-DT.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0363-Input-ili210x-ad=
d-
> DT-binding-document.patch b/target/linux/bcm27xx/patches-4.19/950-0363-
> Input-ili210x-add-DT-binding-document.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0363-Input-ili210x-
> add-DT-binding-document.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0363-Input-ili210x-add-
> DT-binding-document.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0364-BCM2708-Add-
> core-Device-Tree-support-ilitek251x.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0364-BCM2708-Add-core-Device-Tree-support-ilitek251x.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0364-BCM2708-Add-
> core-Device-Tree-support-ilitek251x.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0364-BCM2708-Add-
> core-Device-Tree-support-ilitek251x.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0365-dwc_otg-fix-
> locking-around-dequeueing-and-killing-UR.patch
> b/target/linux/bcm27xx/patches-4.19/950-0365-dwc_otg-fix-locking-around-
> dequeueing-and-killing-UR.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0365-dwc_otg-fix-
> locking-around-dequeueing-and-killing-UR.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0365-dwc_otg-fix-
> locking-around-dequeueing-and-killing-UR.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0366-rtc-rv3028-Add-
> backup-switchover-mode-support.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0366-rtc-rv3028-Add-backup-switchover-mode-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0366-rtc-rv3028-Add-
> backup-switchover-mode-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0366-rtc-rv3028-Add-
> backup-switchover-mode-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0367-dt-bindings-rv30=
28-
> backup-switchover-support.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0367-dt-bindings-rv3028-backup-switchover-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0367-dt-bindings-
> rv3028-backup-switchover-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0367-dt-bindings-rv3028-
> backup-switchover-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0368-overlays-Add-
> rv3028-backup-switchover-support-to-i2c.patch
> b/target/linux/bcm27xx/patches-4.19/950-0368-overlays-Add-rv3028-
> backup-switchover-support-to-i2c.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0368-overlays-Add-
> rv3028-backup-switchover-support-to-i2c.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0368-overlays-Add-
> rv3028-backup-switchover-support-to-i2c.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0369-Maxim-
> MAX98357A-I2S-DAC-overlay-2935.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0369-Maxim-MAX98357A-I2S-DAC-overlay-2935.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0369-Maxim-
> MAX98357A-I2S-DAC-overlay-2935.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0369-Maxim-
> MAX98357A-I2S-DAC-overlay-2935.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0370-sound-Fixes-for-
> audioinjector-octo-under-4.19.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0370-sound-Fixes-for-audioinjector-octo-under-4.19.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0370-sound-Fixes-
> for-audioinjector-octo-under-4.19.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0370-sound-Fixes-for-
> audioinjector-octo-under-4.19.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0371-overlays-Add-
> PiGlow-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-0371-
> overlays-Add-PiGlow-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0371-overlays-Add-
> PiGlow-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0371-overlays-Add-
> PiGlow-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0372-staging-bcm2835-
> audio-Clean-up-mutex-locks.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0372-staging-bcm2835-audio-Clean-up-mutex-locks.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0372-staging-
> bcm2835-audio-Clean-up-mutex-locks.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0372-staging-bcm2835-
> audio-Clean-up-mutex-locks.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0373-staging-bcm2835-
> audio-Remove-redundant-spdif-stream-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0373-staging-bcm2835-audio-
> Remove-redundant-spdif-stream-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0373-staging-
> bcm2835-audio-Remove-redundant-spdif-stream-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0373-staging-bcm2835-
> audio-Remove-redundant-spdif-stream-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0374-staging-bcm2835-
> audio-Clean-up-include-files-in-bcm2.patch
> b/target/linux/bcm27xx/patches-4.19/950-0374-staging-bcm2835-audio-
> Clean-up-include-files-in-bcm2.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0374-staging-
> bcm2835-audio-Clean-up-include-files-in-bcm2.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0374-staging-bcm2835-
> audio-Clean-up-include-files-in-bcm2.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0375-staging-bcm2835-
> audio-Remove-redundant-substream-mas.patch
> b/target/linux/bcm27xx/patches-4.19/950-0375-staging-bcm2835-audio-
> Remove-redundant-substream-mas.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0375-staging-
> bcm2835-audio-Remove-redundant-substream-mas.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0375-staging-bcm2835-
> audio-Remove-redundant-substream-mas.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0376-staging-bcm2835-
> audio-Fix-mute-controls-volume-handl.patch
> b/target/linux/bcm27xx/patches-4.19/950-0376-staging-bcm2835-audio-Fix-
> mute-controls-volume-handl.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0376-staging-
> bcm2835-audio-Fix-mute-controls-volume-handl.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0376-staging-bcm2835-
> audio-Fix-mute-controls-volume-handl.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0377-staging-bcm2835-
> audio-Remove-redundant-function-call.patch
> b/target/linux/bcm27xx/patches-4.19/950-0377-staging-bcm2835-audio-
> Remove-redundant-function-call.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0377-staging-
> bcm2835-audio-Remove-redundant-function-call.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0377-staging-bcm2835-
> audio-Remove-redundant-function-call.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0378-staging-bcm2835-
> audio-Remove-superfluous-open-flag.patch
> b/target/linux/bcm27xx/patches-4.19/950-0378-staging-bcm2835-audio-
> Remove-superfluous-open-flag.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0378-staging-
> bcm2835-audio-Remove-superfluous-open-flag.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0378-staging-bcm2835-
> audio-Remove-superfluous-open-flag.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0379-staging-bcm2835-
> audio-Drop-useless-running-flag-and-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0379-staging-bcm2835-audio-
> Drop-useless-running-flag-and-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0379-staging-
> bcm2835-audio-Drop-useless-running-flag-and-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0379-staging-bcm2835-
> audio-Drop-useless-running-flag-and-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0380-staging-bcm2835-
> audio-Fix-incorrect-draining-handlin.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0380-staging-bcm2835-audio-Fix-incorrect-draining-handlin.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0380-staging-
> bcm2835-audio-Fix-incorrect-draining-handlin.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0380-staging-bcm2835-
> audio-Fix-incorrect-draining-handlin.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0381-staging-bcm2835-
> audio-Kill-unused-spinlock.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0381-staging-bcm2835-audio-Kill-unused-spinlock.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0381-staging-
> bcm2835-audio-Kill-unused-spinlock.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0381-staging-bcm2835-
> audio-Kill-unused-spinlock.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0382-staging-bcm2835-
> audio-Use-PCM-runtime-values-instead.patch
> b/target/linux/bcm27xx/patches-4.19/950-0382-staging-bcm2835-audio-Use-
> PCM-runtime-values-instead.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0382-staging-
> bcm2835-audio-Use-PCM-runtime-values-instead.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0382-staging-bcm2835-
> audio-Use-PCM-runtime-values-instead.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0383-staging-bcm2835-
> audio-Drop-unnecessary-pcm-indirect-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0383-staging-bcm2835-audio-
> Drop-unnecessary-pcm-indirect-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0383-staging-
> bcm2835-audio-Drop-unnecessary-pcm-indirect-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0383-staging-bcm2835-
> audio-Drop-unnecessary-pcm-indirect-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0384-staging-bcm2835-
> audio-Drop-useless-NULL-check.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0384-staging-bcm2835-audio-Drop-useless-NULL-check.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0384-staging-
> bcm2835-audio-Drop-useless-NULL-check.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0384-staging-bcm2835-
> audio-Drop-useless-NULL-check.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0385-staging-bcm2835-
> audio-Propagate-parameter-setup-erro.patch
> b/target/linux/bcm27xx/patches-4.19/950-0385-staging-bcm2835-audio-
> Propagate-parameter-setup-erro.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0385-staging-
> bcm2835-audio-Propagate-parameter-setup-erro.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0385-staging-bcm2835-
> audio-Propagate-parameter-setup-erro.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0386-staging-bcm2835-
> audio-Drop-debug-messages-in-bcm2835.patch
> b/target/linux/bcm27xx/patches-4.19/950-0386-staging-bcm2835-audio-
> Drop-debug-messages-in-bcm2835.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0386-staging-
> bcm2835-audio-Drop-debug-messages-in-bcm2835.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0386-staging-bcm2835-
> audio-Drop-debug-messages-in-bcm2835.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0387-staging-bcm2835-
> audio-Drop-superfluous-mutex-lock-du.patch
> b/target/linux/bcm27xx/patches-4.19/950-0387-staging-bcm2835-audio-
> Drop-superfluous-mutex-lock-du.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0387-staging-
> bcm2835-audio-Drop-superfluous-mutex-lock-du.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0387-staging-bcm2835-
> audio-Drop-superfluous-mutex-lock-du.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0388-staging-bcm2835-
> audio-Add-10ms-period-constraint.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0388-staging-bcm2835-audio-Add-10ms-period-constraint.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0388-staging-
> bcm2835-audio-Add-10ms-period-constraint.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0388-staging-bcm2835-
> audio-Add-10ms-period-constraint.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0389-staging-bcm2835-
> audio-Make-single-vchi-handle.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0389-staging-bcm2835-audio-Make-single-vchi-handle.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0389-staging-
> bcm2835-audio-Make-single-vchi-handle.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0389-staging-bcm2835-
> audio-Make-single-vchi-handle.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0390-staging-bcm2835-
> audio-Code-refactoring-of-vchiq-acce.patch
> b/target/linux/bcm27xx/patches-4.19/950-0390-staging-bcm2835-audio-
> Code-refactoring-of-vchiq-acce.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0390-staging-
> bcm2835-audio-Code-refactoring-of-vchiq-acce.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0390-staging-bcm2835-
> audio-Code-refactoring-of-vchiq-acce.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0391-staging-bcm2835-
> audio-Operate-non-atomic-PCM-ops.patch
> b/target/linux/bcm27xx/patches-4.19/950-0391-staging-bcm2835-audio-
> Operate-non-atomic-PCM-ops.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0391-staging-
> bcm2835-audio-Operate-non-atomic-PCM-ops.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0391-staging-bcm2835-
> audio-Operate-non-atomic-PCM-ops.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0392-staging-bcm2835-
> audio-Use-card-private_data.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0392-staging-bcm2835-audio-Use-card-private_data.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0392-staging-
> bcm2835-audio-Use-card-private_data.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0392-staging-bcm2835-
> audio-Use-card-private_data.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0393-staging-bcm2835-
> audio-Use-standard-error-print-helpe.patch
> b/target/linux/bcm27xx/patches-4.19/950-0393-staging-bcm2835-audio-Use-
> standard-error-print-helpe.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0393-staging-
> bcm2835-audio-Use-standard-error-print-helpe.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0393-staging-bcm2835-
> audio-Use-standard-error-print-helpe.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0394-staging-bcm2835-
> audio-Remove-unnecessary-header-file.patch
> b/target/linux/bcm27xx/patches-4.19/950-0394-staging-bcm2835-audio-
> Remove-unnecessary-header-file.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0394-staging-
> bcm2835-audio-Remove-unnecessary-header-file.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0394-staging-bcm2835-
> audio-Remove-unnecessary-header-file.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0395-staging-bcm2835-
> audio-Move-module-parameter-descript.patch
> b/target/linux/bcm27xx/patches-4.19/950-0395-staging-bcm2835-audio-
> Move-module-parameter-descript.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0395-staging-
> bcm2835-audio-Move-module-parameter-descript.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0395-staging-bcm2835-
> audio-Move-module-parameter-descript.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0396-staging-bcm2835-
> audio-Use-coherent-device-buffers.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0396-staging-bcm2835-audio-Use-coherent-device-buffers.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0396-staging-
> bcm2835-audio-Use-coherent-device-buffers.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0396-staging-bcm2835-
> audio-Use-coherent-device-buffers.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0397-staging-bcm2835-
> audio-Set-SNDRV_PCM_INFO_SYNC_APPLPT.patch
> b/target/linux/bcm27xx/patches-4.19/950-0397-staging-bcm2835-audio-Set-
> SNDRV_PCM_INFO_SYNC_APPLPT.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0397-staging-
> bcm2835-audio-Set-SNDRV_PCM_INFO_SYNC_APPLPT.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0397-staging-bcm2835-
> audio-Set-SNDRV_PCM_INFO_SYNC_APPLPT.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0398-staging-bcm2835-
> audio-Simplify-PCM-creation-helpers.patch
> b/target/linux/bcm27xx/patches-4.19/950-0398-staging-bcm2835-audio-
> Simplify-PCM-creation-helpers.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0398-staging-
> bcm2835-audio-Simplify-PCM-creation-helpers.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0398-staging-bcm2835-
> audio-Simplify-PCM-creation-helpers.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0399-staging-bcm2835-
> audio-Simplify-kctl-creation-helpers.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0399-staging-bcm2835-audio-Simplify-kctl-creation-helpers.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0399-staging-
> bcm2835-audio-Simplify-kctl-creation-helpers.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0399-staging-bcm2835-
> audio-Simplify-kctl-creation-helpers.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0400-staging-bcm2835-
> audio-Simplify-card-object-managemen.patch
> b/target/linux/bcm27xx/patches-4.19/950-0400-staging-bcm2835-audio-
> Simplify-card-object-managemen.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0400-staging-
> bcm2835-audio-Simplify-card-object-managemen.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0400-staging-bcm2835-
> audio-Simplify-card-object-managemen.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0401-staging-bcm2835-
> audio-unify-FOURCC-command-definitio.patch
> b/target/linux/bcm27xx/patches-4.19/950-0401-staging-bcm2835-audio-
> unify-FOURCC-command-definitio.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0401-staging-
> bcm2835-audio-unify-FOURCC-command-definitio.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0401-staging-bcm2835-
> audio-unify-FOURCC-command-definitio.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0402-staging-bcm2835-
> audio-don-t-initialize-memory-twice.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0402-staging-bcm2835-audio-don-t-initialize-memory-twice.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0402-staging-
> bcm2835-audio-don-t-initialize-memory-twice.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0402-staging-bcm2835-
> audio-don-t-initialize-memory-twice.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0403-staging-bcm2835-
> audio-reorder-variable-declarations-.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0403-staging-bcm2835-audio-reorder-variable-declarations-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0403-staging-
> bcm2835-audio-reorder-variable-declarations-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0403-staging-bcm2835-
> audio-reorder-variable-declarations-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0404-staging-bcm2835-
> audio-use-anonymous-union-in-struct-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0404-staging-bcm2835-audio-use-
> anonymous-union-in-struct-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0404-staging-
> bcm2835-audio-use-anonymous-union-in-struct-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0404-staging-bcm2835-
> audio-use-anonymous-union-in-struct-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0405-staging-bcm2835-
> audio-more-generic-probe-function-na.patch
> b/target/linux/bcm27xx/patches-4.19/950-0405-staging-bcm2835-audio-
> more-generic-probe-function-na.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0405-staging-
> bcm2835-audio-more-generic-probe-function-na.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0405-staging-bcm2835-
> audio-more-generic-probe-function-na.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0406-staging-bcm2835-
> audio-rename-platform_driver-structu.patch
> b/target/linux/bcm27xx/patches-4.19/950-0406-staging-bcm2835-audio-
> rename-platform_driver-structu.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0406-staging-
> bcm2835-audio-rename-platform_driver-structu.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0406-staging-bcm2835-
> audio-rename-platform_driver-structu.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0407-staging-bcm2835-
> audio-update-TODO.patch b/target/linux/bcm27xx/patches-4.19/950-0407-
> staging-bcm2835-audio-update-TODO.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0407-staging-
> bcm2835-audio-update-TODO.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0407-staging-bcm2835-
> audio-update-TODO.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0408-staging-bcm2835-
> audio-interpolate-audio-delay.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0408-staging-bcm2835-audio-interpolate-audio-delay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0408-staging-
> bcm2835-audio-interpolate-audio-delay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0408-staging-bcm2835-
> audio-interpolate-audio-delay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0409-staging-bcm2835-
> audio-Enable-compile-test.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0409-staging-bcm2835-audio-Enable-compile-test.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0409-staging-
> bcm2835-audio-Enable-compile-test.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0409-staging-bcm2835-
> audio-Enable-compile-test.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0410-staging-bcm2835-
> audio-use-module_platform_driver-mac.patch
> b/target/linux/bcm27xx/patches-4.19/950-0410-staging-bcm2835-audio-use-
> module_platform_driver-mac.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0410-staging-
> bcm2835-audio-use-module_platform_driver-mac.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0410-staging-bcm2835-
> audio-use-module_platform_driver-mac.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0411-staging-bcm2835-
> audio-double-free-in-init-error-path.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0411-staging-bcm2835-audio-double-free-in-init-error-path.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0411-staging-
> bcm2835-audio-double-free-in-init-error-path.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0411-staging-bcm2835-
> audio-double-free-in-init-error-path.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0412-dts-Increase-
> default-coherent-pool-size.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0412-dts-Increase-default-coherent-pool-size.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0412-dts-Increase-
> default-coherent-pool-size.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0412-dts-Increase-
> default-coherent-pool-size.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0413-lan78xx-use-
> default-alignment-for-rx-buffers.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0413-lan78xx-use-default-alignment-for-rx-buffers.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0413-lan78xx-use-
> default-alignment-for-rx-buffers.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0413-lan78xx-use-
> default-alignment-for-rx-buffers.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0414-staging-bcm2835-
> codec-Correct-port-width-calc-for-tr.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0414-staging-bcm2835-codec-Correct-port-width-calc-for-tr.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0414-staging-
> bcm2835-codec-Correct-port-width-calc-for-tr.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0414-staging-bcm2835-
> codec-Correct-port-width-calc-for-tr.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0415-staging-bcm2835-
> codec-Remove-height-padding-for-ISP-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0415-staging-bcm2835-codec-
> Remove-height-padding-for-ISP-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0415-staging-
> bcm2835-codec-Remove-height-padding-for-ISP-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0415-staging-bcm2835-
> codec-Remove-height-padding-for-ISP-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0416-staging-mmal-
> vchiq-Free-the-event-context-for-contro.patch
> b/target/linux/bcm27xx/patches-4.19/950-0416-staging-mmal-vchiq-Free-
> the-event-context-for-contro.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0416-staging-mmal-
> vchiq-Free-the-event-context-for-contro.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0416-staging-mmal-
> vchiq-Free-the-event-context-for-contro.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0417-BCM270X_DT-Also-
> set-coherent_pool-1M-for-BT-Pis.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0417-BCM270X_DT-Also-set-coherent_pool-1M-for-BT-Pis.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0417-BCM270X_DT-
> Also-set-coherent_pool-1M-for-BT-Pis.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0417-BCM270X_DT-Also-
> set-coherent_pool-1M-for-BT-Pis.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0418-arm-dts-overlays-
> rpi-sense-add-upstream-humidity-com.patch
> b/target/linux/bcm27xx/patches-4.19/950-0418-arm-dts-overlays-rpi-sense-
> add-upstream-humidity-com.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0418-arm-dts-
> overlays-rpi-sense-add-upstream-humidity-com.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0418-arm-dts-overlays-
> rpi-sense-add-upstream-humidity-com.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0419-staging-mmal-
> vchiq-Fix-memory-leak-in-error-path.patch
> b/target/linux/bcm27xx/patches-4.19/950-0419-staging-mmal-vchiq-Fix-
> memory-leak-in-error-path.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0419-staging-mmal-
> vchiq-Fix-memory-leak-in-error-path.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0419-staging-mmal-
> vchiq-Fix-memory-leak-in-error-path.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0420-staging-vchiq-
> mmal-Fix-memory-leak-of-vchiq-instance.patch
> b/target/linux/bcm27xx/patches-4.19/950-0420-staging-vchiq-mmal-Fix-
> memory-leak-of-vchiq-instance.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0420-staging-vchiq-
> mmal-Fix-memory-leak-of-vchiq-instance.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0420-staging-vchiq-
> mmal-Fix-memory-leak-of-vchiq-instance.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0421-Added-IQaudIO-Pi-
> Codec-board-support-2969.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0421-Added-IQaudIO-Pi-Codec-board-support-2969.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0421-Added-
> IQaudIO-Pi-Codec-board-support-2969.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0421-Added-IQaudIO-Pi-
> Codec-board-support-2969.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0422-w1-ds2408-reset-
> on-output_write-retry-with-readback.patch
> b/target/linux/bcm27xx/patches-4.19/950-0422-w1-ds2408-reset-on-
> output_write-retry-with-readback.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0422-w1-ds2408-
> reset-on-output_write-retry-with-readback.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0422-w1-ds2408-reset-
> on-output_write-retry-with-readback.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0423-w1-ds2482-
> cosmetic-fixes-after-54865314f5a1.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0423-w1-ds2482-cosmetic-fixes-after-54865314f5a1.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0423-w1-ds2482-
> cosmetic-fixes-after-54865314f5a1.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0423-w1-ds2482-
> cosmetic-fixes-after-54865314f5a1.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0424-sound-pcm512x-
> codec-Adding-352.8kHz-samplerate-suppo.patch
> b/target/linux/bcm27xx/patches-4.19/950-0424-sound-pcm512x-codec-
> Adding-352.8kHz-samplerate-suppo.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0424-sound-
> pcm512x-codec-Adding-352.8kHz-samplerate-suppo.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0424-sound-pcm512x-
> codec-Adding-352.8kHz-samplerate-suppo.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0425-ASoC-
> decommissioning-driver-for-3Dlab-Nano-soundcard.patch
> b/target/linux/bcm27xx/patches-4.19/950-0425-ASoC-decommissioning-
> driver-for-3Dlab-Nano-soundcard.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0425-ASoC-
> decommissioning-driver-for-3Dlab-Nano-soundcard.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0425-ASoC-
> decommissioning-driver-for-3Dlab-Nano-soundcard.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0426-.gitignore-Add-
> .dtbo-explicitly.patch b/target/linux/bcm27xx/patches-4.19/950-0426-
> .gitignore-Add-.dtbo-explicitly.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0426-.gitignore-Add-
> .dtbo-explicitly.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0426-.gitignore-Add-
> .dtbo-explicitly.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0427-Bluetooth-Check-
> key-sizes-only-when-Secure-Simple-Pa.patch
> b/target/linux/bcm27xx/patches-4.19/950-0427-Bluetooth-Check-key-sizes-
> only-when-Secure-Simple-Pa.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0427-Bluetooth-
> Check-key-sizes-only-when-Secure-Simple-Pa.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0427-Bluetooth-Check-
> key-sizes-only-when-Secure-Simple-Pa.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0428-usb-dwc_otg-
> Clean-up-interrupt-claiming-code.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0428-usb-dwc_otg-Clean-up-interrupt-claiming-code.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0428-usb-dwc_otg-
> Clean-up-interrupt-claiming-code.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0428-usb-dwc_otg-
> Clean-up-interrupt-claiming-code.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0429-overlays-Delete-
> the-deprecated-sdio-1bit-overlay.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0429-overlays-Delete-the-deprecated-sdio-1bit-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0429-overlays-
> Delete-the-deprecated-sdio-1bit-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0429-overlays-Delete-
> the-deprecated-sdio-1bit-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0430-overlays-Remove-
> upstream-aux-interrupt-overlay.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0430-overlays-Remove-upstream-aux-interrupt-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0430-overlays-
> Remove-upstream-aux-interrupt-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0430-overlays-Remove-
> upstream-aux-interrupt-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0431-overlays-
> Standardise-on-compatible-brcm-bcm2835.patch
> b/target/linux/bcm27xx/patches-4.19/950-0431-overlays-Standardise-on-
> compatible-brcm-bcm2835.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0431-overlays-
> Standardise-on-compatible-brcm-bcm2835.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0431-overlays-
> Standardise-on-compatible-brcm-bcm2835.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0432-vc4-Remove-
> interrupt-and-DMA-trampling.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0432-vc4-Remove-interrupt-and-DMA-trampling.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0432-vc4-Remove-
> interrupt-and-DMA-trampling.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0432-vc4-Remove-
> interrupt-and-DMA-trampling.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0433-BCM270X_DT-Add-
> non-removable-clone-of-mmc-node.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0433-BCM270X_DT-Add-non-removable-clone-of-mmc-node.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0433-BCM270X_DT-
> Add-non-removable-clone-of-mmc-node.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0433-BCM270X_DT-Add-
> non-removable-clone-of-mmc-node.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0434-BCM270X_DT-usb-
> Refactor-DTS-and-overlays.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0434-BCM270X_DT-usb-Refactor-DTS-and-overlays.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0434-BCM270X_DT-
> usb-Refactor-DTS-and-overlays.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0434-BCM270X_DT-usb-
> Refactor-DTS-and-overlays.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0435-overlays-Update-
> upstream-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-0435-
> overlays-Update-upstream-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0435-overlays-
> Update-upstream-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0435-overlays-Update-
> upstream-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0436-w1-ds2408-Fix-
> typo-after-49695ac46861-reset-on-outpu.patch
> b/target/linux/bcm27xx/patches-4.19/950-0436-w1-ds2408-Fix-typo-after-
> 49695ac46861-reset-on-outpu.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0436-w1-ds2408-Fix-
> typo-after-49695ac46861-reset-on-outpu.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0436-w1-ds2408-Fix-
> typo-after-49695ac46861-reset-on-outpu.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0437-BCM270X_DT-
> Rename-Pi-Zero-W-DT-files.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0437-BCM270X_DT-Rename-Pi-Zero-W-DT-files.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0437-BCM270X_DT-
> Rename-Pi-Zero-W-DT-files.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0437-BCM270X_DT-
> Rename-Pi-Zero-W-DT-files.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0438-BCM270X_DT-
> Create-bcm2708-rpi-zero.dts.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0438-BCM270X_DT-Create-bcm2708-rpi-zero.dts.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0438-BCM270X_DT-
> Create-bcm2708-rpi-zero.dts.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0438-BCM270X_DT-
> Create-bcm2708-rpi-zero.dts.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0439-overlays-Fix-mmc-
> related-overlays-after-refactor.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0439-overlays-Fix-mmc-related-overlays-after-refactor.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0439-overlays-Fix-
> mmc-related-overlays-after-refactor.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0439-overlays-Fix-mmc-
> related-overlays-after-refactor.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0440-Fixed-48k-timing-
> issue.patch b/target/linux/bcm27xx/patches-4.19/950-0440-Fixed-48k-
> timing-issue.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0440-Fixed-48k-
> timing-issue.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0440-Fixed-48k-timing-
> issue.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0441-staging-bcm2835-
> codec-Convert-V4L2-nsec-timestamps-t.patch
> b/target/linux/bcm27xx/patches-4.19/950-0441-staging-bcm2835-codec-
> Convert-V4L2-nsec-timestamps-t.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0441-staging-
> bcm2835-codec-Convert-V4L2-nsec-timestamps-t.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0441-staging-bcm2835-
> codec-Convert-V4L2-nsec-timestamps-t.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0442-staging-bcm2835-
> codec-Add-support-for-setting-S_PARM.patch
> b/target/linux/bcm27xx/patches-4.19/950-0442-staging-bcm2835-codec-
> Add-support-for-setting-S_PARM.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0442-staging-
> bcm2835-codec-Add-support-for-setting-S_PARM.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0442-staging-bcm2835-
> codec-Add-support-for-setting-S_PARM.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0443-w1-w1-gpio-Make-
> GPIO-an-output-for-strong-pullup.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0443-w1-w1-gpio-Make-GPIO-an-output-for-strong-pullup.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0443-w1-w1-gpio-
> Make-GPIO-an-output-for-strong-pullup.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0443-w1-w1-gpio-Make-
> GPIO-an-output-for-strong-pullup.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0444-overlays-Update-
> w1-gpio-and-w1-gpio-pullup.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0444-overlays-Update-w1-gpio-and-w1-gpio-pullup.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0444-overlays-
> Update-w1-gpio-and-w1-gpio-pullup.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0444-overlays-Update-
> w1-gpio-and-w1-gpio-pullup.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0445-bcm2835-sdhost-
> Fix-DMA-channel-leak-on-error-remove.patch
> b/target/linux/bcm27xx/patches-4.19/950-0445-bcm2835-sdhost-Fix-DMA-
> channel-leak-on-error-remove.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0445-bcm2835-
> sdhost-Fix-DMA-channel-leak-on-error-remove.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0445-bcm2835-sdhost-
> Fix-DMA-channel-leak-on-error-remove.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0446-i2c-bcm2835-
> Model-Divider-in-CCF.patch b/target/linux/bcm27xx/patches-4.19/950-0446-
> i2c-bcm2835-Model-Divider-in-CCF.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0446-i2c-bcm2835-
> Model-Divider-in-CCF.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0446-i2c-bcm2835-
> Model-Divider-in-CCF.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0447-staging-
> vc04_services-Use-correct-cache-line-size.patch
> b/target/linux/bcm27xx/patches-4.19/950-0447-staging-vc04_services-Use-
> correct-cache-line-size.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0447-staging-
> vc04_services-Use-correct-cache-line-size.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0447-staging-
> vc04_services-Use-correct-cache-line-size.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0448-tty-amba-pl011-
> allow-shared-interrupt.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0448-tty-amba-pl011-allow-shared-interrupt.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0448-tty-amba-pl011-
> allow-shared-interrupt.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0448-tty-amba-pl011-
> allow-shared-interrupt.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0449-ARM-bcm283x-
> Reduce-register-ranges-for-UART-SPI-and-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0449-ARM-bcm283x-Reduce-
> register-ranges-for-UART-SPI-and-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0449-ARM-bcm283x-
> Reduce-register-ranges-for-UART-SPI-and-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0449-ARM-bcm283x-
> Reduce-register-ranges-for-UART-SPI-and-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0450-ARM-bcm283x-
> Extend-the-WDT-DT-node-out-to-cover-the-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0450-ARM-bcm283x-Extend-the-
> WDT-DT-node-out-to-cover-the-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0450-ARM-bcm283x-
> Extend-the-WDT-DT-node-out-to-cover-the-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0450-ARM-bcm283x-
> Extend-the-WDT-DT-node-out-to-cover-the-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0451-ARM-dts-Add-
> label-to-bcm2835-RNG.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0451-ARM-dts-Add-label-to-bcm2835-RNG.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0451-ARM-dts-Add-
> label-to-bcm2835-RNG.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0451-ARM-dts-Add-
> label-to-bcm2835-RNG.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0452-dts-Use-fb-rathe=
r-
> than-leds-for-dpi-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0452-dts-Use-fb-rather-than-leds-for-dpi-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0452-dts-Use-fb-
> rather-than-leds-for-dpi-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0452-dts-Use-fb-rather-
> than-leds-for-dpi-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0453-BCM270X_DT-
> Minor-tidy-up.patch b/target/linux/bcm27xx/patches-4.19/950-0453-
> BCM270X_DT-Minor-tidy-up.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0453-BCM270X_DT-
> Minor-tidy-up.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0453-BCM270X_DT-
> Minor-tidy-up.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0454-arm-bcm2835-Fix-
> FIQ-early-ioremap.patch b/target/linux/bcm27xx/patches-4.19/950-0454-
> arm-bcm2835-Fix-FIQ-early-ioremap.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0454-arm-bcm2835-
> Fix-FIQ-early-ioremap.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0454-arm-bcm2835-Fix-
> FIQ-early-ioremap.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0455-Fix-
> copy_from_user-if-BCM2835_FAST_MEMCPY-n.patch
> b/target/linux/bcm27xx/patches-4.19/950-0455-Fix-copy_from_user-if-
> BCM2835_FAST_MEMCPY-n.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0455-Fix-
> copy_from_user-if-BCM2835_FAST_MEMCPY-n.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0455-Fix-
> copy_from_user-if-BCM2835_FAST_MEMCPY-n.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0456-PCI-brcmstb-Add-
> Broadcom-STB-PCIe-host-controller-dr.patch
> b/target/linux/bcm27xx/patches-4.19/950-0456-PCI-brcmstb-Add-
> Broadcom-STB-PCIe-host-controller-dr.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0456-PCI-brcmstb-
> Add-Broadcom-STB-PCIe-host-controller-dr.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0456-PCI-brcmstb-Add-
> Broadcom-STB-PCIe-host-controller-dr.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0457-PCI-brcmstb-Add-
> dma-range-mapping-for-inbound-traffi.patch
> b/target/linux/bcm27xx/patches-4.19/950-0457-PCI-brcmstb-Add-dma-
> range-mapping-for-inbound-traffi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0457-PCI-brcmstb-
> Add-dma-range-mapping-for-inbound-traffi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0457-PCI-brcmstb-Add-
> dma-range-mapping-for-inbound-traffi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0458-PCI-brcmstb-Add-
> MSI-capability.patch b/target/linux/bcm27xx/patches-4.19/950-0458-PCI-
> brcmstb-Add-MSI-capability.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0458-PCI-brcmstb-
> Add-MSI-capability.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0458-PCI-brcmstb-Add-
> MSI-capability.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0459-dt-bindings-pci-
> Add-DT-docs-for-Brcmstb-PCIe-device.patch
> b/target/linux/bcm27xx/patches-4.19/950-0459-dt-bindings-pci-Add-DT-
> docs-for-Brcmstb-PCIe-device.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0459-dt-bindings-pci-
> Add-DT-docs-for-Brcmstb-PCIe-device.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0459-dt-bindings-pci-
> Add-DT-docs-for-Brcmstb-PCIe-device.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0460-pcie-brcmstb-
> Changes-for-BCM2711.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0460-pcie-brcmstb-Changes-for-BCM2711.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0460-pcie-brcmstb-
> Changes-for-BCM2711.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0460-pcie-brcmstb-
> Changes-for-BCM2711.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0461-arm-bcm2835-
> DMA-can-only-address-1GB.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0461-arm-bcm2835-DMA-can-only-address-1GB.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0461-arm-bcm2835-
> DMA-can-only-address-1GB.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0461-arm-bcm2835-
> DMA-can-only-address-1GB.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0462-mmc-bcm2835-
> sdhost-Support-64-bit-physical-addresses.patch
> b/target/linux/bcm27xx/patches-4.19/950-0462-mmc-bcm2835-sdhost-
> Support-64-bit-physical-addresses.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0462-mmc-bcm2835-
> sdhost-Support-64-bit-physical-addresses.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0462-mmc-bcm2835-
> sdhost-Support-64-bit-physical-addresses.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0463-mmc-sdhci-Mask-
> spurious-interrupts.patch b/target/linux/bcm27xx/patches-4.19/950-0463-
> mmc-sdhci-Mask-spurious-interrupts.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0463-mmc-sdhci-
> Mask-spurious-interrupts.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0463-mmc-sdhci-Mask-
> spurious-interrupts.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0464-mmc-sdhci-iproc-
> Add-support-for-emmc2-of-the-BCM2838.patch
> b/target/linux/bcm27xx/patches-4.19/950-0464-mmc-sdhci-iproc-Add-
> support-for-emmc2-of-the-BCM2838.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0464-mmc-sdhci-
> iproc-Add-support-for-emmc2-of-the-BCM2838.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0464-mmc-sdhci-iproc-
> Add-support-for-emmc2-of-the-BCM2838.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0465-hwrng-iproc-
> rng200-Add-BCM2838-support.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0465-hwrng-iproc-rng200-Add-BCM2838-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0465-hwrng-iproc-
> rng200-Add-BCM2838-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0465-hwrng-iproc-
> rng200-Add-BCM2838-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0466-thermal-
> brcmstb_thermal-Add-BCM2838-support.patch
> b/target/linux/bcm27xx/patches-4.19/950-0466-thermal-brcmstb_thermal-
> Add-BCM2838-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0466-thermal-
> brcmstb_thermal-Add-BCM2838-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0466-thermal-
> brcmstb_thermal-Add-BCM2838-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0467-vchiq-Add-36-bit-
> address-support.patch b/target/linux/bcm27xx/patches-4.19/950-0467-
> vchiq-Add-36-bit-address-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0467-vchiq-Add-36-
> bit-address-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0467-vchiq-Add-36-bit-
> address-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0468-bcm2835-pcm.c-
> Support-multichannel-audio.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0468-bcm2835-pcm.c-Support-multichannel-audio.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0468-bcm2835-pcm.c-
> Support-multichannel-audio.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0468-bcm2835-pcm.c-
> Support-multichannel-audio.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0469-bcmgenet-
> constrain-max-DMA-burst-length.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0469-bcmgenet-constrain-max-DMA-burst-length.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0469-bcmgenet-
> constrain-max-DMA-burst-length.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0469-bcmgenet-
> constrain-max-DMA-burst-length.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0470-bcmgenet-Better-
> coalescing-parameter-defaults.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0470-bcmgenet-Better-coalescing-parameter-defaults.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0470-bcmgenet-
> Better-coalescing-parameter-defaults.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0470-bcmgenet-Better-
> coalescing-parameter-defaults.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0471-net-genet-enable-
> link-energy-detect-powerdown-for-ex.patch
> b/target/linux/bcm27xx/patches-4.19/950-0471-net-genet-enable-link-
> energy-detect-powerdown-for-ex.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0471-net-genet-
> enable-link-energy-detect-powerdown-for-ex.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0471-net-genet-enable-
> link-energy-detect-powerdown-for-ex.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0472-phy-broadcom-
> split-out-the-BCM54213PE-from-the-BCM54.patch
> b/target/linux/bcm27xx/patches-4.19/950-0472-phy-broadcom-split-out-
> the-BCM54213PE-from-the-BCM54.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0472-phy-broadcom-
> split-out-the-BCM54213PE-from-the-BCM54.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0472-phy-broadcom-
> split-out-the-BCM54213PE-from-the-BCM54.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0473-phy-bcm54213pe-
> configure-the-LED-outputs-to-be-more-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0473-phy-bcm54213pe-configure-
> the-LED-outputs-to-be-more-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0473-phy-
> bcm54213pe-configure-the-LED-outputs-to-be-more-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0473-phy-bcm54213pe-
> configure-the-LED-outputs-to-be-more-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0474-dwc_otg-Choose-
> appropriate-IRQ-handover-strategy.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0474-dwc_otg-Choose-appropriate-IRQ-handover-strategy.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0474-dwc_otg-
> Choose-appropriate-IRQ-handover-strategy.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0474-dwc_otg-Choose-
> appropriate-IRQ-handover-strategy.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0475-usb-xhci-Disable-
> the-XHCI-5-second-timeout.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0475-usb-xhci-Disable-the-XHCI-5-second-timeout.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0475-usb-xhci-
> Disable-the-XHCI-5-second-timeout.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0475-usb-xhci-Disable-
> the-XHCI-5-second-timeout.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0476-usb-xhci-Show-
> that-the-VIA-VL805-supports-LPM.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0476-usb-xhci-Show-that-the-VIA-VL805-supports-LPM.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0476-usb-xhci-Show-
> that-the-VIA-VL805-supports-LPM.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0476-usb-xhci-Show-
> that-the-VIA-VL805-supports-LPM.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0477-spi-bcm2835-
> enable-shared-interrupt-support.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0477-spi-bcm2835-enable-shared-interrupt-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0477-spi-bcm2835-
> enable-shared-interrupt-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0477-spi-bcm2835-
> enable-shared-interrupt-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0478-drivers-char-add-
> chardev-for-mmap-ing-Argon-control-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0478-drivers-char-add-chardev-
> for-mmap-ing-Argon-control-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0478-drivers-char-
> add-chardev-for-mmap-ing-Argon-control-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0478-drivers-char-add-
> chardev-for-mmap-ing-Argon-control-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0479-clk-bcm2835-Don-
> t-wait-for-pllh-lock.patch b/target/linux/bcm27xx/patches-4.19/950-0479-
> clk-bcm2835-Don-t-wait-for-pllh-lock.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0479-clk-bcm2835-
> Don-t-wait-for-pllh-lock.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0479-clk-bcm2835-Don-t-
> wait-for-pllh-lock.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0480-bcm2835-pm-
> Move-bcm2835-watchdog-s-DT-probe-to-an-MF.patch
> b/target/linux/bcm27xx/patches-4.19/950-0480-bcm2835-pm-Move-
> bcm2835-watchdog-s-DT-probe-to-an-MF.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0480-bcm2835-pm-
> Move-bcm2835-watchdog-s-DT-probe-to-an-MF.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0480-bcm2835-pm-
> Move-bcm2835-watchdog-s-DT-probe-to-an-MF.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0481-soc-bcm-bcm2835-
> pm-Add-support-for-power-domains-und.patch
> b/target/linux/bcm27xx/patches-4.19/950-0481-soc-bcm-bcm2835-pm-Add-
> support-for-power-domains-und.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0481-soc-bcm-
> bcm2835-pm-Add-support-for-power-domains-und.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0481-soc-bcm-bcm2835-
> pm-Add-support-for-power-domains-und.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0482-soc-bcm-bcm2835-
> pm-Fix-PM_IMAGE_PERI-power-domain-su.patch
> b/target/linux/bcm27xx/patches-4.19/950-0482-soc-bcm-bcm2835-pm-Fix-
> PM_IMAGE_PERI-power-domain-su.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0482-soc-bcm-
> bcm2835-pm-Fix-PM_IMAGE_PERI-power-domain-su.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0482-soc-bcm-bcm2835-
> pm-Fix-PM_IMAGE_PERI-power-domain-su.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0483-soc-bcm-bcm2835-
> pm-Fix-error-paths-of-initialization.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0483-soc-bcm-bcm2835-pm-Fix-error-paths-of-initialization.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0483-soc-bcm-
> bcm2835-pm-Fix-error-paths-of-initialization.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0483-soc-bcm-bcm2835-
> pm-Fix-error-paths-of-initialization.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0484-soc-bcm-bcm2835-
> pm-Add-support-for-2711.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0484-soc-bcm-bcm2835-pm-Add-support-for-2711.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0484-soc-bcm-
> bcm2835-pm-Add-support-for-2711.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0484-soc-bcm-bcm2835-
> pm-Add-support-for-2711.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0485-drm-expand-
> drm_syncobj_find_fence-to-support-timelin.patch
> b/target/linux/bcm27xx/patches-4.19/950-0485-drm-expand-
> drm_syncobj_find_fence-to-support-timelin.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0485-drm-expand-
> drm_syncobj_find_fence-to-support-timelin.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0485-drm-expand-
> drm_syncobj_find_fence-to-support-timelin.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0486-drm-v3d-Fix-a-us=
e-
> after-free-race-accessing-the-sche.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0486-drm-v3d-Fix-a-use-after-free-race-accessing-the-sche.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0486-drm-v3d-Fix-a-
> use-after-free-race-accessing-the-sche.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0486-drm-v3d-Fix-a-use-
> after-free-race-accessing-the-sche.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0487-drm-v3d-Add-a-
> little-debugfs-entry-for-measuring-the.patch
> b/target/linux/bcm27xx/patches-4.19/950-0487-drm-v3d-Add-a-little-
> debugfs-entry-for-measuring-the.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0487-drm-v3d-Add-a-
> little-debugfs-entry-for-measuring-the.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0487-drm-v3d-Add-a-
> little-debugfs-entry-for-measuring-the.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0488-drm-v3d-Update-
> a-comment-about-what-uses-v3d_job_dep.patch
> b/target/linux/bcm27xx/patches-4.19/950-0488-drm-v3d-Update-a-
> comment-about-what-uses-v3d_job_dep.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0488-drm-v3d-
> Update-a-comment-about-what-uses-v3d_job_dep.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0488-drm-v3d-Update-a-
> comment-about-what-uses-v3d_job_dep.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0489-drm-v3d-Clean-up-
> the-reservation-object-setup.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0489-drm-v3d-Clean-up-the-reservation-object-setup.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0489-drm-v3d-Clean-
> up-the-reservation-object-setup.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0489-drm-v3d-Clean-up-
> the-reservation-object-setup.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0490-drm-v3d-Add-
> support-for-submitting-jobs-to-the-TFU.patch
> b/target/linux/bcm27xx/patches-4.19/950-0490-drm-v3d-Add-support-for-
> submitting-jobs-to-the-TFU.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0490-drm-v3d-Add-
> support-for-submitting-jobs-to-the-TFU.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0490-drm-v3d-Add-
> support-for-submitting-jobs-to-the-TFU.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0491-drm-v3d-Drop-the-
> dev-argument-to-lock-unlock-of-BO-r.patch
> b/target/linux/bcm27xx/patches-4.19/950-0491-drm-v3d-Drop-the-dev-
> argument-to-lock-unlock-of-BO-r.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0491-drm-v3d-Drop-
> the-dev-argument-to-lock-unlock-of-BO-r.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0491-drm-v3d-Drop-the-
> dev-argument-to-lock-unlock-of-BO-r.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0492-drm-v3d-Add-
> missing-fence-timeline-name-for-TFU.patch
> b/target/linux/bcm27xx/patches-4.19/950-0492-drm-v3d-Add-missing-
> fence-timeline-name-for-TFU.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0492-drm-v3d-Add-
> missing-fence-timeline-name-for-TFU.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0492-drm-v3d-Add-
> missing-fence-timeline-name-for-TFU.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0493-drm-v3d-Add-
> more-tracepoints-for-V3D-GPU-rendering.patch
> b/target/linux/bcm27xx/patches-4.19/950-0493-drm-v3d-Add-more-
> tracepoints-for-V3D-GPU-rendering.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0493-drm-v3d-Add-
> more-tracepoints-for-V3D-GPU-rendering.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0493-drm-v3d-Add-
> more-tracepoints-for-V3D-GPU-rendering.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0494-drm-v3d-Drop-
> unused-v3d_flush_caches.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0494-drm-v3d-Drop-unused-v3d_flush_caches.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0494-drm-v3d-Drop-
> unused-v3d_flush_caches.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0494-drm-v3d-Drop-
> unused-v3d_flush_caches.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0495-drm-v3d-Don-t-
> bother-flushing-L1TD-at-job-start.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0495-drm-v3d-Don-t-bother-flushing-L1TD-at-job-start.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0495-drm-v3d-Don-t-
> bother-flushing-L1TD-at-job-start.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0495-drm-v3d-Don-t-
> bother-flushing-L1TD-at-job-start.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0496-drm-v3d-Drop-the-
> wait-for-L2T-flush-to-complete.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0496-drm-v3d-Drop-the-wait-for-L2T-flush-to-complete.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0496-drm-v3d-Drop-
> the-wait-for-L2T-flush-to-complete.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0496-drm-v3d-Drop-the-
> wait-for-L2T-flush-to-complete.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0497-drm-v3d-Stop-
> trying-to-flush-L2C-on-V3D-3.3.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0497-drm-v3d-Stop-trying-to-flush-L2C-on-V3D-3.3.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0497-drm-v3d-Stop-
> trying-to-flush-L2C-on-V3D-3.3.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0497-drm-v3d-Stop-
> trying-to-flush-L2C-on-V3D-3.3.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0498-drm-v3d-
> Invalidate-the-caches-from-the-outside-in.patch
> b/target/linux/bcm27xx/patches-4.19/950-0498-drm-v3d-Invalidate-the-
> caches-from-the-outside-in.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0498-drm-v3d-
> Invalidate-the-caches-from-the-outside-in.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0498-drm-v3d-Invalidate-
> the-caches-from-the-outside-in.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0499-drm-v3d-Fix-BO-
> stats-accounting-for-dma-buf-imported.patch
> b/target/linux/bcm27xx/patches-4.19/950-0499-drm-v3d-Fix-BO-stats-
> accounting-for-dma-buf-imported.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0499-drm-v3d-Fix-
> BO-stats-accounting-for-dma-buf-imported.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0499-drm-v3d-Fix-BO-
> stats-accounting-for-dma-buf-imported.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0500-drm-v3d-Update-
> top-level-kerneldoc-for-the-addition-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0500-drm-v3d-Update-top-level-
> kerneldoc-for-the-addition-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0500-drm-v3d-
> Update-top-level-kerneldoc-for-the-addition-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0500-drm-v3d-Update-
> top-level-kerneldoc-for-the-addition-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0501-drm-vc4-Fix-oops-
> at-boot-with-firmwarekms-on-4.19.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0501-drm-vc4-Fix-oops-at-boot-with-firmwarekms-on-4.19.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0501-drm-vc4-Fix-
> oops-at-boot-with-firmwarekms-on-4.19.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0501-drm-vc4-Fix-oops-
> at-boot-with-firmwarekms-on-4.19.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0502-drm-v3d-Add-
> support-for-V3D-v4.2.patch b/target/linux/bcm27xx/patches-4.19/950-0502-
> drm-v3d-Add-support-for-V3D-v4.2.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0502-drm-v3d-Add-
> support-for-V3D-v4.2.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0502-drm-v3d-Add-
> support-for-V3D-v4.2.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0503-drm-v3d-Don-t-tr=
y-
> to-set-OVRTMUOUT-on-V3D-4.x.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0503-drm-v3d-Don-t-try-to-set-OVRTMUOUT-on-V3D-4.x.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0503-drm-v3d-Don-t-
> try-to-set-OVRTMUOUT-on-V3D-4.x.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0503-drm-v3d-Don-t-try-
> to-set-OVRTMUOUT-on-V3D-4.x.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0504-drm-v3d-Make-
> sure-the-GPU-is-on-when-measuring-clock.patch
> b/target/linux/bcm27xx/patches-4.19/950-0504-drm-v3d-Make-sure-the-
> GPU-is-on-when-measuring-clock.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0504-drm-v3d-Make-
> sure-the-GPU-is-on-when-measuring-clock.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0504-drm-v3d-Make-
> sure-the-GPU-is-on-when-measuring-clock.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0505-drm-v3d-Add-
> support-for-2711.patch b/target/linux/bcm27xx/patches-4.19/950-0505-drm-
> v3d-Add-support-for-2711.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0505-drm-v3d-Add-
> support-for-2711.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0505-drm-v3d-Add-
> support-for-2711.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0506-drm-v3d-Skip-
> MMU-flush-if-the-device-is-currently-of.patch
> b/target/linux/bcm27xx/patches-4.19/950-0506-drm-v3d-Skip-MMU-flush-
> if-the-device-is-currently-of.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0506-drm-v3d-Skip-
> MMU-flush-if-the-device-is-currently-of.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0506-drm-v3d-Skip-
> MMU-flush-if-the-device-is-currently-of.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0507-drm-v3d-Hook-up-
> the-runtime-PM-ops.patch b/target/linux/bcm27xx/patches-4.19/950-0507-
> drm-v3d-Hook-up-the-runtime-PM-ops.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0507-drm-v3d-Hook-
> up-the-runtime-PM-ops.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0507-drm-v3d-Hook-up-
> the-runtime-PM-ops.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0508-drm-v3d-HACK-
> gut-runtime-pm-for-now.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0508-drm-v3d-HACK-gut-runtime-pm-for-now.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0508-drm-v3d-HACK-
> gut-runtime-pm-for-now.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0508-drm-v3d-HACK-gut-
> runtime-pm-for-now.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0509-drm-v3d-Update-
> to-upstream-IRQ-code.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0509-drm-v3d-Update-to-upstream-IRQ-code.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0509-drm-v3d-
> Update-to-upstream-IRQ-code.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0509-drm-v3d-Update-
> to-upstream-IRQ-code.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0510-drm-v3d-Rename-
> the-fence-signaled-from-IRQs-to-irq_f.patch
> b/target/linux/bcm27xx/patches-4.19/950-0510-drm-v3d-Rename-the-
> fence-signaled-from-IRQs-to-irq_f.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0510-drm-v3d-
> Rename-the-fence-signaled-from-IRQs-to-irq_f.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0510-drm-v3d-Rename-
> the-fence-signaled-from-IRQs-to-irq_f.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0511-drm-v3d-Refactor-
> job-management.patch b/target/linux/bcm27xx/patches-4.19/950-0511-
> drm-v3d-Refactor-job-management.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0511-drm-v3d-
> Refactor-job-management.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0511-drm-v3d-Refactor-
> job-management.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0512-drm-v3d-Add-
> missing-implicit-synchronization.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0512-drm-v3d-Add-missing-implicit-synchronization.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0512-drm-v3d-Add-
> missing-implicit-synchronization.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0512-drm-v3d-Add-
> missing-implicit-synchronization.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0513-drm-vc4-Fix-
> synchronization-firmwarekms-against-GL-r.patch
> b/target/linux/bcm27xx/patches-4.19/950-0513-drm-vc4-Fix-
> synchronization-firmwarekms-against-GL-r.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0513-drm-vc4-Fix-
> synchronization-firmwarekms-against-GL-r.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0513-drm-vc4-Fix-
> synchronization-firmwarekms-against-GL-r.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0514-drm-vc4-Make-
> sure-that-vblank-waits-work-without-v3d.patch
> b/target/linux/bcm27xx/patches-4.19/950-0514-drm-vc4-Make-sure-that-
> vblank-waits-work-without-v3d.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0514-drm-vc4-Make-
> sure-that-vblank-waits-work-without-v3d.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0514-drm-vc4-Make-
> sure-that-vblank-waits-work-without-v3d.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0515-drm-vc4-Expose-
> the-format-modifiers-for-firmware-kms.patch
> b/target/linux/bcm27xx/patches-4.19/950-0515-drm-vc4-Expose-the-
> format-modifiers-for-firmware-kms.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0515-drm-vc4-
> Expose-the-format-modifiers-for-firmware-kms.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0515-drm-vc4-Expose-
> the-format-modifiers-for-firmware-kms.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0516-drm-vc4-Fix-
> vblank-timestamping-for-firmwarekms.patch
> b/target/linux/bcm27xx/patches-4.19/950-0516-drm-vc4-Fix-vblank-
> timestamping-for-firmwarekms.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0516-drm-vc4-Fix-
> vblank-timestamping-for-firmwarekms.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0516-drm-vc4-Fix-vblank-
> timestamping-for-firmwarekms.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0517-gpu-vc4-fkms-
> Switch-to-the-newer-mailbox-frame-buffe.patch
> b/target/linux/bcm27xx/patches-4.19/950-0517-gpu-vc4-fkms-Switch-to-
> the-newer-mailbox-frame-buffe.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0517-gpu-vc4-fkms-
> Switch-to-the-newer-mailbox-frame-buffe.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0517-gpu-vc4-fkms-
> Switch-to-the-newer-mailbox-frame-buffe.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0518-drm-vc4-Add-an-
> overlay-plane-to-vc4-firmware-kms.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0518-drm-vc4-Add-an-overlay-plane-to-vc4-firmware-kms.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0518-drm-vc4-Add-
> an-overlay-plane-to-vc4-firmware-kms.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0518-drm-vc4-Add-an-
> overlay-plane-to-vc4-firmware-kms.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0519-drm-vc4-Increase-
> max-screen-size-to-4096x4096.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0519-drm-vc4-Increase-max-screen-size-to-4096x4096.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0519-drm-vc4-
> Increase-max-screen-size-to-4096x4096.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0519-drm-vc4-Increase-
> max-screen-size-to-4096x4096.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0520-drm-vc4-Add-
> support-for-multiple-displays-to-fkms.patch
> b/target/linux/bcm27xx/patches-4.19/950-0520-drm-vc4-Add-support-for-
> multiple-displays-to-fkms.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0520-drm-vc4-Add-
> support-for-multiple-displays-to-fkms.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0520-drm-vc4-Add-
> support-for-multiple-displays-to-fkms.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0521-drm-vc4-Fix-buil=
d-
> warning.patch b/target/linux/bcm27xx/patches-4.19/950-0521-drm-vc4-Fix-
> build-warning.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0521-drm-vc4-Fix-
> build-warning.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0521-drm-vc4-Fix-build-
> warning.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0522-drm-vc4-Select-
> display-to-blank-during-initialisatio.patch b/target/linux/bcm27xx/patche=
s-
> 4.19/950-0522-drm-vc4-Select-display-to-blank-during-initialisatio.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0522-drm-vc4-Select-
> display-to-blank-during-initialisatio.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0522-drm-vc4-Select-
> display-to-blank-during-initialisatio.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0523-drm-vc4-Remove-
> now-unused-structure.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0523-drm-vc4-Remove-now-unused-structure.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0523-drm-vc4-
> Remove-now-unused-structure.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0523-drm-vc4-Remove-
> now-unused-structure.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0524-drm-vc4-Query-
> the-display-ID-for-each-display-in-FKM.patch
> b/target/linux/bcm27xx/patches-4.19/950-0524-drm-vc4-Query-the-display-
> ID-for-each-display-in-FKM.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0524-drm-vc4-Query-
> the-display-ID-for-each-display-in-FKM.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0524-drm-vc4-Query-
> the-display-ID-for-each-display-in-FKM.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0525-drm-vc4-Set-the-
> display-number-when-querying-the-dis.patch
> b/target/linux/bcm27xx/patches-4.19/950-0525-drm-vc4-Set-the-display-
> number-when-querying-the-dis.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0525-drm-vc4-Set-
> the-display-number-when-querying-the-dis.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0525-drm-vc4-Set-the-
> display-number-when-querying-the-dis.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0526-drm-vc4-Need-to-
> call-drm_crtc_vblank_-on-off-from-vc.patch
> b/target/linux/bcm27xx/patches-4.19/950-0526-drm-vc4-Need-to-call-
> drm_crtc_vblank_-on-off-from-vc.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0526-drm-vc4-Need-
> to-call-drm_crtc_vblank_-on-off-from-vc.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0526-drm-vc4-Need-to-
> call-drm_crtc_vblank_-on-off-from-vc.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0527-drm-vc4-Add-
> support-for-H-V-flips-on-each-plane-for-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0527-drm-vc4-Add-support-for-H-
> V-flips-on-each-plane-for-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0527-drm-vc4-Add-
> support-for-H-V-flips-on-each-plane-for-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0527-drm-vc4-Add-
> support-for-H-V-flips-on-each-plane-for-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0528-drm-vc4-Remove-
> unused-vc4_fkms_cancel_page_flip-func.patch
> b/target/linux/bcm27xx/patches-4.19/950-0528-drm-vc4-Remove-unused-
> vc4_fkms_cancel_page_flip-func.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0528-drm-vc4-
> Remove-unused-vc4_fkms_cancel_page_flip-func.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0528-drm-vc4-Remove-
> unused-vc4_fkms_cancel_page_flip-func.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0529-drm-vc4-Iterate-
> over-all-planes-in-vc4_crtc_-dis-en-.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0529-drm-vc4-Iterate-over-all-planes-in-vc4_crtc_-dis-en-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0529-drm-vc4-
> Iterate-over-all-planes-in-vc4_crtc_-dis-en-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0529-drm-vc4-Iterate-
> over-all-planes-in-vc4_crtc_-dis-en-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0530-drm-vc4-Bring-
> fkms-into-line-with-kms-in-blocking-do.patch
> b/target/linux/bcm27xx/patches-4.19/950-0530-drm-vc4-Bring-fkms-into-
> line-with-kms-in-blocking-do.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0530-drm-vc4-Bring-
> fkms-into-line-with-kms-in-blocking-do.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0530-drm-vc4-Bring-
> fkms-into-line-with-kms-in-blocking-do.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0531-drm-vc4-Increase-
> max_width-height-to-7680.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0531-drm-vc4-Increase-max_width-height-to-7680.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0531-drm-vc4-
> Increase-max_width-height-to-7680.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0531-drm-vc4-Increase-
> max_width-height-to-7680.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0532-drm-vc4-FKMS-
> reads-the-EDID-from-fw-and-supports-mod.patch
> b/target/linux/bcm27xx/patches-4.19/950-0532-drm-vc4-FKMS-reads-the-
> EDID-from-fw-and-supports-mod.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0532-drm-vc4-FKMS-
> reads-the-EDID-from-fw-and-supports-mod.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0532-drm-vc4-FKMS-
> reads-the-EDID-from-fw-and-supports-mod.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0533-clk-bcm2835-Add-
> support-for-setting-leaf-clock-rates.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0533-clk-bcm2835-Add-support-for-setting-leaf-clock-rates.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0533-clk-bcm2835-
> Add-support-for-setting-leaf-clock-rates.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0533-clk-bcm2835-Add-
> support-for-setting-leaf-clock-rates.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0534-clk-bcm2835-Allo=
w-
> reparenting-leaf-clocks-while-they.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0534-clk-bcm2835-Allow-reparenting-leaf-clocks-while-they.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0534-clk-bcm2835-
> Allow-reparenting-leaf-clocks-while-they.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0534-clk-bcm2835-Allow-
> reparenting-leaf-clocks-while-they.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0535-drm-v3d-Add-
> support-for-compute-shader-dispatch.patch
> b/target/linux/bcm27xx/patches-4.19/950-0535-drm-v3d-Add-support-for-
> compute-shader-dispatch.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0535-drm-v3d-Add-
> support-for-compute-shader-dispatch.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0535-drm-v3d-Add-
> support-for-compute-shader-dispatch.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0536-drm-v3d-Clock-
> V3D-down-when-not-in-use.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0536-drm-v3d-Clock-V3D-down-when-not-in-use.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0536-drm-v3d-Clock-
> V3D-down-when-not-in-use.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0536-drm-v3d-Clock-
> V3D-down-when-not-in-use.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0537-drm-vc4-firmware-
> kms-Remove-incorrect-overscan-suppo.patch
> b/target/linux/bcm27xx/patches-4.19/950-0537-drm-vc4-firmware-kms-
> Remove-incorrect-overscan-suppo.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0537-drm-vc4-
> firmware-kms-Remove-incorrect-overscan-suppo.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0537-drm-vc4-firmware-
> kms-Remove-incorrect-overscan-suppo.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0538-drm-vc4-Log-flag=
s-
> in-fkms-mode-set.patch b/target/linux/bcm27xx/patches-4.19/950-0538-
> drm-vc4-Log-flags-in-fkms-mode-set.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0538-drm-vc4-Log-
> flags-in-fkms-mode-set.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0538-drm-vc4-Log-flags-
> in-fkms-mode-set.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0539-drm-vc4-firmware-
> kms-Fix-DSI-display-support.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0539-drm-vc4-firmware-kms-Fix-DSI-display-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0539-drm-vc4-
> firmware-kms-Fix-DSI-display-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0539-drm-vc4-firmware-
> kms-Fix-DSI-display-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0540-drm-vc4-Probe-
> DPI-DSI-timings-from-the-firmware.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0540-drm-vc4-Probe-DPI-DSI-timings-from-the-firmware.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0540-drm-vc4-Probe-
> DPI-DSI-timings-from-the-firmware.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0540-drm-vc4-Probe-
> DPI-DSI-timings-from-the-firmware.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0541-drm-vc4-handle-
> the-case-where-there-are-no-available.patch
> b/target/linux/bcm27xx/patches-4.19/950-0541-drm-vc4-handle-the-case-
> where-there-are-no-available.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0541-drm-vc4-
> handle-the-case-where-there-are-no-available.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0541-drm-vc4-handle-
> the-case-where-there-are-no-available.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0542-drm-vc4-Support-
> the-VEC-in-FKMS.patch b/target/linux/bcm27xx/patches-4.19/950-0542-
> drm-vc4-Support-the-VEC-in-FKMS.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0542-drm-vc4-
> Support-the-VEC-in-FKMS.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0542-drm-vc4-Support-
> the-VEC-in-FKMS.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0543-drm-vc4-Fixup-
> typo-when-setting-HDMI-aspect-ratio.patch
> b/target/linux/bcm27xx/patches-4.19/950-0543-drm-vc4-Fixup-typo-when-
> setting-HDMI-aspect-ratio.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0543-drm-vc4-Fixup-
> typo-when-setting-HDMI-aspect-ratio.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0543-drm-vc4-Fixup-
> typo-when-setting-HDMI-aspect-ratio.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0544-drm-vc4-Correct-
> SAND-support-for-FKMS.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0544-drm-vc4-Correct-SAND-support-for-FKMS.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0544-drm-vc4-
> Correct-SAND-support-for-FKMS.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0544-drm-vc4-Correct-
> SAND-support-for-FKMS.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0545-drm-vc4-fkms-to-
> query-the-VPU-for-HDMI-clock-limits.patch
> b/target/linux/bcm27xx/patches-4.19/950-0545-drm-vc4-fkms-to-query-the-
> VPU-for-HDMI-clock-limits.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0545-drm-vc4-fkms-
> to-query-the-VPU-for-HDMI-clock-limits.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0545-drm-vc4-fkms-to-
> query-the-VPU-for-HDMI-clock-limits.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0546-drm-vc4-Max-
> resolution-of-7680-is-conditional-on-bei.patch
> b/target/linux/bcm27xx/patches-4.19/950-0546-drm-vc4-Max-resolution-of-
> 7680-is-conditional-on-bei.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0546-drm-vc4-Max-
> resolution-of-7680-is-conditional-on-bei.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0546-drm-vc4-Max-
> resolution-of-7680-is-conditional-on-bei.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0547-staging-vc-sm-cm=
a-
> Remove-obsolete-comment-and-make-f.patch
> b/target/linux/bcm27xx/patches-4.19/950-0547-staging-vc-sm-cma-Remove-
> obsolete-comment-and-make-f.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0547-staging-vc-sm-
> cma-Remove-obsolete-comment-and-make-f.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0547-staging-vc-sm-cma-
> Remove-obsolete-comment-and-make-f.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0548-staging-vc-sm-cm=
a-
> Add-in-allocation-for-VPU-requests.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0548-staging-vc-sm-cma-Add-in-allocation-for-VPU-requests.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0548-staging-vc-sm-
> cma-Add-in-allocation-for-VPU-requests.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0548-staging-vc-sm-cma-
> Add-in-allocation-for-VPU-requests.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0549-staging-vc-sm-cm=
a-
> Update-TODO.patch b/target/linux/bcm27xx/patches-4.19/950-0549-
> staging-vc-sm-cma-Update-TODO.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0549-staging-vc-sm-
> cma-Update-TODO.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0549-staging-vc-sm-cma-
> Update-TODO.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0550-staging-vc-sm-cm=
a-
> Add-in-userspace-allocation-API.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0550-staging-vc-sm-cma-Add-in-userspace-allocation-API.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0550-staging-vc-sm-
> cma-Add-in-userspace-allocation-API.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0550-staging-vc-sm-cma-
> Add-in-userspace-allocation-API.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0551-staging-vcsm-cma-
> Add-cache-control-ioctls.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0551-staging-vcsm-cma-Add-cache-control-ioctls.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0551-staging-vcsm-
> cma-Add-cache-control-ioctls.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0551-staging-vcsm-cma-
> Add-cache-control-ioctls.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0552-staging-vcsm-cma-
> Alter-dev-node-permissions-to-0666.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0552-staging-vcsm-cma-Alter-dev-node-permissions-to-0666.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0552-staging-vcsm-
> cma-Alter-dev-node-permissions-to-0666.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0552-staging-vcsm-cma-
> Alter-dev-node-permissions-to-0666.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0553-staging-vcsm-cma-
> Drop-logging-level-on-messages-in-v.patch
> b/target/linux/bcm27xx/patches-4.19/950-0553-staging-vcsm-cma-Drop-
> logging-level-on-messages-in-v.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0553-staging-vcsm-
> cma-Drop-logging-level-on-messages-in-v.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0553-staging-vcsm-cma-
> Drop-logging-level-on-messages-in-v.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0554-staging-vcsm-cma-
> Fixup-the-alloc-code-handling-of-ke.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0554-staging-vcsm-cma-Fixup-the-alloc-code-handling-of-ke.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0554-staging-vcsm-
> cma-Fixup-the-alloc-code-handling-of-ke.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0554-staging-vcsm-cma-
> Fixup-the-alloc-code-handling-of-ke.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0555-Pulled-in-the-
> multi-frame-buffer-support-from-the-Pi.patch
> b/target/linux/bcm27xx/patches-4.19/950-0555-Pulled-in-the-multi-frame-
> buffer-support-from-the-Pi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0555-Pulled-in-the-
> multi-frame-buffer-support-from-the-Pi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0555-Pulled-in-the-multi-
> frame-buffer-support-from-the-Pi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0556-ARM-dts-bcm283x-
> Move-BCM2835-6-7-specific-to-bcm2835.patch
> b/target/linux/bcm27xx/patches-4.19/950-0556-ARM-dts-bcm283x-Move-
> BCM2835-6-7-specific-to-bcm2835.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0556-ARM-dts-
> bcm283x-Move-BCM2835-6-7-specific-to-bcm2835.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0556-ARM-dts-bcm283x-
> Move-BCM2835-6-7-specific-to-bcm2835.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0557-ARM-dts-Add-
> bcm2711-rpi-4-b.dts-and-components.patch
> b/target/linux/bcm27xx/patches-4.19/950-0557-ARM-dts-Add-bcm2711-rpi-
> 4-b.dts-and-components.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0557-ARM-dts-Add-
> bcm2711-rpi-4-b.dts-and-components.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0557-ARM-dts-Add-
> bcm2711-rpi-4-b.dts-and-components.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0558-overlays-Add-i2c=
3-
> 6-and-uart2-5-overlays.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0558-overlays-Add-i2c3-6-and-uart2-5-overlays.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0558-overlays-Add-
> i2c3-6-and-uart2-5-overlays.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0558-overlays-Add-i2c3-
> 6-and-uart2-5-overlays.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0559-spi-devicetree-
> add-overlays-for-spi-3-to-6.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0559-spi-devicetree-add-overlays-for-spi-3-to-6.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0559-spi-devicetree-
> add-overlays-for-spi-3-to-6.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0559-spi-devicetree-add-
> overlays-for-spi-3-to-6.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0560-overlays-Add-the-
> spi-gpio40-45-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-0560-
> overlays-Add-the-spi-gpio40-45-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0560-overlays-Add-
> the-spi-gpio40-45-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0560-overlays-Add-the-
> spi-gpio40-45-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0561-config-Permit-
> LPAE-and-PCIE_BRCMSTB-on-BCM2835.patch
> b/target/linux/bcm27xx/patches-4.19/950-0561-config-Permit-LPAE-and-
> PCIE_BRCMSTB-on-BCM2835.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0561-config-Permit-
> LPAE-and-PCIE_BRCMSTB-on-BCM2835.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0561-config-Permit-
> LPAE-and-PCIE_BRCMSTB-on-BCM2835.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0562-2711-Add-basic-6=
4-
> bit-support.patch b/target/linux/bcm27xx/patches-4.19/950-0562-2711-Add-
> basic-64-bit-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0562-2711-Add-basic-
> 64-bit-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0562-2711-Add-basic-64-
> bit-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0563-ARM-dts-bcm283x-
> Correct-vchiq-compatible-string-2840.patch
> b/target/linux/bcm27xx/patches-4.19/950-0563-ARM-dts-bcm283x-Correct-
> vchiq-compatible-string-2840.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0563-ARM-dts-
> bcm283x-Correct-vchiq-compatible-string-2840.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0563-ARM-dts-bcm283x-
> Correct-vchiq-compatible-string-2840.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0564-arm-dts-Change-
> downstream-vchiq-compatible-string.patch
> b/target/linux/bcm27xx/patches-4.19/950-0564-arm-dts-Change-
> downstream-vchiq-compatible-string.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0564-arm-dts-
> Change-downstream-vchiq-compatible-string.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0564-arm-dts-Change-
> downstream-vchiq-compatible-string.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0565-bcm2835-dma-
> Add-proper-40-bit-DMA-support.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0565-bcm2835-dma-Add-proper-40-bit-DMA-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0565-bcm2835-dma-
> Add-proper-40-bit-DMA-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0565-bcm2835-dma-Add-
> proper-40-bit-DMA-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0566-BCM270X_DT-
> Leave-bulk-channel-in-dma-channel-mask.patch
> b/target/linux/bcm27xx/patches-4.19/950-0566-BCM270X_DT-Leave-bulk-
> channel-in-dma-channel-mask.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0566-BCM270X_DT-
> Leave-bulk-channel-in-dma-channel-mask.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0566-BCM270X_DT-
> Leave-bulk-channel-in-dma-channel-mask.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0567-SQUASH-bcm2835-
> dma-Remove-debugging.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0567-SQUASH-bcm2835-dma-Remove-debugging.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0567-SQUASH-
> bcm2835-dma-Remove-debugging.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0567-SQUASH-bcm2835-
> dma-Remove-debugging.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0568-dts-Include-CSI-
> lane-config-for-csi1.patch b/target/linux/bcm27xx/patches-4.19/950-0568-
> dts-Include-CSI-lane-config-for-csi1.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0568-dts-Include-CSI-
> lane-config-for-csi1.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0568-dts-Include-CSI-
> lane-config-for-csi1.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0569-drm-vc4-Fix-T-
> format-modifiers-in-FKMS.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0569-drm-vc4-Fix-T-format-modifiers-in-FKMS.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0569-drm-vc4-Fix-T-
> format-modifiers-in-FKMS.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0569-drm-vc4-Fix-T-
> format-modifiers-in-FKMS.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0570-bcm2711-dts-
> Disable-the-v3d-node-by-default.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0570-bcm2711-dts-Disable-the-v3d-node-by-default.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0570-bcm2711-dts-
> Disable-the-v3d-node-by-default.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0570-bcm2711-dts-
> Disable-the-v3d-node-by-default.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0571-drm-vc4-Remove-
> 340MHz-clock-limit-from-FKMS-now-scra.patch
> b/target/linux/bcm27xx/patches-4.19/950-0571-drm-vc4-Remove-340MHz-
> clock-limit-from-FKMS-now-scra.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0571-drm-vc4-
> Remove-340MHz-clock-limit-from-FKMS-now-scra.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0571-drm-vc4-Remove-
> 340MHz-clock-limit-from-FKMS-now-scra.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0572-usb-add-plumbing-
> for-updating-interrupt-endpoint-int.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0572-usb-add-plumbing-for-updating-interrupt-endpoint-int.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0572-usb-add-
> plumbing-for-updating-interrupt-endpoint-int.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0572-usb-add-plumbing-
> for-updating-interrupt-endpoint-int.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0573-xhci-implement-
> xhci_fixup_endpoint-for-interval-adju.patch
> b/target/linux/bcm27xx/patches-4.19/950-0573-xhci-implement-
> xhci_fixup_endpoint-for-interval-adju.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0573-xhci-
> implement-xhci_fixup_endpoint-for-interval-adju.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0573-xhci-implement-
> xhci_fixup_endpoint-for-interval-adju.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0574-usbhid-call-
> usb_fixup_endpoint-after-mangling-interv.patch
> b/target/linux/bcm27xx/patches-4.19/950-0574-usbhid-call-
> usb_fixup_endpoint-after-mangling-interv.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0574-usbhid-call-
> usb_fixup_endpoint-after-mangling-interv.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0574-usbhid-call-
> usb_fixup_endpoint-after-mangling-interv.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0575-drm-vc4-Add-
> status-of-which-display-is-updated-throu.patch
> b/target/linux/bcm27xx/patches-4.19/950-0575-drm-vc4-Add-status-of-
> which-display-is-updated-throu.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0575-drm-vc4-Add-
> status-of-which-display-is-updated-throu.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0575-drm-vc4-Add-
> status-of-which-display-is-updated-throu.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0576-drm-vc4-In-FKMS-
> look-at-the-modifiers-correctly-for-.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0576-drm-vc4-In-FKMS-look-at-the-modifiers-correctly-for-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0576-drm-vc4-In-
> FKMS-look-at-the-modifiers-correctly-for-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0576-drm-vc4-In-FKMS-
> look-at-the-modifiers-correctly-for-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0577-arm-dts-Fix-Pi4-
> PWR-LED-configuration.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0577-arm-dts-Fix-Pi4-PWR-LED-configuration.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0577-arm-dts-Fix-Pi4-
> PWR-LED-configuration.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0577-arm-dts-Fix-Pi4-
> PWR-LED-configuration.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0578-bcm2838.dtsi-
> Correct-gic400-memory-address-ranges.patch
> b/target/linux/bcm27xx/patches-4.19/950-0578-bcm2838.dtsi-Correct-
> gic400-memory-address-ranges.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0578-bcm2838.dtsi-
> Correct-gic400-memory-address-ranges.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0578-bcm2838.dtsi-
> Correct-gic400-memory-address-ranges.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0579-staging-vchiq-Us=
e-
> the-old-dma-controller-for-OF-conf.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0579-staging-vchiq-Use-the-old-dma-controller-for-OF-conf.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0579-staging-vchiq-
> Use-the-old-dma-controller-for-OF-conf.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0579-staging-vchiq-Use-
> the-old-dma-controller-for-OF-conf.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0580-drm-vc4-Limit-
> fkms-to-modes-85Hz.patch b/target/linux/bcm27xx/patches-4.19/950-0580-
> drm-vc4-Limit-fkms-to-modes-85Hz.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0580-drm-vc4-Limit-
> fkms-to-modes-85Hz.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0580-drm-vc4-Limit-
> fkms-to-modes-85Hz.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0581-arm-bcm2835-Add-
> bcm2838-compatible-string.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0581-arm-bcm2835-Add-bcm2838-compatible-string.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0581-arm-bcm2835-
> Add-bcm2838-compatible-string.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0581-arm-bcm2835-Add-
> bcm2838-compatible-string.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0582-arm-dts-Improve-
> the-bcm27xx-inclusion-hierarchy.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0582-arm-dts-Improve-the-bcm27xx-inclusion-hierarchy.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0582-arm-dts-
> Improve-the-bcm27xx-inclusion-hierarchy.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0582-arm-dts-Improve-
> the-bcm27xx-inclusion-hierarchy.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0583-arm-dts-First-dr=
aft-
> of-upstream-Pi4-DTS.patch b/target/linux/bcm27xx/patches-4.19/950-0583-
> arm-dts-First-draft-of-upstream-Pi4-DTS.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0583-arm-dts-First-
> draft-of-upstream-Pi4-DTS.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0583-arm-dts-First-draft-
> of-upstream-Pi4-DTS.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0584-overlays-Fix-
> compatible-string-for-ds1307-RTC.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0584-overlays-Fix-compatible-string-for-ds1307-RTC.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0584-overlays-Fix-
> compatible-string-for-ds1307-RTC.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0584-overlays-Fix-
> compatible-string-for-ds1307-RTC.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0585-overlays-Fix-
> further-maxim-ds1307-references.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0585-overlays-Fix-further-maxim-ds1307-references.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0585-overlays-Fix-
> further-maxim-ds1307-references.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0585-overlays-Fix-
> further-maxim-ds1307-references.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0586-overlays-Cosmeti=
c-
> change-to-upstream-overlay.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0586-overlays-Cosmetic-change-to-upstream-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0586-overlays-
> Cosmetic-change-to-upstream-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0586-overlays-Cosmetic-
> change-to-upstream-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0587-w1-ds2805-
> rename-w1_family-struct-fixing-c-p-typo.patch
> b/target/linux/bcm27xx/patches-4.19/950-0587-w1-ds2805-rename-
> w1_family-struct-fixing-c-p-typo.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0587-w1-ds2805-
> rename-w1_family-struct-fixing-c-p-typo.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0587-w1-ds2805-
> rename-w1_family-struct-fixing-c-p-typo.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0588-w1-ds2413-
> output_write-cosmetic-fixes-simplify.patch
> b/target/linux/bcm27xx/patches-4.19/950-0588-w1-ds2413-output_write-
> cosmetic-fixes-simplify.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0588-w1-ds2413-
> output_write-cosmetic-fixes-simplify.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0588-w1-ds2413-
> output_write-cosmetic-fixes-simplify.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0589-w1-ds2413-add-
> retry-support-to-state_read.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0589-w1-ds2413-add-retry-support-to-state_read.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0589-w1-ds2413-add-
> retry-support-to-state_read.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0589-w1-ds2413-add-
> retry-support-to-state_read.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0590-w1-ds2413-when-
> the-slave-is-not-responding-during-re.patch
> b/target/linux/bcm27xx/patches-4.19/950-0590-w1-ds2413-when-the-slave-
> is-not-responding-during-re.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0590-w1-ds2413-
> when-the-slave-is-not-responding-during-re.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0590-w1-ds2413-when-
> the-slave-is-not-responding-during-re.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0591-w1-ds2413-fix-
> state-byte-comparision.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0591-w1-ds2413-fix-state-byte-comparision.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0591-w1-ds2413-fix-
> state-byte-comparision.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0591-w1-ds2413-fix-
> state-byte-comparision.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0592-drm-vc4_dsi-Fix-
> DMA-channel-and-memory-leak-in-vc4-3.patch
> b/target/linux/bcm27xx/patches-4.19/950-0592-drm-vc4_dsi-Fix-DMA-
> channel-and-memory-leak-in-vc4-3.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0592-drm-vc4_dsi-
> Fix-DMA-channel-and-memory-leak-in-vc4-3.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0592-drm-vc4_dsi-Fix-
> DMA-channel-and-memory-leak-in-vc4-3.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0593-video-bcm2708_fb-
> Revert-cma-allocation-attempt.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0593-video-bcm2708_fb-Revert-cma-allocation-attempt.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0593-video-
> bcm2708_fb-Revert-cma-allocation-attempt.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0593-video-bcm2708_fb-
> Revert-cma-allocation-attempt.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0594-drm-vc4-Add-
> support-for-color-encoding-on-YUV-planes.patch
> b/target/linux/bcm27xx/patches-4.19/950-0594-drm-vc4-Add-support-for-
> color-encoding-on-YUV-planes.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0594-drm-vc4-Add-
> support-for-color-encoding-on-YUV-planes.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0594-drm-vc4-Add-
> support-for-color-encoding-on-YUV-planes.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0595-arm-dts-Add-
> coherent_pool-1M-to-Pi-4-bootargs.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0595-arm-dts-Add-coherent_pool-1M-to-Pi-4-bootargs.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0595-arm-dts-Add-
> coherent_pool-1M-to-Pi-4-bootargs.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0595-arm-dts-Add-
> coherent_pool-1M-to-Pi-4-bootargs.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0596-overlays-Correct-
> gpio-fan-gpio-flags-for-4.19.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0596-overlays-Correct-gpio-fan-gpio-flags-for-4.19.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0596-overlays-
> Correct-gpio-fan-gpio-flags-for-4.19.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0596-overlays-Correct-
> gpio-fan-gpio-flags-for-4.19.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0597-staging-vcsm-cma-
> Remove-cache-manipulation-ioctl-fro.patch
> b/target/linux/bcm27xx/patches-4.19/950-0597-staging-vcsm-cma-Remove-
> cache-manipulation-ioctl-fro.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0597-staging-vcsm-
> cma-Remove-cache-manipulation-ioctl-fro.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0597-staging-vcsm-cma-
> Remove-cache-manipulation-ioctl-fro.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0598-staging-vcsm-cma-
> Rework-to-use-dma-APIs-not-CMA.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0598-staging-vcsm-cma-Rework-to-use-dma-APIs-not-CMA.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0598-staging-vcsm-
> cma-Rework-to-use-dma-APIs-not-CMA.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0598-staging-vcsm-cma-
> Rework-to-use-dma-APIs-not-CMA.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0599-staging-vc-sm-cm=
a-
> Fix-the-few-remaining-coding-style.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0599-staging-vc-sm-cma-Fix-the-few-remaining-coding-style.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0599-staging-vc-sm-
> cma-Fix-the-few-remaining-coding-style.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0599-staging-vc-sm-cma-
> Fix-the-few-remaining-coding-style.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0600-media-
> videodev2.h-add-new-capabilities-for-buffer-ty.patch
> b/target/linux/bcm27xx/patches-4.19/950-0600-media-videodev2.h-add-
> new-capabilities-for-buffer-ty.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0600-media-
> videodev2.h-add-new-capabilities-for-buffer-ty.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0600-media-
> videodev2.h-add-new-capabilities-for-buffer-ty.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0601-media-vb2-set-
> reqbufs-create_bufs-capabilities.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0601-media-vb2-set-reqbufs-create_bufs-capabilities.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0601-media-vb2-set-
> reqbufs-create_bufs-capabilities.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0601-media-vb2-set-
> reqbufs-create_bufs-capabilities.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0602-media-vb2-Allow-
> reqbufs-0-with-in-use-MMAP-buffers.patch
> b/target/linux/bcm27xx/patches-4.19/950-0602-media-vb2-Allow-reqbufs-0-
> with-in-use-MMAP-buffers.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0602-media-vb2-
> Allow-reqbufs-0-with-in-use-MMAP-buffers.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0602-media-vb2-Allow-
> reqbufs-0-with-in-use-MMAP-buffers.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0603-overlays-Add-rea=
l-
> parameters-to-the-rpi-poe-overlay.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0603-overlays-Add-real-parameters-to-the-rpi-poe-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0603-overlays-Add-
> real-parameters-to-the-rpi-poe-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0603-overlays-Add-real-
> parameters-to-the-rpi-poe-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0604-overlays-Rename-
> pi3-overlays-to-be-less-model-specif.patch
> b/target/linux/bcm27xx/patches-4.19/950-0604-overlays-Rename-pi3-
> overlays-to-be-less-model-specif.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0604-overlays-
> Rename-pi3-overlays-to-be-less-model-specif.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0604-overlays-Rename-
> pi3-overlays-to-be-less-model-specif.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0605-i2c-bcm2835-
> Move-IRQ-request-after-clock-code-in-pro.patch
> b/target/linux/bcm27xx/patches-4.19/950-0605-i2c-bcm2835-Move-IRQ-
> request-after-clock-code-in-pro.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0605-i2c-bcm2835-
> Move-IRQ-request-after-clock-code-in-pro.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0605-i2c-bcm2835-Move-
> IRQ-request-after-clock-code-in-pro.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0606-i2c-bcm2835-
> Ensure-clock-exists-when-probing.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0606-i2c-bcm2835-Ensure-clock-exists-when-probing.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0606-i2c-bcm2835-
> Ensure-clock-exists-when-probing.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0606-i2c-bcm2835-
> Ensure-clock-exists-when-probing.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0607-overlays-i2c-gpi=
o-
> Fix-the-bus-parameter.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0607-overlays-i2c-gpio-Fix-the-bus-parameter.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0607-overlays-i2c-
> gpio-Fix-the-bus-parameter.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0607-overlays-i2c-gpio-
> Fix-the-bus-parameter.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0608-tty-amba-pl011-
> Make-TX-optimisation-conditional.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0608-tty-amba-pl011-Make-TX-optimisation-conditional.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0608-tty-amba-pl011-
> Make-TX-optimisation-conditional.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0608-tty-amba-pl011-
> Make-TX-optimisation-conditional.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0609-xhci-add-quirk-f=
or-
> host-controllers-that-don-t-updat.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0609-xhci-add-quirk-for-host-controllers-that-don-t-updat.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0609-xhci-add-quirk-
> for-host-controllers-that-don-t-updat.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0609-xhci-add-quirk-for-
> host-controllers-that-don-t-updat.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0610-i2c-bcm2835-Set-
> clock-stretch-timeout-to-35ms.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0610-i2c-bcm2835-Set-clock-stretch-timeout-to-35ms.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0610-i2c-bcm2835-
> Set-clock-stretch-timeout-to-35ms.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0610-i2c-bcm2835-Set-
> clock-stretch-timeout-to-35ms.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0611-arm64-bcm2835-
> Add-missing-dependency-on-MFD_CORE.patch
> b/target/linux/bcm27xx/patches-4.19/950-0611-arm64-bcm2835-Add-
> missing-dependency-on-MFD_CORE.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0611-arm64-
> bcm2835-Add-missing-dependency-on-MFD_CORE.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0611-arm64-bcm2835-
> Add-missing-dependency-on-MFD_CORE.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0612-overlays-Add-
> PCF2129-RTC.patch b/target/linux/bcm27xx/patches-4.19/950-0612-
> overlays-Add-PCF2129-RTC.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0612-overlays-Add-
> PCF2129-RTC.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0612-overlays-Add-
> PCF2129-RTC.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0613-overlays-dpi18-
> and-dpi24-vc4-compatibility.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0613-overlays-dpi18-and-dpi24-vc4-compatibility.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0613-overlays-dpi18-
> and-dpi24-vc4-compatibility.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0613-overlays-dpi18-and-
> dpi24-vc4-compatibility.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0614-overlays-Add-i2c=
0-
> and-i2c1-for-regularity.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0614-overlays-Add-i2c0-and-i2c1-for-regularity.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0614-overlays-Add-
> i2c0-and-i2c1-for-regularity.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0614-overlays-Add-i2c0-
> and-i2c1-for-regularity.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0615-Pisound-Remove-
> spinlock-usage-around-spi_sync.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0615-Pisound-Remove-spinlock-usage-around-spi_sync.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0615-Pisound-
> Remove-spinlock-usage-around-spi_sync.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0615-Pisound-Remove-
> spinlock-usage-around-spi_sync.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0616-arm64-mm-Limit-
> the-DMA-zone-for-arm64.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0616-arm64-mm-Limit-the-DMA-zone-for-arm64.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0616-arm64-mm-
> Limit-the-DMA-zone-for-arm64.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0616-arm64-mm-Limit-
> the-DMA-zone-for-arm64.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0617-drm-vc4-Query-
> firmware-for-custom-HDMI-mode.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0617-drm-vc4-Query-firmware-for-custom-HDMI-mode.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0617-drm-vc4-Query-
> firmware-for-custom-HDMI-mode.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0617-drm-vc4-Query-
> firmware-for-custom-HDMI-mode.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0618-drm-vc4-Pass-the-
> drm-vrefresh-to-the-firmware-on-mod.patch
> b/target/linux/bcm27xx/patches-4.19/950-0618-drm-vc4-Pass-the-drm-
> vrefresh-to-the-firmware-on-mod.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0618-drm-vc4-Pass-
> the-drm-vrefresh-to-the-firmware-on-mod.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0618-drm-vc4-Pass-the-
> drm-vrefresh-to-the-firmware-on-mod.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0619-overlays-
> audremap-Support-GPIOs-18-19.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0619-overlays-audremap-Support-GPIOs-18-19.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0619-overlays-
> audremap-Support-GPIOs-18-19.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0619-overlays-
> audremap-Support-GPIOs-18-19.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0620-drm-connector-Fi=
x-
> drm_mode_create_tv_properties-doc.patch
> b/target/linux/bcm27xx/patches-4.19/950-0620-drm-connector-Fix-
> drm_mode_create_tv_properties-doc.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0620-drm-connector-
> Fix-drm_mode_create_tv_properties-doc.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0620-drm-connector-Fix-
> drm_mode_create_tv_properties-doc.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0621-drm-connector-
> Clarify-the-unit-of-TV-margins.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0621-drm-connector-Clarify-the-unit-of-TV-margins.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0621-drm-connector-
> Clarify-the-unit-of-TV-margins.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0621-drm-connector-
> Clarify-the-unit-of-TV-margins.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0622-drm-connector-
> Allow-creation-of-margin-props-alone.patch
> b/target/linux/bcm27xx/patches-4.19/950-0622-drm-connector-Allow-
> creation-of-margin-props-alone.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0622-drm-connector-
> Allow-creation-of-margin-props-alone.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0622-drm-connector-
> Allow-creation-of-margin-props-alone.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0623-drm-vc4-Take-
> margin-setup-into-account-when-updating.patch
> b/target/linux/bcm27xx/patches-4.19/950-0623-drm-vc4-Take-margin-
> setup-into-account-when-updating.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0623-drm-vc4-Take-
> margin-setup-into-account-when-updating.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0623-drm-vc4-Take-
> margin-setup-into-account-when-updating.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0624-drm-vc4-Attach-
> margin-props-to-the-HDMI-connector.patch
> b/target/linux/bcm27xx/patches-4.19/950-0624-drm-vc4-Attach-margin-
> props-to-the-HDMI-connector.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0624-drm-vc4-Attach-
> margin-props-to-the-HDMI-connector.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0624-drm-vc4-Attach-
> margin-props-to-the-HDMI-connector.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0625-drm-vc4-Add-
> support-for-margins-to-fkms.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0625-drm-vc4-Add-support-for-margins-to-fkms.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0625-drm-vc4-Add-
> support-for-margins-to-fkms.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0625-drm-vc4-Add-
> support-for-margins-to-fkms.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0626-drm-vc4-Ensure-
> zpos-is-always-initialised.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0626-drm-vc4-Ensure-zpos-is-always-initialised.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0626-drm-vc4-
> Ensure-zpos-is-always-initialised.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0626-drm-vc4-Ensure-
> zpos-is-always-initialised.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0627-dts-bcm2838-add-
> missing-properties-for-pmu-and-gic-n.patch
> b/target/linux/bcm27xx/patches-4.19/950-0627-dts-bcm2838-add-missing-
> properties-for-pmu-and-gic-n.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0627-dts-bcm2838-
> add-missing-properties-for-pmu-and-gic-n.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0627-dts-bcm2838-add-
> missing-properties-for-pmu-and-gic-n.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0628-adds-the-Hifiber=
ry-
> DAC-ADC-PRO-version.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0628-adds-the-Hifiberry-DAC-ADC-PRO-version.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0628-adds-the-
> Hifiberry-DAC-ADC-PRO-version.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0628-adds-the-Hifiberry-
> DAC-ADC-PRO-version.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0629-codecs-Correct-
> Katana-minimum-volume.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0629-codecs-Correct-Katana-minimum-volume.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0629-codecs-Correct-
> Katana-minimum-volume.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0629-codecs-Correct-
> Katana-minimum-volume.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0630-drm-vc4-A-
> present-but-empty-dmas-disables-audio.patch
> b/target/linux/bcm27xx/patches-4.19/950-0630-drm-vc4-A-present-but-
> empty-dmas-disables-audio.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0630-drm-vc4-A-
> present-but-empty-dmas-disables-audio.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0630-drm-vc4-A-present-
> but-empty-dmas-disables-audio.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0631-overlays-Add-
> audio-parameter-to-vc4-kms-v3d.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0631-overlays-Add-audio-parameter-to-vc4-kms-v3d.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0631-overlays-Add-
> audio-parameter-to-vc4-kms-v3d.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0631-overlays-Add-
> audio-parameter-to-vc4-kms-v3d.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0632-overlays-Update-
> the-upstream-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0632-overlays-Update-the-upstream-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0632-overlays-
> Update-the-upstream-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0632-overlays-Update-
> the-upstream-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0633-Fixup-FKMS-
> interrupt-handing-for-non-existent-displa.patch
> b/target/linux/bcm27xx/patches-4.19/950-0633-Fixup-FKMS-interrupt-
> handing-for-non-existent-displa.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0633-Fixup-FKMS-
> interrupt-handing-for-non-existent-displa.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0633-Fixup-FKMS-
> interrupt-handing-for-non-existent-displa.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0634-drivers-char-Use-
> correct-name-for-the-Raspberry-Pi-v.patch
> b/target/linux/bcm27xx/patches-4.19/950-0634-drivers-char-Use-correct-
> name-for-the-Raspberry-Pi-v.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0634-drivers-char-
> Use-correct-name-for-the-Raspberry-Pi-v.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0634-drivers-char-Use-
> correct-name-for-the-Raspberry-Pi-v.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0635-driver-char-rpiv=
id-
> also-support-legacy-name.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0635-driver-char-rpivid-also-support-legacy-name.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0635-driver-char-
> rpivid-also-support-legacy-name.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0635-driver-char-rpivid-
> also-support-legacy-name.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0636-hid-usb-Add-
> device-quirks-for-Freeway-Airmouse-T3-an.patch
> b/target/linux/bcm27xx/patches-4.19/950-0636-hid-usb-Add-device-quirks-
> for-Freeway-Airmouse-T3-an.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0636-hid-usb-Add-
> device-quirks-for-Freeway-Airmouse-T3-an.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0636-hid-usb-Add-
> device-quirks-for-Freeway-Airmouse-T3-an.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0637-drm-vc4-Add-
> Broadcast-RGB-connector-property.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0637-drm-vc4-Add-Broadcast-RGB-connector-property.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0637-drm-vc4-Add-
> Broadcast-RGB-connector-property.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0637-drm-vc4-Add-
> Broadcast-RGB-connector-property.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0638-drm-connector-
> Add-documentation-for-drm_cmdline_mode.patch
> b/target/linux/bcm27xx/patches-4.19/950-0638-drm-connector-Add-
> documentation-for-drm_cmdline_mode.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0638-drm-connector-
> Add-documentation-for-drm_cmdline_mode.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0638-drm-connector-
> Add-documentation-for-drm_cmdline_mode.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0639-drm-modes-
> Rewrite-the-command-line-parser.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0639-drm-modes-Rewrite-the-command-line-parser.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0639-drm-modes-
> Rewrite-the-command-line-parser.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0639-drm-modes-
> Rewrite-the-command-line-parser.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0640-drm-modes-
> Support-modes-names-on-the-command-line.patch
> b/target/linux/bcm27xx/patches-4.19/950-0640-drm-modes-Support-
> modes-names-on-the-command-line.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0640-drm-modes-
> Support-modes-names-on-the-command-line.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0640-drm-modes-
> Support-modes-names-on-the-command-line.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0641-drm-modes-Allow-
> to-specify-rotation-and-reflection-o.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0641-drm-modes-Allow-to-specify-rotation-and-reflection-o.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0641-drm-modes-
> Allow-to-specify-rotation-and-reflection-o.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0641-drm-modes-Allow-
> to-specify-rotation-and-reflection-o.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0642-drm-connector-
> Introduce-a-TV-margins-structure.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0642-drm-connector-Introduce-a-TV-margins-structure.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0642-drm-connector-
> Introduce-a-TV-margins-structure.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0642-drm-connector-
> Introduce-a-TV-margins-structure.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0643-drm-modes-Parse-
> overscan-properties.patch b/target/linux/bcm27xx/patches-4.19/950-0643-
> drm-modes-Parse-overscan-properties.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0643-drm-modes-
> Parse-overscan-properties.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0643-drm-modes-Parse-
> overscan-properties.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0644-drm-atomic-Add-a-
> function-to-reset-connector-TV-prop.patch
> b/target/linux/bcm27xx/patches-4.19/950-0644-drm-atomic-Add-a-function-
> to-reset-connector-TV-prop.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0644-drm-atomic-
> Add-a-function-to-reset-connector-TV-prop.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0644-drm-atomic-Add-a-
> function-to-reset-connector-TV-prop.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0645-drm-vc4-hdmi-Set-
> default-state-margin-at-reset.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0645-drm-vc4-hdmi-Set-default-state-margin-at-reset.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0645-drm-vc4-hdmi-
> Set-default-state-margin-at-reset.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0645-drm-vc4-hdmi-Set-
> default-state-margin-at-reset.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0646-drm-vc4-fkms-Set-
> default-state-margin-at-reset.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0646-drm-vc4-fkms-Set-default-state-margin-at-reset.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0646-drm-vc4-fkms-
> Set-default-state-margin-at-reset.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0646-drm-vc4-fkms-Set-
> default-state-margin-at-reset.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0647-drm-modes-Don-t-
> apply-cmdline-s-rotation-if-it-wasn-.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0647-drm-modes-Don-t-apply-cmdline-s-rotation-if-it-wasn-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0647-drm-modes-
> Don-t-apply-cmdline-s-rotation-if-it-wasn-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0647-drm-modes-Don-t-
> apply-cmdline-s-rotation-if-it-wasn-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0648-staging-bcm2835-
> codec-switch-to-multi-planar-API.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0648-staging-bcm2835-codec-switch-to-multi-planar-API.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0648-staging-
> bcm2835-codec-switch-to-multi-planar-API.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0648-staging-bcm2835-
> codec-switch-to-multi-planar-API.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0649-staging-bcm2835-
> codec-implement-V4L2_CID_MIN_BUFFERS.patch
> b/target/linux/bcm27xx/patches-4.19/950-0649-staging-bcm2835-codec-
> implement-V4L2_CID_MIN_BUFFERS.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0649-staging-
> bcm2835-codec-implement-V4L2_CID_MIN_BUFFERS.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0649-staging-bcm2835-
> codec-implement-V4L2_CID_MIN_BUFFERS.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0650-staging-bcm2835-
> codec-set-device_caps-in-struct-vide.patch
> b/target/linux/bcm27xx/patches-4.19/950-0650-staging-bcm2835-codec-set-
> device_caps-in-struct-vide.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0650-staging-
> bcm2835-codec-set-device_caps-in-struct-vide.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0650-staging-bcm2835-
> codec-set-device_caps-in-struct-vide.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0651-Add-HDMI1-
> facility-to-the-driver.patch b/target/linux/bcm27xx/patches-4.19/950-0651-
> Add-HDMI1-facility-to-the-driver.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0651-Add-HDMI1-
> facility-to-the-driver.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0651-Add-HDMI1-facility-
> to-the-driver.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0652-overlays-Add-
> baudrate-parameter-to-i2c3-i2c6.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0652-overlays-Add-baudrate-parameter-to-i2c3-i2c6.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0652-overlays-Add-
> baudrate-parameter-to-i2c3-i2c6.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0652-overlays-Add-
> baudrate-parameter-to-i2c3-i2c6.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0653-drm-vc4-Resolve-
> the-vblank-warnings-on-mode-switchin.patch
> b/target/linux/bcm27xx/patches-4.19/950-0653-drm-vc4-Resolve-the-
> vblank-warnings-on-mode-switchin.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0653-drm-vc4-
> Resolve-the-vblank-warnings-on-mode-switchin.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0653-drm-vc4-Resolve-
> the-vblank-warnings-on-mode-switchin.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0654-drm-vc4-Remove-
> unused-mode-variable.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0654-drm-vc4-Remove-unused-mode-variable.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0654-drm-vc4-
> Remove-unused-mode-variable.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0654-drm-vc4-Remove-
> unused-mode-variable.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0655-staging-bcm2835-
> codec-Expand-logging-on-format-setti.patch
> b/target/linux/bcm27xx/patches-4.19/950-0655-staging-bcm2835-codec-
> Expand-logging-on-format-setti.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0655-staging-
> bcm2835-codec-Expand-logging-on-format-setti.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0655-staging-bcm2835-
> codec-Expand-logging-on-format-setti.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0656-staging-bcm2835-
> codec-Correct-bytesperline-on-format.patch
> b/target/linux/bcm27xx/patches-4.19/950-0656-staging-bcm2835-codec-
> Correct-bytesperline-on-format.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0656-staging-
> bcm2835-codec-Correct-bytesperline-on-format.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0656-staging-bcm2835-
> codec-Correct-bytesperline-on-format.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0657-drm-vc4-Add-
> missing-NULL-check-to-vc4_crtc_consume_e.patch
> b/target/linux/bcm27xx/patches-4.19/950-0657-drm-vc4-Add-missing-NULL-
> check-to-vc4_crtc_consume_e.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0657-drm-vc4-Add-
> missing-NULL-check-to-vc4_crtc_consume_e.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0657-drm-vc4-Add-
> missing-NULL-check-to-vc4_crtc_consume_e.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0658-net-bcmgenet-
> Workaround-2-for-Pi4-Ethernet-fail.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0658-net-bcmgenet-Workaround-2-for-Pi4-Ethernet-fail.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0658-net-bcmgenet-
> Workaround-2-for-Pi4-Ethernet-fail.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0658-net-bcmgenet-
> Workaround-2-for-Pi4-Ethernet-fail.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0659-drm-vc4-Fix-
> TILE_Y_OFFSET-definitions.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0659-drm-vc4-Fix-TILE_Y_OFFSET-definitions.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0659-drm-vc4-Fix-
> TILE_Y_OFFSET-definitions.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0659-drm-vc4-Fix-
> TILE_Y_OFFSET-definitions.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0660-drm-vc4-Define-
> missing-PITCH0_SINK_PIX-field.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0660-drm-vc4-Define-missing-PITCH0_SINK_PIX-field.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0660-drm-vc4-
> Define-missing-PITCH0_SINK_PIX-field.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0660-drm-vc4-Define-
> missing-PITCH0_SINK_PIX-field.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0661-drm-vc4-Use-
> drm_atomic_helper_check_plane_state-to-s.patch
> b/target/linux/bcm27xx/patches-4.19/950-0661-drm-vc4-Use-
> drm_atomic_helper_check_plane_state-to-s.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0661-drm-vc4-Use-
> drm_atomic_helper_check_plane_state-to-s.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0661-drm-vc4-Use-
> drm_atomic_helper_check_plane_state-to-s.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0662-drm-vc4-Move-
> offsets-adjustment-out-of-setup_clippin.patch
> b/target/linux/bcm27xx/patches-4.19/950-0662-drm-vc4-Move-offsets-
> adjustment-out-of-setup_clippin.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0662-drm-vc4-Move-
> offsets-adjustment-out-of-setup_clippin.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0662-drm-vc4-Move-
> offsets-adjustment-out-of-setup_clippin.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0663-drm-vc4-Fix-X-Y-
> positioning-of-planes-using-T_TILES-.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0663-drm-vc4-Fix-X-Y-positioning-of-planes-using-T_TILES-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0663-drm-vc4-Fix-X-
> Y-positioning-of-planes-using-T_TILES-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0663-drm-vc4-Fix-X-Y-
> positioning-of-planes-using-T_TILES-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0664-drm-vc4-Fix-NULL-
> pointer-dereference-in-the-async-up.patch
> b/target/linux/bcm27xx/patches-4.19/950-0664-drm-vc4-Fix-NULL-pointer-
> dereference-in-the-async-up.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0664-drm-vc4-Fix-
> NULL-pointer-dereference-in-the-async-up.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0664-drm-vc4-Fix-NULL-
> pointer-dereference-in-the-async-up.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0665-ARM-dts-bcm2711-
> rpi-4-b-I2C-aliases-and-pulls.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0665-ARM-dts-bcm2711-rpi-4-b-I2C-aliases-and-pulls.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0665-ARM-dts-
> bcm2711-rpi-4-b-I2C-aliases-and-pulls.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0665-ARM-dts-bcm2711-
> rpi-4-b-I2C-aliases-and-pulls.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0666-xhci-Use-more-
> event-ring-segment-table-entries.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0666-xhci-Use-more-event-ring-segment-table-entries.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0666-xhci-Use-more-
> event-ring-segment-table-entries.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0666-xhci-Use-more-
> event-ring-segment-table-entries.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0667-dwc_otg-use-
> align_buf-for-small-IN-control-transfers.patch
> b/target/linux/bcm27xx/patches-4.19/950-0667-dwc_otg-use-align_buf-for-
> small-IN-control-transfers.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0667-dwc_otg-use-
> align_buf-for-small-IN-control-transfers.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0667-dwc_otg-use-
> align_buf-for-small-IN-control-transfers.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0668-Ported-pcie-
> brcmstb-bounce-buffer-implementation-to-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0668-Ported-pcie-brcmstb-
> bounce-buffer-implementation-to-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0668-Ported-pcie-
> brcmstb-bounce-buffer-implementation-to-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0668-Ported-pcie-
> brcmstb-bounce-buffer-implementation-to-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0669-configs-arm64-
> vcm2711-Enable-V3D.patch b/target/linux/bcm27xx/patches-4.19/950-0669-
> configs-arm64-vcm2711-Enable-V3D.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0669-configs-arm64-
> vcm2711-Enable-V3D.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0669-configs-arm64-
> vcm2711-Enable-V3D.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0670-overlays-sc16ic7=
52-
> i2c-Fix-xtal-parameter.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0670-overlays-sc16ic752-i2c-Fix-xtal-parameter.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0670-overlays-
> sc16ic752-i2c-Fix-xtal-parameter.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0670-overlays-sc16ic752-
> i2c-Fix-xtal-parameter.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0671-vc-sm-cma-Fix-
> compatibility-ioctl.patch b/target/linux/bcm27xx/patches-4.19/950-0671-vc-
> sm-cma-Fix-compatibility-ioctl.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0671-vc-sm-cma-Fix-
> compatibility-ioctl.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0671-vc-sm-cma-Fix-
> compatibility-ioctl.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0672-staging-bcm2835-
> codec-add-support-for-V4L2_CID_MPEG_.patch
> b/target/linux/bcm27xx/patches-4.19/950-0672-staging-bcm2835-codec-
> add-support-for-V4L2_CID_MPEG_.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0672-staging-
> bcm2835-codec-add-support-for-V4L2_CID_MPEG_.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0672-staging-bcm2835-
> codec-add-support-for-V4L2_CID_MPEG_.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0673-staging-bcm2835-
> codec-remove-unnecessary-padding-on-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0673-staging-bcm2835-codec-
> remove-unnecessary-padding-on-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0673-staging-
> bcm2835-codec-remove-unnecessary-padding-on-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0673-staging-bcm2835-
> codec-remove-unnecessary-padding-on-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0674-arm-dts-add-
> missing-Raspberry-Pi-model-names.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0674-arm-dts-add-missing-Raspberry-Pi-model-names.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0674-arm-dts-add-
> missing-Raspberry-Pi-model-names.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0674-arm-dts-add-
> missing-Raspberry-Pi-model-names.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0675-arch-arm-Add-
> model-string-to-cpuinfo.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0675-arch-arm-Add-model-string-to-cpuinfo.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0675-arch-arm-Add-
> model-string-to-cpuinfo.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0675-arch-arm-Add-
> model-string-to-cpuinfo.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0676-arch-arm64-Add-
> Revision-Serial-Model-to-cpuinfo.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0676-arch-arm64-Add-Revision-Serial-Model-to-cpuinfo.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0676-arch-arm64-
> Add-Revision-Serial-Model-to-cpuinfo.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0676-arch-arm64-Add-
> Revision-Serial-Model-to-cpuinfo.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0677-media-dt-binding=
s-
> Add-binding-for-the-Sony-IMX219-se.patch
> b/target/linux/bcm27xx/patches-4.19/950-0677-media-dt-bindings-Add-
> binding-for-the-Sony-IMX219-se.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0677-media-dt-
> bindings-Add-binding-for-the-Sony-IMX219-se.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0677-media-dt-bindings-
> Add-binding-for-the-Sony-IMX219-se.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0678-media-i2c-Add-
> driver-for-Sony-IMX219-sensor.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0678-media-i2c-Add-driver-for-Sony-IMX219-sensor.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0678-media-i2c-Add-
> driver-for-Sony-IMX219-sensor.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0678-media-i2c-Add-
> driver-for-Sony-IMX219-sensor.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0679-dtoverlays-Add-
> overlay-for-the-Sony-IMX219-image-sen.patch
> b/target/linux/bcm27xx/patches-4.19/950-0679-dtoverlays-Add-overlay-for-
> the-Sony-IMX219-image-sen.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0679-dtoverlays-Add-
> overlay-for-the-Sony-IMX219-image-sen.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0679-dtoverlays-Add-
> overlay-for-the-Sony-IMX219-image-sen.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0680-staging-bcm2835-
> codec-Fix-non-documentation-comment-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0680-staging-bcm2835-codec-Fix-
> non-documentation-comment-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0680-staging-
> bcm2835-codec-Fix-non-documentation-comment-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0680-staging-bcm2835-
> codec-Fix-non-documentation-comment-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0681-staging-bcm2835-
> codec-Fix-declaration-of-roles.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0681-staging-bcm2835-codec-Fix-declaration-of-roles.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0681-staging-
> bcm2835-codec-Fix-declaration-of-roles.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0681-staging-bcm2835-
> codec-Fix-declaration-of-roles.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0682-staging-bcm2835-
> codec-Add-role-to-device-name.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0682-staging-bcm2835-codec-Add-role-to-device-name.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0682-staging-
> bcm2835-codec-Add-role-to-device-name.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0682-staging-bcm2835-
> codec-Add-role-to-device-name.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0683-staging-bcm2835-
> codec-Pass-driver-context-to-create-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0683-staging-bcm2835-codec-
> Pass-driver-context-to-create-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0683-staging-
> bcm2835-codec-Pass-driver-context-to-create-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0683-staging-bcm2835-
> codec-Pass-driver-context-to-create-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0684-staging-bcm2835-
> codec-add-media-controller-support.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0684-staging-bcm2835-codec-add-media-controller-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0684-staging-
> bcm2835-codec-add-media-controller-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0684-staging-bcm2835-
> codec-add-media-controller-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0685-media-bcm2835-
> unicam-Reduce-scope-of-local-function.patch
> b/target/linux/bcm27xx/patches-4.19/950-0685-media-bcm2835-unicam-
> Reduce-scope-of-local-function.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0685-media-
> bcm2835-unicam-Reduce-scope-of-local-function.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0685-media-bcm2835-
> unicam-Reduce-scope-of-local-function.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0686-media-bcm2835-
> unicam-add-media-controller-support.patch
> b/target/linux/bcm27xx/patches-4.19/950-0686-media-bcm2835-unicam-
> add-media-controller-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0686-media-
> bcm2835-unicam-add-media-controller-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0686-media-bcm2835-
> unicam-add-media-controller-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0687-Limit-
> max_req_size-under-arm64-or-any-other-platform.patch
> b/target/linux/bcm27xx/patches-4.19/950-0687-Limit-max_req_size-under-
> arm64-or-any-other-platform.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0687-Limit-
> max_req_size-under-arm64-or-any-other-platform.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0687-Limit-
> max_req_size-under-arm64-or-any-other-platform.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0688-Add-missing-
> dma_unmap_sg-calls-to-free-relevant-swio.patch
> b/target/linux/bcm27xx/patches-4.19/950-0688-Add-missing-
> dma_unmap_sg-calls-to-free-relevant-swio.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0688-Add-missing-
> dma_unmap_sg-calls-to-free-relevant-swio.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0688-Add-missing-
> dma_unmap_sg-calls-to-free-relevant-swio.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0689-overlays-
> mcp23017-rename-the-GPIO-pins-node-with-the.patch
> b/target/linux/bcm27xx/patches-4.19/950-0689-overlays-mcp23017-rename-
> the-GPIO-pins-node-with-the.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0689-overlays-
> mcp23017-rename-the-GPIO-pins-node-with-the.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0689-overlays-mcp23017-
> rename-the-GPIO-pins-node-with-the.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0690-overlays-
> mcp23017-Add-option-for-not-connecting-the-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0690-overlays-mcp23017-Add-
> option-for-not-connecting-the-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0690-overlays-
> mcp23017-Add-option-for-not-connecting-the-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0690-overlays-mcp23017-
> Add-option-for-not-connecting-the-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0691-v4l2-Add-a-
> Greyworld-AWB-mode.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0691-v4l2-Add-a-Greyworld-AWB-mode.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0691-v4l2-Add-a-
> Greyworld-AWB-mode.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0691-v4l2-Add-a-
> Greyworld-AWB-mode.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0692-staging-bcm2835-
> camera-Add-greyworld-AWB-mode.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0692-staging-bcm2835-camera-Add-greyworld-AWB-mode.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0692-staging-
> bcm2835-camera-Add-greyworld-AWB-mode.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0692-staging-bcm2835-
> camera-Add-greyworld-AWB-mode.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0693-PCI-brcmstb-Fix-
> compilation-warning.patch b/target/linux/bcm27xx/patches-4.19/950-0693-
> PCI-brcmstb-Fix-compilation-warning.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0693-PCI-brcmstb-
> Fix-compilation-warning.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0693-PCI-brcmstb-Fix-
> compilation-warning.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0694-drm-vc4-Fix-for-
> margins-in-composite-SDTV-mode-3223.patch
> b/target/linux/bcm27xx/patches-4.19/950-0694-drm-vc4-Fix-for-margins-in-
> composite-SDTV-mode-3223.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0694-drm-vc4-Fix-for-
> margins-in-composite-SDTV-mode-3223.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0694-drm-vc4-Fix-for-
> margins-in-composite-SDTV-mode-3223.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0695-Add-Hifiberry-DA=
C-
> DSP-soundcard-driver-3224.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0695-Add-Hifiberry-DAC-DSP-soundcard-driver-3224.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0695-Add-Hifiberry-
> DAC-DSP-soundcard-driver-3224.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0695-Add-Hifiberry-DAC-
> DSP-soundcard-driver-3224.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0696-staging-bcm2835-
> codec-Allow-height-of-1920.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0696-staging-bcm2835-codec-Allow-height-of-1920.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0696-staging-
> bcm2835-codec-Allow-height-of-1920.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0696-staging-bcm2835-
> codec-Allow-height-of-1920.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0697-staging-bcm2835-
> codec-Correct-g-s_selection-API-MPLA.patch
> b/target/linux/bcm27xx/patches-4.19/950-0697-staging-bcm2835-codec-
> Correct-g-s_selection-API-MPLA.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0697-staging-
> bcm2835-codec-Correct-g-s_selection-API-MPLA.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0697-staging-bcm2835-
> codec-Correct-g-s_selection-API-MPLA.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0698-regulator-gpio-
> Allow-nonexclusive-GPIO-access.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0698-regulator-gpio-Allow-nonexclusive-GPIO-access.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0698-regulator-gpio-
> Allow-nonexclusive-GPIO-access.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0698-regulator-gpio-
> Allow-nonexclusive-GPIO-access.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0699-gpio-Enable-
> nonexclusive-gpiods-from-DT-nodes.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0699-gpio-Enable-nonexclusive-gpiods-from-DT-nodes.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0699-gpio-Enable-
> nonexclusive-gpiods-from-DT-nodes.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0699-gpio-Enable-
> nonexclusive-gpiods-from-DT-nodes.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0700-Fix-poll-rate-on-
> touchscreen-3238.patch b/target/linux/bcm27xx/patches-4.19/950-0700-Fix-
> poll-rate-on-touchscreen-3238.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0700-Fix-poll-rate-on-
> touchscreen-3238.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0700-Fix-poll-rate-on-
> touchscreen-3238.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0701-dts-Add-DTS-for-
> Pi-2B-rev-1.2-with-BCM2837-3235.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0701-dts-Add-DTS-for-Pi-2B-rev-1.2-with-BCM2837-3235.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0701-dts-Add-DTS-
> for-Pi-2B-rev-1.2-with-BCM2837-3235.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0701-dts-Add-DTS-for-Pi-
> 2B-rev-1.2-with-BCM2837-3235.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0702-drm-v3d-clean-
> caches-at-the-end-of-render-jobs-on-re.patch
> b/target/linux/bcm27xx/patches-4.19/950-0702-drm-v3d-clean-caches-at-
> the-end-of-render-jobs-on-re.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0702-drm-v3d-clean-
> caches-at-the-end-of-render-jobs-on-re.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0702-drm-v3d-clean-
> caches-at-the-end-of-render-jobs-on-re.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0703-staging-bcm2835-
> audio-Fix-draining-behavior-regressi.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0703-staging-bcm2835-audio-Fix-draining-behavior-regressi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0703-staging-
> bcm2835-audio-Fix-draining-behavior-regressi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0703-staging-bcm2835-
> audio-Fix-draining-behavior-regressi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0704-bcm2708_fb-Fix-
> layout-of-struct-vc4_display_settings.patch
> b/target/linux/bcm27xx/patches-4.19/950-0704-bcm2708_fb-Fix-layout-of-
> struct-vc4_display_settings.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0704-bcm2708_fb-
> Fix-layout-of-struct-vc4_display_settings.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0704-bcm2708_fb-Fix-
> layout-of-struct-vc4_display_settings.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0705-ARM-dts-bcm283x-
> Fix-DTC-warning-for-memory-node.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0705-ARM-dts-bcm283x-Fix-DTC-warning-for-memory-node.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0705-ARM-dts-
> bcm283x-Fix-DTC-warning-for-memory-node.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0705-ARM-dts-bcm283x-
> Fix-DTC-warning-for-memory-node.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0706-ARM-dts-bcm27xx-
> Fix-DTC-warning-for-memory-node.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0706-ARM-dts-bcm27xx-Fix-DTC-warning-for-memory-node.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0706-ARM-dts-
> bcm27xx-Fix-DTC-warning-for-memory-node.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0706-ARM-dts-bcm27xx-
> Fix-DTC-warning-for-memory-node.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0707-ARM-bcm283x-
> Enable-DMA-support-for-SPI-controller.patch
> b/target/linux/bcm27xx/patches-4.19/950-0707-ARM-bcm283x-Enable-
> DMA-support-for-SPI-controller.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0707-ARM-bcm283x-
> Enable-DMA-support-for-SPI-controller.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0707-ARM-bcm283x-
> Enable-DMA-support-for-SPI-controller.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0708-ARM-dts-bcm2835-
> rpi-Drop-unnecessary-address-cells-s.patch
> b/target/linux/bcm27xx/patches-4.19/950-0708-ARM-dts-bcm2835-rpi-Drop-
> unnecessary-address-cells-s.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0708-ARM-dts-
> bcm2835-rpi-Drop-unnecessary-address-cells-s.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0708-ARM-dts-bcm2835-
> rpi-Drop-unnecessary-address-cells-s.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0709-ARM-dts-bcm2708-
> rpi-Define-the-downstream-MMC-interf.patch
> b/target/linux/bcm27xx/patches-4.19/950-0709-ARM-dts-bcm2708-rpi-
> Define-the-downstream-MMC-interf.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0709-ARM-dts-
> bcm2708-rpi-Define-the-downstream-MMC-interf.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0709-ARM-dts-bcm2708-
> rpi-Define-the-downstream-MMC-interf.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0710-ARM-dts-bcm283x-
> Define-MMC-interfaces-at-board-level.patch
> b/target/linux/bcm27xx/patches-4.19/950-0710-ARM-dts-bcm283x-Define-
> MMC-interfaces-at-board-level.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0710-ARM-dts-
> bcm283x-Define-MMC-interfaces-at-board-level.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0710-ARM-dts-bcm283x-
> Define-MMC-interfaces-at-board-level.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0711-ARM-dts-bcm2835-
> rpi-zero-w-Fix-bus-width-of-sdhci.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0711-ARM-dts-bcm2835-rpi-zero-w-Fix-bus-width-of-sdhci.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0711-ARM-dts-
> bcm2835-rpi-zero-w-Fix-bus-width-of-sdhci.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0711-ARM-dts-bcm2835-
> rpi-zero-w-Fix-bus-width-of-sdhci.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0712-ARM-dts-bcm2708-
> rpi-Define-the-downstream-HDMI-power.patch
> b/target/linux/bcm27xx/patches-4.19/950-0712-ARM-dts-bcm2708-rpi-
> Define-the-downstream-HDMI-power.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0712-ARM-dts-
> bcm2708-rpi-Define-the-downstream-HDMI-power.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0712-ARM-dts-bcm2708-
> rpi-Define-the-downstream-HDMI-power.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0713-ARM-dts-bcm283x-
> Enable-HDMI-at-board-level.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0713-ARM-dts-bcm283x-Enable-HDMI-at-board-level.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0713-ARM-dts-
> bcm283x-Enable-HDMI-at-board-level.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0713-ARM-dts-bcm283x-
> Enable-HDMI-at-board-level.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0714-clk-bcm2835-
> Introduce-SoC-specific-clock-registratio.patch
> b/target/linux/bcm27xx/patches-4.19/950-0714-clk-bcm2835-Introduce-SoC-
> specific-clock-registratio.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0714-clk-bcm2835-
> Introduce-SoC-specific-clock-registratio.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0714-clk-bcm2835-
> Introduce-SoC-specific-clock-registratio.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0715-clk-bcm2835-Add-
> BCM2711_CLOCK_EMMC2-support.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0715-clk-bcm2835-Add-BCM2711_CLOCK_EMMC2-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0715-clk-bcm2835-
> Add-BCM2711_CLOCK_EMMC2-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0715-clk-bcm2835-Add-
> BCM2711_CLOCK_EMMC2-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0716-ARM-bcm-Switch-
> board-clk-and-pinctrl-to-bcm2711-comp.patch
> b/target/linux/bcm27xx/patches-4.19/950-0716-ARM-bcm-Switch-board-clk-
> and-pinctrl-to-bcm2711-comp.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0716-ARM-bcm-
> Switch-board-clk-and-pinctrl-to-bcm2711-comp.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0716-ARM-bcm-Switch-
> board-clk-and-pinctrl-to-bcm2711-comp.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0717-pinctrl-bcm2835-
> Switch-to-SPDX-identifier.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0717-pinctrl-bcm2835-Switch-to-SPDX-identifier.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0717-pinctrl-
> bcm2835-Switch-to-SPDX-identifier.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0717-pinctrl-bcm2835-
> Switch-to-SPDX-identifier.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0718-pinctrl-bcm2835-
> declare-pin-config-as-generic.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0718-pinctrl-bcm2835-declare-pin-config-as-generic.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0718-pinctrl-
> bcm2835-declare-pin-config-as-generic.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0718-pinctrl-bcm2835-
> declare-pin-config-as-generic.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0719-pinctrl-bcm2835-
> Direct-GPIO-config-changes-to-generi.patch
> b/target/linux/bcm27xx/patches-4.19/950-0719-pinctrl-bcm2835-Direct-
> GPIO-config-changes-to-generi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0719-pinctrl-
> bcm2835-Direct-GPIO-config-changes-to-generi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0719-pinctrl-bcm2835-
> Direct-GPIO-config-changes-to-generi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0720-pinctrl-bcm2835-
> Add-support-for-BCM2711-pull-up-func.patch
> b/target/linux/bcm27xx/patches-4.19/950-0720-pinctrl-bcm2835-Add-
> support-for-BCM2711-pull-up-func.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0720-pinctrl-
> bcm2835-Add-support-for-BCM2711-pull-up-func.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0720-pinctrl-bcm2835-
> Add-support-for-BCM2711-pull-up-func.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0721-Rename-HDMI-
> ALSA-device-names-check-for-enable-state.patch
> b/target/linux/bcm27xx/patches-4.19/950-0721-Rename-HDMI-ALSA-
> device-names-check-for-enable-state.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0721-Rename-HDMI-
> ALSA-device-names-check-for-enable-state.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0721-Rename-HDMI-
> ALSA-device-names-check-for-enable-state.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0722-pcie-brcmstb-
> bounce64.c-dev_err-dev_info-for-info-me.patch
> b/target/linux/bcm27xx/patches-4.19/950-0722-pcie-brcmstb-bounce64.c-
> dev_err-dev_info-for-info-me.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0722-pcie-brcmstb-
> bounce64.c-dev_err-dev_info-for-info-me.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0722-pcie-brcmstb-
> bounce64.c-dev_err-dev_info-for-info-me.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0723-overlays-gpio-
> shutdown-Add-debounce-parameter.patch
> b/target/linux/bcm27xx/patches-4.19/950-0723-overlays-gpio-shutdown-
> Add-debounce-parameter.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0723-overlays-gpio-
> shutdown-Add-debounce-parameter.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0723-overlays-gpio-
> shutdown-Add-debounce-parameter.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0724-overlays-fix-
> compatible-for-RPi4.patch b/target/linux/bcm27xx/patches-4.19/950-0724-
> overlays-fix-compatible-for-RPi4.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0724-overlays-fix-
> compatible-for-RPi4.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0724-overlays-fix-
> compatible-for-RPi4.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0725-bcm2711-Retain-
> support-for-old-dtbs.patch b/target/linux/bcm27xx/patches-4.19/950-0725-
> bcm2711-Retain-support-for-old-dtbs.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0725-bcm2711-
> Retain-support-for-old-dtbs.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0725-bcm2711-Retain-
> support-for-old-dtbs.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0726-media-bcm2835-
> unicam-Add-support-for-raw14-formats.patch
> b/target/linux/bcm27xx/patches-4.19/950-0726-media-bcm2835-unicam-
> Add-support-for-raw14-formats.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0726-media-
> bcm2835-unicam-Add-support-for-raw14-formats.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0726-media-bcm2835-
> unicam-Add-support-for-raw14-formats.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0727-media-bcm2835-
> unicam-Rework-to-not-cache-the-list-of.patch
> b/target/linux/bcm27xx/patches-4.19/950-0727-media-bcm2835-unicam-
> Rework-to-not-cache-the-list-of.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0727-media-
> bcm2835-unicam-Rework-to-not-cache-the-list-of.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0727-media-bcm2835-
> unicam-Rework-to-not-cache-the-list-of.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0728-media-bcm2835-
> unicam-Support-unpacking-CSI-format-to.patch
> b/target/linux/bcm27xx/patches-4.19/950-0728-media-bcm2835-unicam-
> Support-unpacking-CSI-format-to.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0728-media-
> bcm2835-unicam-Support-unpacking-CSI-format-to.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0728-media-bcm2835-
> unicam-Support-unpacking-CSI-format-to.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0729-media-bcm2835-
> unicam-Add-support-for-luma-greyscale-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0729-media-bcm2835-unicam-
> Add-support-for-luma-greyscale-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0729-media-
> bcm2835-unicam-Add-support-for-luma-greyscale-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0729-media-bcm2835-
> unicam-Add-support-for-luma-greyscale-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0730-drm-vc4-Add-
> support-for-YUV-color-encodings-and-rang.patch
> b/target/linux/bcm27xx/patches-4.19/950-0730-drm-vc4-Add-support-for-
> YUV-color-encodings-and-rang.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0730-drm-vc4-Add-
> support-for-YUV-color-encodings-and-rang.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0730-drm-vc4-Add-
> support-for-YUV-color-encodings-and-rang.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0731-drm-vc4-Fix-
> negative-X-Y-positioning-on-SAND-planes.patch
> b/target/linux/bcm27xx/patches-4.19/950-0731-drm-vc4-Fix-negative-X-Y-
> positioning-on-SAND-planes.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0731-drm-vc4-Fix-
> negative-X-Y-positioning-on-SAND-planes.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0731-drm-vc4-Fix-
> negative-X-Y-positioning-on-SAND-planes.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0732-drm-vc4-Add-
> support-for-H-V-flips.patch b/target/linux/bcm27xx/patches-4.19/950-0732-
> drm-vc4-Add-support-for-H-V-flips.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0732-drm-vc4-Add-
> support-for-H-V-flips.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0732-drm-vc4-Add-
> support-for-H-V-flips.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0733-drm-vc4-Correct-
> handling-of-rotation-parameter-in-fk.patch
> b/target/linux/bcm27xx/patches-4.19/950-0733-drm-vc4-Correct-handling-
> of-rotation-parameter-in-fk.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0733-drm-vc4-
> Correct-handling-of-rotation-parameter-in-fk.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0733-drm-vc4-Correct-
> handling-of-rotation-parameter-in-fk.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0734-overlays-Add-
> w5500-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-0734-
> overlays-Add-w5500-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0734-overlays-Add-
> w5500-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0734-overlays-Add-
> w5500-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0735-media-bcm2835-
> unicam-Replace-hard-coded-loop-limit-w.patch
> b/target/linux/bcm27xx/patches-4.19/950-0735-media-bcm2835-unicam-
> Replace-hard-coded-loop-limit-w.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0735-media-
> bcm2835-unicam-Replace-hard-coded-loop-limit-w.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0735-media-bcm2835-
> unicam-Replace-hard-coded-loop-limit-w.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0736-media-bcm2835-
> unicam-Fix-one-to-many-mapping-for-YUY.patch
> b/target/linux/bcm27xx/patches-4.19/950-0736-media-bcm2835-unicam-Fix-
> one-to-many-mapping-for-YUY.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0736-media-
> bcm2835-unicam-Fix-one-to-many-mapping-for-YUY.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0736-media-bcm2835-
> unicam-Fix-one-to-many-mapping-for-YUY.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0737-dt-bindings-Add-
> binding-for-the-Infineon-IRS1125-sen.patch
> b/target/linux/bcm27xx/patches-4.19/950-0737-dt-bindings-Add-binding-
> for-the-Infineon-IRS1125-sen.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0737-dt-bindings-
> Add-binding-for-the-Infineon-IRS1125-sen.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0737-dt-bindings-Add-
> binding-for-the-Infineon-IRS1125-sen.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0738-media-i2c-Add-a-
> driver-for-the-Infineon-IRS1125-dept.patch
> b/target/linux/bcm27xx/patches-4.19/950-0738-media-i2c-Add-a-driver-for-
> the-Infineon-IRS1125-dept.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0738-media-i2c-Add-
> a-driver-for-the-Infineon-IRS1125-dept.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0738-media-i2c-Add-a-
> driver-for-the-Infineon-IRS1125-dept.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0739-dtoverlays-Add-a=
n-
> overlay-for-the-Infineon-IRS1125.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0739-dtoverlays-Add-an-overlay-for-the-Infineon-IRS1125.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0739-dtoverlays-Add-
> an-overlay-for-the-Infineon-IRS1125.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0739-dtoverlays-Add-an-
> overlay-for-the-Infineon-IRS1125.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0740-rpi-wm8804-
> soundcard-Fixed-MCLKDIV-for-Allo-Digione.patch
> b/target/linux/bcm27xx/patches-4.19/950-0740-rpi-wm8804-soundcard-
> Fixed-MCLKDIV-for-Allo-Digione.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0740-rpi-wm8804-
> soundcard-Fixed-MCLKDIV-for-Allo-Digione.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0740-rpi-wm8804-
> soundcard-Fixed-MCLKDIV-for-Allo-Digione.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0741-dts-bcm2838-
> Disable-DWC-OTG-block-by-default.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0741-dts-bcm2838-Disable-DWC-OTG-block-by-default.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0741-dts-bcm2838-
> Disable-DWC-OTG-block-by-default.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0741-dts-bcm2838-
> Disable-DWC-OTG-block-by-default.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0742-staging-bcm2835-
> codec-Add-support-for-ENUM_FRAMESIZE.patch
> b/target/linux/bcm27xx/patches-4.19/950-0742-staging-bcm2835-codec-
> Add-support-for-ENUM_FRAMESIZE.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0742-staging-
> bcm2835-codec-Add-support-for-ENUM_FRAMESIZE.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0742-staging-bcm2835-
> codec-Add-support-for-ENUM_FRAMESIZE.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0743-staging-bcm2835-
> codec-Correct-buffer-type-check-on-G.patch
> b/target/linux/bcm27xx/patches-4.19/950-0743-staging-bcm2835-codec-
> Correct-buffer-type-check-on-G.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0743-staging-
> bcm2835-codec-Correct-buffer-type-check-on-G.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0743-staging-bcm2835-
> codec-Correct-buffer-type-check-on-G.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0744-staging-bcm2835-
> codec-Set-default-and-error-check-ti.patch
> b/target/linux/bcm27xx/patches-4.19/950-0744-staging-bcm2835-codec-Set-
> default-and-error-check-ti.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0744-staging-
> bcm2835-codec-Set-default-and-error-check-ti.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0744-staging-bcm2835-
> codec-Set-default-and-error-check-ti.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0745-staging-bcm2835-
> codec-Fix-imbalance-in-dma_buf_get-d.patch
> b/target/linux/bcm27xx/patches-4.19/950-0745-staging-bcm2835-codec-Fix-
> imbalance-in-dma_buf_get-d.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0745-staging-
> bcm2835-codec-Fix-imbalance-in-dma_buf_get-d.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0745-staging-bcm2835-
> codec-Fix-imbalance-in-dma_buf_get-d.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0746-drm-vc4-Added-
> calls-for-firmware-display-blank-unbla.patch
> b/target/linux/bcm27xx/patches-4.19/950-0746-drm-vc4-Added-calls-for-
> firmware-display-blank-unbla.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0746-drm-vc4-
> Added-calls-for-firmware-display-blank-unbla.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0746-drm-vc4-Added-
> calls-for-firmware-display-blank-unbla.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0747-rpi-poe-fan-fix-
> def_pwm1-writes.patch b/target/linux/bcm27xx/patches-4.19/950-0747-rpi-
> poe-fan-fix-def_pwm1-writes.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0747-rpi-poe-fan-fix-
> def_pwm1-writes.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0747-rpi-poe-fan-fix-
> def_pwm1-writes.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0748-net-phy-bcm54xx-
> Encode-link-speed-and-activity-into-.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0748-net-phy-bcm54xx-Encode-link-speed-and-activity-into-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0748-net-phy-
> bcm54xx-Encode-link-speed-and-activity-into-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0748-net-phy-bcm54xx-
> Encode-link-speed-and-activity-into-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0749-net-phy-2711-
> Allow-ethernet-LED-mode-to-be-set-via-d.patch
> b/target/linux/bcm27xx/patches-4.19/950-0749-net-phy-2711-Allow-
> ethernet-LED-mode-to-be-set-via-d.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0749-net-phy-2711-
> Allow-ethernet-LED-mode-to-be-set-via-d.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0749-net-phy-2711-
> Allow-ethernet-LED-mode-to-be-set-via-d.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0750-overlays-smi-fix-
> typo-in-comment-3320.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0750-overlays-smi-fix-typo-in-comment-3320.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0750-overlays-smi-
> fix-typo-in-comment-3320.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0750-overlays-smi-fix-
> typo-in-comment-3320.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0751-net-phy-2711-
> Change-the-default-ethernet-LED-actions.patch
> b/target/linux/bcm27xx/patches-4.19/950-0751-net-phy-2711-Change-the-
> default-ethernet-LED-actions.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0751-net-phy-2711-
> Change-the-default-ethernet-LED-actions.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0751-net-phy-2711-
> Change-the-default-ethernet-LED-actions.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0752-overlays-README-
> Remove-trailing-whitespace.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0752-overlays-README-Remove-trailing-whitespace.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0752-overlays-
> README-Remove-trailing-whitespace.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0752-overlays-README-
> Remove-trailing-whitespace.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0753-overlays-Add-
> apds9960-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-0753-
> overlays-Add-apds9960-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0753-overlays-Add-
> apds9960-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0753-overlays-Add-
> apds9960-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0754-arm-dts-overlays-
> pitft35-resistive-add-upstream-comp.patch
> b/target/linux/bcm27xx/patches-4.19/950-0754-arm-dts-overlays-pitft35-
> resistive-add-upstream-comp.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0754-arm-dts-
> overlays-pitft35-resistive-add-upstream-comp.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0754-arm-dts-overlays-
> pitft35-resistive-add-upstream-comp.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0755-clk-bcm2835-
> Avoid-null-pointer-exception.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0755-clk-bcm2835-Avoid-null-pointer-exception.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0755-clk-bcm2835-
> Avoid-null-pointer-exception.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0755-clk-bcm2835-Avoid-
> null-pointer-exception.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0756-v3d_drv-Handle-
> missing-clock-more-gracefully.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0756-v3d_drv-Handle-missing-clock-more-gracefully.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0756-v3d_drv-
> Handle-missing-clock-more-gracefully.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0756-v3d_drv-Handle-
> missing-clock-more-gracefully.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0757-cpufreq-scpi-scm=
i-
> Fix-freeing-of-dynamic-OPPs.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0757-cpufreq-scpi-scmi-Fix-freeing-of-dynamic-OPPs.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0757-cpufreq-scpi-
> scmi-Fix-freeing-of-dynamic-OPPs.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0757-cpufreq-scpi-scmi-
> Fix-freeing-of-dynamic-OPPs.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0758-clk-bcm283x-add-
> driver-interfacing-with-Raspberry-Pi.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0758-clk-bcm283x-add-driver-interfacing-with-Raspberry-Pi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0758-clk-bcm283x-
> add-driver-interfacing-with-Raspberry-Pi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0758-clk-bcm283x-add-
> driver-interfacing-with-Raspberry-Pi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0759-cpufreq-add-
> driver-for-Raspberry-Pi.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0759-cpufreq-add-driver-for-Raspberry-Pi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0759-cpufreq-add-
> driver-for-Raspberry-Pi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0759-cpufreq-add-driver-
> for-Raspberry-Pi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0760-firmware-
> raspberrypi-register-clk-device.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0760-firmware-raspberrypi-register-clk-device.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0760-firmware-
> raspberrypi-register-clk-device.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0760-firmware-
> raspberrypi-register-clk-device.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0761-clk-raspberrypi-
> register-platform-device-for-raspber.patch
> b/target/linux/bcm27xx/patches-4.19/950-0761-clk-raspberrypi-register-
> platform-device-for-raspber.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0761-clk-raspberrypi-
> register-platform-device-for-raspber.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0761-clk-raspberrypi-
> register-platform-device-for-raspber.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0762-clk-bcm2835-
> remove-pllb.patch b/target/linux/bcm27xx/patches-4.19/950-0762-clk-
> bcm2835-remove-pllb.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0762-clk-bcm2835-
> remove-pllb.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0762-clk-bcm2835-
> remove-pllb.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0763-v3d_drv-Allow-
> clock-retrieval-by-name.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0763-v3d_drv-Allow-clock-retrieval-by-name.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0763-v3d_drv-Allow-
> clock-retrieval-by-name.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0763-v3d_drv-Allow-
> clock-retrieval-by-name.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0764-v3d_gem-Kick-the-
> clock-so-firmware-knows-we-are-usin.patch
> b/target/linux/bcm27xx/patches-4.19/950-0764-v3d_gem-Kick-the-clock-so-
> firmware-knows-we-are-usin.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0764-v3d_gem-Kick-
> the-clock-so-firmware-knows-we-are-usin.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0764-v3d_gem-Kick-the-
> clock-so-firmware-knows-we-are-usin.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0765-clk-raspberrypi-
> Allow-cpufreq-driver-to-also-adjust-.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0765-clk-raspberrypi-Allow-cpufreq-driver-to-also-adjust-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0765-clk-raspberrypi-
> Allow-cpufreq-driver-to-also-adjust-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0765-clk-raspberrypi-
> Allow-cpufreq-driver-to-also-adjust-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0766-clk-raspberrypi-
> Also-support-v3d-clock.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0766-clk-raspberrypi-Also-support-v3d-clock.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0766-clk-raspberrypi-
> Also-support-v3d-clock.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0766-clk-raspberrypi-
> Also-support-v3d-clock.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0767-clk-bcm2835-
> Disable-v3d-clock.patch b/target/linux/bcm27xx/patches-4.19/950-0767-clk-
> bcm2835-Disable-v3d-clock.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0767-clk-bcm2835-
> Disable-v3d-clock.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0767-clk-bcm2835-
> Disable-v3d-clock.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0768-fixup-clk-
> raspberrypi-Also-support-v3d-clock.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0768-fixup-clk-raspberrypi-Also-support-v3d-clock.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0768-fixup-clk-
> raspberrypi-Also-support-v3d-clock.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0768-fixup-clk-
> raspberrypi-Also-support-v3d-clock.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0769-fixup-clk-
> raspberrypi-Also-support-v3d-clock.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0769-fixup-clk-raspberrypi-Also-support-v3d-clock.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0769-fixup-clk-
> raspberrypi-Also-support-v3d-clock.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0769-fixup-clk-
> raspberrypi-Also-support-v3d-clock.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0770-raspberrypi-
> cpufreq-Only-report-integer-pll-divisor-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0770-raspberrypi-cpufreq-Only-
> report-integer-pll-divisor-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0770-raspberrypi-
> cpufreq-Only-report-integer-pll-divisor-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0770-raspberrypi-
> cpufreq-Only-report-integer-pll-divisor-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0771-fixup-clk-
> raspberrypi-Also-support-v3d-clock.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0771-fixup-clk-raspberrypi-Also-support-v3d-clock.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0771-fixup-clk-
> raspberrypi-Also-support-v3d-clock.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0771-fixup-clk-
> raspberrypi-Also-support-v3d-clock.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0772-arm-dts-Correct-=
Pi-
> 4B-LED-values.patch b/target/linux/bcm27xx/patches-4.19/950-0772-arm-
> dts-Correct-Pi-4B-LED-values.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0772-arm-dts-
> Correct-Pi-4B-LED-values.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0772-arm-dts-Correct-Pi-
> 4B-LED-values.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0773-drm-v3d-Set-
> dma_mask-as-well-as-coherent_dma_mask.patch
> b/target/linux/bcm27xx/patches-4.19/950-0773-drm-v3d-Set-dma_mask-as-
> well-as-coherent_dma_mask.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0773-drm-v3d-Set-
> dma_mask-as-well-as-coherent_dma_mask.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0773-drm-v3d-Set-
> dma_mask-as-well-as-coherent_dma_mask.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0774-arm-dts-2711-Add-
> pcie0-alias.patch b/target/linux/bcm27xx/patches-4.19/950-0774-arm-dts-
> 2711-Add-pcie0-alias.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0774-arm-dts-2711-
> Add-pcie0-alias.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0774-arm-dts-2711-Add-
> pcie0-alias.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0775-spidev-
> Completely-disable-the-DT-warning.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0775-spidev-Completely-disable-the-DT-warning.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0775-spidev-
> Completely-disable-the-DT-warning.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0775-spidev-Completely-
> disable-the-DT-warning.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0776-drm-vc4-Disable-
> V3D-interactions-if-the-v3d-componen.patch
> b/target/linux/bcm27xx/patches-4.19/950-0776-drm-vc4-Disable-V3D-
> interactions-if-the-v3d-componen.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0776-drm-vc4-
> Disable-V3D-interactions-if-the-v3d-componen.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0776-drm-vc4-Disable-
> V3D-interactions-if-the-v3d-componen.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0777-sound-soc-only-
> first-codec-is-master-in-multicodec-s.patch
> b/target/linux/bcm27xx/patches-4.19/950-0777-sound-soc-only-first-codec-
> is-master-in-multicodec-s.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0777-sound-soc-only-
> first-codec-is-master-in-multicodec-s.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0777-sound-soc-only-
> first-codec-is-master-in-multicodec-s.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0778-Allow-
> simultaneous-use-of-JustBoom-DAC-and-Digi.patch
> b/target/linux/bcm27xx/patches-4.19/950-0778-Allow-simultaneous-use-of-
> JustBoom-DAC-and-Digi.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0778-Allow-
> simultaneous-use-of-JustBoom-DAC-and-Digi.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0778-Allow-
> simultaneous-use-of-JustBoom-DAC-and-Digi.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0779-dwc_otg-checking-
> the-urb-transfer_buffer-too-early-3.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0779-dwc_otg-checking-the-urb-transfer_buffer-too-early-3.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0779-dwc_otg-
> checking-the-urb-transfer_buffer-too-early-3.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0779-dwc_otg-checking-
> the-urb-transfer_buffer-too-early-3.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0780-overlays-Make-
> mcp342x-run-time-compatible.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0780-overlays-Make-mcp342x-run-time-compatible.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0780-overlays-Make-
> mcp342x-run-time-compatible.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0780-overlays-Make-
> mcp342x-run-time-compatible.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0781-overlays-dht11-
> Allow-multiple-instantiation.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0781-overlays-dht11-Allow-multiple-instantiation.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0781-overlays-dht11-
> Allow-multiple-instantiation.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0781-overlays-dht11-
> Allow-multiple-instantiation.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0782-overlays-i2c-rtc-
> Add-pcf85363-support.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0782-overlays-i2c-rtc-Add-pcf85363-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0782-overlays-i2c-rtc-
> Add-pcf85363-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0782-overlays-i2c-rtc-
> Add-pcf85363-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0783-pinctrl-bcm2835-
> Remove-gpiochip-on-error.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0783-pinctrl-bcm2835-Remove-gpiochip-on-error.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0783-pinctrl-
> bcm2835-Remove-gpiochip-on-error.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0783-pinctrl-bcm2835-
> Remove-gpiochip-on-error.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0784-pinctrl-bcm2835-
> Change-init-order-for-gpio-hogs.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0784-pinctrl-bcm2835-Change-init-order-for-gpio-hogs.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0784-pinctrl-
> bcm2835-Change-init-order-for-gpio-hogs.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0784-pinctrl-bcm2835-
> Change-init-order-for-gpio-hogs.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0785-Pisound-MIDI-
> communication-fixes-for-scaled-down-CPU.patch
> b/target/linux/bcm27xx/patches-4.19/950-0785-Pisound-MIDI-
> communication-fixes-for-scaled-down-CPU.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0785-Pisound-MIDI-
> communication-fixes-for-scaled-down-CPU.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0785-Pisound-MIDI-
> communication-fixes-for-scaled-down-CPU.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0786-leds-pca963x-Fix-
> open-drain-initialization.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0786-leds-pca963x-Fix-open-drain-initialization.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0786-leds-pca963x-
> Fix-open-drain-initialization.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0786-leds-pca963x-Fix-
> open-drain-initialization.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0787-add-BME680-to-
> i2c-sensor-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-0787-
> add-BME680-to-i2c-sensor-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0787-add-BME680-to-
> i2c-sensor-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0787-add-BME680-to-i2c-
> sensor-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0788-dwc_otg-constrai=
n-
> endpoint-max-packet-and-transfer-s.patch
> b/target/linux/bcm27xx/patches-4.19/950-0788-dwc_otg-constrain-
> endpoint-max-packet-and-transfer-s.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0788-dwc_otg-
> constrain-endpoint-max-packet-and-transfer-s.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0788-dwc_otg-constrain-
> endpoint-max-packet-and-transfer-s.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0789-dwc_otg-fiq_fsm-
> pause-when-cancelling-split-transact.patch
> b/target/linux/bcm27xx/patches-4.19/950-0789-dwc_otg-fiq_fsm-pause-
> when-cancelling-split-transact.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0789-dwc_otg-
> fiq_fsm-pause-when-cancelling-split-transact.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0789-dwc_otg-fiq_fsm-
> pause-when-cancelling-split-transact.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0790-dwc_otg-fiq_fsm-
> add-a-barrier-on-entry-into-FIQ-hand.patch
> b/target/linux/bcm27xx/patches-4.19/950-0790-dwc_otg-fiq_fsm-add-a-
> barrier-on-entry-into-FIQ-hand.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0790-dwc_otg-
> fiq_fsm-add-a-barrier-on-entry-into-FIQ-hand.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0790-dwc_otg-fiq_fsm-
> add-a-barrier-on-entry-into-FIQ-hand.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0791-Add-universal-
> device-tree-overlay-for-SPI-devices.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0791-Add-universal-device-tree-overlay-for-SPI-devices.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0791-Add-universal-
> device-tree-overlay-for-SPI-devices.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0791-Add-universal-
> device-tree-overlay-for-SPI-devices.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0792-sound-Add-the-
> HiFiBerry-DAC-HD-version.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0792-sound-Add-the-HiFiBerry-DAC-HD-version.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0792-sound-Add-the-
> HiFiBerry-DAC-HD-version.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0792-sound-Add-the-
> HiFiBerry-DAC-HD-version.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0793-Initialise-rpi-
> firmware-before-clk-bcm2835.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0793-Initialise-rpi-firmware-before-clk-bcm2835.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0793-Initialise-rpi-
> firmware-before-clk-bcm2835.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0793-Initialise-rpi-
> firmware-before-clk-bcm2835.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0794-Fix-master-mode-
> settings-of-HiFiBerry-DAC-ADC-PRO-ca.patch
> b/target/linux/bcm27xx/patches-4.19/950-0794-Fix-master-mode-settings-
> of-HiFiBerry-DAC-ADC-PRO-ca.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0794-Fix-master-
> mode-settings-of-HiFiBerry-DAC-ADC-PRO-ca.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0794-Fix-master-mode-
> settings-of-HiFiBerry-DAC-ADC-PRO-ca.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0795-overlays-Use-
> preferred-compatible-strings.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0795-overlays-Use-preferred-compatible-strings.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0795-overlays-Use-
> preferred-compatible-strings.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0795-overlays-Use-
> preferred-compatible-strings.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0796-tty-amba-pl011-
> Add-un-throttle-support.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0796-tty-amba-pl011-Add-un-throttle-support.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0796-tty-amba-pl011-
> Add-un-throttle-support.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0796-tty-amba-pl011-
> Add-un-throttle-support.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0797-Fix-i2c-pwm-
> pca9685a-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-0797-Fix-
> i2c-pwm-pca9685a-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0797-Fix-i2c-pwm-
> pca9685a-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0797-Fix-i2c-pwm-
> pca9685a-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0798-adds-LED-OFF-
> feature-to-HiFiBerry-DAC-ADC-PRO-sound-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0798-adds-LED-OFF-feature-to-
> HiFiBerry-DAC-ADC-PRO-sound-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0798-adds-LED-OFF-
> feature-to-HiFiBerry-DAC-ADC-PRO-sound-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0798-adds-LED-OFF-
> feature-to-HiFiBerry-DAC-ADC-PRO-sound-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0799-adds-LED-OFF-
> feature-to-HiFiBerry-DAC-ADC-sound-card.patch
> b/target/linux/bcm27xx/patches-4.19/950-0799-adds-LED-OFF-feature-to-
> HiFiBerry-DAC-ADC-sound-card.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0799-adds-LED-OFF-
> feature-to-HiFiBerry-DAC-ADC-sound-card.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0799-adds-LED-OFF-
> feature-to-HiFiBerry-DAC-ADC-sound-card.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0800-adds-LED-OFF-
> feature-to-HiFiBerry-DAC-DAC-PRO-sound-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0800-adds-LED-OFF-feature-to-
> HiFiBerry-DAC-DAC-PRO-sound-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0800-adds-LED-OFF-
> feature-to-HiFiBerry-DAC-DAC-PRO-sound-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0800-adds-LED-OFF-
> feature-to-HiFiBerry-DAC-DAC-PRO-sound-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0801-pisound-Added-
> reading-Pisound-board-hardware-revisio.patch
> b/target/linux/bcm27xx/patches-4.19/950-0801-pisound-Added-reading-
> Pisound-board-hardware-revisio.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0801-pisound-Added-
> reading-Pisound-board-hardware-revisio.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0801-pisound-Added-
> reading-Pisound-board-hardware-revisio.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0802-mmc-sdhci-iproc-
> Fix-vmmc-regulators-on-iProc.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0802-mmc-sdhci-iproc-Fix-vmmc-regulators-on-iProc.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0802-mmc-sdhci-
> iproc-Fix-vmmc-regulators-on-iProc.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0802-mmc-sdhci-iproc-
> Fix-vmmc-regulators-on-iProc.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0803-ARM-dts-Declare-
> RPi-4B-SD-card-power-regulator.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0803-ARM-dts-Declare-RPi-4B-SD-card-power-regulator.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0803-ARM-dts-
> Declare-RPi-4B-SD-card-power-regulator.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0803-ARM-dts-Declare-
> RPi-4B-SD-card-power-regulator.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0804-pcie-brcmstb-
> Bounce-buffer-support-is-for-BCM2711B0.patch
> b/target/linux/bcm27xx/patches-4.19/950-0804-pcie-brcmstb-Bounce-
> buffer-support-is-for-BCM2711B0.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0804-pcie-brcmstb-
> Bounce-buffer-support-is-for-BCM2711B0.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0804-pcie-brcmstb-
> Bounce-buffer-support-is-for-BCM2711B0.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0805-bcm2838.dtsi-Use-
> BCM2711-PCIe-compatible-string.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0805-bcm2838.dtsi-Use-BCM2711-PCIe-compatible-string.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0805-bcm2838.dtsi-
> Use-BCM2711-PCIe-compatible-string.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0805-bcm2838.dtsi-Use-
> BCM2711-PCIe-compatible-string.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0806-ARM-dts-Remove-
> bcm2838-rpi-4-b.dts.patch b/target/linux/bcm27xx/patches-4.19/950-0806-
> ARM-dts-Remove-bcm2838-rpi-4-b.dts.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0806-ARM-dts-
> Remove-bcm2838-rpi-4-b.dts.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0806-ARM-dts-Remove-
> bcm2838-rpi-4-b.dts.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0807-tty-amba-pl011-
> Avoid-rare-write-when-full-error.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0807-tty-amba-pl011-Avoid-rare-write-when-full-error.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0807-tty-amba-pl011-
> Avoid-rare-write-when-full-error.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0807-tty-amba-pl011-
> Avoid-rare-write-when-full-error.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0808-usb-xhci-
> Raspberry-Pi-FW-loader-for-VIA-VL805.patch
> b/target/linux/bcm27xx/patches-4.19/950-0808-usb-xhci-Raspberry-Pi-FW-
> loader-for-VIA-VL805.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0808-usb-xhci-
> Raspberry-Pi-FW-loader-for-VIA-VL805.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0808-usb-xhci-
> Raspberry-Pi-FW-loader-for-VIA-VL805.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0809-overlays-Correct-
> the-eth_led-colour-assignments.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0809-overlays-Correct-the-eth_led-colour-assignments.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0809-overlays-
> Correct-the-eth_led-colour-assignments.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0809-overlays-Correct-
> the-eth_led-colour-assignments.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0810-overlays-Remove-
> hack-from-uart0-overlay.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0810-overlays-Remove-hack-from-uart0-overlay.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0810-overlays-
> Remove-hack-from-uart0-overlay.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0810-overlays-Remove-
> hack-from-uart0-overlay.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0811-ARM-dts-Add-
> sd_poll_once-dtparam-to-bcm283x-2711.patch
> b/target/linux/bcm27xx/patches-4.19/950-0811-ARM-dts-Add-
> sd_poll_once-dtparam-to-bcm283x-2711.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0811-ARM-dts-Add-
> sd_poll_once-dtparam-to-bcm283x-2711.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0811-ARM-dts-Add-
> sd_poll_once-dtparam-to-bcm283x-2711.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0812-overlays-Add-
> ssd1306-spi-overlay-3440.patch b/target/linux/bcm27xx/patches-4.19/950-
> 0812-overlays-Add-ssd1306-spi-overlay-3440.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0812-overlays-Add-
> ssd1306-spi-overlay-3440.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0812-overlays-Add-
> ssd1306-spi-overlay-3440.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0813-overlays-Add-
> sh1106-spi-and-ssd1351-spi-overlays-344.patch
> b/target/linux/bcm27xx/patches-4.19/950-0813-overlays-Add-sh1106-spi-
> and-ssd1351-spi-overlays-344.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0813-overlays-Add-
> sh1106-spi-and-ssd1351-spi-overlays-344.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0813-overlays-Add-
> sh1106-spi-and-ssd1351-spi-overlays-344.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0814-overlays-dwc2-
> Increase-RX-FIFO-size.patch b/target/linux/bcm27xx/patches-4.19/950-0814-
> overlays-dwc2-Increase-RX-FIFO-size.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0814-overlays-dwc2-
> Increase-RX-FIFO-size.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0814-overlays-dwc2-
> Increase-RX-FIFO-size.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0815-overlays-Fix-
> mcp23017-s-addr-parameter.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0815-overlays-Fix-mcp23017-s-addr-parameter.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0815-overlays-Fix-
> mcp23017-s-addr-parameter.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0815-overlays-Fix-
> mcp23017-s-addr-parameter.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0816-overlays-fix-
> sh1106-spi-ssd1306-spi-and-ssd1351-spi-.patch
> b/target/linux/bcm27xx/patches-4.19/950-0816-overlays-fix-sh1106-spi-
> ssd1306-spi-and-ssd1351-spi-.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0816-overlays-fix-
> sh1106-spi-ssd1306-spi-and-ssd1351-spi-.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0816-overlays-fix-
> sh1106-spi-ssd1306-spi-and-ssd1351-spi-.patch
> diff --git a/target/linux/brcm2708/patches-4.19/950-0817-Fix-a-sh1106-spi-
> ssd1306-spi-ssd1351-spi-overlays.patch b/target/linux/bcm27xx/patches-
> 4.19/950-0817-Fix-a-sh1106-spi-ssd1306-spi-ssd1351-spi-overlays.patch
> similarity index 100%
> rename from target/linux/brcm2708/patches-4.19/950-0817-Fix-a-sh1106-
> spi-ssd1306-spi-ssd1351-spi-overlays.patch
> rename to target/linux/bcm27xx/patches-4.19/950-0817-Fix-a-sh1106-spi-
> ssd1306-spi-ssd1351-spi-overlays.patch
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=SITc13+3Oy7yGM=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5AkfQACgkQoNyKO7qx
AnCfXw/9H3odXwQ9LQEEpjSpf00XZl6xD9Znf4xK0288oTJ0vX0H7Q1QZxQtnMIm
TarCseKrTHnYVkHvu9b3SBlWQ26ivE4g6dzmattTtJnNUuDCkteNLIeXGg7YZAED
fzTBCHFvUf6SQlGjft415ko53E8qr+XfOCfLdEwlZTTq7ltHIXZe3wYOSTI7sZet
2y/XNDzmO6/IRxAw0GRBV081h5x6GBLvfdDEzHMwa0sT+MW4dTDhNngVz2Qv5tnC
mxQ7OKts58ai4cLRV8hc4AMEidyBzM7O99MZ36XUoPEf2KqwIc+76IL7OuMTkjnr
cQP53IX7Kqs/vHtvayZuW5phiOx1G+A0a2yNzN2J2996G6l9FzcjOuY/i8LQ2LK8
37+7HLwzW2JII1Q+lIg6aZyNRi8UtEFsXnzRuIHFSlGdxIP2Ck62r5jDktZWg8TP
wnnrLf6c5jVCUJEkNVYXrZ7CgEnfGM7TQI4J07shlMHzUSwChPIeRoG2T3Az6KWj
pEq4e7uCgICd3iABNSrNvC3/H5C4j27sxLBnh5aNRdrxkp36fnwxIi4siA8gzX+t
/g9kqGLjV6M6fFL2fYcV+D0ZOy7fibjV9GEojOiB74RPnHGSXFhW/P+qXPgtVViy
eFbKn18UQ5CyrJ8VPE5DoI96g0aOra+B/OU4J01FO1qUzOtPwHw=
=69yW
-----END PGP SIGNATURE-----


--=-=SITc13+3Oy7yGM=-=--



--===============6079105793958246610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6079105793958246610==--


