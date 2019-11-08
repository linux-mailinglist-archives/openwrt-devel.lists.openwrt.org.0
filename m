Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3A0F4FAC
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 16:29:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gAscDGkHomQBGXTf8SAftEGQsKMJJTieM/IzZ1uCzWw=; b=PcMIze0WZSkYvfYpIv+U7E6hu
	6T8wj3C0b/C1baK2O/lFomWCoxbbIiloMQfVi79MDzjXbXRvyGZa+I7LtHgmVPsHpGa4cXjtJ6x/1
	yXsZA6jRhU2yMHwLO8G+RqiHtavNK3u11HRjuCvP6HioNhB3EM/0duSFX2gpU8ghj041oyyi9EeXw
	bl2o78ImCN7tfPtzj2hdPlfYQSk5n7TuvIO20kZUUK9XjzgzxIMqN7zbOhZVSXbholVFQqIlLv7Y5
	b0DOeRV76EAQaQQTilNfteEVef1Cd0wecVWMEnoiwdiQU1lXESeFgvlB1X0JlrroIV+Ler4SRTiOG
	xSJxBeC9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6CZ-0007X7-6b; Fri, 08 Nov 2019 15:29:31 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6AO-0005Mw-SK
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 15:27:19 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N63NQ-1hrfwV30Ku-016Puz; Fri, 08
 Nov 2019 16:27:11 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Enrico Mioso'" <mrkiko.rs@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
 <20191007214054.GA14886@moc6.cz>
 <alpine.LNX.2.21.99999.353.1910080711190.3029597@mStation.localdomain>
 <01d001d582a7$2a3edd90$7ebc98b0$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1911081610340.709261@mStation.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.353.1911081610340.709261@mStation.localdomain>
Date: Fri, 8 Nov 2019 16:27:11 +0100
Message-ID: <00cf01d59648$fdcf4a50$f96ddef0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJPfRHoBS5s4jhu9uUuLKJkakDH7gGolpkGAXzctd0Bg0V43gIzDe/Jpla4iuA=
X-Provags-ID: V03:K1:RveamMaiDhowhxuTpfUgUUiQrkQCw/6oMgmZqaMyKYjeyg9CjEG
 dPraY/3PDqyK6Ue8P/zgYCdThCdT9Z12BH8D2JQKwnQbQIK2R4xsEsLHzY//xyG+fHQdKGc
 i1sSth1hRhTbxHMq5gcqrgrlcbZnhmOmAkfq9rvMpws75jkXoKBknzolMox7fHJvz94Pfey
 c3hpuEO2n113xfQ+Zqo1w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HGLnLe+Oot4=:mq9fnPXAYnv9QhbKUZQhGA
 iMGtIdIIGBY8fhK51mosOdje3Bnvy/fig6tKffsgtmJof4PxgkUVsK7/wnOopBR8fqAv3rcbv
 Gu5XUzkcu2ikBYeRjDDSkMZfF3UmdFIgXJ4sYXu0jhEX04whylepdPQ1/OrGbIcfhSy9QdNxs
 t9kON0dI4g6NS7+Z7NesHZdbxiP6HW0osi9vFYaQjSgL7bVLNiTsHtIGa12wsz1Kv9zHn31uP
 jSqZQIvb2OOgXjuXfZis9tkqfscpbNN/VGJrSw8L5L2cZz7SeTjdFoXQcjW8Gq9+vH45ksRMi
 GFVlPxfYTBTEGLgatSzoesk6R65KPYUqCjPwF3ajLYi/KnLHW5I4El1Ys9/W7UDIe8eMCF6N9
 fy3OnHQq5xhDzjHqYxfWpvNBDCTCf4BkSBkndUnLmwNgFEiFz0jenM6ZLgNMau6K/Bi9RwZ8j
 gXtZM+ZDKcbSmhOicIYYqSv7V6f+ipQYDLBYtgJpVcjhI+6vBVMe4F++Hq6Q79derKqYctMil
 X5rODJ9pKURyoga8zzDHxnvbo18m7N1BuaxuSGrDNtvvBaY3A+ykTTduVoOTwp61KKlZaUI4E
 PoIC4EFMnE8jmvyTcS4jZtMievFlnzV+dFWybX/LEVbqwqBOKKH61C2VrtTt52OPb4+TPhgtz
 t5jqfiX5qfrdUiAw1How+U1GSvonHAbgvnxjoSju9WnRgcPfhSIn8IgmAWYZrt29MoYSg8wtM
 1YnfmdWHIJS+DGzgcTd97jHXKF6m4+XsebdKbvY68p604HAxeDZVPMlWn7ealS5oSwpIZCDPh
 umMgmx67p+AjMNqcWtQhfMVJ2svrBE1I8LqXbKNUhCsuIdUyzffH9FakuWgmhT9VebGHkRlZE
 7SDk1KG8i9gIqRHysPkJ/34buW/obKUMzW9JUkgxQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_072717_696855_1753768C 
