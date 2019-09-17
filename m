Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B78B5682
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 21:55:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oeLjXE0kHyq43lQcmfFSWMVI5S7bHOzBSOZLAWKskPI=; b=Htg/4vafOeYREQ6/Qyjcyf/Jm
	CyqFsHg9QtgOHEiWdgI2G9VW+udmeNTTLkJW9zQqeHqUcghDTdhLYBtWDuY5qqjG8jAhnIlqUqHm0
	U3W34S2uh/eYjUYZkJDO0p0c1G/aw7uHGkeYN9/Feldsa59OtGfS7ZoYtkcYLhOweCMe3wCIRkyKj
	o+R86EY7gbYIqRYAzTd7lE4aIYfAVM+ABjMMpH4go7xc7CpaD3iziZS42TOYGCNZ1PLlWlDMGbnuS
	AzpBPkgSwf3E3P6WpU45HRVWj/o4LS7Zgm7mdpxO7CQ7RZyS9UM2rgZKN//N3rx7sH8Vbx+kkLVCb
	I++dHVLKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAJYv-0005sH-2j; Tue, 17 Sep 2019 19:54:57 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAJYl-0005ry-R3
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 19:54:49 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MRBac-1iXT9S3TfA-00N8qw; Tue, 17 Sep 2019 21:54:42 +0200
From: <mail@adrianschmutzler.de>
To: "'Enrico Mioso'" <mrkiko.rs@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
In-Reply-To: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
Date: Tue, 17 Sep 2019 21:54:42 +0200
Message-ID: <00a701d56d91$bf8b2370$3ea16a50$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJPfRHoBS5s4jhu9uUuLKJkakDH7qY8KIwA
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:T9f1Vli0ZN2UlwQ8PysOlparnVCpYKLXMVFstFX4XF+nOpa8zCb
 NNmdHZEJFvGa4eOH7yqApOhx7MklgXwS3WFPtrU0+NwDfduPNztlRBeWuQhpReFBPwAblko
 R67kuUeFwf6ZBxIVhaNpo2OoQjJwmB7iPWpSW2Ni4LGB/BmYRN1r/dAihj5zG//llh3EA7O
 DpixrRFCVwzDjMpYZ37xA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TnavL5tH1h4=:kGcctH3bfgeFdZ2ylFjzVR
 iQa8pfUGbPmWGi/ZlrAnEoNiH8VYQqm26MLTh5uncL88UqOfuNVUwe0XPf44hf2Pk4Y8uCtkI
 d5EQs+WMp9Bk34XrHe8K/Cv2CU8j5InTpCEEr6VvG4VkF+7eqc9nuqEcXVFh9ptif0D6uXrNa
 XTw7Ihxm6S08mb2+zS4cjbYsCGq4YrAxuy5pBhg747UlplIGTkOhJ/G+FNdBtLgNmIVaD04kG
 n+vocmvl/Bd1URhyL/IuUIYHxQyKlUlWDJJ6NIhAAc35eECvShbi7kml2gKYwK74+7/+thWrJ
 WqIia0GqqTWDnnelPvSccE2921x1HhDnCgrG+GOazH1HXZLBC8nVKu/CkF0ILg+tmnfg/PBPz
 T6T8zXN/yfONLbfvcDB125tA8M7DJJfTwXhWpMyvXZLSbW13Y37Xv+MEz6Kj3u/zSX4jrF/I3
 +RRYVUWuomaUDGjJvdqUjUcrO+u31/4PSzO8+gPoj7JOgOmydRm2CNUPSonhQ68h7WhkWLj8q
 4r68W3ghntgoaRLGQnTvIso4zYGtX5zee6yw2/SyZi8FKYuwKjlioPJinJv7UiBlHHbhKx+Ye
 XyAIgU9uycEO+3je0pJhLJd91Jg6cqNdD9Nd1QXLxaZY0QJTm2KgHaPbLdu55wMftil3WBdkd
 aq97kh+B0fj38d45P5k7PxxjoSXro/afmGuMgDB7VJe3p1OoiSyv0UoLuaSCL44nzbwNbEF44
 STvs67a2IsX4fJ9SFQIzqTy+QM1hgWu0c4ebysC7C53tNnu2M3bBUxdB4kgEkSgrpT3SEGVYV
 vJXPW4ZEsqzjwG+dcLwf6/nehDL+RfYxzfNabh+M34L0KJCplgOOrlhThOPIrfooXatHth4IQ
 SQaRhfSXNPfUpMjrp3r47nTD8LECOYBmkQLLg7lBw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_125448_169404_D8324FBB 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: 'Filip Moc' <lede@moc6.cz>
Content-Type: multipart/mixed; boundary="===============1576073035669672707=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1576073035669672707==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=jRVQ4oRZshmeOh=-="

This is a multipart message in MIME format.

--=-=jRVQ4oRZshmeOh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> Issues:
> switch configuration currently broken (port 2 on device is seen as port 3=
, port
> 3 as port 2).

If it's only that, just do:

+	tplink,tl-mr6400-v1)
+		ucidef_set_interfaces_lan_wan "eth0.1 eth1" "usb0"
+		ucidef_add_switch "switch0" \
+			"0@eth0" "1:lan:1" "2:lan:3" "3:lan:2"
+		;;

This won't change swconfig, but will show ports correctly in Luci.
(This assignment will change again if you experiment with phy-swap...)

Best

Adrian

--=-=jRVQ4oRZshmeOh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2BOf4ACgkQoNyKO7qx
AnDzVA//ZDGIZjq+1nLL5j+Pti1kRqEx5dSxIqfX+bya+BtGQe0bvJ9fV9q0wiZE
WwC9gtv36KP/AAbG7+LYNE5FJ8O83sHUJCLmglPwC7oC3AMie83cS0FV/8AoRY5+
yMdEIXMvVPfZPjiz3sZR9Nnj6Gr3hkCz9NgNZR64hMAJ9uzRfwQ2hClC4tRLtI1C
T0KfhNjdkRArwCpNxNTgu0UuNvlfbO0478jyXPe4mquNeCrQY9k0rVVHjFpJLte8
GLd4hW1e2F/L6cQiZhiGs9EkmYkM4y4y94K+xUaM8sHLG5A5B3L/uWPdnbjd9mlW
SycEB2MhB4x9MM7rmxgm16PgX8ZUjQHvmQpCothdabAjiXfxt+gm3LKUui9Q8/KZ
mb8iWGkdRzcjXlj2WvdmK6qw7YAYPaKSYxkKrvsNWNi092CGqWGh4u4eltEsJCoN
lyqVwgYCXz9OqVyywDYi422wJD8aFivG7zvapjPDd8zIWDitEvBk4bGLXlh+31N3
nqLhy4XaZvnNBp+BucEkn9HntMg52UZUsKB+cENKOcvDirCtpoJOntJKzYXYspG4
SGbbTtnxX+vzG2R1B0+xYnM8t1FhKpcJVXvRqix+Lgt7MkyzGJVzgRDE7U8rTOeg
KWgBj21loDzTkCwUTUWgkvmWzVeXS1O+oZx4u2WuimHN/82wE4g=
=EfB9
-----END PGP SIGNATURE-----


--=-=jRVQ4oRZshmeOh=-=--



--===============1576073035669672707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1576073035669672707==--


