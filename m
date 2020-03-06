Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA0517B712
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 07:54:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GTJxn1rO2LB044ZC8YMZsNQWwgflQhqVTYidHHmuYe0=; b=GmJ6aUC4XHpwI7p8yauYO32LJ
	Obu81IjSPIDTjqurwwwn4/cAiqpkafhNUi1nP3/PR7K3Ncy29nngreP1GrHYwfFmMHtpnmh9vRNQm
	8bl8hK/asstgmP9nAI28MsvZcN0pOAR1A9BhIlU77AwEta9AmCLE+fQx2nh82cjcibp2LNZzcoq6C
	wHRIaM8WxurmThJw8LBhKT9607skTRzzCaG9caT1/38ElK5UY3fzdzf0vJYXrWjml+0Dk2eUp7YXx
	ov8iHBV2tx0bzmhjCPGkhIJ/gvSDJ9filR7qIdx8Hwskdai7b67/7G4CkaQpa0fh1oK3CQ2yd+4nz
	hwzqDPd3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6s7-0006lT-C4; Fri, 06 Mar 2020 06:54:11 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6rw-0006kQ-Hz
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 06:54:03 +0000
Received: by mail-ua1-x943.google.com with SMTP id 8so338088uar.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Mar 2020 22:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dq+tIpimo75eLNCaghlbaJ9szbCNkI8IAf5l4N2yidM=;
 b=N5Kz5ZA+F9Air2Z4umfgo+T0TOUgUTuWitWhVuL6gbUeXUNXfMwCJqJAn0kWWPnjON
 NI1hfoyuQHL1u2U/O4tAwSk+WdQKEoKozYf5z2kB6L853Zhfhe/EaeurRFmZszfmDHUs
 h7GmgkEU6XMKSXJPscz9rJZl9QbJVNon8DJCrDDoHam5dJlUM2vC/oMdrBnWa78vhQNF
 WeHEYAD/Uxri56UpTQ8kdqQf7ZcaxmykhkvYz3PW1aOUl4gqIze2WqUF4vyChbDfLzh5
 QYzpWG33mAP6rUdTx4YqcZr/34vnymfyDo7kxVC7MKgYKjqGextGwklFNwsUMa8xOq15
 SZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dq+tIpimo75eLNCaghlbaJ9szbCNkI8IAf5l4N2yidM=;
 b=J9pppgp980FcBBpem9Dqu4VbNQbWdv0dA2o49Pu15olzTQCnylN+eJQ1kzVgeH1iYP
 JE67TlUxw0Oo5mxCzNu6mvW0BP9y2AS0F42ovm9t6Uhx/VZrPlMiM7fcjl2SJZEGr2sk
 6Tx6+BZQxpWmlRmR5bAul8hNgLf/rvrwuULrL1l7m11uTgPE5Tt3DY64p5s3yBKjiuKY
 EmgaoCG9AWsXOhGEAgPAuj5r+bBBazARQ+XwlqfuJ/guE8l9pY+j8FIPaGX+sIvZQ6uQ
 b5CtiFdHppx6KREB4C84aQnHpYYlYry02TC/iqqrx25kbb8go4WYn4+aoZtxLMjYydgP
 kQyw==
X-Gm-Message-State: ANhLgQ1yXnYbPCUBpU5g5MbB2emN4c81FStHc/UXd05nYZPz4F6VEmsQ
 A0dsE8xMMEdFO3kLncJJ4z35XpMSryZfvpgUXib67mfmCfw=
X-Google-Smtp-Source: ADFU+vuPBXf81TnR8ryv39q+ze85Zs9ocKSaJxk/BN6/WLI+5fnBAXHl+gmAB8kJ8XEUucDYjpM8d6Ogu2qPmm4cT6U=
X-Received: by 2002:ab0:6558:: with SMTP id x24mr844625uap.76.1583477638705;
 Thu, 05 Mar 2020 22:53:58 -0800 (PST)
MIME-Version: 1.0
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <877e05sk1d.fsf@husum.klickitat.com>
 <87a751r14c.fsf_-_@husum.klickitat.com>
In-Reply-To: <87a751r14c.fsf_-_@husum.klickitat.com>
From: Russell Senior <russell@personaltelco.net>
Date: Thu, 5 Mar 2020 22:53:47 -0800
Message-ID: <CAHP3WfMeVx4+WUjyrfhPceJwr4Mrx-ahyD7z02fVqoVK=MkkHw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_225401_021475_E227D594 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: multipart/mixed; boundary="===============0984588685932860880=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0984588685932860880==
Content-Type: multipart/alternative; boundary="0000000000002a481305a02a1eda"

