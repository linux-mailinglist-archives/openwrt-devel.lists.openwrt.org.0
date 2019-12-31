Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5804112DBF2
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 22:22:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xxS74OiPr7Zzt+CPyJzL01wx73MVOf8GVuAektGR1xQ=; b=Mz1WD1vJ4QPDcvMyzrIGKu1Ww
	YplP/Is9rJKhAjTZBWzPuGQRWnyzXtz7NdonFaAH4RWH4raAQ8B4JBfxeG7Z+OAJtPCKkPIIPcZ+y
	Uw5a1pl6e9pG06wf/7b5ZlffVSCGw2w0OCi6/YllVjomnrdpbGLj8xLg0ixSavlaT7LMeiLs2Gcx2
	rOsYGeb1FjI08mlwh7XUOTc2BD7Yc7XKutKIZukc7/xcdDUHrFfWA0WjRCt2aPDGJXqHjXOq1+yYK
	Xky6+iqHB8v4114UYi4YqKfyStFW7Rp4RMjEjwZa0COFG9VSWHCPIQapkNFkqq3Oi0O+025aKKqm4
	Q+HhSB+cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imOyQ-0006j4-EQ; Tue, 31 Dec 2019 21:22:42 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imOyD-0006hx-Vf
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 21:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1577827342;
 bh=N4gsRdoMfp0ak+l0I/QXaYkRJC0Z2aXrNie9dYhp7yI=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=EDzq2YkgWznHJFMLF3kO4gclbLt3OgLo1dUEvdNMlic8pg8NhgS/kByi/N1nM0Tlc
 hUTYMHR43AZ8oD8V4mmaGEy9MaF6JBE3Yj87W9HbUQ299RBXCd9weY1p/Vqt4tlO4+
 5TREy1ATDOa4ryU3Jhxe/P4LJRTxiRCzw9T5Vneo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.80] ([178.14.1.230]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N0oFz-1jiKoV1eDN-00wlT0; Tue, 31
 Dec 2019 22:22:22 +0100
To: Rosen Penev <rosenp@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20191230050756.3675-1-rosenp@gmail.com>
From: Hartmut Knaack <knaack.h@gmx.de>
Openpgp: preference=signencrypt
Message-ID: <e01450cb-1ef1-dc8f-3d88-c7dd237fcbd1@gmx.de>
Date: Tue, 31 Dec 2019 22:22:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Firefox/52.0 SeaMonkey/2.49.4
MIME-Version: 1.0
In-Reply-To: <20191230050756.3675-1-rosenp@gmail.com>
Content-Type: multipart/mixed; boundary="------------CCDF1598FFA555A8DBBD1153"
X-Provags-ID: V03:K1:g75ltSZDRFPn8tgFVoarBNTrgMdgQAE6963JRGSEYpPhZzJA5lR
 +xG3RunIRH1/bUUFKrhIQddHMMWEvdDBQchf7IpKGhFxwJrpCD8kc0tyQAGqnm949JcgjGD
 XCAvtGIiRBlwwtwHMJ4jHKD6pt50byxMw3El91I9eQhbWChT3YsevqGR1FMia2rc7jx4djL
 M6toKDtG+JVlFhSCgMwPQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:o+UgohWF8as=:rToku0OtF//glR6vioIINC
 h6NW1fnIvdqHjYGEjp+vP56X3io635r9JA5iqVpvvCO5ou6FH43EN+CxRYm6701Y8Z43k7k+O
 lS7AIhnzVS5pDEAgeNut3JVAdDj/fDV27XBVhLMiUTu0lr7yUUCLMUwvJ/+tSB0nMGgHNZO24
 S7IjpPu1RfJAwA7RYq4WTTy2+OSUtFYf2dUFTCV5o1mIE7cBqvAPu2RUbqFlDuQWmGXVCLwxa
 IoOT073IOu42PKr4mLnuGqVHDdk5g5p0qg6RxvArBaebPqJOoRmqGLkHUPNcNw1y48XWffUUe
 t85PpC8UuXHyJI6jk2ji+VZvlo1D2I86MqDwJjuKNSdo0a+SdS41X4BUc+4iGeXK1pNU9KiSJ
 pdCchb0z52ZIrLBO/0H7N11SMfWWkvcdhS5UhA2XSMYGD6LKgdQdlsAPGBIqZGfIB/ziFdxiD
 gt0PACXhH0rXRkAH3a/tYXdpwB1I/iCJ3ocy4TaRwhRJjXb5HlIX5+35scI8/ze1ZlmRVKdIy
 T4l5+thqC690McefyBfQsWwSgFkCDU4DziUlNML8WuMAc22U4MOHgqAsPbARCT2nF+PBKJv8J
 mcvNQsKd2/W7XHT+znK7lfpRozBgcC/c572JPPN2up8x1Ag3RINXjzzeYhX32cHD6Ibftf7xo
 QdI9tvqPi0+DQdnZH/kYfHt428FHAXA0mOpY0+FkYRk1weVRr93ZXhMlNDLwJdKR2DpbGFI3D
 Zfos9OYu7dCAQ6VMNwnGc31aYz8kbwV0A7Dnp9mh03NUbsMDRcpBHz0g9ZWe6MnH8jT09sX17
 mUXdo0N0WArYqNgy97WZjsjfq30f+IOWQboaxM/m1rIS5GbYYlhDvIflHSkaXCpvkE8whTXBx
 i/hKg/+LdqGTEQEb2GiHj8pYdzSrJCl/3MM81phnmrvJruMLB39vJm1fa1exhVj3c5IbHbCYD
 x/oPrIkTgZJ5juvci8zu2lApeQWRbuz4APxmOxAo39/wHAJrZRnXCf5whzJ3XN+INWSRx88pb
 ppMVpuBfsL0APsUHJIxdxqFdyyMKutWv5vNmrZxWh4sdUbTEdLRUMMmNM8cyq4uvkL/qUZtjC
 hJaQQtzTLUF7XN4wGau5HpDz377W6FulGqFwPIPUazzBA3me/AhgJiHIf80/WNb8GWwoULtra
 M726vPwywy3fBMdQQDd7khwH6u3Lks3t35pVpJtMVnhYldYvOuePBFjP9uCJPdn2eqbl8EVyd
 IxVA3cpuL9p8R/CQjFWlDO/DCd8fGYIYBI7Ro3Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_132230_348078_60C325DE 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (knaack.h[at]gmx.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCHv2 1/4] scripts/gen_image_generic.sh:
 Replace -o with ||
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--------------CCDF1598FFA555A8DBBD1153
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: quoted-printable

Rosen Penev schrieb am 30.12.2019 um 06:07:
> -o is not well defined.
>
> Found with shellcheck.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  scripts/gen_image_generic.sh | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
> index 2d2fb120ce..1e35b1b349 100755
> --- a/scripts/gen_image_generic.sh
> +++ b/scripts/gen_image_generic.sh
> @@ -1,10 +1,10 @@
>  #!/usr/bin/env bash
>  # Copyright (C) 2006-2012 OpenWrt.org
>  set -e -x
> -[ $# =3D=3D 5 -o $# =3D=3D 6 ] || {
> +if [ $# -ge 5 ] || [ $# -le 6 ]; then
>      echo "SYNTAX: $0 <file> <kernel size> <kernel directory> <rootfs si=
ze> <rootfs image> [<align>]"
>      exit 1
> -}
> +fi
>
>  OUTPUT=3D"$1"
>  KERNELSIZE=3D"$2"
>
Hi,
this does not look right. You changed it from reporting a failure in case =
there
was any other amount of options than 5 or 6 given, to reporting a failure =
if at
least 5 or at most 6 options are provided (in other words: every amount).

Regards,

Hartmut

--------------CCDF1598FFA555A8DBBD1153
Content-Type: application/pgp-keys;
 name="0x03684A18FAC89148.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="0x03684A18FAC89148.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
av9TAmRKNmtD0i57
=3DafBB
-----END PGP PUBLIC KEY BLOCK-----

--------------CCDF1598FFA555A8DBBD1153
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------CCDF1598FFA555A8DBBD1153--

