Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9F17E700
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 02:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:In-Reply-To:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s0pKerF5W1iKRKbVEj9oENy16KFUpFT+cpuFUvoixhA=; b=SeogSMGyL6ImVdh92/1SU7Gv/
	RqmxOyjJ+4EgfBTFU0HvUIVYtOeZ0XKMy2TyiLZRWlXN4N0ca3p5LQgdLl4zsLZ22FYRHZu6sk5/T
	RlBdcwOPZs55tUf60YigpgG5Uqwk3yPHGyWbrqm1iy4JvEZRZlB7MpQR4beK84cnCdobWIP2+nmw7
	e8wepzWEMqPxOSSMs5r1NGQtchRYXDbYXVKb/fio8SM1tUfTfoyKpiRgqKksUqNjcrWbfqxTe9WN3
	/wbS9ai0sRFR/Obrhvr7uZAmk8LPKctIxmviQCukK8+34Inm5THGim/eEoSklGCazgg6CCxARoXe5
	Mk2XXtGmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htL63-0002s1-F3; Fri, 02 Aug 2019 00:06:59 +0000
Date: Fri, 02 Aug 2019 08:06:48 +0800
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
In-Reply-To: <20190801085402.GL74752@meh.true.cz>
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
 <20190730093705.GF74752@meh.true.cz>
 <CAKR_QV++ebOfgX-OUPY+OWz1_kUNiEP85csYFwswJL+vVXtfZw@mail.gmail.com>
 <20190801085402.GL74752@meh.true.cz>
MIME-Version: 1.0
Message-ID: <mailman.13755.1564704415.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Joan Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Dmitry Tunin <hanipouspilot@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Tom Psyborg <pozega.tomislav@gmail.com>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Joan Moreau <jom@grosjo.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
Content-Type: multipart/mixed; boundary="===============8131957396407281549=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8131957396407281549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8131957396407281549==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from grosjo.net ([94.130.37.163])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1htL5w-0002rj-RM
	for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 00:06:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grosjo.net;
	 s=dkim; h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
	Content-Type:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CD4JU38Wq/+jYZR8PHvgG2hMDuhoGBSZUTX260xzOYM=; b=h360v0iRc3xMI2sSWgFa9NNmai
	F2O92h8Ogx3cBoXtPMMI6HAMkUu2MqfZphIPOwOtTSi0IbRyWOd2ScHNxMUg/jBK8gysj33EyKaBW
	BLAW4OPln4qEGdfEVfCz+eBgI8wMU8QBrpfWqnuLTJ35IEECwwoiTRoA1of8bcZLtuco=;
Received: from localhost ([127.0.0.1] helo=grosjo.net)
	by grosjo.net with esmtp (Exim 4.92.1)
	(envelope-from <jom@grosjo.net>)
	id 1htL5s-0004Db-UP; Fri, 02 Aug 2019 00:06:50 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="=_038aef4ef81fbb726e46f039addecbf3"
Date: Fri, 02 Aug 2019 08:06:48 +0800
From: Joan Moreau <jom@grosjo.net>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Cc: Tom Psyborg <pozega.tomislav@gmail.com>, Dmitry Tunin
 <hanipouspilot@gmail.com>, OpenWrt Development List
 <openwrt-devel@lists.openwrt.org>
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
In-Reply-To: <20190801085402.GL74752@meh.true.cz>
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
 <20190730093705.GF74752@meh.true.cz>
 <CAKR_QV++ebOfgX-OUPY+OWz1_kUNiEP85csYFwswJL+vVXtfZw@mail.gmail.com>
 <20190801085402.GL74752@meh.true.cz>
User-Agent: Roundcube Webmail/1.4-git
Message-ID: <27cec590c2ebf0100d3f2d1152bfb15f@grosjo.net>
X-Sender: jom@grosjo.net
X-GJ: Sent from localhost
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "gjserver",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 admin@grosjo.net for details.
 
 Content preview:  Bottom line : When will the device PR (many pending for months,
    few already pushed to master) of ath79 be made available on robot compilation
    in a stable release ? On 2019-08-01 16:54, Petr Štetiar wrote: 
 
 Content analysis details:   (-2.9 points, 3.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-GJ-SMTP: h_FROM = Joan Moreau <jom@grosjo.net> RPATH=jom@grosjo.net SENDERADR= jom@grosjo.net:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_170652_888879_C2F5F5F6 
X-CRM114-Status: UNSURE (   1.10  )
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
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

--=_038aef4ef81fbb726e46f039addecbf3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8;
 format=flowed

Bottom line :=20

When will the device PR (many pending for months, few already pushed to
master) of ath79 be made available on robot compilation in a stable
release ?=20

On 2019-08-01 16:54, Petr =C5=A0tetiar wrote:

> Tom Psyborg <pozega.tomislav@gmail.com> [2019-08-01 09:54:43]:
>=20
> Hi,
>=20
> On 30/07/2019, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>=20
> b) it was decided some time ago, that 19.07 is last release with ar71xx,
> nothing about ath79 in 19.07=20
> because you currently have both targets as source-only

This discussion is about openwrt-19.07 branch, so there's currently
ath79
source-only (which might still change before -rc1 as there was some
discussion
on IRC regarding this) and ar71xx is source-only in master.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
--=_038aef4ef81fbb726e46f039addecbf3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gene=
va,sans-serif'>
<p>Bottom line :</p>
<p>When will the device PR (many pending for months, few already pushed to =
master) of ath79 be made available on robot compilation in a stable release=
 ?</p>
<p><br /></p>
<div id=3D"signature">&nbsp;</div>
<p><br /></p>
<p id=3D"reply-intro">On 2019-08-01 16:54, Petr &Scaron;tetiar wrote:</p>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Tom Psyborg &lt;<a href=3D"mailto:pozega.tomislav@gmail.com">pozega.tomisla=
v@gmail.com</a>&gt; [2019-08-01 09:54:43]:<br /><br />Hi,<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">On 30/07/2019, Petr &Scaron;tetiar &lt;<a href=3D"mail=
to:ynezz@true.cz">ynezz@true.cz</a>&gt; wrote:<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">b) it was decided some time ago, that 19.07 is last re=
lease with ar71xx,<br />&nbsp;&nbsp;&nbsp;nothing about ath79 in 19.07</blo=
ckquote>
<br />because you currently have both targets as source-only</blockquote>
<br />This discussion is about openwrt-19.07 branch, so there's currently a=
th79<br />source-only (which might still change before -rc1 as there was so=
me discussion<br />on IRC regarding this) and ar71xx is source-only in mast=
er.<br /><br />-- ynezz<br /><br />________________________________________=
_______<br />openwrt-devel mailing list<br /><a href=3D"mailto:openwrt-deve=
l@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a><br /><a href=3D"ht=
tps://lists.openwrt.org/mailman/listinfo/openwrt-devel" target=3D"_blank" r=
el=3D"noopener noreferrer">https://lists.openwrt.org/mailman/listinfo/openw=
rt-devel</a></div>
</blockquote>
</body></html>

--=_038aef4ef81fbb726e46f039addecbf3--


--===============8131957396407281549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8131957396407281549==--

