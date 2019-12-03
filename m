Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661E2110593
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 20:57:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tMFEcTxdnsqQ6r/hIZb1I6Z/kyan82BDjk8kJRwN7QQ=; b=Cjjx7H0jK6JctyzTD/TmE/ylw
	F9cSqoCJilAP0nRU3WejYbTHMvAoVVmwSLPpBJTcdqGwj6zE+t4xQ+X2H2iMoimdkPn94GOgCJzso
	m1Yiu87Bl7pmGFQOCk0SPXwMFbariWJl1g0wcE09BLc+D90NJrbTidyd7kWNxmbZE/Zt69EjXOwAf
	glriIHWOJTram3cUU8785HX9JIp65/FZlCeNEdgKkk+kBtpcTILUVhJxBTWqzgPQNYIv9snPrYlEz
	RpU9FCVLu+H/S6AkH4yOESGt2sq9UfyPOKZt1ql7pfFMV3HCr1uwAGI71DtIIkeh7aAc5MfNLLQAT
	8LpnjG/UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icEIO-0004Jl-9i; Tue, 03 Dec 2019 19:57:16 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icEIB-0004JI-3l
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 19:57:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by antares.kleine-koenig.org (Postfix) with ESMTP id CFCD285E8ED;
 Tue,  3 Dec 2019 20:57:00 +0100 (CET)
Received: from antares.kleine-koenig.org ([127.0.0.1])
 by localhost (antares.kleine-koenig.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ParnKc6-nKi; Tue,  3 Dec 2019 20:56:59 +0100 (CET)
Received: from [192.168.77.173] (unknown [149.172.52.110])
 by antares.kleine-koenig.org (Postfix) with ESMTPSA;
 Tue,  3 Dec 2019 20:56:59 +0100 (CET)
To: Hans Dedecker <dedeckeh@gmail.com>
References: <20191120181131.2622-1-uwe@kleine-koenig.org>
 <CAJLcKsGef==YdFG8mSjQS=KD9zXwwpuEuJfAhxNTqHadKLOy0w@mail.gmail.com>
 <6a20ec46-f61a-a1df-5530-54031c299c97@kleine-koenig.org>
 <CAJLcKsHhA3_qaWN2bHv8tAJCg5Ymdj6rfRLN5Gb89AqDzn6hYA@mail.gmail.com>
 <a7a0b354-7ecb-ff39-cca1-070276f8b747@kleine-koenig.org>
 <CAJLcKsH1EY3SRK3ByXBn8Exjb8bhSoJu94=7gK_-B6YHx1hvGg@mail.gmail.com>
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
Autocrypt: addr=uwe@kleine-koenig.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <1d820be9-1d5d-364d-f270-5ebce820c5ba@kleine-koenig.org>
Date: Tue, 3 Dec 2019 20:56:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAJLcKsH1EY3SRK3ByXBn8Exjb8bhSoJu94=7gK_-B6YHx1hvGg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_115703_468011_E82373F6 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] The meaning of Signed-off-by for netifd [Was:
 Re: [PATCH netifd] interface: warn if ip6hint is truncated]
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============0552631569873667894=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0552631569873667894==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="SRsq51142dDU28ecFUYSDc3luAXS9TuhK"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--SRsq51142dDU28ecFUYSDc3luAXS9TuhK
Content-Type: multipart/mixed; boundary="6GiS4iygu2xSjBP2nbYnRh7HGcGDV2CFd";
 protected-headers="v1"
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
To: Hans Dedecker <dedeckeh@gmail.com>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Message-ID: <1d820be9-1d5d-364d-f270-5ebce820c5ba@kleine-koenig.org>
Subject: Re: [OpenWrt-Devel] The meaning of Signed-off-by for netifd [Was: Re:
 [PATCH netifd] interface: warn if ip6hint is truncated]
References: <20191120181131.2622-1-uwe@kleine-koenig.org>
 <CAJLcKsGef==YdFG8mSjQS=KD9zXwwpuEuJfAhxNTqHadKLOy0w@mail.gmail.com>
 <6a20ec46-f61a-a1df-5530-54031c299c97@kleine-koenig.org>
 <CAJLcKsHhA3_qaWN2bHv8tAJCg5Ymdj6rfRLN5Gb89AqDzn6hYA@mail.gmail.com>
 <a7a0b354-7ecb-ff39-cca1-070276f8b747@kleine-koenig.org>
 <CAJLcKsH1EY3SRK3ByXBn8Exjb8bhSoJu94=7gK_-B6YHx1hvGg@mail.gmail.com>
In-Reply-To: <CAJLcKsH1EY3SRK3ByXBn8Exjb8bhSoJu94=7gK_-B6YHx1hvGg@mail.gmail.com>

