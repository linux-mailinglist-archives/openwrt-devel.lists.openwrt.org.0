Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2B3B548A
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 19:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uPiYdRgHqYEz0lx0CndkOcBSt4fY+1pi7Cm/ayIvYh8=; b=qKVS2Yyl+pls1wD/DKuMzwVzS
	n+Z4AUoIqExSibvsc2e7LV0ToQxNhaZkp0p21fbN3cEDdgG4bXiqBwvTe6RAkYe4T8kGDtUtRmZGT
	4/af84ImTb5MWMkWIsm5f7Iv1AdUC3KuKubO5GOGyGg5Ob+8SYhHKXcQcX+/OEvjUBrmdaR6Wty0h
	qBSzs3KPwfLRrfb+DJ40sGGC/bDie3SfKPPKhBfABK9bGXO1QdWT22O4j58gcQAXZwmp55rjYuBw1
	8LI+BnU1iRBCK3jcHFpHBZuU1SknqmJGHxScqM5nPbcnrudef5aLwVoHCoUap18M2ujnyA90L+QmZ
	YukBZDy2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHZD-0003ir-9O; Tue, 17 Sep 2019 17:47:07 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHZ1-0003ia-8J
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 17:46:56 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MowX2-1hsHIr35Nm-00qP8d; Tue, 17 Sep 2019 19:46:51 +0200
From: <mail@adrianschmutzler.de>
To: "'Filip Moc'" <lede@moc6.cz>,
	"'Enrico Mioso'" <mrkiko.rs@gmail.com>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
 <20190917111452.GA9795@moc6.cz>
In-Reply-To: <20190917111452.GA9795@moc6.cz>
Date: Tue, 17 Sep 2019 19:46:51 +0200
Message-ID: <008001d56d7f$e33604a0$a9a20de0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHPCZHinJawK2ESMIjVbhdD0BHTvgENk/fbAjCsNHKnIvpGUA==
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:mW8fkNVW/kli7smp3FLh/f7gni9JMHKyeS9sHj3s3YreCswZzMM
 CkQriQQ3Z9JHgwaWOFhUaQGW5T6uscMNeNiHo5W7rzCNnOF4cK3HKib3Lar9jMCrbq0Ir4K
 MRqr6Ee8QtIg+8ai+4xU21jVQgJBbNsIfNm51wUcoXuBUPgyb9jeZMGAQFtRz1KxBZGRXMF
 rdvwGRyG3iNcY4KBLMODg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:h+mceoUpY+U=:m9RqApXzGZ3mfyVcMQm2yl
 56JyyM5IN9miY+bBoC5BoTUuU73AbuZSZLVq77o9E7fve8anDu8nF1VNuf3LkQJzSPMFWexQk
 k2hRKch6cq/CNc29Wj+7k16LOOGejTHtkcCRMMCzBAWe+vaIb2pdgNOfPCDNmq8V1QMBXx104
 ViIMhtp4p79dG84K2LNhA/VFCWfj51MrXveK6Lrq9eKqBfyWShLLEbzg35FyP4VqW7RmYpuJV
 d4ps+j/Vz+ZacsuAfoTms4+MIRkImy38giAtOQJFfgEX9/acJFc3XJfvt3S9sOIQMufHf5gN4
 wcsvAVZdfkb7T0PbypjFCdG8OdxuThKTIPnbPR0zw0CRbzPA1bWtxq9MyJKPFlKu+YFro+oKj
 vwaRDm2cKPn//cSDeA6Z0917FUrxVIPwoTy6s9e6gEEV2zBmWxT4s/8mKk9y5Ofiqps9Bjhut
 +wO+FODLY+fv0ke4u3MUJMhJ/+ly4x3nXjOUthKMDpvU7jjfL3/jPTTq7MkWYi2rfsr+sLCp0
 NRaG+m+wxII2RGbRqxitnh0rBqd/ivOMHz3WeB9jpdKMySQ0dooZqIYfOpQP0MQU2T8iontDR
 w5FHajPGx28di4Kjrl0aZhiOdvPnoBJ2zS6VxHIJK7WahUqpLZaCUCcMBf7Z3xkrlD0dSAfLX
 GR1gNTYOaKfh390qld5UAuSPxnabr+mKyeJdzXeYZTII71d5zu5is9olCg2ZMhkadR5FrZwA1
 VXmFAIMbgk4nhJ/1Ixtipbg/llq2k8AJoMiwzzXWmsb/WO5AjK8ZzaZXugkYe78g1PzEL3cDi
 cS/optAaHabX2bbH8tbCxFsZXGArVtSA5i6bFti4r+j+GyMbtgGq6POgPqQOnOtJLRe9QVteu
 dzJUj6HGRL82eyrICBOhJguX13lD1iiYsgHdQporw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_104655_587123_2BC5FDB4 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: openwrt-devel@lists.openwrt.org, 'Piotr Dymacz' <pepe2k@gmail.com>
Content-Type: multipart/mixed; boundary="===============5727550633471035985=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5727550633471035985==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=Jh/pPhNRedcWyy=-="

This is a multipart message in MIME format.

--=-=Jh/pPhNRedcWyy=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > As stated above, this will make eth1 part of "lan" ...
> I don't think you can have two interfaces in one network unless you use
> bridge which you definitely don't want to use in this case.

Well, I would have expected that this adds eth0.1 and eth1 to br-lan, which=
 is a bridge.
Haven't checked the code, though.

Best

Adrian

--=-=Jh/pPhNRedcWyy=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2BHAoACgkQoNyKO7qx
AnA8ORAAvc9LzazWLo0rQa9hlbJujk2Iuonp4j8HrP4OgEMjKvyTIAKg9ULcipL1
+rk5oE1dDWcWXU/UJ1LDAvlur0am51oZDXIET+W4JSW5Bvfydcr9l07CxMZqbu3i
UqqVKWEa8ko76x7KZPzWexJHfoAvw1wlqaYYidAUcUrMRjon2dUA7wGoYt6PqIG3
1yvL1Vk1hSMRRwkFHshTTrQPHdwidDsbTC/sQHD/u0wZfEB7p37xN8WmYkCpSN5t
jP7iJGJnT3gu9Hrq2yoWkYvgYxa9kZM46DGm0w+7odsf1CIU3KqQ4eNKcWQsrP5M
LkwrFfgPSuWu1oH2yeia3CN9eaXCWCwUl/vVNqy4M87nNf2eYRSPxCfRavQUwq6W
W1n/h14d1M4I4n4jexl/X/ykX84kdamwVDNbJrKVckwiZM75P4aWbUW34tuS8df0
rDZ5zElTFWSxn/kS1VZAMTRF0BWtbNiHScT/VoXItBi0T0+JGb9LTb/gLg+4A5R8
FCicyXTdXDTM8hkmywG/6Qm64oaBQyFj9ES693cucDNhruLfP2LX5YX8+SKa8H8h
Uhkgp362TdCGmK+0GEwIlieAzDPJQ5auEBRWXavC1GLuYYvum7JWDPX3+DIhy44z
M3P9W5J/SC5/yuNtEI814umkVjQLdsM/49jfL0JuumeHg6Mm5lU=
=/65w
-----END PGP SIGNATURE-----


--=-=Jh/pPhNRedcWyy=-=--



--===============5727550633471035985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5727550633471035985==--


