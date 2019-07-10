Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8860D644F0
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jul 2019 12:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=otOAb6wpN/nLmf091UuCoW+I6n5GO8kubm4hg401U2U=; b=kE4NTZyLMgJ7LbAEXOoQNNlOQf
	E2skaLZJqbJHqW1qlVK/tTvrse8G7gtZ2zbWr87Ga9CXsxpqSlJp1udflUUgc3J67OWq0zeN/GROy
	0NuDM2bOPHmSL89mj0sRWY3cMv30kbZC1emd/umNpe2qwhVuZzHwqnXFWygELxsd91/3ceZz2IdcY
	nLdxRRZVwe0j7W2R3T3Uqn3R/Ex6iJNiwRdaoI2DUNMiHT+da9tXyE5tHe9mTic4EDcUh624reh82
	9bXuyZUr5Uxf/511V+Z83C2dNfoqx1vhO+oEfpRez6fUXqSV7JPStRqakSsqpYMxVE4MnHKehxBjO
	9cQdriVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl9WY-0002tG-OK; Wed, 10 Jul 2019 10:08:30 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl9W1-0002rQ-16; Wed, 10 Jul 2019 10:07:59 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EA6B73CEB;
 Wed, 10 Jul 2019 12:07:52 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 472fb009;
 Wed, 10 Jul 2019 12:07:45 +0200 (CEST)
Date: Wed, 10 Jul 2019 12:07:50 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20190710100750.GA11387@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_030757_375851_9C16C4A0 
X-CRM114-Status: UNSURE (   4.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] Hamburg 2019 developer meeting details
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-adm@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7711000355987166348=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============7711000355987166348==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tl;dr: 19.07 was branched, ar71xx is gone, we got some beers & pizzas

Hi all,

I'm writing on the behalf of OpenWrt team members attending the OpenWrt
meeting in Hamburg, which has happened a month ago, so it's about time to
publish some outcome :-)

Most of us met in the late afternoon on Sunday 9th June in a nice local pub
with a great beer selection, together with the Debian folks attending
MiniDebConfHamburg[1].

On Monday 10th June, we started right in the morning in one of the conference
rooms, where we sat down in the circle, introduced ourselves and provided
answers to the "What brings you here?" question. Shortly after this everyone
got marker and paper cards, writing down arbitrary number of topics he would
like to discuss during the following days. Then we put those cards on two
boards, merging similar topics together where applicable.

As you can imagine, this activity has produced a lot of topics, so we needed
to prioritize, so each attendee got five pins, each of those pins represented
one vote, topics with most pins (votes) were discussed first (topics with no
votes were discussed with a soft timer, 6 minutes dedicated to each topic,
where time was extended as needed).

With much discussion, we wrote down all the topics, ideas, TODOs to the
ChaosPad. After the meeting, we cleaned it up, transfered to our wiki[2],
reordered, added some photos and more details.

In the evening we went to some local place with a good pizza, where we
spontaneously decided that it's just right time to branch 19.01 finally (just
about 6 months later, yeah!) and lynxis created that branch as openwrt-19.07
around 21:33 CEST.  You can find a photo of this branching event at the
meeting's wiki[2] page as well.

Then we moved back to Dock Europe[3] venue, where we continued discussing some
of the topics till the early morning.

On Tuesday 11th June we got a visit from h01ger, Debian developer and one of
the developers behind reproducible-builds.org so we've used this opportunity
to talk about improvements in reproducible OpenWrt. As we were discussing
possible migration from GitHub to GitLab just a few moments ago, and as we
knew, that Debian has switched to GitLab recently, we talked with h01ger
little bit about Debian's experience with GitLab as well and h01ger has
provided mostly positive feedback. Some of the topics were discussed till the
early morning again.

Activity during the Wednesday 12th June was similar to the previous days, we
were discussing remaining topics, diving back into the details of previous
topics, but finally we had first live demonstration, where lynxis presented us
with his work-in-progress of automated testing on real hardware.

To sum it up, it was a time very well spent, we were able to touch a lot of
topics in those 3 days, which would otherwise take as ages to process and we
hope, that if we manage to tackle at least 33% of those topics it could
translate in a huge progress forward for the project as a whole.

We're looking forward to our next meeting, where we hope, that we'll actually
finally hack on some topics together instead of "just" discussing them.

1. https://wiki.debian.org/DebianEvents/de/2019/MiniDebConfHamburg
2. https://openwrt.org/meetings/hamburg2019/start
3. https://www.dock-europe.net/

Cheers,

OpenWrt team members attending Hamburg meeting

--vkogqOf2sHV7VnPd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEWRluomwoVL5Gc02W/IrPNfed8W4FAl0luPMACgkQ/IrPNfed
8W4gXwgAof+9QBJeQKN8gLS4otM7JyezGUR8g/nBvV1IGX4im4d/YLwlQr6lmDQY
ZngECZ8KhZo35JL4zjcv+C/Up3QRQrm5eoezKyeurXiv9p8UypykdxKL1c7fLtFB
ufDIgc/Ls9IkVpgGfTtnaP1rDGxaL2JoMR0pepSFLjF4fM4mqW6OWjLmmJkZioJy
Y9mTnAIUZx7HCpU+YngYoF9BkoZTHQASgR8zOHiQc/gqnZFHxE0d8vNXJdrnHPqw
OHEvljefAVuDvPfae89+FckzcT/5dBID+s5sa5UfUROlnrEDlEB89+dEUDS4TrTG
BZIKSTK8iLrAEOhBOZpF3N+r91WKmQ==
=KrxO
-----END PGP SIGNATURE-----

--vkogqOf2sHV7VnPd--


--===============7711000355987166348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7711000355987166348==--

