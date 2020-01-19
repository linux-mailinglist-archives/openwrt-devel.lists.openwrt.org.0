Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09226141F2C
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Jan 2020 18:17:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JFiLZ4TX9lvTE7h92OH4nvB+i3pZQyEKodEUL9VsqII=; b=LZrbcT3zoZBEj3UiM5QkLIYFB
	SftpeRADM+wSIKIKcsucGymyK7asqlOvWjw2ZhVCtu8gIxi8z9yJNGD6N7M6Ku68LYfgZADkoE8Wt
	YAqslx6Wef4XFdSA5E2AzOLxNPQdr8I+W0wi8vcN1yt3PBY0N6vAQNkVU740iK6Ttm5C+D4GJX3gz
	QTfSJ0Il8j+lp91G95YwIxH1OqbZyrJji4y9YiuS1KLooX2feMJCoUnFpJ9DwoZguICezo5RaQpqF
	LA43M8m5017nme6vYz9j/ABLSq+M6zsYDu0r4LOEQBKanJjBxIvXW3ckzKzbOSCVJhB/fIYm2y0Z6
	yj+ocipwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itECs-0003pP-74; Sun, 19 Jan 2020 17:17:50 +0000
Received: from mout-p-201.mailbox.org ([80.241.56.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itECi-0003cd-VN
 for openwrt-devel@lists.openwrt.org; Sun, 19 Jan 2020 17:17:44 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4811h53mMjzQl9c;
 Sun, 19 Jan 2020 18:17:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id TWnIexPMEJBz; Sun, 19 Jan 2020 18:17:18 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
 <20200116100514.GB84286@meh.true.cz>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <c252d8df-d0af-b0ec-ea21-7ade8e02da50@hauke-m.de>
Date: Sun, 19 Jan 2020 18:17:10 +0100
MIME-Version: 1.0
In-Reply-To: <20200116100514.GB84286@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_091741_339194_7D4E01F9 
X-CRM114-Status: GOOD (  36.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.241.56.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2207392650809394210=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2207392650809394210==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="uXebYwrauYLKeReHmHcl5dbpp9mJHDMjS"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--uXebYwrauYLKeReHmHcl5dbpp9mJHDMjS
Content-Type: multipart/mixed; boundary="I6C6EYw5YFSGYakbbUP9uu4F9Isy7LVsY"

--I6C6EYw5YFSGYakbbUP9uu4F9Isy7LVsY
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 1/16/20 11:05 AM, Petr =C5=A0tetiar wrote:
> Hauke Mehrtens <hauke@hauke-m.de> [2020-01-16 00:00:33]:
>=20
> Hi,
Hi,

Sorry for answering so late, was busy with other stuff.

>> My preferred timeline would the the following:
>> * Beginning of February: freeze master for big changes (adding new
>> boards is no problem)
>> * Beginning of March: branch off 20.3 release branch
>> * 1 week after the branch was created: tag and build 20.3-rc1
>> * 3 weeks later tag and build 20.3-rc2
>> * 3 weeks later tag and build 20.3 final
>=20
> Amazing!
>=20
> Is this fixed or relaxed timeline? :-) I mean, are those steps going to=
 happen
> as they're defined or they can slip by some days/weeks/months?

This is just my proposal and I would see the dates relaxed, it also
depends if people have time to do it and so on. We can also do two weeks
between the RCs and do one more like you suggested a month ago.

The week between the branch and the RC1 is just to setup the build bots
for the branch.

Someone has to take care of the release and this person would then
announce that he wants to tag and build the next RC some days before so
that people can prepare. The person can change in the release process.

Does someone else other than jow know how to setup built bot for a new
branch? Is this documented somewhere?

> Looking at the recent past, and I think, that we should learn from that=

> experience, it would be nice to define who/what can delay this proposed=

> timeline, release blockers so to speak.=20
>=20
> Thinking about it, just this two points came to my mind:
>=20
>  - unfixed security issues we're aware of
>  - unfixed bug which could lead to:
>=20
>    * bricked device
>    * preventing access to the device over SSH or LuCI
>=20
>    Those issues needs to be properly reported at respective bug trackin=
g
>    system and confirmed/reproducible by at least one more person.
>=20
> From my point of view anything else shouldn't delay .0 release, as the =
other
> issues could be fixed in subsequent .1 even a week later if needed to b=
e.
>=20
> Any delay in this timeline should be properly communicated to the devel=
opment
> mailing list at the time we discover such release blocker.

=46rom my point of view the delays were not caused by someone saying that=

we should wait till something is fixed, but that nobody did the next
step and nothing happened.

If there is something important which should be fixed in the RC or final
release this should be mentioned on the mailing list if we do not have a
fix yet.

I would also only list the big problems you listed as real showstoppers,
but it would be nice if more people also get informed about the other
bugs too.

> BTW it's still master + 2 stable releases which will receive the suppor=
t? Once
> the 20.y is out, the 18.06 is EOL?

I think this is not really clarified yet. I assume that 15.05 and 17.01
are now officially fully end of life. I do not know when we put 18.06
into this mode, but it will definitely get less patches after 19.07 is
out, because people care now less.

I added some support status to this wiki page:
https://openwrt.org/docs/guide-developer/security#support_status
I hope this is ok, I put some minimum dates there and they should be
extended if we think we will support something longer. I am fine with
changes.

I think the latest release branch is better support than the previous
one, how do we paraphrase this? Name it extended support like some
companies do it?

>> I am fine with kernel 4.19 or 5.4, but we should decide and not stay i=
n
>> a limbo for log, so we can work io the right direction.
>=20
> There is going to be a vote about this topic soon, probably tomorrow, s=
ee
> bellow.
>=20
>> It would be nice to have jails activated by default, but there are sti=
ll
>> problems when using an initramfs, I will probably not have the time to=

>> investigate into this problem in the next 4 weeks.
>=20
> I would like to have jails as well, but it should be probably first ena=
bled in
> master for some time. Is this[1] the issue you're having?

Yes this is the issue I am talking about.

>> Should wpad-openssl or better wpad-wolfssl (after it works with WPA3) =
be
>> added as default wpad version now? If we do this we can also activate
>> https support for luci by default https support should not cost much
>> space when we already have an ssl library.
>=20
> I agree.
>=20
> Is there anything we can do in LuCI UI to make the errors caused by
> self-signed certs in the browsers less stressful? Perhaps adding one mo=
re step
> (until there's password set or just for the first time) while redirecti=
ng from
> 80 to 443, some kind of special page, where we could entertain the user=
 about
> the next possible browser certificate error (show the certificate
> details/fingerprint for additional verification) ?
>=20
> Simply something which could improve the UX. I know, it's very hard.

I am not aware of anything.

>> Are there any other bigger changes planned you would like to get into
>> the next release?
>=20
> Sysupgrade image signature validation enabled by default.

Someone told me that we often changed the signature key in the past is
this true?

>> Should we do a vote on the kernel version and release plan in the end?=

>=20
> We've somehow agreed about the kernel voting on IRC. If we can formaliz=
e the
> release plan/rules/timeline soon, lets add it to the next combined vote=
 as
> well (it doesn't matter if it's 4in1 or 5in1 voting, we're saving time)=
, so
> far it looks like:
>=20
>  - 4.19 Vs 5.4 for next release (Jow is preparing the text)
>  - new project logo/colors (ynezz)
>  - openwrt-announce mailing list (ynezz if needed be)
>  - GitHub Vs self-hosted GitLab Vs whatever else (ynezz if needed be)
>  - release timeline/rules definition (Hauke/Baptiste?)
>=20
> Does anyone else see any other topic which should be included in this c=
ombined
> vote? If so, let us know ASAP and ideally prepare the text/voting optio=
ns as
> well.

I would prefer if we make separate votes at least for the topics which
are separate, you can start them at the same time, but I think it is
easier to have separate discussions.

> 1. https://patchwork.ozlabs.org/patch/1179527/

Hauke


--I6C6EYw5YFSGYakbbUP9uu4F9Isy7LVsY--

--uXebYwrauYLKeReHmHcl5dbpp9mJHDMjS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl4kjxoACgkQ8bdnhZyy
68cZTwgA2oOuavWG0MwSwfhazl0b7UxxruWUJAOoSpcKQhxtAGMl38RFhKWCjek6
qvyALVwsFyWqgUC7702qilPwpX2UzeCKuoJUVcmJnjA64NNozRHdiJ08itkC8v5i
bXGCMpBt/TjJNoVaybODusSljXGj4U94eLDSARcc0kHVgxlk2pJYftnTVTypMPEv
bJxiZr3tecri4JeX/zHJvkx2tXskJGRmko0QGpD7PA2UB8UGQxArjjXUUDAk9HAm
wKrFiq7BREn9yZu8E5LcM9bhhY0zYSNeU1padDUPU8fn4T0yd/VzJyF/Pr92iYnt
95j2aXdZHJIbGC6m7TzHSBGtbHt6/A==
=MPzm
-----END PGP SIGNATURE-----

--uXebYwrauYLKeReHmHcl5dbpp9mJHDMjS--


--===============2207392650809394210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2207392650809394210==--

