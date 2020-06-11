Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14851F660A
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 12:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cslJZsw2q2SGjDiilt6YzSUfW8yIwXrv0FVwsWUKNBE=; b=T59NCuLmyQzyQr5wO0HhlmIkE
	fF98oozngIAVyyYk7OGjmemXjSedAtNrRb/7ImlyasolU8CdoZxvdFx5i0f9lOaAPXOXNaEaUXYww
	SJE1hbUhT0UshJC35oKJKbMush8mYq0eqL9OtGeszJrmF/sI3TnqTuiJ1S5xcrAXwqMyBH7h9O2x5
	zcJIL1tak9d15XQSENu2VaEdvuuBnFgqVNPmlcq9IImV4pzWDKhX+s2UhpdMEE/7a6ykvE7n+R/pJ
	XNAbGAKs3OPVs5NFPqdRe6+jYnVXIpDx2sr0GDGS2hvrE7U35iTnnFxd118uQ04cD9VKllI0CNXY8
	d69kXmM5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjKsP-0007BN-Ok; Thu, 11 Jun 2020 10:56:05 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjKsG-0007Ai-QQ
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 10:56:00 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MJV5K-1jTzsg1dRg-00Ju2R; Thu, 11 Jun 2020 12:55:46 +0200
From: <mail@adrianschmutzler.de>
To: "'R. Diez'" <rdiezmail-openwrt@yahoo.com>,
 <openwrt-devel@lists.openwrt.org>
References: <930b49e0-38f2-62b9-6f36-3d81ac6bd7a9.ref@yahoo.com>
 <930b49e0-38f2-62b9-6f36-3d81ac6bd7a9@yahoo.com>
In-Reply-To: <930b49e0-38f2-62b9-6f36-3d81ac6bd7a9@yahoo.com>
Date: Thu, 11 Jun 2020 12:55:45 +0200
Message-ID: <009f01d63fde$dc3b6d20$94b24760$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKTyD9yrexy/x9hYaDtjM2QJSBu8wIZaCZcp0dagbA=
X-Provags-ID: V03:K1:ow38M4IAJBVc6stlRc/daDbeNGTTvDe3uSobQSZd5a4JfX/PhQV
 ZKrfkad6p9/xpQp5cqVt8tbLrYqLuOi0eTd81RUSGU3YwGazsVQ1uBxlSp6FLLPmW2EbgNu
 TCZlIfeKuW5fse8gFmX/g9rGcVlubuoxyB8X18m9PC/0FMjXRzsNS+JT3QXkDvnjL9Getc6
 m8C3Mnf/ZPwgHtSQYOoiQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mp+Fw471vK8=:qKyWnNAgmgi1NFn3QOqdiq
 3vgvAMKuplrAhdn4N8VXGDe6Quz72PnmMC60lUGw4eFJ1JTLdnfFRzutj77Tkj9ZKT9xsqmX1
 CUnMhvb5XrJIwoiugAPsyV56+7vnBnJVwxm5JzjMfeBAjA1EGzXHwA/aWNS0JREamgebOqstv
 3/VjdEiz0nCaIAdsBWX3Y0oh7pKCxXsHIlO9V+e40XwgK9/ybO+IlJdOrO1M4ZkuvOPqb7kH2
 BdfvfRywj+Sdf8ednvWMml5K5rCU4+Y3Pp0PPEufoVThJ4nUrn4wRGv887YIXcwY2h2tkf2IV
 YBcNefyXT/k5DOhDOQ//yzZw49pxFuQV2kmjHRcs9o0s8wMMyJiW+ATRKWOk+vZmdLSMqtumo
 VTpGEaBQPrZoBExIGPJjQWFlYew9VoE3qNAGG+VAPTfthmkuL/WwoJ1mPleCxM9WzppRnfshj
 BDVF+Rapte7lpXcGr4JcqUtqizv5H+nXz86FVpGi3ZPotWXqo9oRq6/vGQCnsA5PidQGvRkUx
 R3f9Agu3rZMJsBsGNzPgglSAl7BklhJhInVeZz8tkVNHlc/dDmTLlKnSz70GcO0hfjxlqDI3u
 ++k1g/3dvoPIW8wgi2ilPh5j/iQJb7zPEv1CaEOFdIBtP2fx6TpGSGq3a+qkNWnl1jexlUy5i
 eDGCNnVAl49s+BXsRtaLnb21InDxUQWxbUJUS/DuTqQAxqYh6cFbMzaU+4vuhdeos7LOiMvr9
 CmwbSWfPNUxsmLiDpWMBa1/qAdFpHMXy/qSlTiFUPQZQe/rKY6bYD0kLVbEqqmMMbhqyIj6l1
 IbIySR9fN5nz9f4ey5nFuiDigV7dOUpprkb99/cZrkzkC0vcOZNwaFBVugf9HAogS8oGlIF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_035558_106034_3DE8B81B 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] Problems with e-mail DMARC policy,
 and other usability issues
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
Content-Type: multipart/mixed; boundary="===============7806955807645951398=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7806955807645951398==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=UN05nZC8cB4NMH=-="

