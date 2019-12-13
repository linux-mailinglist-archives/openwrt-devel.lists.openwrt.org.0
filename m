Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706D711EBC6
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 21:21:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BNQuNd1ppUwxljouUUQz7U6vVV4Uk1fFvdA5dIkVKo8=; b=TXvcgV1JoXrVMranSJsdMcQYi
	dYI14cnl3qTm1+j5H08xZIr1DHP25UoaVXN8TKQ9NC3/3cDxduck2X+wbvlGLzHyb7drHKeh8jl3c
	R25VXcjUF1v3DMTvEuCLSXqzYbnwLVkJ5TPJ0n+HKKGbc5HMDC8Rzf2NFFfacFRRFbkkhaaxraxij
	NkolB+eG2PmvLQKHpBovFikSwg5q0WX6DDODDlH8z0RUFekdM5mQRZFnPoEdGX6x7qI0XtmRusdb4
	mxpqwtE+o/mFvwu/P9S/LrsL9q2Gbc0YS3lunc9SwxfgZgqToIG0QVuPJfHYIRQdYfSaJLU5SkUNj
	H3S3Shxiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifrRP-0005qc-QZ; Fri, 13 Dec 2019 20:21:35 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifrRF-0005qL-Fl
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 20:21:26 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mj7yt-1i2wFK2XCv-00fBwO; Fri, 13
 Dec 2019 21:21:15 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Sven Roederer'" <devel-sven@geroedel.de>,
 <openwrt-devel@lists.openwrt.org>
References: <20191213195046.13358-1-devel-sven@geroedel.de>
In-Reply-To: <20191213195046.13358-1-devel-sven@geroedel.de>
Date: Fri, 13 Dec 2019 21:21:14 +0100
Message-ID: <01c401d5b1f2$ded6d1c0$9c847540$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJl8ojyB3VcR7EwxOFQHbyxK17f56aX/1KQ
MIME-Version: 1.0
Content-Language: de
X-Provags-ID: V03:K1:R7PLirC1Csj5PKPBZEsb2KajPfZN8hJMzzU+pGv2aImwhx1z6+g
 C/Xmeu3EDW4r0/Y8zy96dB9n8+8fDSCRu4BBmBfSxsv2eS/RAQsA8L+Ezejag9IwT4j+eI5
 CbM0fP7hB7DgbDpRoVKvtaEH7LgSn3wBwhA2ty69BtbimFuR+v50DWuYBv4IdWblNQvAFBd
 hGugPgjqeYHW9zBZOAA0w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xlp5KK8Nrj0=:QyAZqDv8QoQayFS9b1N3lj
 han787mR2jAUEO33fV3vE6BPkV46Pqm/tfpTj5iLOdyYcAL8Bs1nRuf8qoud/LOeN26s+/eUN
 eBZEOCgNe8hYH340WlaCTo5jxySXflcHre+zjCQVjbrLkjCLbgd9hVMp2Pa2/1OzQFGwu17SE
 COF6N7PCzRpDsVQQh1c9Qp55S+CfDlsolMyRBcSLEeXRA9L+d+qqjRTMdJUqq7grS2Yh24NNF
 VCB8NovRhv7Uwb76R7iQYkHIjm5nDdaF+dkh9um9p4QCsZBBtXrw6D4Xphfu3eUmLpidlNstH
 uvUaYXyjWNiDXhzdlnC9J1Y8pRUAvfb4wKNrCy5aUxRxZSTO5ijLW+bCp2NJVulxuK1g5shS0
 /mf60L1kBLiWDj4y4l7dxo0/c5YT0MrbPs/ucJyRiJ/FRNhKqD2ONvMcs8jMKh2S6Hd70+8mx
 wpqPAT0IwA1p1Soyatz8/pLDU9C7USjitNxwzTsvbV5Iq6Zqk32V1AekmbAAcreBTC2nOdqcx
 1JeziWIOPQ+eQpZSPV7qB8cMBAxSgJBBOJxJvqE+W83fNuk9rw68PD2nrPRgi0tLxzhYnVn+g
 jiPcEJBWW4h47+FHemPM4GBmIdG8/50+nvO2UQG3IBfuvH4br4Tp3IUz9SoKdxTaEO71anf+0
 D/gMi1eU8Oa6Ulz7J84jN+9uWIN2y+T3Tv9Rs09R3S5mDBWi6xIJycEqSu9MnJn9ZnSz4pL71
 Y7kI2OdH/tkcNt7PloMNAN9Ru4hcp7hFhzhbPoPdEM/iMvoTWjgEIZUZu9f0TWMuIZGXyaXYe
 TuVyFDKcxCno0sbSrdkXGunnWhX7um9AJ9uHwMzhVQ15EMcKz9639pDC2XyVaIpJhwz5iDXmY
 ip5seb+0tblXfeeEeo3CE7L7qFR7Hpbw42SBtA72I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_122125_819152_6B05221E 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ath79: add support for gl-ar750
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
Cc: 'Luochongjun' <luochongjun@gl-inet.com>
Content-Type: multipart/mixed; boundary="===============4083515388828870627=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4083515388828870627==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=HxWv90ZCq26kzV=-="

This is a multipart message in MIME format.

--=-=HxWv90ZCq26kzV=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Sven,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Sven Roederer
> Sent: Freitag, 13. Dezember 2019 20:51
> To: openwrt-devel@lists.openwrt.org
> Cc: Luochongjun <luochongjun@gl-inet.com>
> Subject: [OpenWrt-Devel] [PATCH 19.07] ath79: add support for gl-ar750

so, the primary question remains unanswered: Why should exactly this device=
 be backported (out of the big set of devices only in master)?

Best

Adrian=20

--=-=HxWv90ZCq26kzV=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3z8rcACgkQoNyKO7qx
AnBrKRAApIexXoVYNjqSAOtZQuoM6rdn4su12NfTACh24RT1UyqmB1iO5EePxu8T
YMsGTRsvjUmm744laehfcizx9JE0uxRp2C4M/+NLRj2OMvNkyzCPxrgR8Lbdkx6Y
WvpG5Fxj0yKdM/XbVy2pApWHd7DVIqZ84YMd2OfoL7TRjaabaXdeSYPGhfSZiL35
ht/WX9VBXSUo4x8TkwpNj1iSS5ZIPDrXkGZuvVmtnurpf5LXkSORtrEOZKZsHd32
qYrIX3xeWb6JIspwYsP+fw/Ukp1fthVN83gWi0rpY3Na7NkEQiOvQJYU1hayaKxh
w1eM4Z0NFE5p5DqAesvYQjAKMNM8Xma2rZwVEb6Sd9+CMOswX3AzsjEjPfCfv2aO
5kFwk0PrrMG3qAYrMTmQhKgsI8hMlGc8Cag22ws0nhPdWexmr+rswAWVAw0b3aF+
cjKzNDoAUnkDpg+QQxjYBtrpJGMZ7tQnO9Tw0S7NXUr4Twmt6gyE/Hh33T0m0e/f
bcgrK6L8FAXxt/G84H6Tb3pEAVTcd3SVaBZa/5jXLsKUB1nhiwwnGL4WGp+12qg7
T5/JDH8Shm378b9tQ6kTkeEwSrxCKlH67tEmEAqC1J6wdXomIcu0wfrFXYPmudDU
0mWJtVzqgfhpdiYOZxQi0/9yCW3RBOxb1m3AACwOrTHhaANOnFQ=
=8Was
-----END PGP SIGNATURE-----


--=-=HxWv90ZCq26kzV=-=--



--===============4083515388828870627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4083515388828870627==--


