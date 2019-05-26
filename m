Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 527122ABF6
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 21:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Date:Sender:Content-Type:
	Subject:List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:
	From:List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:References:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZAc6u8IPu964bBuZcmd+10eXd1iT9xQwc4F1kI4E2CY=; b=F/aGzcAGHv92fVjxMrdJh3zf0
	iUer6P6NzjFfrzbIn9igV1hV/2B5spKsGOyHEjmRCjdXFwhmfQrwLGIS4qinrx2aITSu9Y7KGagWr
	uOo6MYs2SMX1nGhLinmkO11znR1aXDp4iYE88GhIW1ipB6dXMqKpnA2yCaGAy0hJFYNVAOej0yD81
	pakSmAR4bG9Uqi2tDv9kQKD29V2kCC6atbHTtNErrWo+9YnPb44gMBEjD+oWI758VbzXmvCXbvWiz
	uOSNkIz/3ubVWlISOt12Rk1RLT921pMua1YkB9eDXGRLwCFbi/2A3aYXwTH877XV432qVoymg7q8s
	WPlQMAKMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUz7J-00047X-Ih; Sun, 26 May 2019 19:47:37 +0000
To: Hans Dedecker <dedeckeh@gmail.com>
References: <mailman.42638.1558865988.2376.openwrt-devel@lists.openwrt.org>
 <CAJLcKsG5eH=CJ-t+x+m1+-+aKL641+cvM8aeKFZEvcBA_Sn15g@mail.gmail.com>
In-Reply-To: <CAJLcKsG5eH=CJ-t+x+m1+-+aKL641+cvM8aeKFZEvcBA_Sn15g@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.42678.1558900052.2376.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?UTF-8?Q?Fabian_Bl=c3=a4se?= via openwrt-devel
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-Mailman-Version: 2.1.21
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?UTF-8?Q?Fabian_Bl=c3=a4se?= <fabian@blaese.de>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] gre: introduce 'nohostroute' option
Content-Type: multipart/mixed; boundary="===============4923653965032337972=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Date: Sun, 26 May 2019 19:47:37 +0000
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4923653965032337972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4923653965032337972==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail.sgstbr.de ([2a01:4f8:160:14d5:e20b::21])
	by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUz7B-00046m-0Z
	for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 19:47:31 +0000
Received: from fbl-macbookpro.lan (unknown [IPv6:2a02:810d:98c0:4a00:fded:e6aa:66d9:29cc])
	(Authenticated sender: fabian@blaese.de)
	by mail.sgstbr.de (Postfix) with ESMTPSA id 74ACB2C00D2;
	Sun, 26 May 2019 21:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blaese.de; s=201803;
	t=1558900046; bh=cGeSp7M5Nw2++vCKFA7x1PGYglwX5iIoPqywQvGJXfA=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=4Ozupa9unVcGqprwY/lBwuUgRU4R2KJNJNf/TxCkR0byWI3bR7c1YKv8HsE4n5Jo7
	 AUrEsSBLoZszNsp2yMVqtHoDv+ISYBTt1z+xDFzENy00GiD23KGDwnrHgt0ZBC4xyy
	 GgGPngeqR+EzF0T6UlgjFNkL9yYTsiwjA5WEri3lcXkF7ioW4sfchdlnO4QDMgOfWy
	 +gWHjKDir1aD6fHHG3TKk0pLI+BSfJg22Sgnkj5S4hVR76EWsxeaC5Kqq9dZinRcVd
	 ALizNxNcQQxGgqL37F07l7oUU0wfMHQ2r8zvlOurvmUUUcuId7YqDCZalKxuSQP6bl
	 yLt6xk+wPDYVg==
Subject: Re: [OpenWrt-Devel] [PATCH] gre: introduce 'nohostroute' option
To: Hans Dedecker <dedeckeh@gmail.com>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <mailman.42638.1558865988.2376.openwrt-devel@lists.openwrt.org>
 <CAJLcKsG5eH=CJ-t+x+m1+-+aKL641+cvM8aeKFZEvcBA_Sn15g@mail.gmail.com>
From: =?UTF-8?Q?Fabian_Bl=c3=a4se?= <fabian@blaese.de>
Openpgp: preference=signencrypt
Message-ID: <069ea337-dd8f-98b3-ff41-815854ff0504@blaese.de>
Date: Sun, 26 May 2019 21:47:15 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJLcKsG5eH=CJ-t+x+m1+-+aKL641+cvM8aeKFZEvcBA_Sn15g@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="tS3KxiiJZbOoRJOdx33nLzC7m3YqRTN3A"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_124729_852811_529AB5D9 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--tS3KxiiJZbOoRJOdx33nLzC7m3YqRTN3A
Content-Type: multipart/mixed; boundary="PxierM7RnwrEGrZMUgy6KkMGabvs9JqLu";
 protected-headers="v1"
