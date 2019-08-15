Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2AA8EA2D
	for <lists+openwrt-devel@lfdr.de>; Thu, 15 Aug 2019 13:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9v7R/gIm4w7eEpWzEmw5APSIqGkl5q8DX8GOABTFtRg=; b=MVf
	jJq9KHcb25CaJOQWsEDDrnkKiYhEiOShokARa8yzjaHHWyClWKkGjjdEgdqXBEyLd+OkkH0YxHtCu
	lAEzEUehhbu/RDmmbgTclrV4uf1OscoNlQgtVvVztU4lOIGFY13T/VNgJy33McXIjNxWPDFGnwmnU
	sWmdXgbbD4x2zWXAQv51k32cwKw5lfYcINLkDedUP+7IE+eEvnZHZOJxmR6jySj++DHn1XAfMJArB
	ikmrvbsGZ7C43YCuK2QGa/iNhhDvusKv3Pg5CKBOv5lmCIWaryp7AxfRcEL7gRcztmVtrgAqmYxLL
	vsSglHzD6xTdFHSUxN716an5c77b/lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDtr-0005mQ-KA; Thu, 15 Aug 2019 11:26:35 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDtZ-0005m4-Rs
 for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 11:26:19 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mwwhx-1iDzck2Byt-00yP3v
 for
 <openwrt-devel@lists.openwrt.org>; Thu, 15 Aug 2019 13:26:13 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 15 Aug 2019 13:26:13 +0200
Message-ID: <019e01d5535c$3eeec630$bccc5290$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AdVTW90nt2D3sfmqRuikzH54FRwPIA==
X-Provags-ID: V03:K1:KlAqHOs5kzZ1deznf+WSX4kqxyrOP/Jc0+N7L6RdAswRimNAQO9
 MyIbsbkffTafZP0gm95VybZ+wpIs3Y4SUfjYzOPo75jv06nyGrz8WSmYgwfvtKxKW9eX8gQ
 9CqU5e2sMujjZPXSNYoVN40lhl4xCPp7E8q2ilt/UHZJMGJqpwwqQYkQULgirpoKFFt6I98
 ZELD50LIS3wg141R2BezQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IHwgorH3Lww=:RTmpDOph5NgvXSMGjfkUk2
 l/gN733PVv6jYM2jEWWJnNJnn7mr02LUhDd1FPHAtu5s4ahBROnHydT7q2UN+9W5Dbrl3cNi1
 69xOzJ8nPGVHcAuxLejIWy8P+KEyAVUbPaQa3gT+VIjH5w5+ECVv5eBE86N9zdxp9tlERV40y
 Vwrw08F8DQUlADhzKdhhkNgNVkBp9ZCTFZNjGsN1lkMqS6jdA4deK6xs89G+oYyRS7zYjlb6N
 gQeFwdukzQxXd5zc6ujmphXLxVYLhd1wCDQJnxoj0sYRTH8P0RNQO93J1dZ4Y+SMwFkQHuqD8
 B5gyXBXXhDw6+vn8swrKRMESHxKWYOx4PTJe89RmgRLcsq9ESTrDykl5sWVybaMbah2YZddOp
 /VR3jj3yaA212fsZydUmNE6uJSZk7PvNTexFg/uwdZfvaSlqB2k6e9OlMIO/HjhaajG8ko1tM
 +coFDmyPdFGPhDVSUYotNd6Qt0JUolWbr9GP2I/6YSZBOFTkO07xR5pPkjg9stC25i/VCk7xU
 ahkg0ghXOiEf+J2SaLFOWBkDjKWr6y1/SmP85Q7VncNM5BnNB6KWTtc32s9qB/UAmCktCmfr8
 9wr7ofQIZU6ffpjynTisaF/SkmDVVLq96flhu0CRdMXc0kRwuAc6ptOduXk6QaX8291VIiMPe
 9BhTUoljrAPbaG7LhczGnUXxEFVFPGIxvUJgDmMM3gOyavyTCtcZ6UDJQ2gZzsA53PZSnwDtF
 DblLG2HmG1Wpj2oyTVtQOIzzGn99Ip5nQqYwSOEBx7FGnwmwCUGKlRpDnLUgNyo76PRhV6X/X
 FAQFg7Ia7WIVlqxLVPTA4npWkPEOBw88vfa60+IVVBZOj8dcJM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_042618_195936_3352BF60 
X-CRM114-Status: UNSURE (   5.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] MAC addresses read by ralink,mtd-eeprom
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
Content-Type: multipart/mixed; boundary="===============8783177147427611616=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8783177147427611616==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=QrEw3y7hi2iRdh=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=QrEw3y7hi2iRdh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

just a simple question:

My current understanding of ralink,mtd-eeprom for &wmac is that this reads =
the MAC address "automatically" if it's in the correct location (start+4).

Does this mean that e.g. in the following configuration I can tell that &wm=
ac and &ethernet have the _same_ MAC address (without checking on device):

&ethernet {
	mtd-mac-address =3D <&factory 0x4>;
	mediatek,portmap =3D "wllll";
};
&wmac {
	ralink,mtd-eeprom =3D <&factory 0>;
};

Thanks

Adrian

--=-=QrEw3y7hi2iRdh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1VQVEACgkQoNyKO7qx
AnD/Og//an2McQWnX/Hy7b3uLubXLI573WPBwwVrM5cJluY/c12J4Ux5F94vj6ze
58VmGe0knkLQaamM3NbXzxmArnFtY7ofDVyqNZVgkPxGpk20dro3UNzYNmx/M6/0
fMHIIb4IaUVys/wOXmhDPtdLuX7cTrhO/ipVXUHzOiPTDw7C/Lh69CiTYsKemCCH
iq6nv25aJVdsA5/0d/TeegEWjx/7w8yoeymrRz/LACWwAyorUn9RLc/U9rMn43vb
XGnQL4iFcYyuUMzdlZRG4Ol1+f30JeavHrLPXnu10ZYn6t2oMpLF6JzPdmGMvgKQ
NkXSzmxNGeBVQENjScCtBDGXN54eK03+kCWyFD7YebDpKK7a/1aD23fGN+rnh2lq
/m+Rv1Qg6opE3HrpilhlQwsuD4WBsqTqfQlZQps2a+Tl3HHoyMywVyf8tT1rh3Kz
eRPtD3sbjDweuQrzo/bE62Czf9IPXsW/fLZg9iSxU+q07Tg4pqLGUY9FwQVmLAmq
tM0rg+n1ss7zciJRUQWNCy2WqacV26SpfrsY656mkN6A/TFj/vldckJrCsqNMYmF
p4a9cHDj20JwuobVfukQ++9PzaAs6F71H9ag3JaneoR3vrpn0+uaCS9SpPs+YbtV
wHi2seqhioA2cFff4loYGwqOO0gL0WfXkLq/Fcgvp0DDL9bKHtM=
=n2Eo
-----END PGP SIGNATURE-----


--=-=QrEw3y7hi2iRdh=-=--



--===============8783177147427611616==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8783177147427611616==--


