Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01041D3FF5
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 14:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=szzclpkU5Yj9faDclF+Ul8RdX0flc4W7GrpE3+bq/HQ=; b=crwwGEjjEsRObMO1Np146dFdY
	1AKa92y4N4BjM+DnJGelnwkC/5F93OLuC3PxlwsG6RLHCuLP/zmhjEB/UjX22Js8N0Iui9IHZvB/R
	Su4eazu1gj4xuqMhjIWSPFUnpRefezq+RhNFcaZNmPIR3Y6MP8Acap7lU5EVqGZMgzhg2c6QVUKeO
	jhkENARxqEJZ3LcZeaEDc6lUbU6dn/+oYnT2Aw+ufQ7eGHbqWsY+ibNYQvn1hK1xjLl6q1/M4xcOH
	dA7qJivrMErap3khrgOk266CwQhvtAJae9qfj3oFJEdonXhuW5aowSCAu6o4+q7UL0Fw7sfdGT1GH
	kmd48XXlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuQ3-0003Wa-QJ; Fri, 11 Oct 2019 12:53:19 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuPq-0003Vn-1J
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 12:53:07 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N336L-1hw7C222jF-013PkB; Fri, 11
 Oct 2019 14:52:59 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Sebastian Moeller'" <moeller0@gmx.de>, <openwrt-devel@lists.openwrt.org>,
 "'Jo-Philipp Wich'" <jo@mein.io>
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <B5610083-3E74-48CB-930E-F4074FAB6475@gmx.de>
In-Reply-To: <B5610083-3E74-48CB-930E-F4074FAB6475@gmx.de>
Date: Fri, 11 Oct 2019 14:52:59 +0200
Message-ID: <004301d58032$cf7a3330$6e6e9990$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJZycL2p2nDvdkfoZeqV61/cM4akQIoa0sNAm2CiJgBph8IXqYa8LAQ
X-Provags-ID: V03:K1:ka2D7jVNeB/Ubqh2CjIaZPcvnzguf/JrZSWsP5bno1HVkbgTzBm
 vzrI1NItTkof+qKhEJrnANHbNSVK7BSeulQNrc8XREmVjvumWLtHkz8/efbh6X9Et9U9iEY
 GdU/KxYT3mkdZaZIV0mCwCyllMl7bIcI1kTJ0Na2oBt0RvpPgjk6SeTqRaOpeJhcZWc7cgv
 igImrMfQBYvrtAwJHK+PQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:exAuyCl3qfM=:RvvILrdOZwQULs0GZeOKio
 6nKnSg/0J7SJDNieUTdUacEMp2Yuh5eg6DTQiDUukjj0odybkUcoBHsHD4iG3m/EA+wgyT7JO
 FT35Gvp0vHd63qWr6rk8/eW9UFYKJWndf5AByJdQYOIL8bf+IH0SXqW9n5oeIWMrv7gNVzPij
 Yd9AWfAqXMPuPQdXZAOnakcO9fDFsOf08pUmZ7WuxRwr0ojUe8JPlEqqBkBl42ECukANfGrx2
 hObLFf5GVAKbdMehds0V6wkFUG3BC1ECzzRS5VuAvT4dlUdNMZTgDZ5waGTtt9Vgtft2Nd2wN
 0zOuQH34B/pNYZk95pRa/8ROmFMmXSipmuA6qBpU6C9zxpE5vi0qyGEqtgcMiCm9aK2L5bJEF
 MU45czjS/GiE+OeSgHrr6mri7GKGOO6IuX2IuJ1hn7L/mf1umKT4FWCaxWTTTNhunWejWLQ3+
 B/uPz+f39Dboa8vAZW+jVJSzbQJ6ZXJlMszNFfQF1rk9tAy7SvcE41S4pOWGbpx7qrhkOeooP
 GRR3VXDxOQ8vSxzbklPryMDNu/YuGW+su6w2GeVxgOEl9SQg6im9H6ZazaTKR/152ojIdu74G
 18rOXQItK/xi73cA+VgibP1z+FWQlFXdi3sIifY9vLohT9sP4anxynepZE8lwx57ZfnoeZBgy
 Ak+UqWXTykPEUI5gRIebxwd28Uh5KK7U6xsomeIlyIlKof1aGAxxZxca+8jkQWKUJsXUMvFLK
 ZYquxlni+yfd3NmzKLFk7pcfjS+HdRN5QJqoQokylPY0ju9LHCtbhbJJJ5Jm0DdYZuudSQoTt
 KrONk1N+23p7gzIGy/uSd6UgNTx8govFXoPYwvB13eZGwrgs6udyF1N6bYGXRhX1itr0C++ts
 lR1vSzUgN/fpucV852b7MuMS0+LpCToFwP9jA7pzE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_055306_370336_1EC114DA 
X-CRM114-Status: UNSURE (   5.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Content-Type: multipart/mixed; boundary="===============6915380638275148842=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6915380638275148842==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=N+7FVH7zCfYwSa=-="

This is a multipart message in MIME format.

--=-=N+7FVH7zCfYwSa=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> Question: How long would it take to stabilize/test a fresh fork from toda=
y's Master branch instead? I assume none of these issues
> apply to master or need to be solved in master as well?

Remember that 19.07 is a kernel 4.14 release, while many targets on master =
already switched to 4.19.

So, where some packages might produce less work when taking master for a "n=
ew" stable branch, moving back targets to 4.14 won't be easy or fun. (Unles=
s you wanted to have a mixed-kernel release again, which I think is not ver=
y appealing.)

Best

Adrian

--=-=N+7FVH7zCfYwSa=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2geycACgkQoNyKO7qx
AnCuIRAAseBeUpf8t76+TOq/CbGo1kZdT8aLC+6nROVgKV2hXcK95PX4vyholUME
ebOogKyIUu87VXmQhhb/47Z0bX3yEGnBZw/uwFg7YbYv9ro14YOBvTf+WJDaxU6j
DJJIJGjcqq0H4PXgBmT2GdajolYK+zknMdWSs//nHaLw1H0kENrRY5HYkb1NhGri
gXREVdzvGZQvx6nMqGglELOs+qr65+OHujgpUpznycjXPCcOfvdem5Zx+EJ0EDbW
f1/xBBiJoqrnbI/fUupA8HAiL57/SagDtF2nI2nlejojczdPZgTkQAUejt7e7ybB
rHa9Qp9jonvD7vj5clKuMTmdqn6r4UaAEAUDgBRUkN2SHZuZo1GcpnG5zDZveGw6
sei7cCMQilP9kNqz1r1LydxU81vWazj0jjzMqCys8XYD0TNsChYEayTJsTNW9NA+
RHEnkopAg/vaCYW+qKsIJ4LuTMYxk3FOg4anmPFapSeNCfqzAe1zFJqjabLJYr8X
I/4/vaQLLKaXKS70uLLtazAj/exAqe7lXsFbnY4oFWpgyDqfVEukV9h7nkMrgEab
vfVpnxk88Ki55ild/kZz2C/bRAcgRktSDNvqB9a/Thbmb10fXXs7wxd22gO4QMMA
fTKv/m21yXzZpSs3PduCOoDWfCGor037pItFkb7eoPgZoQTr+7k=
=+4JW
-----END PGP SIGNATURE-----


--=-=N+7FVH7zCfYwSa=-=--



--===============6915380638275148842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6915380638275148842==--


