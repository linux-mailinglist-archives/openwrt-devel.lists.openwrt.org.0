Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9985098C
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 13:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwymWcEw6salcSSuWb7rb9dLoB1pzUOlvOOQqRmyC4A=; b=tVxAX9sInkmgOt
	KDykeqJfjXzhzfF775ZEFwEIWk2d2JPNDT9R+r6rO8NgpE/INDbL8NimjIPWEkFvEvjFaRwSLE0tN
	FP0+PW2Z6Mmaoxk9XJtbQFk4oWoYR0NVoaXYK34SjxfEVdd+8HOfdfZ0e7NwNaF4pnFX/Ot8Khmma
	NfsGm04pF29/W5GjsVYwsTQ+xoYp2nFFqCL7igYiiIa1X332oZUx4gubiSg2ylD5HcBBSLWOLlkCu
	U+yWkHpSFtYAe5LAymtsnsTjNQCXMIZNHeRTQuMp/ff83YSAjVhQQa6izmKFogb/K1bDx7yGuJp9J
	cecNunEnEKwOqieokyNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfMvR-0007P7-Uc; Mon, 24 Jun 2019 11:14:18 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMvC-0007Cg-R1
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 11:14:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To;
 bh=YwsbREz7Wluyys13MMkQYlhTNRvltmpKi+P3ilimaCo=; 
 b=JpxRGcx91xVProMu+uL8ITSrR8xP2VDQEKVOy4b2MsWVMZhQ67TSch6U2zPUXI4TS8zSgH/s2z6w4kKgANWah6czEkjSJQoPjzaPMtEkmmdhaq6Pwhx7cDc2tIns2ZBKF3Ig14H3Kv6ZzieRDvZN3IuN2L6RlYunJajzgwSMrjE=;
To: Chuanhong Guo <gch981213@gmail.com>
References: <20190621155023.16220-1-daniel@dd-wrt.com>
 <CAJsYDVLOou-eiz_a9J5VuKcqczaG=88MCENhwg6YE5WqmOp_Jw@mail.gmail.com>
From: Daniel Danzberger <daniel@dd-wrt.com>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel@dd-wrt.com; prefer-encrypt=mutual; keydata=
 mQENBFEb+wQBCAD7DgPNNCJeLdnVdMCcneGypnjJ8mtCmpjo/r7HO2Ig6im559z5IQwnGdmj
 FM+6Xws5oGBdhqh7V+uGJ0/pSVJ432OFd/2JYlEs9p9aLbth/QIaoMO4DfDS8EestMLuGYlj
 ffojt+lCwI/OVNvlsHPZczxUuLENDeCKPQKyVkSo8tf5qgOJxZmJ8ebSY2DiTD8Sr3TC7ge3
 aOMuE1YVMv8RbOEVvRcTBerCXteANRuJYA8H1Nwg1WOJjPl5SoysQqPamCkiyVFbteNtRZaV
 tBqfJNRUi4JXdZxsNoaWygJr5pAMyJ9FPMQ6meo/97Cj1E46fTH7QWDhYkwGS3sFLb1jABEB
 AAG0JURhbmllbCBEYW56YmVyZ2VyIDxkYW5pZWxAZGQtd3J0LmNvbT6JAT4EEwECACgFAlEc
 oikCGwMFCVexLAAGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEF2W1+mV7KsoZYwH/1HG
 YtcQuMVXOD1ClaDDoWumBZ089ABCeExcCjuNAqtySAD0Z1i3Dr153CDL5IF8WsLDL+hkhmRJ
 knQg31kwkFglm62HcYuVZiAEjoTgNZRfBezTQevWV6Dys8YdfJGdLifqtMQM5dBLuWtyRWK/
 gkcv0rf2iI9PLveCqb93K9qDLxzgV96kwTUabc6n4FIF324RUPlzCuGoDEUNkh/sVo8jkXl7
 v8vfxwKb1EEMlWLk7bRGqUg7mdHf9zM4Fnb9oMQLJUrFWtME2FlZLwKvMfW8/bPqHI3thIYV
 qgYvagC/1HKmlvHfo8rraKXsQKzNadlv4Vyh6iZYkdQXUTuQtDO5AQ0EURv7BAEIAL1UNRYJ
 q1hv3ggyZv9PSkaWy0t+xMoSwAd2hWdA3iuILrQXjtzJ3nTtePE9TrmLpjwmN8H/ppcNpf1W
 WZ1Zxer9e4cUmm1LjbbgNIArZqzplVh+7QwDJk0ER282k3p5s7IYLkjymwmgeuiSJgaRAmFm
 AJKjiaNZoGdZvaC8TGpgGCRidwDR/cUR1hjpA2vyidNSP5ynILqohEpIe2lvhClODSvEgcMN
 o4xOtmI+Yq2Qg2e7FUaP8pptEysDdDoUnSPxq9v0aQHe3FS90KzXGAaoCuEnnRaotzZcVI31
 vffWHoZ30yGETeTF+W52hIKe7D+MbFfyiRjNtOw6HKli7TEAEQEAAYkBJQQYAQIADwUCURv7
 BAIbDAUJV7EsAAAKCRBdltfpleyrKDikB/0SWPBPhPBpogDLF4bIwORt6Uu8UQus5jYudtMx
 j67v+R+f42sfBj+iKtz2GHlboul8tJXzcO6zVJf2gqQisCNAoS7wZ/k3axPtbgClQmsLtU7B
 KgVRYaWVlLol0hg/Sn1lju/yHhgmbdttfBmCE63wDWr1ITTFepp9aVwaoIhIRBmCBpf3Vk5I
 e6l+1iqDXNXVQVf5qPdVE0Im7IZb9kA7Wk7N6Fa+zYpK+Qz1wFOXYjmK9SPhjdf/5/V2EQGi
 JgaVyfwaMRPUDRFW2wBlScmP+82LqA6TvKKyi3O3zgnFqTGvY2+bvkr9dTfRBlx1NlX0am9t
 YMmhspz7064avRsg
