Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0F88321E
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 15:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SFvfShSOyyw2vMPmR8bECvzlUXL8UMTXJBNLMeEe3TY=; b=YnPjzI9IxWGjD+Vb6g4hys97U
	HAmQPSClzlMXufbeoF53H5aWM85JiCE71o5mppBY+9/XL5Hoe6zxm7ngR0DVGZa7WYldPXeaistHP
	YwRbCa5AjcdPqEpMG4AIMIkyGXgNLCiG4DSc/18iSakeamYFoZCDjUqK4JseX0m+mxGs3pvEpApgq
	fzlkxyAlszX61WrerJ79MKVwwIaoHs7QfEIf8j3tDxy4YNk8lOSbHPF/StpfDtHoATyPHw8odeO1J
	T1IB+m05zuvYjSw6K97gqiLhchg6yharwnp9d+0Yqcgf8KBD1cfPSz7FZSQOo91Q05VZ5wdTo6OTg
	QuSIdv+jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huz9G-0007Jf-CY; Tue, 06 Aug 2019 13:05:06 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huz94-0007J8-Gj
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 13:04:56 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MKt3r-1hbwII14cH-00LFIk; Tue, 06
 Aug 2019 15:04:51 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190806125153.07c9b005@kosmio.komorska>
 <20190806130234.4a3268fb@kosmio.komorska>
In-Reply-To: <20190806130234.4a3268fb@kosmio.komorska>
Date: Tue, 6 Aug 2019 15:04:50 +0200
Message-ID: <00e501d54c57$8877dc80$99679580$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIIyehAo7HOapkFG2+G66lzS5X+1QLD2bObpnD8KlA=
X-Provags-ID: V03:K1:+OLGXbPaAcHwRiGJDcIrybDWXQlc8DpbWBHuNXpeJ5Q6C3YCb7n
 /wSf3erp4VjkGfQi/Frc3AJY9SRUAKslvH6GkOGAva+WSVSLA/s+cDSZu8CUK3Mm6+qhh6C
 Jpp4U/L6oMlKz5Xypm6PsrANAvtWU9Hw2uT7HXdPmhuq470Tv16pYxd3KRp4em5oYyKESDo
 ezTAm1o0tOjiGS3ljKCuQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qSGz326BNOs=:UweMDKi7ym03nOX9YTNwDQ
 jt4zLEQw5J3nXIMvOGNVkSpR7dIGSpysc+h/Sr9nYU2sYaGr/OguR+Tal6TKDiWwvIMDqEep/
 vUWql2oPEO7XiH3rOY4U7YT/25sxKG0aVt+XbLzS62I5kQw1jOCtwPK5wfFh0uOObLpaM3dqI
 5owzyozepRq3gdRa6gFJmggTHrQexFheMEhv8lkhwJByubU96Gxe3d+6kEfdlwMHv0VOrB26i
 S4uHwIgq+/rtsBoQPnbtSBcLEqzXzvQZnk8AGyHneUc31hDCnuKZmoruPvDlm75ttL7Php9wO
 L3/mBXGysTx/dB7JV6jnIv+qrqLD9TXZ/J1C8Db+sroebXT51shKObySDF1fax4H8/i91D4yx
 inp+y3yJyxdQcwn5FFQ97RN+JUgIJ1aAIfMOf4WvfuLc025WvUNap8YcEEwRqHaXtOVy7SO7g
 bWl7N0IpF7W/QVEqSNcwNTiSTNX5cy2zrI0njiepVX4mO71Wd1+H5m1DUxzdyZq6wXmGzIOz+
 2dg1vDMbi4S3JO0x9K5B55dqGGFMfHeNK/ldxPkw0/6L6NNcGdaBQFyZPJ17mJZe6WRu3Q21L
 NNOW58QoOoqeuZgN1tpd78UsexjYixEeMEDepfPWDEBFgsYKX0cFgLBs8FcnkJSIpi34q+k1Q
 oAaXeUt+qaBcoEQI8sK7MiT/DbSwDnQUn1wlk5tob784xdNaIXDmVd7F50WoHd8L8zVjoqc4a
 uqB/30ZmHGBWMDWYLy109Y2zcl2/ezeX/tr+OJ5FY7FaT/G8D7f/nbRVMMA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_060454_862756_0CB6AD39 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH 7/7] ath79: WNR2000v3: change WPS button
 to interrupt-driven GPIO key
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
Content-Type: multipart/mixed; boundary="===============1192047853332491493=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1192047853332491493==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=qtPVwKn/YdUN05=-="

This is a multipart message in MIME format.

--=-=qtPVwKn/YdUN05=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Michal Cieslakiewicz
> Sent: Dienstag, 6. August 2019 13:03
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 7/7] ath79: WNR2000v3: change WPS button
> to interrupt-driven GPIO key
>=20
> WNR2000v3 has one button (WPS) connected to AR7241 GPIO directly.
> This patch changes its servicing method from polling to IRQ.
> All other buttons, connected to wireless chip GPIO pins, remain polled.
>=20
> Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>

If interrupt-driven gpio-keys is working for your device, you can already i=
nclude it in the support-PR as well.

Best

Adrian

--=-=qtPVwKn/YdUN05=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1JevIACgkQoNyKO7qx
AnB3+w//QPMFsDQ4xFC/PHyAhYtSJwMrsnbp2SwaXCZBQ6ZGOsMuFvsk2KMDqBVS
Xh3mOovpX6YnFVZ45A5Aaem8byYzFxIYngh85Lfsp2gDW+EA/QvnNKZu0DRR/4oU
T89BULrx4oL/xcVlqeJDT1R3NyauBNkrZWbMo99BUw2ImL/kA34ySztNHYij79NW
13XA7dA6eH68wqMbuDFcab9OcdVbYcx9EoJAekpU491FtL4QgTOZwMyfPyqN1qsy
DMaFvZ8qXGCf7/ep3Zmhkx2Q2jcAIqPffsr6c+2fHA1JXBUZ6Q8k++FIttYNAQAO
nvxpQ0OT+1JDmyzjAlrVRiL1sj91S7JdaWnGogWkNAk1FkQ2tBcHd/dSZ2Uo9A/4
vahkwj1URlAZxbTBW5hn0UMX/6xmNs6RN6A5hTo8EY0RztLJe7XfO8i2iwy4KiZc
XLlm9U7XjqVR5a8p9mJ4aXK9e1iKKTYgjTMdBwPfPMZy3uGSrV+fGp3ZU3sRofHI
gA+E2jbKW4UFrwyoJOe6rGUu58iFZK3ovMQPCoOmqr5Fexxto9P6RlyRn2P+PEkU
sP8wVF8yficZ5Y/kkyZFafnJCKGBxH0nWwVUGq3ZZFKa+/+sa7kB4MOdeml6bgjy
9wA+vLPwA+Tou2PyYeY8hl0I7mXewjw+SQDnl10pLY2Y5uqBQNM=
=xRUZ
-----END PGP SIGNATURE-----


--=-=qtPVwKn/YdUN05=-=--



--===============1192047853332491493==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1192047853332491493==--


