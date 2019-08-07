Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2876B84BC9
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 14:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y3eJ+QGsv7IHTMRWN8r0SMq9FI5ut37gomSb49pN1SI=; b=C++a87rl56fo5EYVHVsNMF9gg
	wypDME4cxdz7/wlvGA8Mo/wJzCtHZIV8O/nNqHJyhLKGgjQLftDMu7qlHB7BNUk5Cx6cpcoeOBlg9
	QfuI9tw5H77f6sMOzW2XIUEncza8Q/ULyYjxwxS8lPfVnUMQJAtuxB66NZ3ohagck7d1U1zxCS40p
	otnWc4GFVwxhavvU2HuBM4xo0+lXzQKTKWF9/nGa1RzaYD2LkBZ2DHuBC9v7kPUICy2kmM/z2PZwz
	e4W16s02q73Ub1DIEcmcD+Xa7Wf36KWvcbTrkDf2rILtwK1aSeXKsJV/xDDrPsRfuMM7plMJvlPpY
	rC48wQ8Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLEW-000131-Uf; Wed, 07 Aug 2019 12:40:00 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLEO-00012i-13
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 12:39:53 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Mtf7H-1iBMVu33vD-00v6FX; Wed, 07
 Aug 2019 14:39:49 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190806155540.4e27407b@kosmio.komorska>
 <20190806160728.398bc2b5@kosmio.komorska>
 <014201d54c64$35205690$9f6103b0$@adrianschmutzler.de>
 <20190806173244.7f8ba6af@kosmio.komorska>
In-Reply-To: <20190806173244.7f8ba6af@kosmio.komorska>
Date: Wed, 7 Aug 2019 14:39:49 +0200
Message-ID: <00ac01d54d1d$33e47c20$9bad7460$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQOL7QHnymnlz/3+5VSVADj4hR324wFXmidmAP9z00ECXKitIKNcwjhg
Content-Language: de
X-Provags-ID: V03:K1:gR2nr9RzfenbeQ284W5nRYbjOjrPqlwmdFygHc1HFvmAJoD3ZYU
 a1sYPVa44CBG+IMSukONa4yC++BxqXm6nqpoM8Q0zZ6zRtVV5lVMc+bW8q9qzQl85Dxnxyl
 pgPbXqAD2QaqMep/4/YulUhAJOJfPvXkasANcIEsRO95xVi6iX1v6nQAuE1RyqVlbhTJkqk
 4E/W57EOaVxdWP3nw16+A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EreSQ8y1u1E=:P5Swj2oZ4pSL7GCFtPxJfZ
 bZn3UjUUwry1nDNp2Gis8yT3H/2KNCtRH+bU9KyMfoO3v8N1D1g78bLVr4IS+dl87KH7jEXbG
 y046KCcEgPYOnuVjRFiXh5yo56MBpQaqmIhSrY0gFYac13E9y7VxPs0UoOC+kLY7VDq4s2Nle
 cz+8U5KWXGPwR0VsoWQOyeo3X5AJuhrkqYT+lBuG4wm8I1NZhHg15G1y5PNbHASe1hto6BRrx
 /rsyCN+WyzDfqBsnKDuCCfoXqgPhUpBy48MqCmHIG4rSchvIgqncQktn6hkrhSNCRZC8rFlWt
 nAF7nVYmRXMnm1pj2zKm2JD4TTa//wc1I/epNEUnlh8jn7ciMbgNTYYrNmKzm5xDJnQUoUasu
 hBLEY5tW3mJc3V/QHBzho5Qn48Tw2CPvofRcjOcYGWMNg+9dalLXLBSACqw51FLGhmqzKwArJ
 GsJRAe7TS1iDTG6sH3i/Tofa4HCMPrhChSJGaH9IT+pDfS2SWg7sEky7DC6uLzCGyTbfeGEXg
 G9ZXKij+A2Qvn/BEg2CYy/vezzkfEUbLe+JVMFYwGVahky94tPauEGzGCINDCSXMiU26tVzL3
 0zRYPTfwkc1r+smXQhsFbXuQ+KD/Ay5GQb0DA4+Suf3FaDNvHQtw6ztn3bUM0++7abwfLTAsJ
 Zp1QFuab2IN5hIinGBjxhDSrTkQGL2CpdSht3ibRkjdtLjzq3lOeB0Q0tq5gRkMICm08oZBuh
 1gHUQ5kQOdlsrPy43c0H8UpFng4SWDIX3KswtonADoAMef70TbHtVhGma18=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_053952_363446_E83CBA88 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 5/5] ath79: add support for Netgear
 WNR2200
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
Content-Type: multipart/mixed; boundary="===============8502318130983877267=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8502318130983877267==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=GJpC5624Cjxmfa=-="

This is a multipart message in MIME format.

--=-=GJpC5624Cjxmfa=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> Hi,=20
> I decided to put it here as USB is controlled by pin 4 of wireless chip=20
> not CPU. If there is another better formal way to define it, please let=20
> me know. I've analyzed gpio_hog patch for other dts files but all these=20
> routers steer USB via GPIO pins connected to main SoC.=20
> Cheers=20
> Michal=20

I see. I cannot advise on that, maybe someelse can give a hint on what's th=
e "best" way to implement this case.

Best

Adrian

--=-=GJpC5624Cjxmfa=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1KxpIACgkQoNyKO7qx
AnBasw//RwSr9WEaEU0MrUd+RKUhggtQWKarzUk2Q6Wb+qAWncSQ3Jxjy6RdJKwg
AxDTleyEUhsYp0aggbjWZH9JWRmBkU35m5BvK65Jvb8EsdtL1uWMD4hURPSZZZnM
f5p8f0AIpBJGRvWtNP9yakfUG9MFwWslA3xPeMl4MhFTm411ryFUx9TNGMwDA2A6
k+YB6vgwmIh8UxMW29MlIP8FFifoDHEVDJa1uFUgDVxESXD54irFBs0ix+t3yepl
EFz3occOKkTHN1WAbcMbwTk5mKH2g6z8fhn/tWdGysHtLy0J7t/l3s+CB+h5SmYD
43OQmFq29Qy7UlKTvGEpNVZ3tbJeMK+cnO4U9hLt8DdooOxFHpS78WsRSRdjFVip
AnKmpaaBkdwY7pkz+MbzccDUzRI4GMThKFJHXcO+Mpyay08OCWbceWG2vONjAXFj
ARmoJxgWu7flwriQzNv4jk7VFcBQP15+8/NOMgC/FUXubiKhu8oQDj8T92gDm6uJ
ERJLKrEcfWD6WJvkoA5aeRNAbXfJzb4uGHJipXW/SjFLHjXA75ZNPBwxvtQQ1hVg
JB51DovXHy/gUiUXwiyI0LliiSaUJTYZlidMjOs+7Tbgi+n8WzZO2F5xzQjQ7BLT
Z5D0bl0zBqAgq7HEMP8Al34p4jSzmuQzq9PArCuWgccQFKgOCJo=
=oTVM
-----END PGP SIGNATURE-----


--=-=GJpC5624Cjxmfa=-=--



--===============8502318130983877267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8502318130983877267==--


