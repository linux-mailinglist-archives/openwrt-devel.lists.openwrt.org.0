Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3144E130855
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 14:55:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rz9fHM5WkVxM7hwXwifpsAKRLbkjPlBYkUx6dOYTtZc=; b=Oa/o0yGsr7NcFtAZTwhdZ6m76
	dPpQU5AoGYXSF9Lr4dRhT73RRsfQ1nXJ+g8enjzLR4VJpWjHaQSXXL8REWhQJksRX/OD+d2gD9fzU
	4+vSbcSE8ZMmmn8zaPT7OUIIWu8z9pUuk6vn1Y8yergbeG0IOUSfWlNEFGD4QmvWnMckIL84YDNlW
	yiwSO6DZgJkEorT87+Jz33N/ky3GmrTuGtubS4RqevNdbS0gDEpe4AWbAp2mmoDCfaLHIudNuULIE
	iZV0G1MiVdA/Sun0wJzJQcfqpwGTOn+ZQ6PoPQhpBPBw/qhDkj5/zR276PbEDhRReESqB6crQdwmB
	XS6mosohA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io6N7-000670-2I; Sun, 05 Jan 2020 13:55:13 +0000
Received: from mout-p-101.mailbox.org ([2001:67c:2050::465:101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io6Mw-0005M6-Lf
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 13:55:05 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 47rKrn6cRBzKmg5;
 Sun,  5 Jan 2020 14:54:49 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id LGwrt6fc9gR9; Sun,  5 Jan 2020 14:54:46 +0100 (CET)
To: mail@adrianschmutzler.de,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
 <019d01d5a617$53e76570$fbb63050$@adrianschmutzler.de>
 <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
 <009201d5c234$d1045e30$730d1a90$@adrianschmutzler.de>
 <50e1561a-a48e-6b82-0b2f-52bfd90e747e@hauke-m.de>
 <005f01d5c3c5$d420a320$7c61e960$@adrianschmutzler.de>
 <007901d5c3ce$21ea2510$65be6f30$@adrianschmutzler.de>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <64da65c7-0827-3dfc-2b8c-2ad42ab62a3e@hauke-m.de>
Date: Sun, 5 Jan 2020 14:54:28 +0100
MIME-Version: 1.0
In-Reply-To: <007901d5c3ce$21ea2510$65be6f30$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_055503_016595_E158244A 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: multipart/mixed; boundary="===============8785546900907363260=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8785546900907363260==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Ky2lJWMFh9vBQfKQu2LgxvQRacXU8Tg7s"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Ky2lJWMFh9vBQfKQu2LgxvQRacXU8Tg7s
Content-Type: multipart/mixed; boundary="JZa4tbvoYavcaQs3jP5K0MzAk3xsFTn9M"

--JZa4tbvoYavcaQs3jP5K0MzAk3xsFTn9M
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 1/5/20 2:43 PM, mail@adrianschmutzler.de wrote:
>>>>> On 11/28/19 7:11 PM, Adrian Schmutzler wrote:
>>>>>> Hi Hauke,
>>>>>>
>>>>>>> The following are still on kernel 4.9:
>>>>>>>  * ar7
>>>>>>>  * ixp4xx
>>>>>>>  * orion
>>>>>>
>>>>>> There are patches (actually from you, May 2019) on the list which
>>>>>> claim to bump ar7 and orion to 4.14:
>>>>>>
>>>>>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107337=

>>>>>> https://patchwork.ozlabs.org/project/openwrt/list/?series=3D107339=

>>>>>>
>>>>>> I haven't looked closer, just in case you forgot about them ;-)
>>>>>
>>>>> Nobody reported that they are working so I never applied them. I do=

>>>>> not have the hardware, I just made them compile.
>>>>
>>>> Since there was no response of any kind from a third party, I've
>>>> just
>>> marked the two patchsets as "Deferred" in the patchwork, so we get a
>>> little more overview there. I hope that's okay for you.
>>>
>>> Yes fine with me, we should probably drop these targets soon.
>>>
>>> Hauke
>>
>> I think it's time to remove the three targets and kernel 4.9 support a=
s well
>> after the release has been made. Or does keeping kernel 4.9 in master =
(even
>> without targets) make it easier to support 18.06 branch?

No, it does not help me to have kernel 4.9 is master for maintaining 18.0=
6.

> I've prepared a staging branch for that (completely untested at the mom=
ent):
> https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3D=
refs/heads/remove49

Thank you.

Before applying this please send this to the public mailing list.

> For orion, I have some grep matches in uboot-kirkwood and kernel/linux/=
modules/usb.mk I'm not sure about, so I haven't touched those yet.

The orion part in usb.mk is also used by mvebu:
https://cateee.net/lkddb/web-lkddb/USB_EHCI_HCD_ORION.html

uboot-kirkwood probably also uses some orion parts in the kirkwood target=
=2E

I think kmod-crypto-iv is empty now.

There are also some checks in include/netfilter.mk which can be removed n=
ow.

This file can also be removed:
package/kernel/linux/files/sysctl-tcp-bbr-k4_9.conf


Hauke


--JZa4tbvoYavcaQs3jP5K0MzAk3xsFTn9M--

--Ky2lJWMFh9vBQfKQu2LgxvQRacXU8Tg7s
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl4R6pQACgkQ8bdnhZyy
68eSJwgApPsgtlSFEcR144a/ToZM+FAkwD/eZIncKyFgYDLpms/Xn2XwJSSMuzUb
UsaF1FvhztEX4S74J6yded8ZoNVJLPMQhZ498eSmcybdmPaISPDaw4v85THdZZU8
mlr6kq5nfz06yqjCz7xmTsdZsGsm9GcxRShmhb7GZq6ZPPZi9w9OANXJTHVwPGjG
/T+9yfjchOrpcqZAPqbol6mf9rOb5kj96GZGW4BqnKlhE7d1XRVPHWtZGlw4VxPl
NF9U9crV3dN3PMdHVkfwbfpeeP/5Lqo9FxpIfs34EaLdkbe61CjctDsL0/IEbtw/
4SE2TR//ATyXUXOsygfjN2DAbR8X2g==
=91+n
-----END PGP SIGNATURE-----

--Ky2lJWMFh9vBQfKQu2LgxvQRacXU8Tg7s--


--===============8785546900907363260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8785546900907363260==--