Message-ID: <c7bdc7cc-7c4a-1565-c31e-4f38ae983023@dd-wrt.com>
Date: Mon, 24 Jun 2019 13:13:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJsYDVLOou-eiz_a9J5VuKcqczaG=88MCENhwg6YE5WqmOp_Jw@mail.gmail.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2a05:a1c7:1:b101:d01a:25a3:67be:70e9
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=4.0 tests=BAYES_00,NO_RELAYS,
 RATWARE_GECKO_BUILD autolearn=no version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1hfMvD-0007bL-M5
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-SpamScore: s
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a05:a1c7:1:b101:d01a:25a3:67be:70e9]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <daniel@dd-wrt.com>)
 id 1hfMvD-0007bL-M5; Mon, 24 Jun 2019 13:14:04 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_041403_378743_3CBDD79A 
X-CRM114-Status: GOOD (  27.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
 AP7621-001
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

hi,

Once I add in  'ralink,group = "uart2", "wdt";', I get the following errors and
the flash isn't going to be initialized.
---
[    2.823681] mt7621-pci 1e140000.pcie: could not find pctldev for node
/pinctrl/pcie, deferring probe
[    2.842075] spi-mt7621 1e000b00.spi: could not find pctldev for node
/pinctrl/spi_pins, deferring probe
---

The flash works fine with 40Mhz.
I also removed the pcie0/1 wlan nodes, hence the board comes with plain PCIE
slots without any wifi attached.


On 6/22/19 4:46 AM, Chuanhong Guo wrote:
> Hi!
> 
> Some comments inline :)
> 
> On Fri, Jun 21, 2019 at 11:50 PM Daniel Danzberger <daniel@dd-wrt.com> wrote:
>>
>> Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
> 
> When adding new device support, commit message should include a brief
> description of the hardware and an installation guide.
> You could check recent commits [1] for some examples.
> 
>> ---
>>  .../ramips/base-files/etc/board.d/02_network  |   5 +
>>  target/linux/ramips/base-files/lib/ramips.sh  |   3 +
>>  target/linux/ramips/dts/AP7621-001.dts        | 157 ++++++++++++++++++
>>  target/linux/ramips/image/mt7621.mk           |  12 ++
>>  target/linux/ramips/mt7621/config-4.14        |   1 +
>>  5 files changed, 178 insertions(+)
>>  create mode 100644 target/linux/ramips/dts/AP7621-001.dts
>>
>> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
>> index 52204eacbf..ee0c23eeb5 100755
>> --- a/target/linux/ramips/base-files/etc/board.d/02_network
>> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
>> @@ -39,6 +39,11 @@ ramips_setup_interfaces()
>>                 ucidef_add_switch "switch0" \
>>                         "0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
>>                 ;;
>> +       ap7621-001)
>> +               ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
> 
> There is no need to explicitly define lan and wan interfaces here.
> This will be handled by ucidef_add_switch.
> 
>> +               ucidef_set_interfaces relay ifname "'wwan' 'lan'" protocol relay
>> +               ucidef_add_switch "switch0" "0:lan" "4:wan" "6@eth0"
>> +               ;;
>>         3g150b|\
>>         3g300m|\
>>         a5-v11|\
>> diff --git a/target/linux/ramips/base-files/lib/ramips.sh b/target/linux/ramips/base-files/lib/ramips.sh
>> index 093303892c..2350e88354 100755
>> --- a/target/linux/ramips/base-files/lib/ramips.sh
>> +++ b/target/linux/ramips/base-files/lib/ramips.sh
>> @@ -46,6 +46,9 @@ ramips_board_detect() {
>>         *"ALL5003")
>>                 name="all5003"
>>                 ;;
>> +       *"AP7621-001")
>> +               name="ap7621-001"
>> +               ;;
> 
> This board detection is deprecated.
> The first compatible string will be used as board name if an entry
> isn't added here.
> 
>>         *"AR670W")
>>                 name="ar670w"
>>                 ;;
>> diff --git a/target/linux/ramips/dts/AP7621-001.dts b/target/linux/ramips/dts/AP7621-001.dts
>> new file mode 100644
>> index 0000000000..587c26457e
>> --- /dev/null
>> +++ b/target/linux/ramips/dts/AP7621-001.dts
>> @@ -0,0 +1,157 @@
>> +/dts-v1/;
>> +#include "mt7621.dtsi"
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +
>> +/ {
>> +       compatible = "asiarf,ap7621-001", "mediatek,mt7621-soc";
>> +       model = "AP7621-001";
>> +
>> +       memory@0 {
>> +               device_type = "memory";
>> +               reg = <0x0 0x1c000000>, <0x20000000 0x4000000>;
>> +       };
>> +
>> +       chosen {
>> +               bootargs = "console=ttyS0,57600";
>> +       };
>> +
>> +       palmbus: palmbus@1E000000 {
>> +               i2c@900 {
>> +                       status = "okay";
>> +               };
>> +       };
> 
> What is i2c used for? If there isn't something already connected on
> board, it should be disabled.
> 
>> +
>> +       gpio-keys-polled {
> 
> Rename this one to "keys" according to Generic Names Recommendation in
> device tree specification. [2]
> 
>> +               compatible = "gpio-keys-polled";
> 
> Interrupt based gpio-keys can be used here instead of gpio-keys-polled.
> 
>> +               #address-cells = <1>;
>> +               #size-cells = <0>;
>> +               poll-interval = <20>;
>> +
>> +               reset {
>> +                       label = "reset";
>> +                       gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
>> +                       linux,code = <KEY_RESTART>;
>> +               };
>> +       };
>> +
>> +       gpio-leds {
> 
> This should be renamed to "leds".
> 
>> +               compatible = "gpio-leds";
>> +
>> +               wlan1 {
>> +                       label = "ap7621-001:orange:wlan1";
>> +                       gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
>> +               };
>> +       };
>> +
>> +       gpio-leds {
>> +               compatible = "gpio-leds";
> 
> gpio-leds supports multiple leds in the same platform device and there
> is no need to create a second "leds" node here.
> Just drop the above 4 lines so that one "leds" node contains both of your leds.
> 
>> +
>> +               wlan0 {
>> +                       label = "ap7621-001:orange:wlan0";
>> +                       gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
>> +               };
>> +       };
>> +};
>> +
>> +&sdhci {
>> +       status = "okay";
>> +};
>> +
>> +&spi0 {
>> +        status = "okay";
>> +
>> +        m25p80@0 {
> 
> This one could be renamed to "flash@0"
> 
>> +                #address-cells = <1>;
>> +                #size-cells = <1>;
>> +                compatible = "jedec,spi-nor";
>> +                reg = <0>;
>> +                spi-max-frequency = <10000000>;
> 
> 10MHz is a pretty low spi frequency. You could try if a higher
> frequency (e.g. 40MHz) works for you.
> 
>> +                m25p,chunked-io = <32>;
> 
> This is for an old m25p80 driver hack that has been replaced. This
> line can be dropped.
> 
>> +
>> +                partition@0 {
>> +                        label = "u-boot";
>> +                        reg = <0x0 0x30000>;
>> +                        read-only;
>> +                };
>> +
>> +//              partition@30000 {
>> +//                      label = "u-boot-env";
>> +//                      reg = <0x30000 0x10000>;
>> +//              };
> 
> These comment lines should be dropped.
> 
>> +
>> +                partition@30000 {
>> +                        label = "u-boot-env";
>> +                        reg = <0x30000 0x2000>;
>> +                };
>> +
>> +                partition@32000 {
>> +                        label = "2860";
>> +                        reg = <0x32000 0x4000>;
>> +                };
>> +
>> +                partition@36000 {
>> +                        label = "rtdev";
>> +                        reg = <0x36000 0x2000>;
>> +                };
>> +
>> +                partition@38000 {
>> +                        label = "Reserve";
>> +                        reg = <0x38000 0x8000>;
>> +                };
>> +
>> +                factory: partition@40000 {
>> +                        label = "factory";
>> +                        reg = <0x40000 0x10000>;
>> +                        read-only;
>> +                };
>> +
>> +                firmware: partition@50000 {
>> +                        label = "firmware";
> 
> Add a compatible string here:
>  compatible = "denx,uimage";
> and then you don't need CONFIG_MTD_SPLIT_FIRMWARE=y which is also deprecated.
> 
>> +                        reg = <0x50000 0xfa0000>;
>> +                };
>> +
>> +                partition@ff0000 {
>> +                        label = "nvram";
>> +                        reg = <0xff0000 0x10000>;
>> +                };
>> +        };
>> +};
>> +
>> +&pcie {
>> +       status = "okay";
>> +
>> +       pcie0 {
>> +               wifi@14c3,7662 {
>> +                       compatible = "pci14c3,7662";
>> +                       reg = <0x0000 0 0 0 0>;
>> +                       mediatek,mtd-eeprom = <&factory 0x0000>;
>> +//                     ieee80211-freq-limit = <2400000 2500000>;
> 
> Just drop this line if it isn't needed.
> 
>> +               };
>> +       };
>> +
>> +       pcie1 {
>> +               wifi@14c3,7662 {
>> +                       compatible = "pci14c3,7662";
>> +                       reg = <0x0000 0 0 0 0>;
>> +                       mediatek,mtd-eeprom = <&factory 0x8000>;
>> +//                     ieee80211-freq-limit = <5000000 6000000>;
> 
> same as above.
> 
>> +               };
>> +       };
>> +};
>> +
>> +&ethernet {
>> +       mtd-mac-address = <&factory 0xe000>;
>> +       mediatek,portmap = "llllw";
>> +};
>> +
>> +&pinctrl {
>> +       state_default: pinctrl0 {
>> +               gpio {
>> +                       ralink,group = "wdt", "jtag" ;
> 
> gpio11 12 and 18 is used, which belongs to uart2 and wdt group.
> So this line should be:
> ralink,group = "uart2", "wdt";
> 
>> +                       ralink,function = "gpio";
>> +               };
>> +       };
>> +};
>> +
>> diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
>> index 2eb7feb5bf..29e4111ce8 100644
>> --- a/target/linux/ramips/image/mt7621.mk
>> +++ b/target/linux/ramips/image/mt7621.mk
>> @@ -640,3 +640,15 @@ define Device/zbt-wg3526-32M
>>         kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
>>  endef
>>  TARGET_DEVICES += zbt-wg3526-32M
>> +
>> +define Device/ap7621-001
> 
> image name should be manufacturer_model. In this case it should be
> asiarf_ap7621-001
> 
>> +  DTS := AP7621-001
>> +  IMAGE_SIZE := $(ralink_default_fw_size_16M)
>> +  SUPPORTED_DEVICES += ap7621-001
> 
> If you use device tree based board detection as said above, this
> SUPPORTED_DEVICES can be dropped.
> sysupgrade checks board name against SUPPORTED_DEVICES and there is
> one generated by replacing "_" with "," in image name.
> 
>> +  DEVICE_TITLE := AsiaRF AP7621-001
>> +  DEVICE_PACKAGES := \
>> +       kmod-ata-core kmod-ata-ahci kmod-sdhci-mt7620 kmod-mt7603 kmod-mt76x2 \
> 
> Is there a SATA controller available?
> And according to your device tree, this router uses mt76x2 for both
> bands. mt7603 isn't needed here.
> 
>> +       kmod-usb3 kmod-usb-ledtrig-usbport
> 
> There isn't a usb led so usbport trigger can be dropped here.
> 
>> +endef
>> +TARGET_DEVICES += ap7621-001
>> +
>> diff --git a/target/linux/ramips/mt7621/config-4.14 b/target/linux/ramips/mt7621/config-4.14
>> index b279c69879..3e18fc162e 100644
>> --- a/target/linux/ramips/mt7621/config-4.14
>> +++ b/target/linux/ramips/mt7621/config-4.14
>> @@ -192,6 +192,7 @@ CONFIG_MTD_SPLIT_SEAMA_FW=y
>>  CONFIG_MTD_SPLIT_TPLINK_FW=y
>>  CONFIG_MTD_SPLIT_TRX_FW=y
>>  CONFIG_MTD_SPLIT_UIMAGE_FW=y
>> +CONFIG_MTD_SPLIT_FIRMWARE=y
> 
> As said above, this is deprecated.
> 
>>  CONFIG_MTD_UBI=y
>>  CONFIG_MTD_UBI_BEB_LIMIT=20
>>  CONFIG_MTD_UBI_BLOCK=y
>> --
>> 2.20.1
>>
> 
> Regards,
> Chuanhong Guo
> 
> [1] https://git.openwrt.org/?p=openwrt/openwrt.git&a=search&h=HEAD&st=commit&s=add+support+for
> [2] https://github.com/devicetree-org/devicetree-specification/blob/master/source/devicetree-basics.rst#generic-names-recommendation
> 

-- 
Regards

Daniel Danzberger
embeDD GmbH, Alter Postplatz 2, CH-6370 Stans

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