This is a multipart message in MIME format.

--=-=UN05nZC8cB4NMH=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: R. Diez [mailto:rdiezmail-openwrt@yahoo.com]
> Sent: Donnerstag, 11. Juni 2020 12:09
> To: openwrt-devel@lists.openwrt.org
> Subject: Problems with e-mail DMARC policy, and other usability issues
>=20
> Hi all:
>=20
> I am trying to contribute a few trivial changes to OpenWrt. So far it has=
 been
> frustrating. I recently jumped through all the hoops and managed to e-mail
> the patches correctly (or so I believe):
>=20
> http://lists.infradead.org/pipermail/openwrt-devel/2020-June/023887.html
> http://lists.infradead.org/pipermail/openwrt-devel/2020-June/023888.html
>=20
> However, when I look at Patchwork, it has picked up the following lines as
> part of the commit message:
>=20
> ------------8<------------8<------------
> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
>=20
> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.
> ------------8<------------8<------------
>=20
> I am sure you have seen that often in this mailing list.
>=20
> The Patchwork links where you can see that effect are:
>=20
> https://patchwork.ozlabs.org/project/openwrt/patch/mailman.21997.15917
> 81638.2542.openwrt-devel@lists.openwrt.org/
>=20
> https://patchwork.ozlabs.org/project/openwrt/patch/mailman.22006.15917
> 83382.2542.openwrt-devel@lists.openwrt.org/
>=20
>=20
> I am not mailing list expert, but I have seen this problem recently with
> Microsoft Office 365 and with many other open-source-based mailing lists.=
 It
> has been talked about everywhere because many e-mail providers have
> been tightening e-mail policies in an uphill battle against spam.
>=20
> I am using Yahoo, which I am not particular proud of, but this is a gener=
al
> issue affecting other providers. Under Patchwork, I could quickly find a =
few
> other people who got those lines in their commit messages too.
>=20
> Microsoft had to change the way their online system handles mailing list =
e-
> mails, and many other people had to change their ways too.
>=20
>  From what I gathered, I believe it is reasonable for providers to demand=
 that
> you shall not forge e-mails (send e-mails pretending to be the user).
> And that is what many mailing lists actually tried to do until recently.
>=20
> Could you please stop your mailing list server from adding that "The send=
er
> domain has a DMARC..." warning? The server should do whatever wrapping /
> "reply to" header / forwarding it needs to do, or it has been decided it =
is best
> to do, and stop warning about it.

Well, the problem is that mailing lists and SPF don't work well together.

The domain of your e-mail has a domain that has DMARC configured in way tha=
t means "Throw away this e-mail if the From header doesn't match the sender=
's address".

