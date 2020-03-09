Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DCE17E0D6
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 14:11:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwnPNbBnvFSL8lOVY+C8ZLmzpDb2K9IJL7fhsWbCSIw=; b=l/xcUVSn0IfBb4
	PDNa9lCGkWLA4eS4uphENpBjujv2Yqv8AwkHIYWN9qbLBei6pa219K6zqg+WnXszhH2ajAwj8xNld
	1BtOd5++3ZTlzVNdrZE09G3sZ6A8BmbWSx4L0LL0ry8Y9i5oG+QL9VLXAFZd7djPNAdHf1EJXtL3E
	fMofxnzfmtpyjpvuj+zrkO7ASkwJHaMV8qKJRLVxnhV4OlUEdpgD+nXxPsH7ySH/C69Drr8qS0NDE
	g/ZUxZsMo5RbFXMulRQVVm1dDsQLnC9BbRyjIGD1qHWgiZYnTPS8IcL19gMmA8c83tvundXLrbTYC
	6znOp8sNFY7QRNkvRSEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBIC7-0007XX-BC; Mon, 09 Mar 2020 13:11:43 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBIBx-0007Uc-11
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 13:11:35 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MCKWI-1j1ymc1HvO-009Q6P; Mon, 09
 Mar 2020 14:11:24 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Russell Senior'" <russell@personaltelco.net>,
 <openwrt-devel@lists.openwrt.org>
References: <87tv3dtzut.fsf@husum.klickitat.com>	<877e05sk1d.fsf@husum.klickitat.com>
 <87a751r14c.fsf_-_@husum.klickitat.com>
In-Reply-To: <87a751r14c.fsf_-_@husum.klickitat.com>
Date: Mon, 9 Mar 2020 14:11:23 +0100
Message-ID: <043c01d5f614$3bdce9d0$b396bd70$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQKyOHC2ZsrvrsN7wRnTorTWuhqfswJzHtSYAgLlevamZAdW8A==
Content-Language: de
X-Provags-ID: V03:K1:RLJVwMiucTK7JXEG3HNazbKVjvDNy3ObcMpaiWWaOQOe6OrjxKA
 28ZiDD5mOJyr8octuBLh+qMbrQdkqbiwPoDN3pb0h5uuMz2tj/CvKl22BjqXDNuAnJUpUuv
 sMO+umz6/7RnPNLw1bbAYs61V34nOVtkumjuckTPMNXu5LiTXhhl0b4vwS8nlBeMAus/5Xa
 WVqo7viXlZdQIsjsmp5pQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BtAGzVMGhAQ=:9BKzeaOpMjFyEiorNUy4YQ
 rrwsRoA3gAtfDky817j2htAQ1v2IPMiSS9wuZ6F44TSSSGkrA6RpiBALJd+Fk62KTaTee4mE+
 BzAPU9CqTk8OtEm9bh68b8yTr6HpXCkexfrlk1apJThMdQ1WQk80jPsy0uw1MXF4pHyDrk6TX
 NQv/XheOExU69XZggrCRCUUc1eV4CMR681MEo11c0tMnn5lT9NCmJwGCUeiY+QsveyFKGxJm8
 HtQXZx1TbXQIJNLPuxYcHTKYk/XjWEZzpvAFj4jXjtUuFvz7jXP3KzxB6KvTQc6cpN+OC5LpQ
 w+R3DAtgLjJqOQwLaxOtxkgeq0LyZWP/qg5jxtZh3FJIUzwrZXjZw3p69sBvR7A5T81qb9Fd+
 94d7Q3YpQCrP4fmqPq4jUBdUDA+KJ6ChUvIiRXzH1qrip7QDrwKYVgq+FybHA/E4y3j7UyBCY
 qiLvG/r59f5ArSy43PfmOpjMSmfoHz07qIGi7A0w0ZgTp+BYmbtcXQKcEZOeTubI31WcznzgN
 5Y6jaZz3IHDFDR70cEtRPPRD7+XYYUGbrr98EeqMsai4xkx6Nff+zPwwytK2IkXag+RiuR4mH
 yfLh4pCekGFif5BVLoRPLe7jY6snLXaDEPO4btgJylQ1MCwD9xOO+kglDKSWCTH9t1Ok4f0YB
 gDiDE+KtV/YVxJtDcSpGIQmfeZV9hGZUcJALSNsLhmnwc7D1YmE8rGEBPcju3hgJJq91g6H4K
 n7K5MnP+Mt6BVSIoO7V4l/iBtps+tS5hBkwv+nyJwTwdC55eO6G8RFA7H2g9lHcwX18PHWXGU
 mabyBAtzexVyAAIPb/Te7YXlo0GXAfXGa5XGA0jAjc6Erj2zrz7I+VeWZiYjJrCZ/oThJFR
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_061133_382477_ED0F7273 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH RFC v3] ath79: add support for the
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ah, and please use git format-patch, your v2/v3 didn't even make it into
patchwork.

