Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B3813250A
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Jan 2020 12:40:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4fyUd1bq4HLLnQEjgnv6hyfru1ppie4jJaMb+D6Yz2M=; b=Xqfaa67EvH+cG9nSA+CDsiA63
	ZjlI++3DBKO/oXgPVORDKFiu71rIEpYFknIPtngCoGfpTRS/7F8w/9M0XP7IDuAVkUCi9DtTKOpjn
	GV3bAUoWBmF89REJ9NDhZmBzpr4G4Z9t2vXxeFZRQABOn9llmEqTQeNMJuVgSQuekgQk0XD7sZQAq
	DcBrmT8irlbT8B9ISLLz1r0TQyYG9YWd5+O2olt4zIo3xsdfFZs9SIRVUrtysHP2DB3UfdvJcgZib
	Q1/vWYKG67Y1gZFcybxsqI2ogTrAIqrwbIB8RVpyxuphA7enLvZ2uwdrdLkRjrK12kei/VVMTsG8g
	nSHWz3yeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ionDL-00015H-5P; Tue, 07 Jan 2020 11:39:59 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ionDE-00014i-7v
 for openwrt-devel@lists.openwrt.org; Tue, 07 Jan 2020 11:39:53 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N336J-1jpms30ok1-013MSG; Tue, 07
 Jan 2020 12:39:46 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
	<openwrt-devel@lists.openwrt.org>
References: <20200105141756.23473-1-hauke@hauke-m.de>
 <93c68973-35b9-2dd1-70fb-2d15c12fa8ec@kresin.me>
In-Reply-To: <93c68973-35b9-2dd1-70fb-2d15c12fa8ec@kresin.me>
Date: Tue, 7 Jan 2020 12:39:46 +0100
Message-ID: <0b2501d5c54f$2939cdc0$7bad6940$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIuF+HeIBVU/ZlJzrne0jxHuiAM+AIWn2Tgpx23gLA=
MIME-Version: 1.0
X-Provags-ID: V03:K1:38DMEHqODFtVuY89YCbdsC75kL3lFcA+Bb+svOR7kdVnlPnxWTQ
 SqWzrHCEzaFHlBj3m+zIQ1lTpgB+k9rjw2QTHiQV92p3H8nO/lQxF835P+8l4I+EY5GRSnG
 ENHnXE8YiDUhxdbweWMvStGZnjYmvHmMVQCbwdDJC/1NjreHhs4x0jZwfDNEYNakd7hoR91
 KaOEdr1gvWvQwdqL+YmlA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hAull8Il7uI=:g2SgDrV6PdbVDdAohGruP5
 ow590f8X5qv+2j45teSuczT3h087x7fxkE6+YHDuoJWWNb16y4APEDJzJR26E44etG8b7taCt
 VZ/zbmqFsOmuSyqdn1koVhnSvt4EOzzSR5dR8ovGQXoq8oeSNALuLxnNZzgzPSu0Kl559Oxos
 8LGjt6QLodZ6bioSCVWWv0XkS4HwdL0Wh9CRu7rWhhKnxaETwWK3naGHCIjiXxh2OgYZjEGFp
 cSQ81/aDKgTEr3gYq8XdVeLSYGg6PQq6yB+wJKeg7DOpxus+XkUI9dO5r7J/r6QMWUy4VsCwI
 uXZDVkgpCVyGEKMAEjJuSbfk/W35zmbNhP9Pm183mtYPZmqL2nS9eXXOVcUBBUw72wnp6v/gB
 Ym0gAaueRukCBR4BvH/AIe9Q11heyOU2fXI9BJ0bST5EEMCbKfYyJpuS24FN/2Grb7ovcGKzr
 2xiz6Gvuj6qHbIse28uprJMhHXR/LUh9B5yBQunjoUs1/8wQMGbng5VTRbr9azvWzK/iR5dFl
 Fhd8Jv4A67frfF/UdIfLI4qIb5sZaPnsxh89dApSoUykrF+GyYEGbTw5vlzW2S5wc8vYgG7qB
 Z79usERQclxPew0GOQvujAACAFQNWfxs/u1SeCOWZVI4maKjBgeQWFmpDA4z3Iodgj8xoK3jy
 r5ULRDJFgIbv/vRJpe/ZrSWL02fxxZmWUt6B1RGX9XuqIOJkYIF4E0za5U0sbcRVtd33KROkl
 p+8+OWbgw6PD9Po1jFfHqn6p9d2xno6Nkq1ChtMaknL6WnqvjnWmYlRZbtVNwKb9H3ihY876A
 YsaAITcsrU3csDK9wS8zSQGO1RoLx4YpSkxhv55w/z15jxifNUCIFhwelrAAHubgArLzbWA9v
 MJRqbcgahh5hIM+BY23aiCfmCf8SQdOeJJSQgAQCk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_033952_572873_24ECD0F4 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: Fix sysupgrade for Xiaomi mir3g
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
Content-Type: multipart/mixed; boundary="===============1258238635301114953=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1258238635301114953==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=+yrx/gQ71GM+H4=-="

