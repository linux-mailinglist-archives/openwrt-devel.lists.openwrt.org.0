Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DD41746AA
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Feb 2020 13:11:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SDJMzTPXouiDlGN1FGdpeHQp3FLjj+GRII8/AaqcmAs=; b=sYG9wtZbWvEuIqzSSqhnyz0kb
	tzQ3DMfDJhEKf5XfHxaUg6FH7sngCB5qZbucjFWzE+z8n8QcdtXoLVNg9SSpITpbNZbCSB4C6dSaS
	0ijNC6BNXdBDX+FNDSlkU9VUddnM9gUdu6TJibXWixBD6KdWJIWAhLwOhIkz5ccVf1MMkyr82+0+Z
	5RjX++RMcbonFcnKCa8y9UCiyg8onJdvKNa9yn/r++k1LPQqSAcBNFLA+5H7yBFhPiOzCsY1A9rop
	TCRC6IWs0U48JqyHetqqviuoXY9/fbOvtY1B7Tsi/8kbNqY/npiMe7i8LNAXIQD9aGSwWg3G4hTN9
	altQNeybg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j80xh-00030i-Ty; Sat, 29 Feb 2020 12:11:18 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j80xW-0002zx-3x
 for openwrt-devel@lists.openwrt.org; Sat, 29 Feb 2020 12:11:09 +0000
Received: by mail-vs1-xe43.google.com with SMTP id c18so3678926vsq.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 29 Feb 2020 04:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9I/YoSBIC5XA4YwgF/kEWMo8KQkpn8edhCV53fxB1OY=;
 b=yzIS8FsaCwkV5uAbyfqbXR63Xw8uu99bzL0Z9qSJQd1BwFgD4ZTVKganHOfRuJ3rVA
 NtZ3y6wgK6uokcHStDxsfkFhAAU6XSaTR4Jw93RLMan4IR86Dn+CvAAY26t8ou0nl4AS
 F5mS2ZcV+uGa1GHW5/xsV57/TkQxHs+86jQUSPTuYCerOe0M9Y65BMDaYBhrPBZLvaXF
 CYlcveD3rV6u0samLF3K9/lFP5eJnHDqNHf9wic2hBFWbQsOZvPRwqMVm/HfB+ah/bkQ
 fCUjCeYISLCU1I+xEBEiyb2CV6poXBVSUO6arlSVKs8uc1P1xS9np3uhzj9MQBDIVrhm
 mV6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9I/YoSBIC5XA4YwgF/kEWMo8KQkpn8edhCV53fxB1OY=;
 b=QzF4xMq3B5MHUyImMjJ0SMavA5LOPav7GJlHchlFMum7FE4+vEuH/Ho0h7CH+jQShS
 efoEYJi/g8RPhMqlxRjUGmBsV9rSGx3lT1WDCBX72rYBrJ0VsUd7EZgUf5TbGCsQYgrV
 zWpAgStRYSCzORcPQza63+6YXZm4gMMnrvGXJmrTUxcrnJV2eir45a5y0qx9O96u8NVg
 FnSXFFG3Vn9mSf9fvuQ5forMeDsszEdybell3AHkYK5Y26uryP+dmvKFPnpzyBwP05io
 DeyK9i0oezWacBbez9aQhlc1gyG4cLszQDOtTWTDUIYhq0fqO5EXebM/Vl56XAqIN4db
 AITQ==
X-Gm-Message-State: ANhLgQ1MKzOIpzEJLlkKs2h/uoW+PjLvp2HxrrRbwkdhKvokfzb+IFhq
 lNWYff6bkIR7aZrVxMAU4hhtnIkTuRbANnRthZnVEljF0oc=
X-Google-Smtp-Source: ADFU+vvBbF2aPlRq8xhSoevEGVQRXcAirlcESNm4DNF0CA0WLWTqsX2Pzni/LpbgkK2LVVf9QRNmbkiAWk+s//NafBg=
X-Received: by 2002:a05:6102:190:: with SMTP id
 r16mr4917008vsq.215.1582978263814; 
 Sat, 29 Feb 2020 04:11:03 -0800 (PST)
