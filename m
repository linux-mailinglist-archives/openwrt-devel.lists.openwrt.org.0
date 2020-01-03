Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7BB12F8E2
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Jan 2020 14:43:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=79zDgS7EDvkcYrexukLrnep+GZ9H83dpRbqt1lP6E8I=; b=BgU
	sagdW5ReiViPHObrSfYYFrvF6dGeu6k0DqvG8mjFVAO9A/qs8FiXR2VKSkuLhoHzWCaJtHdcwouUa
	sK6+FRWCri6hB5CaD156/wiUpiGGebWAK0l42nkaLAyDIxoV9nouhMUTWFK52ZyG8tjAvOdqFDpHh
	DfiXrsD7rqkz8C8S/r8tv5bTRMOMUgjcrIFnfarqc0E8oPdzMdTH19QAWD7nJ7T13fxcWIv+xuqGU
	VZ2LYi1N1l0Ryxic9HMmVOCMOuOpbgCY8DCJFQdlqghQLK13re9igJcaC3ogn/vKUPnMWSiXSuBmy
	BgWakqKvhLZlUbiv/vVFgYkwx2TBUQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inNEu-0008Io-1B; Fri, 03 Jan 2020 13:43:44 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inNEl-0008I0-4a
 for openwrt-devel@lists.openwrt.org; Fri, 03 Jan 2020 13:43:37 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N63mC-1jpIdf2lsu-016Pdh; Fri, 03 Jan 2020 14:43:31 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>,
 "'Tokunori Ikegami'" <ikegami.t@gmail.com>
Date: Fri, 3 Jan 2020 14:43:31 +0100
Message-ID: <00f001d5c23b$c980ad10$5c820730$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AdXCO0/AEy9YQXqSS8WVFIDrOQjlpQ==
X-Provags-ID: V03:K1:kG1i1Jt9corJyN0CGKRr1bIPBDbTJYB2ujC4/2CJpXDkDkLKFqi
 lmxi0oJrOPFnAa+1GZDJbokceb1TvDZiMZhz7r5l8AQdJYSCp0ACDXX/cCeteFUkZzO2o8U
 PX2HS2SDUO0zfj0xb5c8bRQYuqJ8W2f9Bqr4TQ80OyoIywlRCB80bV9VKKEjSKOZC11F8SR
 1q0/OdS0R7Hwl0EGDSFgg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iMQSPgmznPY=:E6FYIxmvHNT5SBTd8He41T
 xmIQ9IPpCLIy5beEFxHoQ8ZbpxNk+Lezt19/asMkN55rd1pMbQnBwAHueKWCkE6B3dHdL5Hpx
 NlWs5LbkFE/iD0ZXuh7QJAWiqga7xvpii1wKNr7WzqYdy6eFRKVdDtPKnzXFGnAOIrb9PKTIn
 HSxPPjnwL0d21Uub7TdHOKNd7qEcAe1VtgzGYtXRpN0P0JSvHz6t8A7pfzfqjM+ziu19DLuSC
 IvH/KIq5u6jgkEd9sk7zE4Xf6PViDI341M/ZFTc2oqJcOsoXyOKayZ1f/JAtFHAyeuYTm2kLY
 RMEAhVsISilNq2paN9+mzsN4HATJXqzTjzP0u8GHTr7pbOuoL2b1r1a9/UEEIsxc+iYouSxcJ
 xWjLiyZXiyzOXcOA3qaezHCqfrejSl70aHez6XIq0aD/OC7YYm3EqPfvt2Mq1xyFJwSJuiGgq
 ObXsFZcrsGihWuO36EdsU2laFUQbtnhbQ61ha9/zV2JVY5v4FnAJqpeAiMjLstedyGdbjMBHn
 h8IgVgJ53xFDad0n/sVHmuRnQmzrAa0G/zGQDLEftlpyIm83feM5auVqap7PKexYLHpW9+XOM
 XBkxT4ng6VE6BYwmNFQYbGE5svkNiE5MhGqGUdTrpNd+m5+VRy2M3FYdsMW52hV+1ieQdREhc
 JM0VnEzfyRDLfdlkdeTgJ7ODG5uTJPzcU+jrrynevnFgmRBCUueZRHbVDjRkhYwnBxFF4lhE4
 Ry9CWbFsp2hJgGNc7IQ6b7P1w8vYhr/3Zn/JzvJIWDGeaje3eFPKwPxhIeEQQynSi2GQPFcoW
 aO+314DMwnFsgAeIpFv0mVpg+l5WXWRyDoguXrPzrprssZUZcsc5BmF5I5odkIT+Apd5dBecZ
 7q1Q7qI2W8dNkUieyquw2XU8leMFp9Z7hsncmH+us=
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_054335_476429_8E5D7848 
X-CRM114-Status: UNSURE (   4.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] ar71xx: Remove mtd cfi_cmdset_0002 status check
 patch
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
Content-Type: multipart/mixed; boundary="===============7089763131995848950=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7089763131995848950==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=hUpUERBYNu7zcg=-="

This is a multipart message in MIME format.

--=-=hUpUERBYNu7zcg=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

your patch "ar71xx: Remove mtd cfi_cmdset_0002 status check patch" looks co=
smetical to me. Is this impression correct?

If yes, since ar71xx is effectively deprecated and won't be included in nex=
t (after-19.07) release, I would reject it to save reviewing time for other=
 changes.

I hope you understand this and continue to improve OpenWrt with other submi=
ssions.

https://patchwork.ozlabs.org/patch/1198343/

Best

Adrian

--=-=hUpUERBYNu7zcg=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4PRQIACgkQoNyKO7qx
AnB9HhAAp38Spnp12TNfErhBl7cTxU2TnpDHnrMFT53utiuWa1oVeLCBabiPrN95
sISSYdJue37RPGAhGb8jpjfgjD1K/3M7FMO5YbK+FWZNFgIhwvtVCM9NYU7ABg12
AymAYniqUNQcqqEHLsGNPkNN6y83hXD3FvaNyczKJILpmXJtXPzZtJ9E0OdSuI5n
YbYxuWkvJjOeCTO4ui/9hJ15RFBPPKD8sJX36bi9/JOcbwGJGv9hT41bO5fG0dSr
UvA+KEu8oQ7m/+FOQVftBAztnhWG8JNDVmeQBIpr1sau3KoEJgr56u8ciSUZ05rV
HFZTvIudmTEOHT8ijFxJTl2nAz+MsaFZAIeN8yKk7D8A/7+blv/I1obfNTVWzLF0
wapyh2pn04C8FJ+F6JKzSj5i1eIwMVgJkTRhtDS3NndH3MgmZzF9K1aBQMXqVTEO
npzcD8b7Kc1AztdnMvtRrAqfdhRVjMdk7JCmYJg/V7Tz0HY9LIxMCU3o91fg/bz6
kg1Jxsi3mlqNaTtH07mpDwJqDtQoXuY6hRQcdp/3svXlt/FZ7l7ZwedqFc7v/OGG
fMrkUt0QDYO+lNMiv5+ZOU2nheO0iRXoeYrqwUIR9rFYfdMBoChZbF9vwmNIo2tw
2t1Hu0rdmIIaiq30uCW7M68StTIcONW7dQGioO/wh5pgWvFm5Ic=
=qNh5
-----END PGP SIGNATURE-----


--=-=hUpUERBYNu7zcg=-=--



--===============7089763131995848950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7089763131995848950==--


