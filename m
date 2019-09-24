Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD98BC61B
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 13:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=itiq4oRxGls72we8aCK1O+d1DFdczfw/0iFZVrleyE4=; b=UgzlK3Qyjl7V8nKYxfpzVpirn
	4nE5pN5eWUgzkTeLypeje9dHNX/ccY1ta12Pa8u7G8ykwNjG6EqJGC9Smkain8CrJDiNi8iYuzBkV
	4IPPD2rx4eT/H/IrWO0hKVS6nItcY6XcCGLt1Rk3VTvlRsuqJmF/AXrXNHSOqCbIXnPtqTQXzjGMf
	lhT977kzjRx1m6ZWAkmNAVTFOcJma2MO7FwVZnqrBRbPTmiO1E6DSaMZE10OnSrU4sK5m4CrjwpS3
	3ChqckeVP5g0Ut6wJki3U+ocVWc8BoCLjSx78T8X8jjbG8uc8k143nNO1W0DjmBUMVHxtdkYYRJnt
	jTTsX+9ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCiYk-0006AF-02; Tue, 24 Sep 2019 11:00:42 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCiYO-00069A-98
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 11:00:22 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MQMqN-1iYM243w25-00MHnl; Tue, 24
 Sep 2019 13:00:09 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Kristian Evensen'" <kristian.evensen@gmail.com>,
 <openwrt-devel@lists.openwrt.org>, <dev@kresin.me>, <monkeh@monkeh.net>,
 <musashino.open@gmail.com>, <ynezz@true.cz>
References: <20190924104712.19812-1-kristian.evensen@gmail.com>
 <20190924104712.19812-2-kristian.evensen@gmail.com>
In-Reply-To: <20190924104712.19812-2-kristian.evensen@gmail.com>
Date: Tue, 24 Sep 2019 13:00:08 +0200
Message-ID: <00a901d572c7$3b7e77e0$b27b67a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQE48aeUHmlhzGInI3E9EeTxZNIyBQKWM4hAqF74KhA=
Content-Language: de
X-Provags-ID: V03:K1:zBdrvMx79XR+LXe6sfXQXw3ZW/ucOczFXy45XomcbBAIF3CXFGo
 oLvQufVvQmv7TlRjmpAu3f+lVT4xHmXICFIPvOgukBy2yrPUgukkStF8ZHB5TrVx4PWbM5t
 DCeDGpeXvPzvAprRaNzY5U86LC0Rvhv9AUtBJpeEWSlm2qYQT/WnAbqw7phNCIc1iDXbLJs
 kYconYMNY4hq+IKDv7RoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kVTTXH6GO28=:frMtHokOEwteI4sLs1uEHU
 6kcVzSJt6pqv1OP/Xi/OdYQVApH8M5YXvknqSWK7C3r4KwULYZtL9BnjKDVq0grHZmfISmH6h
 gs9sgMjORUJTWFapHKD7JWQFY6MjjSgTQDrxnJHjB6F0MH0p+eOf7U5NEuU1R1R2t6EtNl98U
 wtEZJSz/IiXK05JiJRP26UTlAnNZIXYHWjXUOtnPHzfHZhfY43WDR0xyOJSdmrOeesrM6MhWw
 9CG6Ez2uIJAf4Ia6cjBQRuLCHqFQCVPZ81/3VjO9omut0gG128mYWAJ6/u21GI55WQHs5UsWG
 4t1+ZG6u8wUox2jk4xbwn4pKnFSxEltv86zBThWMkzeph9aVPMqeZR5qRyrVlzIei1HUi4zpg
 zoKhaIJqA+Cne/WA9Uy71A/7yU8A9+F1Nv7E5vCMvfPEhgaJkZZtSsw83VPoVMJVU/5Xu4DRb
 mtr587tbcZCIIUnGF5Mz1ia8gt/op4H7SO2hI42dfaXRFbrYfcjsQqt3BlpY2WMyIjmpdbca0
 rce02zD62x2uTcBw/Yxry47CCnkf+doHPhUZRJkRnsJRH90wRVJBnMvDQKWU/WBzvztTmJY6D
 ra46sGvnhwg3/CWF7XgilT91yRgNiBrd492bSGUiaokpwL4eAnCXo3KuMlresFVIjtE5Mt50b
 T6HGiNp3lmRzlwx5hWjJEgVVCVYMQF2+NM266MjioGq6UssBI/MpDxPRhud3HuHPMR52bKbZm
 GSxbWANqqoc791jkhRMfGTy4MRZct3w83XdDfi3IeRpKq+SlvTB0HcfHHviocNS860wPzJxFR
 ikBNVUcr3DWYQVxoNwK7eqBTCjO/rPpHcQp1Mfksi70NMXJ7nojfqem8XF1S6v/iixDFpgrpH
 74eIhtledBcwXCdggF0xa4L25ABQoERrt+wzyC2L8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_040020_620617_2304F99A 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.13 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] ramips: Update ZBT WE1026
 DTS-files
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
Content-Type: multipart/mixed; boundary="===============8374045553116369036=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8374045553116369036==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	boundary="=-=AUx7qlRoBMWpLH=-=";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=AUx7qlRoBMWpLH=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

