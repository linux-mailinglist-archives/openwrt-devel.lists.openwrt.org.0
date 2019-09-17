Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F7EB547F
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 19:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=50pCs/zZbaA01LZusdluEmiKVqcpg9LGfX5Ip1E09Lc=; b=gdr9t6yCgDY/a4lodZ4HrxhS9
	A0h8syP9pbI+ZWyi/fLDULjfhX10tA0isMvPC/dObpMDcgtkayRRrJIxUfiPAb+zfn45URgxunjwP
	3ADDnM316PRe5lCOF2AbXZ8TKtU51eTapl+dQEnZQ+CZ/Y4+MiI99KUVjhTTeyUEPy6jUoX9AHFmW
	JUIO/0g6X2SuP88C9xZ9bJCGhFZRq2vwmvZs6SKlHDYr9DrLyyZ3f3oU2mJ8638Rt/xTECAEeToKO
	66oFZxEduBWTiNzxN/K8M9W6XSF2GSrP304YD7k2vgYBt9RWeHCxny9eBHXPezFmYNhVfqpMOjyj8
	dqdDLD1BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHXc-0003Rh-Ax; Tue, 17 Sep 2019 17:45:28 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHXR-0003Qf-Fa
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 17:45:19 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MTRhS-1ie4xH2Zzg-00TinP; Tue, 17 Sep 2019 19:45:11 +0200
From: <mail@adrianschmutzler.de>
To: "'Enrico Mioso'" <mrkiko.rs@gmail.com>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
 <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
 <012e01d56d79$a67cba00$f3762e00$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171908150.1267595@mStation.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.353.1909171908150.1267595@mStation.localdomain>
Date: Tue, 17 Sep 2019 19:45:10 +0200
Message-ID: <007b01d56d7f$a787b2a0$f69717e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHPCZHinJawK2ESMIjVbhdD0BHTvgENk/fbAjCsNHICNRzL5QEz+4ZZAglc0CwB1SBFaabovLAw
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZexWsAdiMc8+mgwS84NOKb0ah2mXH6MUA2jjCOD7+T9ZNz5/cgM
 qDjfyinPjgSzxrZuK3+WsnFWfaOFqFyaRU0Sg7IOMjGXnu6Oor+ZVJj2WIT6Ep68/ZlAeA9
 JyJayTa5UnJ7H9+HOxYQFFXU3nq+yiDAnmxdaoepiCKDjCamevyTKKpHfUnruVHc+sHHFQL
 KnIB7BgPPVZt3k8Zt+NZw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OmSVc82fZ9w=:AZW0e0FhDIAnKt931sIz3o
 rU6Jn1hy8bieDPZF/XeCR0b7dWFs6X5zUm7pA7XBfQQEyO9YVgvfa71o9d4Cx8NrY4fZRwM5O
 EH2eJMAvEr2kA2m1hC7UiSg4X82WGg3ARJfaGVO8xcFQElvdMQDFRlSA8Z8maXfj7LszAPB+n
 9CSfogZfdGx3ywyR9OU2gSMvC7IQ7bSivfbqgG2MKOE2iU9Pe5CHpdyaySUVcOkr9C3BzlMGi
 T4fkwu5xQQutWeE1daKTPECOhbHjguKkoU7tFDXjQxJeQFVNLyAs6JtD4m7wq4t3NALJgyZL5
 03APjoYWWuNlZXgztxA2ZDsLgaEGYCRUR7ex8N6lRiyfqkQcNu2fiyUQ76cb7hd80cXD+9sHi
 U/gi7mWRjWym+6xIAVkFanZbs8oFcVWwBYqrxWJwpiatj6ntFsfteLDaVa4mUWEzr3vVIwDEi
 96cdLRX8HcPhGTGVF9WlYWKavymE48AJrfvi14ikG+LoqSXGaHk5ZdzcUoK9d4xk/UyDK38UT
 h/L5WN8KXK+jPzsPjQSluPxRn+Y9BGamlNDYLfVOD48BH4r8aIOHFIKLXSsykMd0s0To3GGgp
 ibxnhCdEgi6B39UUgbY1jWPTcdS/tEO0lFeWYc8NxZaYTe+iSwhfHKcGPTA/im3Ij6vcuTh4k
 o65TiWKsaV8bj3lcsgcZXwsWSDLobLfljEF6n37LyylBMZ+mJMIG3xpmTBUcXSX3AZvejM2oJ
 Xh9Q+SQV8RoWBxKHy5II6xNLVZa50t5h8zwa3xZJpG5EqeEOT/HBGzd+9jd6DciGKWvm9db6b
 66nEK9FvkXFE0A25K3kRJr5gJEPO5+7u24QNin4I6wr0vIndi4umkPVou53GdFzJwTQxAyFnF
 FpEVs4bJLsa4HxCvsQcpMk5YL73+zovliQeUCf6sg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_104517_817401_88BC6616 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
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
Cc: 'Filip Moc' <lede@moc6.cz>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============0547719109661218921=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0547719109661218921==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=TNJKcbuygaQuA4=-="

This is a multipart message in MIME format.

--=-=TNJKcbuygaQuA4=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> I am investigating it.
> Still, something is wrong if I don't see interface events when unplugging=
 the
> cable, right?

For that topic, maybe have a look at:
https://github.com/openwrt/openwrt/pull/1942#issuecomment-529078064

This might not apply 1:1 for your device, but essentially the port link sta=
tus depends on how you assign eth0 and eth1 ...

Best

Adrian

--=-=TNJKcbuygaQuA4=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2BG6IACgkQoNyKO7qx
AnBWWw//e+7Pb1+LUu/zG6TjNK9vedd2D+VSBd6A/LpSuqT/68L/JMXPTiMJTvtY
aMqXYBeJtrE6IS/mhy7RwuNZiZ3NYylWXW6ZUTnivJzycgb6NhEav/Lngi62CkW0
f1ObpaQzh5A2xMtaz8tU/9Ra5wnN+KjhvSaVg4Oi4zte2cCMEf3imgpninrqrGs+
r5yC2t9YxHCSxBp/UYbg5kVjHT+CvNzCSvnFGqBejkKwmysHZAwaWOUUqBVxHsSb
mhzDgQxoIJYEf2tFfrKm3X7F54m5Dp+qPhLQ1t+WqxHqSHC0SK0leJzT42cYi3Cq
ZpLe/VAXBhwr094z7VWZuxGCwJ90sM2739I9v4QzmgoRV7yZKZ5AFjO2LpBER7co
SrMB8VFgOW1UlPRXDMpcZqUWhZOHk5ZncW4F0jpArA8AEHuT4fJEm3vnwBFyrzdz
Dr+BvqkU0avngWWAV6PgcuFRaB+kQDedcf+DuiSY+8OvRLr/RDXASwaAeV/Qy794
Vyq0GoNIl9BFGy+j7XaOH3nFRqX4fyXGfaU4SkKt+JUkxp3DZ5k3W8hbNsz+3Kum
YvpQinxpUx55trrEatDd9bYi+lVWtYV/i/OI/Mcvy0WCE+N67AC94OlghfN/Izuj
ICFSm6Z2P94vpM5NyTUAJzXbmGUUHMfk3JYxbA04UoYMHdO9FHY=
=PfNP
-----END PGP SIGNATURE-----


--=-=TNJKcbuygaQuA4=-=--



--===============0547719109661218921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0547719109661218921==--