> -----Original Message-----
> From: Russell Senior [mailto:russell@personaltelco.net]
> Sent: Samstag, 29. Februar 2020 14:10
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
> Subject: Re: [OpenWrt-Devel] [PATCH RFC v3] ath79: add support for the ar7240
> version of the ubiquiti bullet
> 
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
> Changes since v2:
> 
> * generified ar7241_ubnt_xm.dtsi into ar724x_ubnt_xm.dtsi and converted
>   the ubnt_xm family of devicetree's to stack #includes rather than chain
>   them in order to avoid massive duplication between ar7240 and ar7241.
> 
> * fixed a broken reference to ar7241_ubnt_outdoor-xm.dtsi
> 
> Changes since v1:
> 
> * renamed -v0 and -v1 to -ar7240 and -ar7241, respectively, as
>   suggested.
> 
> * abstracted ar7241_ubnt_outdoor-xm.dtsi to ar724x_ubnt_outdoor-xm.dtsi,
>   so that it could be shared between ar7240 and ar7241. Included the new
>     ar724x file in the terminal dts files rather than chain them.
> 
> Interested in feedback.
> 
> Tested on the AR7240 flavor.
> 
> Signed-off-by: Russell Senior <russell@personaltelco.net>
> ---
>  .../ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts | 22 +++++++++++++++++++
>  .../linux/ath79/dts/ar7241_ubnt_airrouter.dts |  3 ++-
>  .../ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts | 15 +++++++++++++
>  .../linux/ath79/dts/ar7241_ubnt_bullet-m.dts  | 13 -----------
>  .../dts/ar7241_ubnt_nanostation-loco-m.dts    |  4 +++-
>  .../ath79/dts/ar7241_ubnt_nanostation-m.dts   |  4 +++-
>  .../ath79/dts/ar7241_ubnt_picostation-m.dts   |  4 +++-
>  .../linux/ath79/dts/ar7241_ubnt_rocket-m.dts  |  4 +++-
>  ...r7241_ubnt_xm.dtsi => ar724x_ubnt_xm.dtsi} |  5 -----
>  ...tdoor.dtsi => ar724x_ubnt_xm_outdoor.dtsi} |  2 --
>  .../generic/base-files/etc/board.d/01_leds    |  3 ++-
>  .../generic/base-files/etc/board.d/02_network |  3 ++-
>  .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  3 ++-
>  target/linux/ath79/image/generic-ubnt.mk      | 17 ++++++++++----
>  14 files changed, 70 insertions(+), 32 deletions(-)
>  create mode 100644 target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
>  create mode 100644 target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
>  delete mode 100644 target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
>  rename target/linux/ath79/dts/{ar7241_ubnt_xm.dtsi =>
> ar724x_ubnt_xm.dtsi} (92%)
>  rename target/linux/ath79/dts/{ar7241_ubnt_xm_outdoor.dtsi =>
> ar724x_ubnt_xm_outdoor.dtsi} (94%)
> 
> diff --git a/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
> b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
> new file mode 100644
> index 0000000000..99bf971eec
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "ar7240.dtsi"
> +#include "ar724x_ubnt_xm.dtsi"
> +#include "ar724x_ubnt_xm_outdoor.dtsi"
> +
> +/ {
> +	compatible = "ubnt,bullet-m-ar7240", "ubnt,xm", "qca,ar7240";
> +	model = "Ubiquiti Bullet M AR7240";
> +};
> +
> +&eth0 {
> +	fixed-link {
> +		speed = <100>;
> +		full-duplex;
> +	};
> +};
> +
> +&eth1 {
> +	compatible = "syscon", "simple-mfd";
> +};
> diff --git a/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
> b/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
> index ad2762e20c..dd2421da8e 100644
> --- a/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
> +++ b/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
> @@ -1,7 +1,8 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>  /dts-v1/;
> 
> -#include "ar7241_ubnt_xm.dtsi"
> +#include "ar7241.dtsi"
> +#include "ar724x_ubnt_xm.dtsi"
> 
>  / {
>  	compatible = "ubnt,airrouter", "ubnt,xm", "qca,ar7241";
> diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
> b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
> new file mode 100644
> index 0000000000..bb0f19c9eb
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "ar7241.dtsi"
> +#include "ar724x_ubnt_xm.dtsi"
> +#include "ar724x_ubnt_xm_outdoor.dtsi"
> +
> +/ {
> +	compatible = "ubnt,bullet-m-ar7241", "ubnt,xm", "qca,ar7241";
> +	model = "Ubiquiti Bullet M AR7241";
> +};
> +
> +&eth1 {
> +	compatible = "syscon", "simple-mfd";
> +};
> diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
> b/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
> deleted file mode 100644
> index e16b5fa0be..0000000000
> --- a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> -/dts-v1/;
> -
> -#include "ar7241_ubnt_xm_outdoor.dtsi"
> -
> -/ {
> -	compatible = "ubnt,bullet-m", "ubnt,xm", "qca,ar7241";
> -	model = "Ubiquiti Bullet M";
> -};
> -
> -&eth1 {
> -	compatible = "syscon", "simple-mfd";
> -};
> diff --git a/target/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts
> b/target/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts
> index 386b7c7073..60d5a21a22 100644
> --- a/target/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts
> +++ b/target/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts
> @@ -1,7 +1,9 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>  /dts-v1/;
> 
> -#include "ar7241_ubnt_xm_outdoor.dtsi"
> +#include "ar7241.dtsi"
> +#include "ar724x_ubnt_xm.dtsi"
> +#include "ar724x_ubnt_xm_outdoor.dtsi"
> 
>  / {
>  	compatible = "ubnt,nanostation-loco-m", "ubnt,xm", "qca,ar7241";
> diff --git a/target/linux/ath79/dts/ar7241_ubnt_nanostation-m.dts
> b/target/linux/ath79/dts/ar7241_ubnt_nanostation-m.dts
> index eebe65e53f..82344bb5ea 100644
> --- a/target/linux/ath79/dts/ar7241_ubnt_nanostation-m.dts
> +++ b/target/linux/ath79/dts/ar7241_ubnt_nanostation-m.dts
> @@ -1,7 +1,9 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>  /dts-v1/;
> 
> -#include "ar7241_ubnt_xm_outdoor.dtsi"
> +#include "ar7241.dtsi"
> +#include "ar724x_ubnt_xm.dtsi"
> +#include "ar724x_ubnt_xm_outdoor.dtsi"
> 
>  / {
>  	compatible = "ubnt,nanostation-m", "ubnt,xm", "qca,ar7241";
> diff --git a/target/linux/ath79/dts/ar7241_ubnt_picostation-m.dts
> b/target/linux/ath79/dts/ar7241_ubnt_picostation-m.dts
> index e2376a1b92..d05aca3e67 100644
> --- a/target/linux/ath79/dts/ar7241_ubnt_picostation-m.dts
> +++ b/target/linux/ath79/dts/ar7241_ubnt_picostation-m.dts
> @@ -1,7 +1,9 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>  /dts-v1/;
> 
> -#include "ar7241_ubnt_xm_outdoor.dtsi"
> +#include "ar7241.dtsi"
> +#include "ar724x_ubnt_xm.dtsi"
> +#include "ar724x_ubnt_xm_outdoor.dtsi"
> 
>  / {
>  	compatible = "ubnt,picostation-m", "ubnt,xm", "qca,ar7241";
> diff --git a/target/linux/ath79/dts/ar7241_ubnt_rocket-m.dts
> b/target/linux/ath79/dts/ar7241_ubnt_rocket-m.dts
> index 35f5205b41..9e342177e2 100644
> --- a/target/linux/ath79/dts/ar7241_ubnt_rocket-m.dts
> +++ b/target/linux/ath79/dts/ar7241_ubnt_rocket-m.dts
> @@ -1,7 +1,9 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>  /dts-v1/;
> 
> -#include "ar7241_ubnt_xm_outdoor.dtsi"
> +#include "ar7241.dtsi"
> +#include "ar724x_ubnt_xm.dtsi"
> +#include "ar724x_ubnt_xm_outdoor.dtsi"
> 
>  / {
>  	compatible = "ubnt,rocket-m", "ubnt,xm", "qca,ar7241";
> diff --git a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
> b/target/linux/ath79/dts/ar724x_ubnt_xm.dtsi
> similarity index 92%
> rename from target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
> rename to target/linux/ath79/dts/ar724x_ubnt_xm.dtsi
> index e2b653b3a7..b36b0d4fe2 100644
> --- a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
> +++ b/target/linux/ath79/dts/ar724x_ubnt_xm.dtsi
> @@ -3,12 +3,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
> 
> -#include "ar7241.dtsi"
> -
>  / {
> -	compatible = "ubnt,xm", "qca,ar7241";
> -	model = "Ubiquiti Networks XM (rev 1.0) board";
> -
>  	keys {
>  		compatible = "gpio-keys";
> 
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
>  	aliases {
>  		led-boot = &led_link4;
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> index 6668e15a74..857d607668 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> @@ -242,7 +242,8 @@ tplink,tl-wr842n-v2)
>  trendnet,tew-823dru)
>  	ucidef_set_led_netdev "wan" "WAN" "trendnet:green:planet" "eth0"
>  	;;
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
>  	tplink,re450-v1|\
>  	tplink,re450-v2|\
>  	tplink,tl-wr902ac-v1|\
> -	ubnt,bullet-m|\
> +	ubnt,bullet-m-ar7240|\
> +	ubnt,bullet-m-ar7241|\
>  	ubnt,bullet-m-xw|\
>  	ubnt,lap-120|\
>  	ubnt,litebeam-ac-gen2|\
> diff --git
> a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-ee
> prom
> b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-ee
> prom
> index 96f9d5c0d2..d90abe2981 100644
> ---
> a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-ee
> prom
> +++
> b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-ee
> prom
> @@ -89,7 +89,8 @@ case "$FIRMWARE" in
>  	tplink,tl-wr2543-v1|\
>  	tplink,tl-wr842n-v1|\
>  	ubnt,airrouter|\
> -	ubnt,bullet-m|\
> +	ubnt,bullet-m-ar7240|\
> +	ubnt,bullet-m-ar7241|\
>  	ubnt,nanostation-loco-m|\
>  	ubnt,nanostation-m|\
>  	ubnt,picostation-m|\
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


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