However, the basic concept of a mailing list requires it to change the From=
 header.

So there is no nice way out. If the wrapping was removed, all recipients wo=
uld receive a mail where the From: header won't match the sender's address.
Their mail provider would then either move it to Spam or delete it right aw=
ay, as that's what _your_ DMARC setting tells them. Don't know how patchwor=
k will treat those mails, but most people on the list just wouldn't receive=
 your mails anymore.

Therefore, the wrapping provides a way to still have your mails delivered.

There is a few ways out of it, but none of them is really compelling:
- Disable spam protection on the sender side: If you don't use SPF/DMARC, y=
ou won't have any problems. It's just normal mail then. Of course, then you=
 won't help others to identify spam anymore.
- Adjust your DMARC policy to p=3Dnone . This will tell the sender side tha=
t it should still accept your mails even if SPF fails. That's what I'm usin=
g right now, and it doesn't have messages wrapped. Of course, it doesn't re=
ally provide a substantial spamming protection for the receiver anymore eit=
her.
- Don't use mailing list if you want to use sender-based spam protection. H=
aha ...

However, since you use a @yahoo.com mail address, you won't have control ov=
er your domain, and therefore cannot adjust the SPF/DMARC settings yahoo pu=
ts there. So, the options just discussed are effectively unavailable to you=
, except for the third one, which doesn't help you either. So, your options=
 are limited now to

1. ask yahoo to disable/adjust DMARC/SPF, which I don't think they will do
2. get yourself a different mail address
3. live with the mail wrapping

Sorry, but this is not us being mean, it's just the fact that this kind of =
spam protection and mailing list are inherently incompatible.

(Another theoretical option might be to set up DKIM, as IIRC DMARC will be =
okay if either DKIM _or_ SPF is okay. However, setting up DKIM is almost im=
possible with one of the standard mail providers, and I'm not sure whether =
DKIM will survive the list anyway.)

If I was wrong somewhere, I would be glad if one of the pros could correct =
me.

Best

Adrian

--=-=UN05nZC8cB4NMH=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7iDa4ACgkQoNyKO7qx
AnD6Iw/+P35QBgdfxvOmLdljMN9O13BXFOzwP1/K69CgE4I6/nxkEDNQrxTGXlI6
IYKbEGdMUgDx1UqXplB68r6bE2l+PKeJ7u9GFvYUcLJAd87McdKoxWLkUou3qY3S
JqaX/w+q1XxdSTOCJiZjn49R2XtkaulmLrC/KhYMnVI0FMn3MxU4qczyEMAf01hc
e9Y5HG6yW7fnjWW/xDLzIrxl0LNc1VIF9PToWMBvKsO84ThbFvgyEwokn1E3qWpm
Q6ckVSvOFWcpx4qwjupMjRedDP+D7sgr62cnYTnYlz6J6n4fmmcQgc8+El6GBXt+
en9GPUpBgwLOZ2/MKYzU2SC5MedD135SJshN+BzWdo1iGEHwnig+tDNjSchMx6XV
a8+WK0ACKR/Knr1RaOtPGE3HzGRXEPIbaYvmj8YrIh7e7pkYdMbDd6nNE+73SL1e
k7qwbMdypg/274mDNYkwatqHOxDKj6st6ICiUCs4Y9pVt+MDvLA51DQJB9lPMyop
9UKPzZaP8ZnZQYD1vLXdOdnobKRRMoe9bbBrI9MrmC2JxQueLq5GL/+B46hJfWE6
brXdGaafPDz1YL/DNUmQCDzpcyttROrk0d0b6HeVwsMU10dnV2p6oYdB0D9XNJy8
lptAImS/tKcXm7DiyYQGALjDtNRrMeUma/rh1XynIfH67IRex9Y=
=7mwT
-----END PGP SIGNATURE-----


--=-=UN05nZC8cB4NMH=-=--



--===============7806955807645951398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7806955807645951398==--