don't know whether that's required as I only did the DTS file rename, but y=
ou can also add my
Acked-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Some optional nitpicks:

> diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi b/tar=
get/linux/ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi
> index e7e64e251a..b90179fe1f 100644
> --- a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi
> +++ b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi
> @@ -1,47 +1,9 @@
> -/*
> - *  BSD LICENSE
> - *
> - *  Copyright(c) 2017 Kristian Evensen <kristian.evensen@gmail.com>.
> - *  All rights reserved.
> - *
> - *  Redistribution and use in source and binary forms, with or without
> - *  modification, are permitted provided that the following conditions
> - *  are met:
> - *
> - *    * Redistributions of source code must retain the above copyright
> - *      notice, this list of conditions and the following disclaimer.
> - *    * Redistributions in binary form must reproduce the above copyright
> - *      notice, this list of conditions and the following disclaimer in
> - *      the documentation and/or other materials provided with the
> - *      distribution.
> - *    * Neither the name of Broadcom Corporation nor the names of its
> - *      contributors may be used to endorse or promote products derived
> - *      from this software without specific prior written permission.
> - *
> - *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
> - *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
> - *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
> - *  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
> - *  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
> - *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
> - *  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
> - *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
> - *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
> - *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
> - *  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
> - */
> -
> -#include "mt7620a.dtsi"
> -
> -#include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/input/input.h>
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +#include "mt7620a_zbtlink_we1026.dtsi"

I'd prefer an empty line between license and include here.

> diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_we1026.dtsi b/target=
/linux/ramips/dts/mt7620a_zbtlink_we1026.dtsi
> new file mode 100644
> index 0000000000..522a354305
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7620a_zbtlink_we1026.dtsi
> @@ -0,0 +1,99 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +#include "mt7620a.dtsi"

Same here.

[...]

> +&wmac {
> +	ralink,mtd-eeprom =3D <&factory 0>;

I'd change this to "0x0" for mere optical reasons.

Thanks for tidying up.

Best

Adrian=20

--=-=AUx7qlRoBMWpLH=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2J9zQACgkQoNyKO7qx
AnAUog//X78KbB0ZCRZB7YfJn/D5U1BMXBbbeHn9PKgu1jTyucR72KtmzC6ApBGe
BAyyTPJmElFD/RQ+V1a6NNvYca3BvEVBSmBZUG09TCETxWTNi5XiCbPpQisPbFMj
9MHqewpC7vR4BHTB5TP/O1HY16JH/6CdxLrbbZIl/dRfunZV5RPMhajJB15Kk95A
CLh1D1ZzyU7OO+vXdx7X9q5TwYsIBAzG5a1YQO8tWveOFWfaKIGrkhOjk46mP81U
NZwBrlvwXTIg2jdGuGpxyztHfkJNWb6kO16CTec1uYygDFNpIN4Dcqig2CZdet9q
O86ZnHCfkOXOfgR6+0j+P3MfkRC2KwBduwnWi4TFcmYtW9/UuZ26L1G4LKEQCNnX
YcRMowTzJM/9+SPyvOBXa9WBtHZLkJlLV4ZS0//KGsL2Gc8rpHXm9jqD+46C86kb
sXwfhRFvHnKR9akWFaztJJ5sVzfihxXCexuVWHR7xJh/Ag0+j7YMfjHJbYLFo11/
OwR1Udu4VmxBE4QLu2x+WM0BEiN5AiwtSiFUTZyfWDiPMKj/63uUSpHSBxbxtJYk
BaatVmIMOqrZWhWNYF7GW7/KfZcZJ9FssHPjWbo7FT/eVJISV5P3NzTtMj4SBox+
3cJltcST3YlAUW1YYLMPoTfEd+G0Oc/W07ae4l/4rWToNOVshMc=
=lt9o
-----END PGP SIGNATURE-----


--=-=AUx7qlRoBMWpLH=-=--



--===============8374045553116369036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8374045553116369036==--