This is a multipart message in MIME format.

--=-=+yrx/gQ71GM+H4=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Hauke,

since you seem to have a mir3g, maybe you can look into the following MAC a=
ddress issue/question when you find some time:

For the mir3g, 02_network sets the lan_mac to factory 0xe006, while the add=
ress from 0xe000 set to &ethernet is (thus) used for wan:
https://github.com/openwrt/openwrt/blob/master/target/linux/ramips/mt7621/b=
ase-files/etc/board.d/02_network#L262

That's the opposite of what's usual for mt7621 (lan: 0xe000, wan: 0xe006). =
Therefore, if you happen to have some spare time, it would be interesting t=
o check which assignment is correct (with vendor OS). When dealing with thi=
s anyway, it would also be interesting whether the device has a label MAC a=
ddress.

However, this is not really a pressing issue, so if you're short on time ju=
st ignore me.

Best

Adrian

--=-=+yrx/gQ71GM+H4=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4UbgEACgkQoNyKO7qx
AnDZPg/+K2cBQzpVi4cdFc33lNQGBPENElLj24JbE36TA2rFKHrtPxjDXOtnGoUM
+4JAlKXW5Uch6iO7JTMAPu3fR7Xpeb38I+LRGu2QyL7vziq9HqCWgSRDU6KLQTg/
yA8omn4qI4UbCnkiXXlVS0cBauikPkApEZNfL4DNX8xfGn76/Nz72AdlL9cI/6lG
S3gBoQEAPjb4370cS3TvU5OGL/DfVdEbRrQ958rZs66AnGZrgGIj6a914KtDMnQQ
CS+Pm7zX4iS8PiAoadOp3WqEwO2yVUtU6yoDPQLoEyz69ARtVqu23K79IGbYiZtz
NhPsOZ4HZJVY479On0q6k5To6+OwrFyC0nW9W0pIYh4vWhEMkh0j32mP3AaFsT1F
K1LSoDpy99oj7qtVCDh0IyRMf6N5viGpHcvT2skw0fv5MJEqOGKzcYtpxylevVrT
+gm/p4CBV+bgvOtkyuDH55bziAjpdfzaIx39M5Yr1alkiNiNXr7JHKfslivegJSD
pZgVl+YiikOKRJN71Pex08s8c/lwtSdi7YyDNUHtvXv9/xMKhRDhxmqj2q8pXeRU
jQcYn6ot0w70jGymg+1y9CZ1Fgr4wnby1Ry3VxgSmNANNtO7DW/hePo6TmNl4ykB
20cjEdgu/o7epKlNannQ8CehZvG31DQEGvbWo2SML8zm7NEUOWs=
=zPID
-----END PGP SIGNATURE-----


--=-=+yrx/gQ71GM+H4=-=--



--===============1258238635301114953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1258238635301114953==--


