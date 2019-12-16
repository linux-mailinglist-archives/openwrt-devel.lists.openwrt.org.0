Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BFD121B6D
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 22:01:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N/V8LRIWambbeZbOpopvuSk0oN2X9up5dPOd6TzMTfI=; b=e4o
	fHLw1nsuMCSQrwIwVmOd6nOCuHyHWfUyQ3WXk3zMIcqdbNZ9ZAJhJUdY8RvlipnwaCmotjcKldkLD
	pQe5B9JfyXa1Wta7TFX1BN6HIO81RctbD6s0zCYngDFcF+A8bDLOZN85uDWhi+sztiDX+BdO9iXJU
	wBldcWfvQCadqdwINzyLnPoqy9AgWVqKA560dIB/Zws4sKIB4vj8HsSMBPtwiPTG2/EzH9R5/kDuB
	SDa5Qgy94KYKnh0QO/w5HH5rJWYEpjTsRJkeQE2ZrGy5e3nlABUCRmb9pxTw///C4esI6KjbWqEF7
	rYP3eZpASC6/hiwbh42kySG5cxKoqeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igxUw-0001Wh-Hz; Mon, 16 Dec 2019 21:01:46 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igxUo-0001VU-By
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 21:01:40 +0000
Received: from desktop ([188.193.231.72]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MVdYY-1iFMU41gFY-00RYEY; Mon, 16 Dec 2019 22:01:32 +0100
From: <mail@adrianschmutzler.de>
To: "'Matthias Schiffer'" <mschiffer@universe-factory.net>
Date: Mon, 16 Dec 2019 22:01:31 +0100
Message-ID: <012a01d5b453$fe9c9ea0$fbd5dbe0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AdW0UBrtL/XTSIlSThGMt9Ju1NCMSgAAZV1Q
MIME-Version: 1.0
X-Provags-ID: V03:K1:iu5H1i6/elT10gH1Wx5UzWwygbPXuB1sS//nOmOzY+x7Bz48GPD
 47AdhKKvJBGFjZdAHXdzhmt/3PxZm8sOZP0uiMrplI3gYhYVTmpAGir3AyWIaXMlfgg1ypl
 NDjzhavAIrzeOnFaTD9euogyllhaQvQdQqPWylhH9tvLCyhkCfeKpZ9kHcllIrccCs5Hcub
 ASNIM8jJPhV7K4bqFp3hg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:X1JvTJRUqPM=:VwQIXR/zUMF1DwNO9r4hVv
 tGSsbKkHFdhxGQ4Am92x0aDWJ/doxuBoEZSiz2nRCzhXnBWdCdGsVj/ga3AIaEMMnVJ6Vy77Y
 3lZwUT4Jyct45UidUzReFWxRuEK1bPG8KPLQFgW0DVFiUrpwnDXgMC8RVmfGXiayPCvP207za
 9h8Sg0zuoV31Q0OExZowVya5VkPjUtycc3LZhy1ffDr063qLTWbs+vl303X7kp4WXLObHJiBb
 0BHqr1CpOk4FzZ0wugZA8Sr0d+fhImCkKJdgCF5hAowQ6+5qYkdsPgcMkZstc5dMLqueDFxPo
 PbJbNsBTR2qx9Q3l1juYyLjmSUM6NUt7egHA8pCeXJgrTw6oj4fYvf6PxAwka9nM5abJLnyKj
 GC/31LnULDjzoxnG54Tb5+2mgTQ3LpSGkQagluqnEAd97xlHy9D5XvrCsI7472WNmsYVyPKgo
 j7VSiYucRTHh+I6P8ZLXcDUbtHh+cWxZfjJI4TqK6mQd6ZLp3XK3sfjGPdTvQvHKPewAFsLLY
 T8Z5BaEpjVotm28KBzQiJiafZPu0aKeovooPLvXGLoVEmHwWYFMveoQlO4kNTnys2Ic8pCkTz
 ZCiIKeHxJuIJ5lJInIR17MIZEi9fvD33nEu3Xr4LdPjEQoo8BOzKmf4fQl4kqKqL9dZ5YHnCo
 NQa3JI5HDo6nVQYVERDNztEPeepmUAVNzvjJR0hexOqDPkz3hnhUPvuhw32X+hfd4rW55ve5V
 xDZi3hH4ox11Pmk7pZZuQkuafBdQHV38QO61S78JkZO87e81C60Y1x3Ggn+NiHz+uTfNge1ee
 C2TMODGdR6FcCh/GVc/blBZKkJGVMSGpCtgy1yykusolT2qfPpt5+1Nh3Syq+jBynD4GBNdin
 G6sfxteWt+5GmTNAUSQVsQouS+8YOeWO6HyWszW1Q=
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_130138_706052_D5AAC525 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: fix port setup for Ubiquiti
 EdgeRouter X (and SFP)
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============5614359210763177078=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5614359210763177078==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=yEAmQrEw3y7hi2=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=yEAmQrEw3y7hi2=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hallo Matthias,

> Having a WAN port by default is extremely useful (and necessary for easy=
=20
> automatic configuration by OpenWrt-based frameworks like Gluon without=20
> having to special-case many devices).=20
> I would prefer if we could always make one port WAN as long as we have at=
=20
> least two independently configurable ports, regardless of labeling - at=20
> least that was my policy for creating new hardware support in the past.=20
> Regards,=20
> Matthias=20

while I understand your reasoning, I look at this from a different angle:
On a device with five equivalent ports, I would expect those to be still eq=
uivalent in OpenWrt. Having an arbitrary port chosen to be a WAN port is ra=
ther confusing in that situation; users may only realize that if they reall=
y look into the configuration in the first place. Consequently, I would han=
dle this the opposite way: For the uneducated user downloading the prebuild=
 image, I would provide the setup which is supposed to be "expected". Exper=
ienced users and downstream developers (as I am myself) would then be able =
to change configuration to their particular demands. Though one could argue=
 that the uneducated user would also be troubled to set up a WAN port if he=
 wanted it, this is already assuming a certain use case which I would not d=
o for the default settings (where I would plead that the user expects what =
the device is built for).
To make it even worse, having the predefined wan port for this device in pa=
rticular will mess up the port order in luci, where ports are ordered "1 2 =
3 4 0" because 0 is wan. On the device, ports are 0 1 2 3 4 ...

Note that this is not just my personal opinion: I actually was made aware o=
f the situation with the EdgeRouter by a user who reported the situation, c=
omplaining about having to configure away the WAN port for this device and =
being annoyed by the luci issue.

So, I'd still prefer to have this device switched to lan-only.

Best

Adrian

--=-=yEAmQrEw3y7hi2=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl338KcACgkQoNyKO7qx
AnCjvBAApsbvL8dmlRRYyMoIFcyY0vHgripZuuD/Ako0uNMiAt5iyOc1vi1dDwhX
KtXk9urBxBLaF/br8OItwvPsMvLVWQdpZLmWi5IB4bPfAtVeS9CrYhr241dGs+nN
SldcHEbifW4RjK6iEKNGus2rGMUnR6HInGIpzPz4qWu/AVKBPzett3f1JAnlXOyH
yXHW1nv2xu2ln58U570IC0NPzVQtWCdFOGfgb3PsxPDcXhvc3qYl9XLhjGAyaRT9
I8sUT1Y/s9JIMTCwCf9B4pJbGZGckjAbivQZzPX2MLrxd9tjK+Ax6uU92Q5FCZk1
3a0O46XPzzXohHzYBuKBTMsbt9cnCArBD0V6PwxbT3DA972NXQDYUnSDRrIEzm+E
r37zXA9YNwerdA6y9Uhig4QR5j5/QayEG2UdLhhM3JdWiM/OxT1Nlektcn3NM0MG
KSXL+9ozI468er+FVkNSY+cEcl45y2uzzJgCmn+DKrWTEcGT3PetZJO8h5rcBpZx
wTUjo4GVaEReSzhXKxfUsnizUxwh/DaWw3Y+mI4A/jjgpivRwDrc97+U6xHl3qm/
HSzHpqR7WfihX40y7r4jcQEOb5xQ+5tI7EMBpr7CzVWEJPbUKT/vpymOffClICC2
yRSOQ/jh2GB25wBoEZ9FraSi5QBLDSoURQC+4RnZqjXOo1xRMmA=
=D0Tj
-----END PGP SIGNATURE-----


--=-=yEAmQrEw3y7hi2=-=--



--===============5614359210763177078==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5614359210763177078==--