--6GiS4iygu2xSjBP2nbYnRh7HGcGDV2CFd
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 12/3/19 4:28 PM, Hans Dedecker wrote:
> On Tue, Dec 3, 2019 at 3:59 PM Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig=
=2Eorg> wrote:
>>
>> Hello Hans,
>>
>> On 12/3/19 8:50 AM, Hans Dedecker wrote:
>>> On Fri, Nov 29, 2019 at 9:29 PM Uwe Kleine-K=C3=B6nig <uwe@kleine-koe=
nig.org> wrote:
>>>>
>>>> On 11/29/19 8:50 PM, Hans Dedecker wrote:
>>>>> On Wed, Nov 20, 2019 at 7:11 PM Uwe Kleine-K=C3=B6nig <uwe@kleine-k=
oenig.org> wrote:
>>>>>>
>>>>>> When for example a /60 is assigned to a network the last 4 bits of=
 the
>>>>>> ip6hint are unused. Emit a warning if any of these unused bits is =
set as
>>>>>> it indicates that someone didn't understand how the hint is used. =
(As I
>>>>>> did earlier today resulting in spending some time understanding th=
e
>>>>>> code.)
>>>>> Patch applied with some minor tweaks
>>>>> (https://git.openwrt.org/?p=3Dproject/netifd.git;a=3Dcommit;h=3De45=
b1408284c05984b38a910a1f0a07d6c761397);
>>>>
>>>> The updated warning message is fine.
>>>>
>>>>> I added your SoB as this was missing in the patch
>>>>
>>>> I wonder what the significance of the SoB is given that a) it's not
>>>> documented (at least in the netifd sources) and b) it seems to be ok=
 to
>>>> "fake" someone else's SoB and c) there are several commits in the ne=
wer
>>>> history of netifd that don't have a SoB of either Author or Committe=
r
>>>> (or both).
>>> For details why a SoB is required; see
>>> https://openwrt.org/submitting-patches#sign_your_work.
>>> If there're any commits in the netifd repo which don't have a SoB thi=
s
>>> must rather stay an exception than becoming a general rule.
>>
>> ok, so you claim my SoB means that *I* confirmed that my change is
>> compatible to the netifd's license. I didn't do that though.
>>
>> Even if it was me who added that line I doubt is has any relevance for=

>> netifd because nothing in the netifd sources explains what an SoB mean=
s.
>> And the link you sent applies only to patches for openwrt, not netifd.=

>> (Also if this is the only place for openwrt where the significance of =
an
>> SoB is described I wonder if this is relevant given that from the POV =
of
>> openwrt.git the wiki is an external resource that can be modified by
>> anyone. What if someone removes item (d) from the wiki or introduces a=
n
>> (e)?)
>>
>> Don't get me wrong, my patch is compatible to netifd's license. But if=

>> you want that netifd's license situation stays reasonably safe and
>> clean, it IMHO cannot be that you add a SoB for someone else, and give=

>> that SoB a meaning that isn't documented for your project and assumes
>> things about that someone else that you cannot know for sure. So if yo=
u
>> require a formalism, please formalize it properly. (Of course INAL, bu=
t
>> that's my understanding of how open source licensing works.)
> I won't waste further my time and energy on this ...
> I acted in good faith and next time if I find a patch from you without
> SoB I will just simply reject it to avoid contra productive
> discussions

I would have expected that the discussion is in your interest because
not being strict with licenses is something that really hurts when it
goes wrong. My intention is not to drain your energy but to highlight
the necessity[1] to be stricter with license stuff than the way my patch
was handled.

> Patches delivered for all projects (netifd/libubox/ubus/...)
> maintained by OpenWrt must have a SoB in line what is described on the
> Wiki; this does not solely apply to the OpenWrt repo
>=20
> This closes the discussion for me

Fine for me, I won't press the matter any further. I wish you that this
problem won't backfire.

Bye
Uwe

[1] well, or at least what I consider to be necessary


--6GiS4iygu2xSjBP2nbYnRh7HGcGDV2CFd--

--SRsq51142dDU28ecFUYSDc3luAXS9TuhK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl3mvf4ACgkQwfwUeK3K
7AnlgAf/Wl0ug5iy1p89XplXYFsQQpod/Mtn2nTcF+Ijtqq+7toyHxz+doWffQpn
+Yc+0DbCUKYZ3UEby0XJFDZqBg7l3XmwtEyS0T9KhpDdluKS+zbztNJswWb9LMaH
/nSgZKovXWRE/whxcNu2hSGI9Ae6nz+zYhGnuqtWR6eMR/ZT/Qj174Z8CmyKhtbP
HyFv89pu8sXuVUy1DemsPbUyx0xWpVLwABSTKmTNJPMyjkn++p+vTVyWf1knUNVy
sYmRGPCB3YuaeuMlGl8Lia2PIAHpB1NovXdyk7ECOuSu4YtrbhZKmBO7rzD4icAm
eTCcCEhzr7pTZtf5vtkiCKZcjL9xhg==
=zicE
-----END PGP SIGNATURE-----

--SRsq51142dDU28ecFUYSDc3luAXS9TuhK--


--===============0552631569873667894==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0552631569873667894==--

