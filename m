Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546D835B66
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 13:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uGyKfa4+M4x96ooqg3eFzcXUccyHHwhfQYoUjuoEv+s=; b=GoaFVTyWDYMa1PeCJYWlUir79
	OmYJrMOWNubq/1nnT/4sIOwGvxZemjsHaBQBQQBUCtQzWpovcnrvT7CCwMmPWY2uiG67M3Aa2+ddq
	SVbRqpn+Wvnx3Ae52D+a2LrzzPzUSdVuM5bSuwXCOVtpEiXIitVebExoY4/eJIrnLM9j1c4L6dBDc
	GsVCG3OazM7wcdQ2EQBOwsVjBRchUgybBbYexcB4xG6zKcHCJu/rI2PYSjGTwHa2ozUJu/AgIBN02
	A9Oza/GQxCJI6+FfBlOYkrHosLhQuWl9h1VOKJuPI84fHkd5yM7xu2qZxA+O+/Fi7M6wgXVAdY9Ov
	yjtD/vjGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUE3-0001mW-Om; Wed, 05 Jun 2019 11:37:03 +0000
Received: from palmtree.beeroclock.net ([2a01:7e00::f03c:91ff:fe93:f66c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUDx-0001m5-8D
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 11:36:58 +0000
Received: from mailpile.local (palmtree.beeroclock.net
 [IPv6:2a01:7e00::f03c:91ff:fe93:f66c])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 7AC1A1FBEC;
 Wed,  5 Jun 2019 11:36:55 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: "John Crispin" <john@phrozen.org>
In-Reply-To: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
References: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
User-Agent: Mailpile
Message-Id: <DLiog63dMUCNvIuGWRoixvsPxUgrQbnsVeQEQH9A2342@mailpile>
Date: Wed, 05 Jun 2019 11:35:46 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_043657_555055_8CA66673 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============6300445885632703531=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6300445885632703531==
Content-Type: multipart/signed; boundary="==LJaX7bUn6ARTRKRmF2hvHprYecEc3N==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==LJaX7bUn6ARTRKRmF2hvHprYecEc3N==
Content-Type: multipart/mixed; boundary="==EkCmJIFFMcNrssQw4u3ohKRSB3SnqZ=="
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
From: Karl Palsson <karlp@tweak.net.au>
To: "John Crispin" <john@phrozen.org>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
References: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
User-Agent: Mailpile
Date: Wed, 05 Jun 2019 11:35:46 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==EkCmJIFFMcNrssQw4u3ohKRSB3SnqZ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


John Crispin <john@phrozen.org> wrote:
> 
> On 05/06/2019 12:17, Karl Palsson wrote:
> > John Crispin <john@phrozen.org> wrote:
> >> This can be used inside build setups for easy feeds.conf
> >> generation.
> >
> > Could you give us an example of how this is actually easy, or
> > what sort of functionality this is providing beyond "cat
> > feeds.conf.default feeds.conf.extra > feeds.conf"
> >
> > It seems like a lot of perl for a narrow usecase.
> >
> > Sincerely,
> > Karl Palsson
> 
> This was brought up as a missing feature by the prpl folks. I
> considered on how to best implement this and find that having
> proper tooling is much better than having to carry around an
> extra file that is cat. being able to build the feeds.conf
> dynamically like this just seems much cleaner to me and will
> allow downstream users, vendors, odms and integrators to have
> less need to patch their trees to death.

So, they still have to have a script, but now the script has...


...
./scripts/feeds setup -b src-git,private-aa,git://blah
src-link,private-bb,/wop/blah
...

instead of
...
cp feeds.conf.default feeds.conf
echo "src-git private-aa git://blah" >> feeds.conf
echo "src-link private-bb /wop/blah" >> feeds.conf
...

I mean, _yes_ it's "simpler" but it's only simpler by bringing in
new tools with new layers of abstraction. I really question
whether that's actually simpler for anyone in the long run, and
also how this really counts as a "missing feature" There's still
going to be a requirement for that vendor script.

Sincerely,
Karl Palsson


--==EkCmJIFFMcNrssQw4u3ohKRSB3SnqZ==--

--==LJaX7bUn6ARTRKRmF2hvHprYecEc3N==
Content-Type: application/pgp-signature; name="OpenPGP-digital-signature.html"
Content-Description: OpenPGP Digital Signature
Content-Disposition: attachment; filename="OpenPGP-digital-signature.html"

<html><body><h1>Digital Signature</h1><p>

This is a digital signature, which can be used to verify
the authenticity of this message. You can safely discard
or ignore this file if your e-mail software does not
support digital signatures.

</p><pre>
-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAlz3qP0ACgkQGai1D9TV
yvYOKhAAvd7Z+qNusYwAe+G2HX6kYTon+sDYs/n5RecbWht/0RRkCF9d+Dg7780R
jwqTSw9zDXiDWCZZytqL6kDX5h1mBdq5bzkgH9KVoKSaxzDCerfvhnZwSJ0EX6Gk
H1RVC/hnFt7BadSJd8leIZhYHhS2zsicHHZHHPdHIwDqIZ/Ihq438sZhflCfDZq1
pWxZ0mQ9XZ09pgDqrQwbXU2uCrpxIQazf+kVZF+0BBGwYYpbQU8AMY/5Aebt1D4G
C3aepb6JbGtIjeYdnkCKhDmAlFW3p5zlauJJ2aQkCSaqDQwO+7pFbPjdB+sEgFyR
TGfiOlB8360ES5HiNU55iL6QPP904WtdEX/cxZgE9M10R4R2axw/hzGSYxr7u0cv
iTWWiZJXC4TnYDQeVR1bapQ0qYf614G77SCO0P6PNPQBf1ETP7fvrlCJ8qimzWyp
ng0HxJ6Ex4eOZKju1td8MgXm0m4r57FUhInyf/m6xzwjuB+AWo5rQDjfdE/CTi6C
zzmT8ouiHscB3u4dH7Xdjy+6t8VUmEdobTI+lXZZ2V5VB72BCMBxtf9TKP4O1/7v
odCKyspZFzIK/TzGr3bIPA4n/cilZE5K6jvGOUGY6JmQO54pIGPsO1Z7oRL0wlby
prdS8BeNK9bMGX6AjubyQJDV9t+K1r+2179GtisG8T/9ZlcBzwk=
=r7i7
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==LJaX7bUn6ARTRKRmF2hvHprYecEc3N==--



--===============6300445885632703531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6300445885632703531==--


