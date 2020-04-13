Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF221A6754
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 15:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7SfD5OJKDl1KlBPWBWEGXRqTTpYHDPacnSO+g9RbV0g=; b=r6bXU7gTqEKvamVVGm9mW/mUE
	fn8IDf/D0IAj7FyjjKqWfT2DeceK36QD5eOK61ucwyBQtrJZihe42dvIkqhhyLnmomsi4BiG/CxP9
	AiEUldk+KasGmK3uSkkFiW0vDO7BqiRHVXdGXNGM1bC423nU9XJ9z6ovZ0pMBoMw4+hxYbo2Tahll
	U7wPIYJ3uGhNBo7mumvA8jLsE+At8bB2xkLPlv9Vkrt+U3lM3ftCslivf2GvXLJIVjolQAbe4kzRW
	woRtRyUP0GQmp3W+nRBtlX0BwUVNH/wLEdrLZZo1EemJDBuIBVciqhuatiPY0XZaZkClDqhO2aN9s
	8KgaRXbpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNzVc-0007sN-75; Mon, 13 Apr 2020 13:52:20 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNzVU-0007rz-KQ
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 13:52:14 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MZkd5-1jjcji3Nwd-00WlSX; Mon, 13 Apr 2020 15:52:05 +0200
From: <mail@adrianschmutzler.de>
To: <endspiel@disroot.org>,
	<openwrt-devel@lists.openwrt.org>
References: <20200409172711.26807-1-endspiel@disroot.org>
 <015901d6104c$0f7a23b0$2e6e6b10$@adrianschmutzler.de>
 <5f75a51b-4bef-1d4c-9545-58abb04ec25c@disroot.org>
In-Reply-To: <5f75a51b-4bef-1d4c-9545-58abb04ec25c@disroot.org>
Date: Mon, 13 Apr 2020 15:52:05 +0200
Message-ID: <01c201d6119a$b7adba20$27092e60$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQE6B7uZxyfAyDYzKzeRhaAcDT8IKwHQaPPoAcGIHBOpkpQpMA==
X-Provags-ID: V03:K1:v90AM7tNTAyofFVZrhJr/nVPF4FDKKlqSi6RWveUipfNfRyH/yb
 mHX5j75uMZrmKs84i3g553PSO7Nwm2z7V5828n45wXtr7JcT22mS+fPWJozvhnMphehSC9Y
 xJck5kGV6DEC2wWqERR4no8uRpMptHaXjf1DJdyuNhkocHA1RFjrG9ZWHvZtAZjUacOs/Cy
 WZiSZd2RqXXf4JiqQWwRw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:T6ee3iiwArY=:QwCIZxtHYGjTCpxeY25L3B
 fdOgF5jYMv/b0JaRVKJW47fYwpfawG3AMBbm6mwwA2CgNjKpX5OTLrfZjcBPMyHF865KSzqEs
 B2M7BHBW8XiDJOyNBUUQF+Lp7WNpnxO6HN1eKSlR2KMuyLXzAaPFNF3Um67S88qXoxDC5VTTg
 DCYDumj7Jwmz7qylTjvwbFtcv+KgCqD6MTtQIUskNenyzaKD2G2118oqSncrCJYubkmqcSzB5
 0Uvyja5KD7DI5LLokpI0S0GisKaHTRAuKJbSQsETazvI9jqWIdGWAQdwXFUU0grGjqEnwWArM
 rIKW250VSkwVG1mJYJ0gAnZp3oAUrRsFbTeTbv+Xb/J9vLxenLzbimMHq0Ig7d1oH5kTzvOtJ
 wqS+snZvyne5eoX6l7luTcaDqic7VHJr5B2v/1aEQEya08i8l2tT0hxQ0p+ocgN65DGT+upOf
 Y4/Nk/HTUWWkhw6Y+tWVb5ZPdXlJYm3/EWBxAg5Ge2MgZ4/KwpiLm8zpYhK8B+6P2HPAF02IA
 0jp0G6aBTRxh82cF0YxXyZolhWXqpQjZVmoZKclrq+AhK7UIKolLyWdy0qWhlQ8TpzRMDkM8e
 BGGK9RP7w0tBKlZQBaQgRGrU581yDrbCEBbORSBtzDWYqzzInxgyAyGh/ySTyywF7x+07w5Pu
 id4zZkXVHQt3aS5q6SmCEp27PEVaO84H6opkSIvYeep2MDEO/sT8CdhlAAIlPvc9owpg2hIQc
 dp4Wvq4ATcEnh30r2oID7oG7g4Kup0QusnX/p9LIc1m+i+/hR2wheCNJndldo5ZavugL4Iqe5
 9Jgdli9Bqh8+wFH92DBlxQbHwR6C14mVRuSjR+TVnjPnsvIHkxHUvUlgsDKuCZi3c+uivaO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_065212_961824_6474A0A2 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07 v2] ramips: add support for Asus
 RT-N10P V3 / RT-N11P B1 / RT-N12 VP B1
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
Content-Type: multipart/mixed; boundary="===============0771092388238570872=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0771092388238570872==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=suFa51q+clO39X=-="

