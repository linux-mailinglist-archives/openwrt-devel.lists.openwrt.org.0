Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A5417E0D3
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 14:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FfAjHcFIMXxGsXmlOU9qHwcL9Z9xsqrc1qqHW94Jh+4=; b=qWzK4vcaKkIja5
	q7kxSGbWiAZwZFCo6dS0TqlJIkHQ5I3SDIvJWdAM2CLsME6bF5e1y2oAWze8NfwmNaxBSmMCbnijb
	8Xpg1pjIkYb185XnD0FR0h8K/OPX1bq0Yv8a1asBESDYX17bmq1B8CqfAKZZYDlJplnmDTblVPQos
	PhqKu8TDalHRjsXUOfcxNaqngHOrApg3yC1PBNMK9XnaX/gN0v0gSxzjJSctW5QAK/XpQ9x8Kfg2K
	ZFo/8vL8u7qlWMsliInugCBXxBQCbV4uI0tQ1XN+mfcQVJ9N8eUjRD39aJliWY+Bw+WIyZ6u2lY4h
	qcILgJ/PEkbs1fZ6Qh3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBIBg-0007D2-G4; Mon, 09 Mar 2020 13:11:16 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBIBU-0007CP-2F
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 13:11:06 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MQusJ-1iwfqf3iyt-00Nyvd; Mon, 09
 Mar 2020 14:10:58 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Russell Senior'" <russell@personaltelco.net>,
 <openwrt-devel@lists.openwrt.org>
References: <87tv3dtzut.fsf@husum.klickitat.com>	<877e05sk1d.fsf@husum.klickitat.com>
 <87a751r14c.fsf_-_@husum.klickitat.com>
In-Reply-To: <87a751r14c.fsf_-_@husum.klickitat.com>
Date: Mon, 9 Mar 2020 14:10:53 +0100
Message-ID: <043a01d5f614$2cb8b920$862a2b60$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQKyOHC2ZsrvrsN7wRnTorTWuhqfswJzHtSYAgLlevamZAUw8A==
Content-Language: de
X-Provags-ID: V03:K1:SBIV1giMTs9TYYr2xfIiWJYCW0xwCc4MSM+jR+GbWfmUw5dS7jF
 Q9Vkhf8B9Y/jRNtJZaAmWG8mi322pIdU8GnOjecBk920iLLg2p3YYF/2TSP+HSAXvJDcLyB
 4nzKUoe3Tu/GeP1AvmPzvxxawXT3SKyEbHRxGO/h7CNIb8QxOJNkPYRc5y44V8S5dS/CKZ8
 vxFwecUh9hWXT35XgnARA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dPs/wMDCRG4=:xHMxvttqGCVBfpicH5IziS
 rCKfJNmIRcDJelR8AYrn+hJGI6LrTG+iQGKxoFIqNhA9YRqKVPNRK4GIJsW9zJYsmwUT4j7h1
 neoBsrXwhMrlaEpjHLPggemALR2GYVvt1opAIMeRwDYfHCoZjhh9QMQRDVXbjIoHRm4GvSMSX
 L0mvtkF7c8XmmoXBB2NRtniwggg1bpIfbnjS9ZdqFgQTGSzTtOP9S7lgpg9XmB81AEltSO/Tv
 iz7GQPIwcWJ0XlOYoK7cLEdXt7izOQ9SJ6ToS0YrPOnIL0gfpRtbrVb3bOA1+VeULLRuiuEnw
 oqboVSEsVNVHcQS6o73iXPJgnDj8AymY7q75WaaAQjiq0sCbkKcQ15O1N1GbhPZioQpjiLR5a
 3mGAdB8jOkplRQYHvSYRVL/95EbK8RydvAjysv/XsYNesIhj4ty31g67foIADT+iU9nqzRFB/
 PlrAypT+e+NweE6mzxSUKFQAsTyhHZaW8hT88TT3pfSSVhI+eJ6hMKIbFxENwAO0iLZl1WMJr
 3eQ9BsEI34DdqWn8GJ+ES1oor0afMbRnwBDGAZCnc+bAtn4IeBtyrlbBJIdCVf7ofmkiEV+M+
 YPIIOspEufbTnzskH5j67/IgInQlGsXW4zD3qPRXFGAoV5SRkD8xKQALgc0pVM7EQEeMVC4UA
 X0zUuXkh+I7uyJlCbGqrrGHa6tK27d/A1iyeLhPY5PdjnLvuTXFWkAr90klRBB0mq0IyrR3sp
 GYjSsrkYNv66mRr4TnjLGbgOv1jekoLcttuqKXN2IS8M9LkLZsKIgrt5OxkJ362JR7kUMAi7e
 q2O7vAGmrgi85lTtF8xWCyUzs20DON0acvsjkZOmftliAkrmkrd/29fMrii1OKhaTb6Kiz/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_061104_415967_D26A385F 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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

Hi,

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

In principle this seems fine to me, but I'm still hoping to find a better
solution for the device names.

Since this is quite hard to review, I'd prefer to have this split into two
commits:

1. Just do the reorganization (dtsi logic change)

2. Add the new device and rename bullet-m devices.

See some minor comments below.

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

I'd consider putting the AR7240 in brackets here.

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

If we need this, I'd prefer to have the SOC variable moved from ubnt-xm to the
device definitions for all devices (as overwriting those variables may always be
a bit misleading). This could be done in the first commit together with the DTSI
logic changes.

> +  DEVICE_MODEL := Bullet-M AR7240

AR7240 should go into DEVICE_VARIANT, so we get something like
DEVICE_VARIANT := XM (AR7240)

Same for AR7241 variant.

Thanks and best

Adrian

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
