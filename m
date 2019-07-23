Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B9571749
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 13:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0VS/CL0qtYSEZbw3KrqoDcDoXxDYpAK/sD2O8f1O/tY=; b=icWt26Er/lpkgfc8zE6C06ZG6
	pR3plLfDvNYDMgZd/1GEnWAKbEL+fgjfg7UwYSNXl0fjKZ+6mgsMgfXTXKd1Pwn6QRN7kdUiRjvBN
	mIpPTu2kFLoyZvti9JFZhsYpDvaOYhQ5nqf/dkQroyQRCNcyn2DDuwbRwO19rWP8WXhAMVxNtDblW
	JsRe7gHauv6WaZ+C6epAhmwVSTB++j5wpdpKfSs+eNvH7gFDdnjMc0z0Ne9jK3dUzdZjRhM+USp9k
	Te1fMg5QYtks/xwunKcnm1/6KZarnGPFhl00f35ZKWBnRDNHbh+dsnr0MzUMbnXg0isH0cl4ShxfD
	p/583mYJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptB4-0001Fq-SD; Tue, 23 Jul 2019 11:41:55 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptAu-0001FR-SI
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 11:41:46 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Mdvyo-1iNImP03hG-00b0ny; Tue, 23
 Jul 2019 13:41:35 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Luochongjun'" <luochongjun@gl-inet.com>,
 <openwrt-devel@lists.openwrt.org>
References: <1563867925-5931-1-git-send-email-luochongjun@gl-inet.com>
In-Reply-To: <1563867925-5931-1-git-send-email-luochongjun@gl-inet.com>
Date: Tue, 23 Jul 2019 13:41:34 +0200
Message-ID: <005c01d5414b$94be4db0$be3ae910$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJV12o5VRRkiWEMYFn8tQT9qO5ko6XW6A0w
MIME-Version: 1.0
Content-Language: de
X-Provags-ID: V03:K1:pyZQ9lb9cHlqhaKTBgqYRxH+lyBowr+52fHJVuBcKpyrYkPBKgx
 ZtE7rhyzQ8vwHbb3Fl8c+XedZ6yAnwAC0dO30Id3ZmDU+h2sVs9WQPBTYLw9Mt/US67spAz
 mzfc52y8gkVQDAy64OpkPoA5C8GphfT8V4pjklGjBcfY2MmBacr76+t2XFJOun4szEfcIQQ
 uCexA2MQT10aYk2CKZt8w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iv+tUyvqZ5U=:kMFXN8VkIeGg2BY6EFLnb3
 2o5iADXWqvz5z7x3bpytIZ/z9/q8ACua5/30s2MD7sFErRr/8Fi5MToBIa3ru9M/onaIEHLMn
 80D67vCwaGV6YQA65Br//qzoZZ8Q/BH/2er2dqjfhNBhMGc56LqfCWfhhPtWqGkpfcZly49Np
 Z6xrEPC4ej7z2Lgjf/aIsvnGXbR9Mdsnf3n+N4Je69QprAHbR6yoK65fl60VPPJVCUxEhcSaE
 ui35kVpkcyT7YbRCtaoHfwVd5gDQw2+XyK/EvH4SIyAMd5qQvN+gWdcNed78OkzdjTZoZEFUO
 JX40biSVxvFFfzv6fwtzUmVsvTgpjAsg65TwfU0kYdg4wdW7w3JzECwbmHcYVDS2YJIYek1oe
 olrbx3zlOLwqaKMeJv77ZXymOMJsBYwsaVPJ69GvRUDv+yt/keLFrNKTlHQcDVzTYRAMEBhF4
 yonsDAKglOErnvPyKhYiyvV/w3DsWIFxA+U257TiBUDy7z8jUxAevGi1TOvRKiq5nf0Pb30y/
 HXOjObs9cz9bTJ5GxcSmasBqDQZggtjwzLMLMa3A/EGLWoMpWbJdzvz63AUH2GC2bf7WHlZ/g
 YsbwaxevtC+tqjghzwgKqWjCz7mZvEdYDuXfPsaigAix2YWnsWys4hQUkA65NaxE+cMDCZPs2
 Y7krHsi+jQfnahbSi0cYYIJNZbk2uOF5aveC9+Wj5RhbbJ+M5xwmwnuKHnuFbGGZbDi3t0KSz
 jgx+OokInp2+dV/evsZGSZt/1PZyBUbuwfyOmS+/+5CoGuqb0a5a8chuu7g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_044145_211391_6AFD7F77 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-ar750
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
Content-Type: multipart/mixed; boundary="===============4483737878674526409=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4483737878674526409==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=/nW/UW+tcOmDvX=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=/nW/UW+tcOmDvX=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Luochongjun
> Sent: Dienstag, 23. Juli 2019 09:45
> To: openwrt-devel@lists.openwrt.org
> Cc: Luochongjun <luochongjun@gl-inet.com>
> Subject: [OpenWrt-Devel] [PATCH] ath79: add support for gl-ar750
> 
> This patch supports gl-ar750, which was previously supported by ar71xx.
> 

...

> +&eth0 {
> +	status = "okay";
> +	mtd-mac-address = <&art 0x0>;

Is this the MAC address on the device's label/case/box?

Best

Adrian

--=-=/nW/UW+tcOmDvX=-=
Content-Transfer-Encoding: 7bit
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl028mkACgkQoNyKO7qx
AnBqwg//VxdolFk02eRb2kxTDm/w20BpdBlrtx+/k4cuoDa4GD9bBKHRX/iVxtDI
G+cr3t53irg7SzzZAG4WAYFzgyqZW8AYL3gvyOZD+xnsjYhOr5whq3knMLOqC6yk
3eFWiVdRwMsREBKK48Ojc9zHJkNDO7Qp8zondsBDSzvJ6OGq/ZKzwL0v1CLP8dsV
0Y69vKNsvAZUQqMFoDK7WHr/wB3HewBkaLtQBRQCENm12c+FrOvIzVvuSSrPPD/r
Au11HNCh7Mnf1CiSM5HVTS4oYVziLds24W9QdPexi20Kh6tXtECMT5BCgaf3E+5S
5Jh5a82Ccc0u7qy8zsVCsHmwk9PGC49TUddUrqr3kqdReW1OijW7v2MBffexuQa5
JPJ0GkslzWUr8OSwnqGh3c/Ex6eiDxYI/of/0wYTfsHCoekSO23Y5hygIFuh95qW
OkIWJUpFNHZqd91BTWAgs9zYmh2X3Cau0XQLYVIPowNGyp/I4dHxu7KQDrL0G0Hv
WeX7lowUSCn9hFQ0PIsoA4DI6RDaJQcMByZc/1lp5cuxxDAK0rV17RcJp6cwE7mz
gug7XWlXy0RsKoADjJM9O0g08EQ66eRhz+VP/fI/rngeSfgypCRyBHlJ5KLpMvdq
yI6sALSCwGDg9j2BnU6NMQ+Q4J8mDWJl6wLKLFePcW9AuFfHtUs=
=gayj
-----END PGP SIGNATURE-----


--=-=/nW/UW+tcOmDvX=-=--



--===============4483737878674526409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4483737878674526409==--