This is a multipart message in MIME format.

--=-=suFa51q+clO39X=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > Note that we do not add devices to stable branch without a special reas=
on.=20
> I hesitated submitting these patches to the master, since, according to=20
> OpenWrt website [1]: OpenWrt support for 4/32 devices will end after=20
> 2019. So, it seemed to me that these devices--being 8/32, after=20
> all--belong to 19.07. If that's not the case I will resubmit my patch=20
> with suggested changes to the master branch after some testing.=20

The only way to get a device into OpenWrt is through master.

Those devices will then be included in the next stable release, only in ver=
y rare cases they will be backported to an already existing release.

So, the only way to get official support is to add this to master. There, y=
ou will have a chance that somebody picks it although it has 32 MB RAM.

I do not see any way to get this into 19.07 unless somebody has a special i=
nterest in it. (And even then, it will have to go through master first)

Best

Adrian

--=-=suFa51q+clO39X=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6UboIACgkQoNyKO7qx
AnBG+A//XCo23faQE0/SfRPTYCzQ0wFEBQ9ancXzFk+SE74Y0vyzfNDBnZD16EGT
F4f3Njn7kSixMHdK6BhDDjEhnXiw+VyYZVaf63P5YAf6suqY5m8JoLvwJdIJDkSU
2m6FhUu95tm/zWy9Q7zPXxbn5vGgqngUZcGv4LgBVZxDLqAb3tTUFF46WfBLwHz2
htu9EIxgfS/yQ1z7GWyTX1r13G1iKFMngvQSqjw/TUJQmRCgIYLyfslsZY80GqeM
/jaWsjGQAESKLAEEpqmhYGPbvzwX3VUyeDYnG+R+LVg7BM21gYgmFm50JypppQdb
8CkJBjE1gFGXwbgIfKsTru069tR8FzWXUMQFGy1UeZLM3yFHUqxLdCOAn9sYBnEm
Fl0uIHkFxX9WjIYoFzwoXW+bE9BWorNJm0Pelo8qzzGf/hyXxMo47pvfBsDB3kbh
+Tr1ZpdCmhN5VioqL8SRz9q2MQDkHa/4FGD+j2zT+vMQIQX3wmarSz/0j1Z1N1f1
DnBXu/sC0vrWL6QZaRo5U4YpH9tvHXN3qI0V+Upt2V18+DBBBj0HpGep0QNj1F3m
5RJcH0DBH0V5xtOFwwjaPI6ig6zCZeryD/fya2INE+bQ7N9hMxAe6BxrMWQDPzDf
Jd/4M77fGypJoDaQ2sasrtBlatvAaJnfUC1jWnGsJRdrUymYT4o=
=k5LZ
-----END PGP SIGNATURE-----


--=-=suFa51q+clO39X=-=--



--===============0771092388238570872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0771092388238570872==--