MIME-Version: 1.0
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <877e05sk1d.fsf@husum.klickitat.com>
In-Reply-To: <877e05sk1d.fsf@husum.klickitat.com>
From: Russell Senior <russell@personaltelco.net>
Date: Sat, 29 Feb 2020 04:10:52 -0800
Message-ID: <CAHP3WfN=KyBDuJq3KvECDLyDhTcL7mUHnsUu1T1bHJi8J7Vw-w@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_041106_328440_11F33586 
X-CRM114-Status: GOOD (  22.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH RFC v2] ath79: add support for the
 ar7240 version of the ubiquiti bullet
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: multipart/mixed; boundary="===============7028440427382844018=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7028440427382844018==
Content-Type: multipart/alternative; boundary="0000000000001a2b9d059fb5d9bf"

--0000000000001a2b9d059fb5d9bf
Content-Type: text/plain; charset="UTF-8"

This is actually broken in a few minor ways. I'll be following up with a
fixed up v3 shortly.

On Sat, Feb 29, 2020 at 3:36 AM Russell Senior <russell@personaltelco.net>
wrote:

>
> The Ubiquiti Bullet M2HP come in two flavors, based on ar7240 and
> ar7241. Both are supported by ar71xx, despite the different SoCs. The
> ath79 target, however, currently supports only the ar7241. The ar7240
> version apparently has a differently wired ethernet interface and the
> ar7241-based image comes up on the ar7240-based versions without a
> working ethernet interface.
>
> This is an attempt to support both flavors of ubnt-bullet-m,
> separately.
>
> Changes since v1:
>
> * renamed -v0 and -v1 to -ar7240 and -ar7241, respectively, as
>   suggested.
>
> * abstracted ar7241_ubnt_outdoor-xm.dtsi to ar724x_ubnt_outdoor-xm.dtsi,
>   so that it could be shared between ar7240 and ar7241. Included the new
>   ar724x file in the terminal dts files rather than chain them.
>
>
> There is a further opportunity to share a
> target/linux/ath79/dts/ar724x_ubnt_xm.dtsi file, as
> target/linux/ath79/dts/ar7240_ubnt_xm.dtsi and
> target/linux/ath79/dts/ar7241_ubnt_xm.dtsi differ in one line only.
>
> Interested in feedback.
>
> Tested on the AR7240 flavor.
>
> Signed-off-by: Russell Senior <russell@personaltelco.net>
>
>
> ---
>  .../ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts | 21 ++++
>  target/linux/ath79/dts/ar7240_ubnt_xm.dtsi    | 99 +++++++++++++++++++
>  ...-m.dts => ar7241_ubnt_bullet-m-ar7241.dts} |  1 +
>  ...tdoor.dtsi => ar724x_ubnt_xm_outdoor.dtsi} |  2 -
>  .../generic/base-files/etc/board.d/01_leds    |  3 +-
>  .../generic/base-files/etc/board.d/02_network |  3 +-
>  .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  3 +-
>  target/linux/ath79/image/generic-ubnt.mk      | 17 +++-
>  8 files changed, 140 insertions(+), 9 deletions(-)
>  create mode 100644 target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
>  create mode 100644 target/linux/ath79/dts/ar7240_ubnt_xm.dtsi
>  rename target/linux/ath79/dts/{ar7241_ubnt_bullet-m.dts =>
> ar7241_ubnt_bullet-m-ar7241.dts} (88%)
>  rename target/linux/ath79/dts/{ar7241_ubnt_xm_outdoor.dtsi =>
> ar724x_ubnt_xm_outdoor.dtsi} (94%)
>
> diff --git a/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
> b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
> new file mode 100644
> index 0000000000..5fb24b36c8
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
> @@ -0,0 +1,21 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "ar7240_ubnt_xm.dtsi"
> +#include "ar724x_ubnt_xm_outdoor.dtsi"
> +
> +/ {
> +       compatible = "ubnt,bullet-m-ar7240", "ubnt,xm", "qca,ar7240";
> +       model = "Ubiquiti Bullet M AR7240";
> +};
> +
> +&eth0 {
> +       fixed-link {
> +               speed = <100>;
> +               full-duplex;
> +       };
> +};
> +
> +&eth1 {
> +       compatible = "syscon", "simple-mfd";
> +};
> diff --git a/target/linux/ath79/dts/ar7240_ubnt_xm.dtsi
> b/target/linux/ath79/dts/ar7240_ubnt_xm.dtsi
> new file mode 100644
> index 0000000000..7165ce5668
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar7240_ubnt_xm.dtsi
> @@ -0,0 +1,99 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "ar7240.dtsi"
> +
> +/ {
> +       compatible = "ubnt,xm", "qca,ar7240";
> +       model = "Ubiquiti Networks XM (rev 1.0) board";
> +
> +       keys {
> +               compatible = "gpio-keys";
> +
> +               reset {
> +                       linux,code = <KEY_RESTART>;
> +                       gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
> +                       debounce-interval = <60>;
> +               };
> +       };
> +};
> +
> +&uart {
> +       status = "okay";
> +};
> +
> +&spi {
> +       status = "okay";
> +
> +       num-cs = <1>;
> +
> +       flash@0 {
> +               compatible = "jedec,spi-nor";
> +               reg = <0>;
> +               spi-max-frequency = <25000000>;
> +
> +               partitions {
> +                       compatible = "fixed-partitions";
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +
> +                       partition@0 {
> +                               label = "u-boot";
> +                               reg = <0x000000 0x040000>;
> +                               read-only;
> +                       };
> +
> +                       partition@40000 {
> +                               label = "u-boot-env";
> +                               reg = <0x040000 0x010000>;
> +                       };
> +
> +                       partition@50000 {
> +                               compatible = "denx,uimage";
> +                               label = "firmware";
> +                               reg = <0x050000 0x750000>;
> +                       };
> +
> +                       partition@7a0000 {
> +                               label = "board_config";
> +                               reg = <0x7a0000 0x010000>;
> +                               read-only;
> +                       };
> +
> +                       partition@7b0000 {
> +                               label = "cfg";
> +                               reg = <0x7b0000 0x040000>;
> +                               read-only;
> +                       };
> +
> +                       art: partition@7f0000 {
> +                               label = "art";
> +                               reg = <0x7f0000 0x010000>;
> +                               read-only;
> +                       };
> +               };
> +       };
> +};
> +
> +&pcie {
> +       status = "okay";
> +
> +       wifi: wifi@0,0 {
> +               reg = <0x0000 0 0 0 0>;
> +               qca,no-eeprom;
> +       };
> +};
> +
> +&eth0 {
> +       status = "okay";
> +
> +       mtd-mac-address = <&art 0x0>;
> +};
> +
> +&eth1 {
> +       status = "okay";
> +
> +       mtd-mac-address = <&art 0x6>;
> +};
> diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
> b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
> similarity index 88%
> rename from target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
> rename to target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
> index e16b5fa0be..dec97ab6d8 100644
> --- a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
> +++ b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>  /dts-v1/;
>
> +#include "ar7241_ubnt_xm.dtsi"
>  #include "ar7241_ubnt_xm_outdoor.dtsi"
>
>  / {
> diff --git a/target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi
> b/target/linux/ath79/dts/ar724x_ubnt_xm_outdoor.dtsi
> similarity index 94%
> rename from target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi
> rename to target/linux/ath79/dts/ar724x_ubnt_xm_outdoor.dtsi
> index 75116edc51..a28f8fbcd4 100644
> --- a/target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi
> +++ b/target/linux/ath79/dts/ar724x_ubnt_xm_outdoor.dtsi
> @@ -1,7 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>
> -#include "ar7241_ubnt_xm.dtsi"
> -
>  / {
>         aliases {
>                 led-boot = &led_link4;
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> index 6668e15a74..857d607668 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> @@ -242,7 +242,8 @@ tplink,tl-wr842n-v2)
>  trendnet,tew-823dru)
>         ucidef_set_led_netdev "wan" "WAN" "trendnet:green:planet" "eth0"
>         ;;
> -ubnt,bullet-m|\
> +ubnt,bullet-m-ar7240|\
> +ubnt,bullet-m-ar7241|\
>  ubnt,bullet-m-xw|\
>  ubnt,nanostation-loco-m|\
>  ubnt,nanostation-loco-m-xw|\
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> index ef58d9e124..3a1f3d733b 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> @@ -41,7 +41,8 @@ ath79_setup_interfaces()
>         tplink,re450-v1|\
>         tplink,re450-v2|\
>         tplink,tl-wr902ac-v1|\
> -       ubnt,bullet-m|\
> +       ubnt,bullet-m-ar7240|\
> +       ubnt,bullet-m-ar7241|\
>         ubnt,bullet-m-xw|\
>         ubnt,lap-120|\
>         ubnt,litebeam-ac-gen2|\
> diff --git
> a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> index 96f9d5c0d2..d90abe2981 100644
> ---
> a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> +++
> b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> @@ -89,7 +89,8 @@ case "$FIRMWARE" in
>         tplink,tl-wr2543-v1|\
>         tplink,tl-wr842n-v1|\
>         ubnt,airrouter|\
> -       ubnt,bullet-m|\
> +       ubnt,bullet-m-ar7240|\
> +       ubnt,bullet-m-ar7241|\
>         ubnt,nanostation-loco-m|\
>         ubnt,nanostation-m|\
>         ubnt,picostation-m|\
> diff --git a/target/linux/ath79/image/generic-ubnt.mk
> b/target/linux/ath79/image/generic-ubnt.mk
> index a4aff09fec..44ce4d9b06 100644
> --- a/target/linux/ath79/image/generic-ubnt.mk
> +++ b/target/linux/ath79/image/generic-ubnt.mk
> @@ -113,13 +113,22 @@ define Device/ubnt_airrouter
>  endef
>  TARGET_DEVICES += ubnt_airrouter
>
> -define Device/ubnt_bullet-m
> +define Device/ubnt_bullet-m-ar7240
>    $(Device/ubnt-xm)
> -  DEVICE_MODEL := Bullet-M
> +  SOC := ar7240
> +  DEVICE_MODEL := Bullet-M AR7240
>    DEVICE_PACKAGES += rssileds
> -  SUPPORTED_DEVICES += bullet-m
> +  SUPPORTED_DEVICES += bullet-m-ar7240
> +endef
> +TARGET_DEVICES += ubnt_bullet-m-ar7240
> +
> +define Device/ubnt_bullet-m-ar7241
> +  $(Device/ubnt-xm)
> +  DEVICE_MODEL := Bullet-M AR7241
> +  DEVICE_PACKAGES += rssileds
> +  SUPPORTED_DEVICES += bullet-m-ar7241
>  endef
> -TARGET_DEVICES += ubnt_bullet-m
> +TARGET_DEVICES += ubnt_bullet-m-ar7241
>
>  define Device/ubnt_bullet-m-xw
>    $(Device/ubnt-xw)
> --
> 2.25.1
>
>
> --
> Russell Senior, President
> russell@personaltelco.net
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000001a2b9d059fb5d9bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is actually broken in a few minor ways. I&#39;ll be f=
ollowing up with a fixed up v3 shortly.<br></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb 29, 2020 at 3:36 AM =
Russell Senior &lt;<a href=3D"mailto:russell@personaltelco.net">russell@per=
sonaltelco.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><br>
The Ubiquiti Bullet M2HP come in two flavors, based on ar7240 and<br>
ar7241. Both are supported by ar71xx, despite the different SoCs. The<br>
ath79 target, however, currently supports only the ar7241. The ar7240<br>
version apparently has a differently wired ethernet interface and the<br>
ar7241-based image comes up on the ar7240-based versions without a<br>
working ethernet interface.<br>
<br>
This is an attempt to support both flavors of ubnt-bullet-m,<br>
separately.<br>
<br>
Changes since v1:<br>
<br>
* renamed -v0 and -v1 to -ar7240 and -ar7241, respectively, as<br>
=C2=A0 suggested.<br>
<br>
* abstracted ar7241_ubnt_outdoor-xm.dtsi to ar724x_ubnt_outdoor-xm.dtsi,<br=
>
=C2=A0 so that it could be shared between ar7240 and ar7241. Included the n=
ew<br>
=C2=A0 ar724x file in the terminal dts files rather than chain them.<br>
<br>
<br>
There is a further opportunity to share a<br>
target/linux/ath79/dts/ar724x_ubnt_xm.dtsi file, as<br>
target/linux/ath79/dts/ar7240_ubnt_xm.dtsi and<br>
target/linux/ath79/dts/ar7241_ubnt_xm.dtsi differ in one line only.<br>
<br>
Interested in feedback.<br>
<br>
Tested on the AR7240 flavor.<br>
<br>
Signed-off-by: Russell Senior &lt;<a href=3D"mailto:russell@personaltelco.n=
et" target=3D"_blank">russell@personaltelco.net</a>&gt;<br>
<br>
<br>
---<br>
=C2=A0.../ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts | 21 ++++<br>
=C2=A0target/linux/ath79/dts/ar7240_ubnt_xm.dtsi=C2=A0 =C2=A0 | 99 ++++++++=
+++++++++++<br>
=C2=A0...-m.dts =3D&gt; ar7241_ubnt_bullet-m-ar7241.dts} |=C2=A0 1 +<br>
=C2=A0...tdoor.dtsi =3D&gt; ar724x_ubnt_xm_outdoor.dtsi} |=C2=A0 2 -<br>
=C2=A0.../generic/base-files/etc/board.d/01_leds=C2=A0 =C2=A0 |=C2=A0 3 +-<=
br>
=C2=A0.../generic/base-files/etc/board.d/02_network |=C2=A0 3 +-<br>
=C2=A0.../etc/hotplug.d/firmware/10-ath9k-eeprom=C2=A0 =C2=A0 |=C2=A0 3 +-<=
br>
=C2=A0target/linux/ath79/image/<a href=3D"http://generic-ubnt.mk" rel=3D"no=
referrer" target=3D"_blank">generic-ubnt.mk</a>=C2=A0 =C2=A0 =C2=A0 | 17 ++=
+-<br>
=C2=A08 files changed, 140 insertions(+), 9 deletions(-)<br>
=C2=A0create mode 100644 target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240=
.dts<br>
=C2=A0create mode 100644 target/linux/ath79/dts/ar7240_ubnt_xm.dtsi<br>
=C2=A0rename target/linux/ath79/dts/{ar7241_ubnt_bullet-m.dts =3D&gt; ar724=
1_ubnt_bullet-m-ar7241.dts} (88%)<br>
=C2=A0rename target/linux/ath79/dts/{ar7241_ubnt_xm_outdoor.dtsi =3D&gt; ar=
724x_ubnt_xm_outdoor.dtsi} (94%)<br>
<br>
diff --git a/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts b/targe=
t/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts<br>
new file mode 100644<br>
index 0000000000..5fb24b36c8<br>
--- /dev/null<br>
+++ b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts<br>
@@ -0,0 +1,21 @@<br>
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
+/dts-v1/;<br>
+<br>
+#include &quot;ar7240_ubnt_xm.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm_outdoor.dtsi&quot;<br>
+<br>
+/ {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;ubnt,bullet-m-ar7240&quot;=
, &quot;ubnt,xm&quot;, &quot;qca,ar7240&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0model =3D &quot;Ubiquiti Bullet M AR7240&quot;;=
<br>
+};<br>
+<br>
+&amp;eth0 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0fixed-link {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0speed =3D &lt;100&g=
t;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0full-duplex;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
+};<br>
+<br>
+&amp;eth1 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;syscon&quot;, &quot;simple=
-mfd&quot;;<br>
+};<br>
diff --git a/target/linux/ath79/dts/ar7240_ubnt_xm.dtsi b/target/linux/ath7=
9/dts/ar7240_ubnt_xm.dtsi<br>
new file mode 100644<br>
index 0000000000..7165ce5668<br>
--- /dev/null<br>
+++ b/target/linux/ath79/dts/ar7240_ubnt_xm.dtsi<br>
@@ -0,0 +1,99 @@<br>
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
+<br>
+#include &lt;dt-bindings/gpio/gpio.h&gt;<br>
+#include &lt;dt-bindings/input/input.h&gt;<br>
+<br>
+#include &quot;ar7240.dtsi&quot;<br>
+<br>
+/ {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;ubnt,xm&quot;, &quot;qca,a=
r7240&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0model =3D &quot;Ubiquiti Networks XM (rev 1.0) =
board&quot;;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0keys {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quo=
t;gpio-keys&quot;;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reset {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0linux,code =3D &lt;KEY_RESTART&gt;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0gpios =3D &lt;&amp;gpio 12 GPIO_ACTIVE_LOW&gt;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0debounce-interval =3D &lt;60&gt;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
+};<br>
+<br>
+&amp;uart {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0status =3D &quot;okay&quot;;<br>
+};<br>
+<br>
+&amp;spi {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0status =3D &quot;okay&quot;;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0num-cs =3D &lt;1&gt;;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0flash@0 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quo=
t;jedec,spi-nor&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D &lt;0&gt;;<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spi-max-frequency =
=3D &lt;25000000&gt;;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0partitions {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0compatible =3D &quot;fixed-partitions&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#address-cells =3D &lt;1&gt;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#size-cells =3D &lt;1&gt;;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0partition@0 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D &quot;u-boot&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x000000 0x040000&gt;;<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0read-only;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0};<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0partition@40000 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D &quot;u-boot-env&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x040000 0x010000&gt;;<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0};<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0partition@50000 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;denx,uimage&quot=
;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D &quot;firmware&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x050000 0x750000&gt;;<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0};<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0partition@7a0000 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D &quot;board_config&quot;;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x7a0000 0x010000&gt;;<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0read-only;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0};<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0partition@7b0000 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D &quot;cfg&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x7b0000 0x040000&gt;;<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0read-only;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0};<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0art: partition@7f0000 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0label =3D &quot;art&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x7f0000 0x010000&gt;;<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0read-only;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0};<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
+};<br>
+<br>
+&amp;pcie {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0status =3D &quot;okay&quot;;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0wifi: wifi@0,0 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x0000 =
0 0 0 0&gt;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0qca,no-eeprom;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
+};<br>
+<br>
+&amp;eth0 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0status =3D &quot;okay&quot;;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mtd-mac-address =3D &lt;&amp;art 0x0&gt;;<br>
+};<br>
+<br>
+&amp;eth1 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0status =3D &quot;okay&quot;;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mtd-mac-address =3D &lt;&amp;art 0x6&gt;;<br>
+};<br>
diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts b/target/linux=
/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts<br>
similarity index 88%<br>
rename from target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts<br>
rename to target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts<br>
index e16b5fa0be..dec97ab6d8 100644<br>
--- a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts<br>
+++ b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts<br>
@@ -1,6 +1,7 @@<br>
=C2=A0// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
=C2=A0/dts-v1/;<br>
<br>
+#include &quot;ar7241_ubnt_xm.dtsi&quot;<br>
=C2=A0#include &quot;ar7241_ubnt_xm_outdoor.dtsi&quot;<br>
<br>
=C2=A0/ {<br>
diff --git a/target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi b/target/li=
nux/ath79/dts/ar724x_ubnt_xm_outdoor.dtsi<br>
similarity index 94%<br>
rename from target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi<br>
rename to target/linux/ath79/dts/ar724x_ubnt_xm_outdoor.dtsi<br>
index 75116edc51..a28f8fbcd4 100644<br>
--- a/target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi<br>
+++ b/target/linux/ath79/dts/ar724x_ubnt_xm_outdoor.dtsi<br>
@@ -1,7 +1,5 @@<br>
=C2=A0// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
<br>
-#include &quot;ar7241_ubnt_xm.dtsi&quot;<br>
-<br>
=C2=A0/ {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 aliases {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 led-boot =3D &amp;l=
ed_link4;<br>
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/ta=
rget/linux/ath79/generic/base-files/etc/board.d/01_leds<br>
index 6668e15a74..857d607668 100755<br>
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds<br>
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds<br>
@@ -242,7 +242,8 @@ tplink,tl-wr842n-v2)<br>
=C2=A0trendnet,tew-823dru)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ucidef_set_led_netdev &quot;wan&quot; &quot;WAN=
&quot; &quot;trendnet:green:planet&quot; &quot;eth0&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ;;<br>
-ubnt,bullet-m|\<br>
+ubnt,bullet-m-ar7240|\<br>
+ubnt,bullet-m-ar7241|\<br>
=C2=A0ubnt,bullet-m-xw|\<br>
=C2=A0ubnt,nanostation-loco-m|\<br>
=C2=A0ubnt,nanostation-loco-m-xw|\<br>
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b=
/target/linux/ath79/generic/base-files/etc/board.d/02_network<br>
index ef58d9e124..3a1f3d733b 100755<br>
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network<br>
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network<br>
@@ -41,7 +41,8 @@ ath79_setup_interfaces()<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tplink,re450-v1|\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tplink,re450-v2|\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tplink,tl-wr902ac-v1|\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ubnt,bullet-m|\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ubnt,bullet-m-ar7240|\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ubnt,bullet-m-ar7241|\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubnt,bullet-m-xw|\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubnt,lap-120|\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubnt,litebeam-ac-gen2|\<br>
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/1=
0-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmwa=
re/10-ath9k-eeprom<br>
index 96f9d5c0d2..d90abe2981 100644<br>
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k=
-eeprom<br>
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k=
-eeprom<br>
@@ -89,7 +89,8 @@ case &quot;$FIRMWARE&quot; in<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tplink,tl-wr2543-v1|\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tplink,tl-wr842n-v1|\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubnt,airrouter|\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ubnt,bullet-m|\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ubnt,bullet-m-ar7240|\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ubnt,bullet-m-ar7241|\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubnt,nanostation-loco-m|\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubnt,nanostation-m|\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubnt,picostation-m|\<br>
diff --git a/target/linux/ath79/image/<a href=3D"http://generic-ubnt.mk" re=
l=3D"noreferrer" target=3D"_blank">generic-ubnt.mk</a> b/target/linux/ath79=
/image/<a href=3D"http://generic-ubnt.mk" rel=3D"noreferrer" target=3D"_bla=
nk">generic-ubnt.mk</a><br>
index a4aff09fec..44ce4d9b06 100644<br>
--- a/target/linux/ath79/image/<a href=3D"http://generic-ubnt.mk" rel=3D"no=
referrer" target=3D"_blank">generic-ubnt.mk</a><br>
+++ b/target/linux/ath79/image/<a href=3D"http://generic-ubnt.mk" rel=3D"no=
referrer" target=3D"_blank">generic-ubnt.mk</a><br>
@@ -113,13 +113,22 @@ define Device/ubnt_airrouter<br>
=C2=A0endef<br>
=C2=A0TARGET_DEVICES +=3D ubnt_airrouter<br>
<br>
-define Device/ubnt_bullet-m<br>
+define Device/ubnt_bullet-m-ar7240<br>
=C2=A0 =C2=A0$(Device/ubnt-xm)<br>
-=C2=A0 DEVICE_MODEL :=3D Bullet-M<br>
+=C2=A0 SOC :=3D ar7240<br>
+=C2=A0 DEVICE_MODEL :=3D Bullet-M AR7240<br>
=C2=A0 =C2=A0DEVICE_PACKAGES +=3D rssileds<br>
-=C2=A0 SUPPORTED_DEVICES +=3D bullet-m<br>
+=C2=A0 SUPPORTED_DEVICES +=3D bullet-m-ar7240<br>
+endef<br>
+TARGET_DEVICES +=3D ubnt_bullet-m-ar7240<br>
+<br>
+define Device/ubnt_bullet-m-ar7241<br>
+=C2=A0 $(Device/ubnt-xm)<br>
+=C2=A0 DEVICE_MODEL :=3D Bullet-M AR7241<br>
+=C2=A0 DEVICE_PACKAGES +=3D rssileds<br>
+=C2=A0 SUPPORTED_DEVICES +=3D bullet-m-ar7241<br>
=C2=A0endef<br>
-TARGET_DEVICES +=3D ubnt_bullet-m<br>
+TARGET_DEVICES +=3D ubnt_bullet-m-ar7241<br>
<br>
=C2=A0define Device/ubnt_bullet-m-xw<br>
=C2=A0 =C2=A0$(Device/ubnt-xw)<br>
-- <br>
2.25.1<br>
<br>
<br>
-- <br>
Russell Senior, President<br>
<a href=3D"mailto:russell@personaltelco.net" target=3D"_blank">russell@pers=
onaltelco.net</a><br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--0000000000001a2b9d059fb5d9bf--


--===============7028440427382844018==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7028440427382844018==--