From: =?UTF-8?Q?Fabian_Bl=c3=a4se?= <fabian@blaese.de>
To: Hans Dedecker <dedeckeh@gmail.com>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Message-ID: <069ea337-dd8f-98b3-ff41-815854ff0504@blaese.de>
Subject: Re: [OpenWrt-Devel] [PATCH] gre: introduce 'nohostroute' option
References: <mailman.42638.1558865988.2376.openwrt-devel@lists.openwrt.org>
 <CAJLcKsG5eH=CJ-t+x+m1+-+aKL641+cvM8aeKFZEvcBA_Sn15g@mail.gmail.com>
In-Reply-To: <CAJLcKsG5eH=CJ-t+x+m1+-+aKL641+cvM8aeKFZEvcBA_Sn15g@mail.gmail.com>

--PxierM7RnwrEGrZMUgy6KkMGabvs9JqLu
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Hans,

I have sent this patch with git-send-mail and I am able to apply the atta=
ched message (which seems to be created due to my mailservers dmarc polic=
y) which I have received from the mailing list..

I could try to temporarily remove this dmarc policy so my patch does not =
get embedded into another message by the mailing list.

Fabian

On 26.05.19 21:15, Hans Dedecker wrote:
> Hi,
> On Sun, May 26, 2019 at 12:19 PM Fabian Bl=C3=A4se via openwrt-devel
> <openwrt-devel@lists.openwrt.org> wrote:
>>
>> The sender domain has a DMARC Reject/Quarantine policy which disallows=

>> sending mailing list messages using the original "From" header.
>>
>> To mitigate this problem, the original message has been wrapped
>> automatically by the mailing list software.
>>
>>
>> ---------- Forwarded message ----------
>> From: "Fabian Bl=C3=A4se" <fabian@blaese.de>
>> To: openwrt-devel@lists.openwrt.org
>> Cc: "Fabian Bl=C3=A4se" <fabian@blaese.de>
>> Bcc:
>> Date: Sun, 26 May 2019 12:19:05 +0200
>> Subject: [PATCH] gre: introduce 'nohostroute' option
>> It is not always necessary to add a host route for the gre peer addres=
s.
>>
>> This introduces a new config option 'nohostroute' (similar to the
>> option introduced for wireguard in d8e2e19) to allow to disable
>> the creation of those routes explicitely.
>>
>> Signed-off-by: Fabian Bl=C3=A4se <fabian@blaese.de>
> Trying to apply the patch I get :
>=20
> git am 1105538.patch
> Patch is empty.
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".=

>=20
> Please use git send-email to deliver the patch
>=20
> Hans


--PxierM7RnwrEGrZMUgy6KkMGabvs9JqLu--

--tS3KxiiJZbOoRJOdx33nLzC7m3YqRTN3A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJ7vc7QVhZ31uPwNHRNkkPenpIZUFAlzq7UkACgkQRNkkPenp
IZWdlw/+N3kPByhrovgoNqRxbGgq3WrQ1UNh+BUG0hmWrCgbViZUVOjgfxSpDw2X
ClWzu9qpKfU+BigHNFaUZ6VcHHsjoeAdW281HLAoNgOTpLS/llT2Rn64d3TB6MDL
mopSqaKq28w3sJxi9/Rs92U1rjU7bOxKZ7WGtKGJlgFddVcEfvw2Idyk4E4aMUfs
bBHmtcEhs+wiFHQCXgJjzrlTMFxrj4E+SZuZeVqpNyUHH5imZ0z8VyX1ZNjhV+AT
E/MSYCouPcMO0+TEnEc9XyQvXrOzZGccSFL6uIjqhorJZfBhewM3zddWwM58PGQG
na56H8J1BOp7ZX8Nkp5iclmuvNMsl5b8Dp4y8VpGJxNbMnK8ngJYFGFeFZoEB+L8
lTHyQ27CtPWSUtcTpo+LxK1bzxZw99IbEyWaDwv1QreI+juim9ClstxuYew41NsU
1YwhuWrpkG5Ii6qJhR1d+8g1FUakRviOfbb6yxsJ30/pOHTGqtO0TPFPUPLpzSdm
bxqlFjACsCwkc3xzT4LOShyafS/xQCO5kwgmMD5hWPkDkh4/8epcLztm07mwlGdW
y1fpWZdrfL89z53K9ODxYPJWlONN86GF2Kccm/i7aGbRyWXBkucn4XpSkmvkLScL
TsLzkeTqgAK+JgL4CYcKEv31L/S80xsfIDY0o7DsaJeprP7dh+o=
=Ul5T
-----END PGP SIGNATURE-----

--tS3KxiiJZbOoRJOdx33nLzC7m3YqRTN3A--


--===============4923653965032337972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4923653965032337972==--