--0000000000002a481305a02a1eda
Content-Type: text/plain; charset="UTF-8"

Does this look reasonable? Any other comments?

On Sat, Feb 29, 2020 at 5:09 AM Russell Senior <russell@personaltelco.net>
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
>         compatible = "ubnt,airrouter", "ubnt,xm", "qca,ar7241";
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
> +       compatible = "ubnt,bullet-m-ar7241", "ubnt,xm", "qca,ar7241";
> +       model = "Ubiquiti Bullet M AR7241";
> +};
> +
> +&eth1 {
> +       compatible = "syscon", "simple-mfd";
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
> -       compatible = "ubnt,bullet-m", "ubnt,xm", "qca,ar7241";
> -       model = "Ubiquiti Bullet M";
> -};
> -
> -&eth1 {
> -       compatible = "syscon", "simple-mfd";
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
>         compatible = "ubnt,nanostation-loco-m", "ubnt,xm", "qca,ar7241";
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
>         compatible = "ubnt,nanostation-m", "ubnt,xm", "qca,ar7241";
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
>         compatible = "ubnt,picostation-m", "ubnt,xm", "qca,ar7241";
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
>         compatible = "ubnt,rocket-m", "ubnt,xm", "qca,ar7241";
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
> -       compatible = "ubnt,xm", "qca,ar7241";
> -       model = "Ubiquiti Networks XM (rev 1.0) board";
> -
>         keys {
>                 compatible = "gpio-keys";
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

--0000000000002a481305a02a1eda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does this look reasonable? Any other comments?<br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, =
Feb 29, 2020 at 5:09 AM Russell Senior &lt;<a href=3D"mailto:russell@person=
altelco.net">russell@personaltelco.net</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><br>
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
Changes since v2:<br>
<br>
* generified ar7241_ubnt_xm.dtsi into ar724x_ubnt_xm.dtsi and converted<br>
=C2=A0 the ubnt_xm family of devicetree&#39;s to stack #includes rather tha=
n chain<br>
=C2=A0 them in order to avoid massive duplication between ar7240 and ar7241=
.<br>
<br>
* fixed a broken reference to ar7241_ubnt_outdoor-xm.dtsi<br>
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
=C2=A0 =C2=A0 ar724x file in the terminal dts files rather than chain them.=
<br>
<br>
Interested in feedback.<br>
<br>
Tested on the AR7240 flavor.<br>
<br>
Signed-off-by: Russell Senior &lt;<a href=3D"mailto:russell@personaltelco.n=
et" target=3D"_blank">russell@personaltelco.net</a>&gt;<br>
---<br>
=C2=A0.../ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts | 22 ++++++++++++++++++=
+<br>
=C2=A0.../linux/ath79/dts/ar7241_ubnt_airrouter.dts |=C2=A0 3 ++-<br>
=C2=A0.../ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts | 15 +++++++++++++<br>
=C2=A0.../linux/ath79/dts/ar7241_ubnt_bullet-m.dts=C2=A0 | 13 -----------<b=
r>
=C2=A0.../dts/ar7241_ubnt_nanostation-loco-m.dts=C2=A0 =C2=A0 |=C2=A0 4 +++=
-<br>
=C2=A0.../ath79/dts/ar7241_ubnt_nanostation-m.dts=C2=A0 =C2=A0|=C2=A0 4 +++=
-<br>
=C2=A0.../ath79/dts/ar7241_ubnt_picostation-m.dts=C2=A0 =C2=A0|=C2=A0 4 +++=
-<br>
=C2=A0.../linux/ath79/dts/ar7241_ubnt_rocket-m.dts=C2=A0 |=C2=A0 4 +++-<br>
=C2=A0...r7241_ubnt_xm.dtsi =3D&gt; ar724x_ubnt_xm.dtsi} |=C2=A0 5 -----<br=
>
=C2=A0...tdoor.dtsi =3D&gt; ar724x_ubnt_xm_outdoor.dtsi} |=C2=A0 2 --<br>
=C2=A0.../generic/base-files/etc/board.d/01_leds=C2=A0 =C2=A0 |=C2=A0 3 ++-=
<br>
=C2=A0.../generic/base-files/etc/board.d/02_network |=C2=A0 3 ++-<br>
=C2=A0.../etc/hotplug.d/firmware/10-ath9k-eeprom=C2=A0 =C2=A0 |=C2=A0 3 ++-=
<br>
=C2=A0target/linux/ath79/image/<a href=3D"http://generic-ubnt.mk" rel=3D"no=
referrer" target=3D"_blank">generic-ubnt.mk</a>=C2=A0 =C2=A0 =C2=A0 | 17 ++=
++++++++----<br>
=C2=A014 files changed, 70 insertions(+), 32 deletions(-)<br>
=C2=A0create mode 100644 target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240=
.dts<br>
=C2=A0create mode 100644 target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241=
.dts<br>
=C2=A0delete mode 100644 target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts<br=
>
=C2=A0rename target/linux/ath79/dts/{ar7241_ubnt_xm.dtsi =3D&gt; ar724x_ubn=
t_xm.dtsi} (92%)<br>
=C2=A0rename target/linux/ath79/dts/{ar7241_ubnt_xm_outdoor.dtsi =3D&gt; ar=
724x_ubnt_xm_outdoor.dtsi} (94%)<br>
<br>
diff --git a/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts b/targe=
t/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts<br>
new file mode 100644<br>
index 0000000000..99bf971eec<br>
--- /dev/null<br>
+++ b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts<br>
@@ -0,0 +1,22 @@<br>
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
+/dts-v1/;<br>
+<br>
+#include &quot;ar7240.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm.dtsi&quot;<br>
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
diff --git a/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts b/target/linu=
x/ath79/dts/ar7241_ubnt_airrouter.dts<br>
index ad2762e20c..dd2421da8e 100644<br>
--- a/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts<br>
+++ b/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts<br>
@@ -1,7 +1,8 @@<br>
=C2=A0// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
=C2=A0/dts-v1/;<br>
<br>
-#include &quot;ar7241_ubnt_xm.dtsi&quot;<br>
+#include &quot;ar7241.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm.dtsi&quot;<br>
<br>
=C2=A0/ {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 compatible =3D &quot;ubnt,airrouter&quot;, &quo=
t;ubnt,xm&quot;, &quot;qca,ar7241&quot;;<br>
diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts b/targe=
t/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts<br>
new file mode 100644<br>
index 0000000000..bb0f19c9eb<br>
--- /dev/null<br>
+++ b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts<br>
@@ -0,0 +1,15 @@<br>
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
+/dts-v1/;<br>
+<br>
+#include &quot;ar7241.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm_outdoor.dtsi&quot;<br>
+<br>
+/ {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;ubnt,bullet-m-ar7241&quot;=
, &quot;ubnt,xm&quot;, &quot;qca,ar7241&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0model =3D &quot;Ubiquiti Bullet M AR7241&quot;;=
<br>
+};<br>
+<br>
+&amp;eth1 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;syscon&quot;, &quot;simple=
-mfd&quot;;<br>
+};<br>
diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts b/target/linux=
/ath79/dts/ar7241_ubnt_bullet-m.dts<br>
deleted file mode 100644<br>
index e16b5fa0be..0000000000<br>
--- a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts<br>
+++ /dev/null<br>
@@ -1,13 +0,0 @@<br>
-// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
-/dts-v1/;<br>
-<br>
-#include &quot;ar7241_ubnt_xm_outdoor.dtsi&quot;<br>
-<br>
-/ {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;ubnt,bullet-m&quot;, &quot=
;ubnt,xm&quot;, &quot;qca,ar7241&quot;;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0model =3D &quot;Ubiquiti Bullet M&quot;;<br>
-};<br>
-<br>
-&amp;eth1 {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;syscon&quot;, &quot;simple=
-mfd&quot;;<br>
-};<br>
diff --git a/target/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts b/ta=
rget/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts<br>
index 386b7c7073..60d5a21a22 100644<br>
--- a/target/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts<br>
+++ b/target/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts<br>
@@ -1,7 +1,9 @@<br>
=C2=A0// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
=C2=A0/dts-v1/;<br>
<br>
-#include &quot;ar7241_ubnt_xm_outdoor.dtsi&quot;<br>
+#include &quot;ar7241.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm_outdoor.dtsi&quot;<br>
<br>
=C2=A0/ {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 compatible =3D &quot;ubnt,nanostation-loco-m&qu=
ot;, &quot;ubnt,xm&quot;, &quot;qca,ar7241&quot;;<br>
diff --git a/target/linux/ath79/dts/ar7241_ubnt_nanostation-m.dts b/target/=
linux/ath79/dts/ar7241_ubnt_nanostation-m.dts<br>
index eebe65e53f..82344bb5ea 100644<br>
--- a/target/linux/ath79/dts/ar7241_ubnt_nanostation-m.dts<br>
+++ b/target/linux/ath79/dts/ar7241_ubnt_nanostation-m.dts<br>
@@ -1,7 +1,9 @@<br>
=C2=A0// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
=C2=A0/dts-v1/;<br>
<br>
-#include &quot;ar7241_ubnt_xm_outdoor.dtsi&quot;<br>
+#include &quot;ar7241.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm_outdoor.dtsi&quot;<br>
<br>
=C2=A0/ {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 compatible =3D &quot;ubnt,nanostation-m&quot;, =
&quot;ubnt,xm&quot;, &quot;qca,ar7241&quot;;<br>
diff --git a/target/linux/ath79/dts/ar7241_ubnt_picostation-m.dts b/target/=
linux/ath79/dts/ar7241_ubnt_picostation-m.dts<br>
index e2376a1b92..d05aca3e67 100644<br>
--- a/target/linux/ath79/dts/ar7241_ubnt_picostation-m.dts<br>
+++ b/target/linux/ath79/dts/ar7241_ubnt_picostation-m.dts<br>
@@ -1,7 +1,9 @@<br>
=C2=A0// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
=C2=A0/dts-v1/;<br>
<br>
-#include &quot;ar7241_ubnt_xm_outdoor.dtsi&quot;<br>
+#include &quot;ar7241.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm_outdoor.dtsi&quot;<br>
<br>
=C2=A0/ {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 compatible =3D &quot;ubnt,picostation-m&quot;, =
&quot;ubnt,xm&quot;, &quot;qca,ar7241&quot;;<br>
diff --git a/target/linux/ath79/dts/ar7241_ubnt_rocket-m.dts b/target/linux=
/ath79/dts/ar7241_ubnt_rocket-m.dts<br>
index 35f5205b41..9e342177e2 100644<br>
--- a/target/linux/ath79/dts/ar7241_ubnt_rocket-m.dts<br>
+++ b/target/linux/ath79/dts/ar7241_ubnt_rocket-m.dts<br>
@@ -1,7 +1,9 @@<br>
=C2=A0// SPDX-License-Identifier: GPL-2.0-or-later OR MIT<br>
=C2=A0/dts-v1/;<br>
<br>
-#include &quot;ar7241_ubnt_xm_outdoor.dtsi&quot;<br>
+#include &quot;ar7241.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm.dtsi&quot;<br>
+#include &quot;ar724x_ubnt_xm_outdoor.dtsi&quot;<br>
<br>
=C2=A0/ {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 compatible =3D &quot;ubnt,rocket-m&quot;, &quot=
;ubnt,xm&quot;, &quot;qca,ar7241&quot;;<br>
diff --git a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi b/target/linux/ath7=
9/dts/ar724x_ubnt_xm.dtsi<br>
similarity index 92%<br>
rename from target/linux/ath79/dts/ar7241_ubnt_xm.dtsi<br>
rename to target/linux/ath79/dts/ar724x_ubnt_xm.dtsi<br>
index e2b653b3a7..b36b0d4fe2 100644<br>
--- a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi<br>
+++ b/target/linux/ath79/dts/ar724x_ubnt_xm.dtsi<br>
@@ -3,12 +3,7 @@<br>
=C2=A0#include &lt;dt-bindings/gpio/gpio.h&gt;<br>
=C2=A0#include &lt;dt-bindings/input/input.h&gt;<br>
<br>
-#include &quot;ar7241.dtsi&quot;<br>
-<br>
=C2=A0/ {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0compatible =3D &quot;ubnt,xm&quot;, &quot;qca,a=
r7241&quot;;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0model =3D &quot;Ubiquiti Networks XM (rev 1.0) =
board&quot;;<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 keys {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 compatible =3D &quo=
t;gpio-keys&quot;;<br>
<br>
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

--0000000000002a481305a02a1eda--


--===============0984588685932860880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0984588685932860880==--

