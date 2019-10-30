Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9098EA217
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 17:51:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FOsdyU/U/ajcq/Q0a0anK9ZHbNBHddTPOpSsXJiFepk=; b=UcLgBqOpH1rD6Kib0j9Cst4YL
	ua83wHtsIhIe76g3ZriYfzRO43G3bETyFksW+LdsEA4gFg9t9l+ZnYm5En5jJuVOcsrtZ1TI4QviA
	Npg2KYsOqxnNiFfdNXeHo64CIp+W4U7yqE8HBjRg7JmaOaDZRcTpIGd1mIZ5rJTzWv0A5iJFzcS6g
	dMAOD+H0AcytGN8NiCvLWg1HJixx0JMNaCNKb+p0EslAMpUraBDA0wP+u/7hjiDfIYl6P3FOh9p5A
	ctpJeTWr3Sg6adUUYETTcETn5t3Ib5t7KEsj7dBxjNWhecs3t4bEaQa2QhKQUhdMRdsYWaDNVyhX5
	GKlrR+PIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPrCF-0004nx-OQ; Wed, 30 Oct 2019 16:51:47 +0000
Received: from mout-u-107.mailbox.org ([2001:67c:2050:1::465:107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPrC8-0004nN-4t
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 16:51:42 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 473Dxj670WzKmVr;
 Wed, 30 Oct 2019 17:51:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id pwcyWLFF6JW8; Wed, 30 Oct 2019 17:51:34 +0100 (CET)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 'John Crispin' <john@phrozen.org>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
References: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
 <b8079f7e-d50c-45a9-d2f9-984f10716cd0@hauke-m.de>
 <012301d58f3f$2f360a40$8da21ec0$@adrianschmutzler.de>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <32fa0d06-0f64-0f69-fb9b-13d1185798d8@hauke-m.de>
Date: Wed, 30 Oct 2019 17:50:57 +0100
MIME-Version: 1.0
In-Reply-To: <012301d58f3f$2f360a40$8da21ec0$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_095140_494479_59D78D54 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
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
Content-Type: multipart/mixed; boundary="===============0020826716136356065=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0020826716136356065==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="BmVejDW7PuJ5tQZEJxPySruEYzhRxdrvI"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--BmVejDW7PuJ5tQZEJxPySruEYzhRxdrvI
Content-Type: multipart/mixed; boundary="YVenLNTIk0kjRgVpyHg92oCwf0f5GuycN";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 'John Crispin' <john@phrozen.org>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Message-ID: <32fa0d06-0f64-0f69-fb9b-13d1185798d8@hauke-m.de>
Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
References: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
 <b8079f7e-d50c-45a9-d2f9-984f10716cd0@hauke-m.de>
 <012301d58f3f$2f360a40$8da21ec0$@adrianschmutzler.de>
In-Reply-To: <012301d58f3f$2f360a40$8da21ec0$@adrianschmutzler.de>

--YVenLNTIk0kjRgVpyHg92oCwf0f5GuycN
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 10/30/19 5:29 PM, Adrian Schmutzler wrote:
> Hi,
>=20
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] O=
n Behalf Of Hauke Mehrtens
>> Sent: Mittwoch, 30. Oktober 2019 16:54
>> To: John Crispin <john@phrozen.org>; OpenWrt Development List <openwrt=
-devel@lists.openwrt.org>
>> Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
>>
>> On 10/29/19 6:37 AM, John Crispin wrote:
>>> Hi,
>>> should we use v5.4 as our next kernel ?
>>> =C2=A0=C2=A0=C2=A0=C2=A0John
>>
>> I also agree to have kernel 5.4 as the next kernel, it will be finally=

>> released in about 1 months and it is a long term kernel. If we are luc=
ky
>> it will be supported for 6 years for Android.
>>
>> What do we want to use in the next 20.X release after 19.07?
>> If we want to go with kernel 5.4 with the release after 19.07 we can n=
ot
>> make this release before April, I would assume. We would have generic
>> support in OpenWrt master in about 1 month and then we will port the
>> targets, probably we will have the most important targets ported about=

>> 2 months later (Mid January 2020) and can stabilize and port the rest =
of
>> afterwards.
>>
>> hauke
>=20
> 1. We currently have work-in-progress 4.19 support PRs for ramips, ipq8=
06x and bcm63xx, still with considerable work to do at least for the firs=
t two (IIRC). Without in-depth knowledge, I wonder whether it wouldn't be=
 more efficient to skip 4.19 for those and go directly to 5.4 (less backp=
orting etc., but also more adjustments of local stuff).
> 2. Obviously, starting with 5.4 now will cause a mixed-kernel-release-o=
r-not debate in early 2020. So, when moving to 5.4 we should already ask =
ourselves this question early in the process. (Which obviously also depen=
ds on the decision on subject 1.) I personally favor to not have a mixed =
kernel release, but as I'm commenting from the side my voice shouldn't co=
unt much in that process.
> 3. Since stable branches are typically made 3-6 months after when they =
have been set, I wouldn't care too much about a 3 month delay in estimate=
d release date. :-)
>=20
> Just wanted to add those thoughts to the discussion, sorry for not prov=
iding answers ;-)
>=20
> Best
>=20
> Adrian
>=20

Supporting two different kernel versions in one release was not a good
idea, we did it because the release was delayed and we decided to use
kernel 4.14 partially for this release pretty late in the process.

We should decide if we want to use kernel 5.4 in the next release in the
next 2 to 4 weeks, so we do not lose so much time.

I would suggest the following.
1. Sift the 20.X release after 19.07 from January to April 2020
1.1. We will not get kernel 5.4 stable till January
2. Integrate support for kernel 5.4 soon
2.1. The generic support with the first targets should be there in about
1.5 months, which should be doable
3. Migrate all the targets to kernel 5.4
3.1. Probably all the targets on kernel 4.19 will be migrated quickly,
the not so well supported targets could cause problems, but we have
similar problems with kernel 4.19.
4. When no target is using kernel 4.19 any more, drop support for it
4.1. dropping support for kernel 4.19 could cause problems for some
downstream users which would like to use kernel 4.19 (e.g. Intel in
prpl), I do not know if we care.

Hauke


--YVenLNTIk0kjRgVpyHg92oCwf0f5GuycN--

--BmVejDW7PuJ5tQZEJxPySruEYzhRxdrvI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl25v3EACgkQ8bdnhZyy
68dTQAgAyi3hHkeoEv5NQXInZ6enpuEU4BpRjP+N83DtSJItkYCM7M3q8+YKZUi7
kUD5laNvucHZ0EZrwPch3imd4td6SD31yXZC1xiCMB5sBhTEO9qTTVFmTowTXjo3
QKo6vPZW9U+gH86QxQfjHl1HvAas4eNWTpUiwg0cvzlzUQQ2mn/HVIBRazr+pke6
adc+sD2dr6rPkbEKHhkD1x+6RoxsOB7l5kmhe+wxrzIQTZ/o7aQU3YvBFxWBorC4
69fRJV6u736LtA4j3vEUo9W7p0ZKFhWCn4WA5I9RordMRQi4oAJqpaWNU2H3Eth6
f6UFEClajzpEMEKiTgKr5NYGOXf6lg==
=lYn6
-----END PGP SIGNATURE-----

--BmVejDW7PuJ5tQZEJxPySruEYzhRxdrvI--


--===============0020826716136356065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0020826716136356065==--

