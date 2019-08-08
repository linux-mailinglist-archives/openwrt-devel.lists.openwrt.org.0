Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E442D85C7A
	for <lists+openwrt-devel@lfdr.de>; Thu,  8 Aug 2019 10:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:In-Reply-To:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G/daN6B0uM2Ekv8dimr4CgpCmn6noIxDzMUMR3bkc8Q=; b=ATNZK4uMGlbOX3LjMVQn0G1rK
	R4rJIcCJDLEjw/vA4moe0qQnS+UjBd8BjkXQ/SyVHiXBItBR/HlPaKUZSEONLF+rgNrFZQjHBQ0AJ
	lp0Mw0lvTmjxgUcTjdbLKFzypQyqvgXkhHaH+lEpHas+6bc3S3Zdl8no5fP7KvD1VRTxDdI+PuyHD
	0GmPmHtyM52bNvAWYWfcJyUOHuK4AVHfIdLav7iWzgU+Ur76g8807y6Dv71LjjEpKElqpr4dU6+pW
	65zjK7Lru2xvQ0t7jx0QnVoTKfDUd1KVFry/9rRJQHafWZIbMgW7nqpPDsc8ysjPh2jNRedZNaU7j
	1/1Sl50YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdT7-0000qX-Jn; Thu, 08 Aug 2019 08:08:17 +0000
Date: Thu, 08 Aug 2019 16:07:50 +0800
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
In-Reply-To: <20190803202740.GA12735@meh.true.cz>
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
 <20190802103653.GP74752@meh.true.cz>
 <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
 <b13b66b94fb80ac49631e0e2dc971c60@grosjo.net>
 <20190803202740.GA12735@meh.true.cz>
MIME-Version: 1.0
Message-ID: <mailman.15528.1565251681.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Joan Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Joan Moreau <jom@grosjo.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain
 configuration [Was: Compilation error on master / mt7620]
Content-Type: multipart/mixed; boundary="===============2394946396273574454=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2394946396273574454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2394946396273574454==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from grosjo.net ([94.130.37.163])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdSo-0000pl-If
	for openwrt-devel@lists.openwrt.org; Thu, 08 Aug 2019 08:08:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grosjo.net;
	 s=dkim; h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
	Content-Type:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=A2yLoy8obANNeuRB7ck64mz0pX+I6wwj78cPRNlaZws=; b=izZG0tWS8s2Ta1DiRyhjVrytmK
	7BRrYpqSqifQxW/uWBVTtimTp0GvVeYxxoRk3/QXtKzHQwa2XqDz6VeZ+1H0wcBHPaDRDePlSD8Xv
	kP6l1qRrobYVJGP0kFQjc/P86O0VXfOWEFREk+swVjp96gH49f94lJXpL6KxwE+quqc0=;
Received: from localhost ([127.0.0.1] helo=grosjo.net)
	by grosjo.net with esmtp (Exim 4.92.1)
	(envelope-from <jom@grosjo.net>)
	id 1hvdSg-000522-VM; Thu, 08 Aug 2019 08:07:52 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="=_6dda6300f90b4cf78a08754c51e5be7f"
Date: Thu, 08 Aug 2019 16:07:50 +0800
From: Joan Moreau <jom@grosjo.net>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain
 configuration [Was: Compilation error on master / mt7620]
In-Reply-To: <20190803202740.GA12735@meh.true.cz>
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
 <20190802103653.GP74752@meh.true.cz>
 <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
 <b13b66b94fb80ac49631e0e2dc971c60@grosjo.net>
 <20190803202740.GA12735@meh.true.cz>
User-Agent: Roundcube Webmail/1.4-git
Message-ID: <207986d3aba008adb535367421e0f5fb@grosjo.net>
X-Sender: jom@grosjo.net
X-GJ: Sent from localhost
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "gjserver",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 admin@grosjo.net for details.
 
 Content preview:  ok and what about the JFFS2 not compiled properly (searching
    for zlib instead of LZMA) ? On 2019-08-04 04:27, Petr Štetiar wrote: 
 
 Content analysis details:   (-2.9 points, 3.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-GJ-SMTP: h_FROM = Joan Moreau <jom@grosjo.net> RPATH=jom@grosjo.net SENDERADR= jom@grosjo.net:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_010758_770334_85616AD9 
X-CRM114-Status: UNSURE (  -1.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [94.130.37.163 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

--=_6dda6300f90b4cf78a08754c51e5be7f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8;
 format=flowed

ok=20

and what about the JFFS2 not compiled properly (searching for zlib
instead of LZMA) ?

On 2019-08-04 04:27, Petr =C5=A0tetiar wrote:

> Joan Moreau <jom@grosjo.net> [2019-08-02 21:37:17]:
>=20
>> Removing "debug fs" in compilation options removes the problem.
>=20
> It was caused by CONFIG_KERNEL_DYNAMIC_DEBUG=3Dy
>=20
>> So there is something very awkward in the Makefile
>=20
> Should be fixed in https://patchwork.ozlabs.org/patch/1141597/
>=20
> -- ynezz
--=_6dda6300f90b4cf78a08754c51e5be7f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gene=
va,sans-serif'>
<p>ok</p>
<p>and what about the JFFS2 not compiled properly (searching for zlib inste=
ad of LZMA) ?</p>
<div id=3D"signature">&nbsp;</div>
<p><br /></p>
<p id=3D"reply-intro">On 2019-08-04 04:27, Petr &Scaron;tetiar wrote:</p>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Joan Moreau &lt;<a href=3D"mailto:jom@grosjo.net">jom@grosjo.net</a>&gt; [2=
019-08-02 21:37:17]:<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">Removing "debug fs" in compilation options removes the=
 problem.</blockquote>
<br />It was caused by CONFIG_KERNEL_DYNAMIC_DEBUG=3Dy<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">So there is something very awkward in the Makefile</bl=
ockquote>
<br />Should be fixed in <a href=3D"https://patchwork.ozlabs.org/patch/1141=
597/" target=3D"_blank" rel=3D"noopener noreferrer">https://patchwork.ozlab=
s.org/patch/1141597/</a><br /><br />-- ynezz<br /><br /></div>
</blockquote>
</body></html>

--=_6dda6300f90b4cf78a08754c51e5be7f--


--===============2394946396273574454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2394946396273574454==--