X-CRM114-Status: UNSURE (   9.62  )
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
Subject: Re: [OpenWrt-Devel] [PATCH V2] ath79: add support for TP-Link
 TL-MR6400
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
Cc: 'Filip Moc' <lede@moc6.cz>, openwrt-devel@lists.openwrt.org,
 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: multipart/mixed; boundary="===============5048477751753097577=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5048477751753097577==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=65kbAmhdSlI84r=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=65kbAmhdSlI84r=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Enrico Mioso
> Sent: Freitag, 8. November 2019 16:14
> To: openwrt-devel@lists.openwrt.org
> Cc: Filip Moc <lede@moc6.cz>; openwrt-devel@lists.openwrt.org; Koen
> Vandeputte <koen.vandeputte@ncentric.com>
> Subject: Re: [OpenWrt-Devel] [PATCH V2] ath79: add support for TP-Link TL-
> MR6400
>=20
> Hello all! I am back again on this.
> First of all - Thank you a lot Adrian for your patience and multiple revi=
ews. I would
> be happy to have your signoff in the final version of the patch, of cours=
e when all
> of this is fixed.
> Still - the main issue, that's stopping me from doing / fixing all the re=
st is related
> to the fact I am not able to understand what's goin on.

Hi Enrico,

maybe you can send a V3 with the other remarks being addressed and rebased =
on the base-files split?

So we have more overview to deal with the network stuff ...

Best

Adrian

--=-=65kbAmhdSlI84r=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3FiUsACgkQoNyKO7qx
AnAschAAvTSQnpc1GyNAjD8G2EAhujBd/iGMGE7YW7h2ygl0b6LoxpV2eXmLuOkl
H+D+BCYGbp5nQl6qARQ9iOaK1CyFxYHo20bJk/8fUk/SxsERhah25XiRtMsD2gwE
VvK2eSaeah6l4K0O96lszU9HBpxKrhvnScgljbhsfABV2mORBJ8s+9GtUaFx6x26
p923rxqoVOrN1kNjcdtq6WPih7zJ1GO9XORXvNkLc6cYUTPbr/jAVcq010iRf82g
XgNDPGDmEz+aN+cLE5hxXrGGZQPSmvSuNy5/r9YXezwCjzd1Klw4KGHviSZvbCi7
Uhtz2W+TbpFIy8nL/MHjDG3kyv5Q9IlSbWo2hzeGlz3iV9rWWQOHdabzB7bb6vcx
xe8/07HVpNzgmw2zHFg4A0hx41J0xoFXZzoaB3NoRVqyQUErq/ueziRSf4s/7kKm
tzuVrOf2Te2kBjh3Go2ghK679H7fcvpi5Y9H0LZkAhuy/k4EdaLlHNGea8TIpQl3
Eg9oYEE3Evww4hFyks315lnObLhF/8PEpBfqqKRxd4YpXcbMFOhAnAGtCzJGHXLj
O9x6c1USTAsIkVjW0tLpGV4oQxazfQzNiZrq+VHxra5e+gY7uSyfAf40dofhGVgY
396iTyanAsAjuEfwW4hwM4s1dLMC9fsnqXu/2p3xjuggXj6tJuQ=
=yVnR
-----END PGP SIGNATURE-----


--=-=65kbAmhdSlI84r=-=--



--===============5048477751753097577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5048477751753097577==--


