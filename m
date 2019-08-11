Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1F388EDF
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 02:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:In-Reply-To:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bkO9PjWCcwGeOMto9cpBfTTlch/n9xcJvCr23UdMaC0=; b=W9rpZvoPcHfu+nq4M2wm+5nDq
	N9P+XrJxMYcr4/3V6Ibpiz3np2IzQhGc+R74VxeYRKWbqHakwuZQZ5SMv1TDtgXiyfqy6i6z1nq9w
	O0/x0uGeuIMG0aoz4IGrauq+c22wIY87mQTamQN/p5aj/aZQWX5A/WnDEwX/vl3XOKgyd6Z1GuwBg
	bHZiIUCE0C2+CfBEBEA4z5MWd9wEqmacuBmHAhuV94qPtYhqmQUW4VnNcjU2qZa0ENFs4YrjULcED
	T1DSehDwF1WS4wOOVo8PE8V7haWmCP+cUlIKj+FdSqfViqYCY+mGN1gnLbmPtpUqhtpb0Gu2uMbVN
	lsZNKUVvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwbPf-00017L-KS; Sun, 11 Aug 2019 00:08:44 +0000
Date: Sun, 11 Aug 2019 08:08:23 +0800
To: Lech Perczak <lech.perczak@gmail.com>
In-Reply-To: <4fc1072b-22ae-3cd6-d592-dd8c757a6dd9@gmail.com>
References: <mailman.16115.1565442835.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.352.1908101628250.23494@localhost.localdomain>
 <4fc1072b-22ae-3cd6-d592-dd8c757a6dd9@gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.16138.1565482112.19300.openwrt-devel@lists.openwrt.org>
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
Subject: Re: [OpenWrt-Devel] Has OpenWrt suport for Powerline devices
Content-Type: multipart/mixed; boundary="===============0315019478278376970=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0315019478278376970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0315019478278376970==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from grosjo.net ([94.130.37.163])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1hwbPS-00016x-79
	for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 00:08:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grosjo.net;
	 s=dkim; h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
	Content-Type:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RJirig7jsOJXo352SjNYcIckudzxGA5aDsalu/7Pr8k=; b=bo9/7lQUrTTLwXCHJF1lrAJLGx
	KpoXKYObpNJHAJMmCq3wVXj18jPxy2GP2ME6PkVwVlWKQo8XVyuaG3hWjcR+kEWjKUPflAQFiVKuH
	lQMO4gr4InCK92Su6ly/XxfRUQnjE1GVPHR4itpTuc0vRe7jhR9dmtuK3YSvgw7ak4LY=;
Received: from localhost ([127.0.0.1] helo=grosjo.net)
	by grosjo.net with esmtp (Exim 4.92.1)
	(envelope-from <jom@grosjo.net>)
	id 1hwbPL-0000fi-Bw; Sun, 11 Aug 2019 00:08:24 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="=_c8986d6f2b8bd786ed73dde266b422b6"
Date: Sun, 11 Aug 2019 08:08:23 +0800
From: Joan Moreau <jom@grosjo.net>
To: Lech Perczak <lech.perczak@gmail.com>
Cc: openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] Has OpenWrt suport for Powerline devices
In-Reply-To: <4fc1072b-22ae-3cd6-d592-dd8c757a6dd9@gmail.com>
References: <mailman.16115.1565442835.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.352.1908101628250.23494@localhost.localdomain>
 <4fc1072b-22ae-3cd6-d592-dd8c757a6dd9@gmail.com>
User-Agent: Roundcube Webmail/1.4-git
Message-ID: <621c052c16c1875113be1fae2f7c32a3@grosjo.net>
X-Sender: jom@grosjo.net
X-GJ: Sent from localhost
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "gjserver",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 admin@grosjo.net for details.
 
 Content preview:  The Powerline system needs a "Lan name" in order to synchronize
    teh devices. How this is translated in OpenWrt ? On 2019-08-11 03:47, Lech
    Perczak wrote: 
 
 Content analysis details:   (-2.9 points, 3.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-GJ-SMTP: h_FROM = Joan Moreau <jom@grosjo.net> RPATH=jom@grosjo.net SENDERADR= jom@grosjo.net:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_170830_263206_9D6A22A4 
X-CRM114-Status: UNSURE (   1.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [94.130.37.163 listed in list.dnswl.org]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

--=_c8986d6f2b8bd786ed73dde266b422b6
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8;
 format=flowed

The Powerline system needs a "Lan name" in order to synchronize teh
devices. 

How this is translated in OpenWrt ? 

On 2019-08-11 03:47, Lech Perczak wrote:

> W dniu 2019-08-10 o 16:30, Enrico Mioso pisze: 
> 
>> Hello! 
>> I guess this is in a case-by-case basis - I have a TP-Link RE450 which is supported. 
>> I know there are also Wi-Fi-only devices, but don't think OpenWRt supports any of them. 
>> 
>> I guess this happens also due to the amount of flash and RAM memory those devices have. 
>> 
>> And - if you're going for the RE450, keep in mind it's u-boot doesn't seem to have any recovery method, so soldering an UART right away maybe a good option. 
>> 
>> Enrico 
>> 
>> _______________________________________________ 
>> openwrt-devel mailing list 
>> openwrt-devel@lists.openwrt.org 
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 
> RE450 is Wifi-only.
> There is actually one supported: 
> 
> https://openwrt.org/toh/hwdata/tp-link/tp-link_tl-wpa8630
> 
> -- 
> Pozdrawiam,
> Lech Perczak
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
--=_c8986d6f2b8bd786ed73dde266b422b6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gene=
va,sans-serif'>
<p>The Powerline system needs a "Lan name" in order to synchronize teh devi=
ces. </p>
<p>How this is translated in OpenWrt ?</p>
<p><br /></p>
<div id=3D"signature">&nbsp;</div>
<p><br /></p>
<p id=3D"reply-intro">On 2019-08-11 03:47, Lech Perczak wrote:</p>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">
<div id=3D"replybody1">
<div>
<div class=3D"v1moz-cite-prefix">W dniu 2019-08-10 o&nbsp;16:30, Enrico Mio=
so pisze:</div>
<blockquote id=3D"v1mid_alpine_LNX_2_21_99999_352_1908101628250_23494_local=
host_localdomain" class=3D"v1cite">Hello! <br />I guess this is in a case-b=
y-case basis - I have a TP-Link RE450 which is supported. <br />I know ther=
e are also Wi-Fi-only devices, but don't think OpenWRt supports any of them=
=2E <br /><br />I guess this happens also due to the amount of flash and RA=
M memory those devices have. <br /><br />And - if you're going for the RE45=
0, keep in mind it's u-boot doesn't seem to have any recovery method, so so=
ldering an UART right away maybe a good option. <br /><br />Enrico <br /><b=
r />_______________________________________________ <br />openwrt-devel mai=
ling list <br /><a class=3D"v1moz-txt-link-abbreviated" href=3D"mailto:open=
wrt-devel@lists.openwrt.org" rel=3D"noreferrer">openwrt-devel@lists.openwrt=
=2Eorg</a> <br /><a class=3D"v1moz-txt-link-freetext" href=3D"https://lists=
=2Eopenwrt.org/mailman/listinfo/openwrt-devel" target=3D"_blank" rel=3D"noo=
pener noreferrer">https://lists.openwrt.org/mailman/listinfo/openwrt-devel<=
/a> <br /><br /></blockquote>
<p>RE450 is Wifi-only.<br />There is actually one supported:</p>
<p><a class=3D"v1moz-txt-link-freetext" href=3D"https://openwrt.org/toh/hwd=
ata/tp-link/tp-link_tl-wpa8630" target=3D"_blank" rel=3D"noopener noreferre=
r">https://openwrt.org/toh/hwdata/tp-link/tp-link_tl-wpa8630</a></p>
<pre class=3D"v1moz-signature">--=20
Pozdrawiam,
Lech Perczak
</pre>
</div>
</div>
<br />
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
_______________________________________________<br />openwrt-devel mailing =
list<br /><a href=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@=
lists.openwrt.org</a><br /><a href=3D"https://lists.openwrt.org/mailman/lis=
tinfo/openwrt-devel" target=3D"_blank" rel=3D"noopener noreferrer">https://=
lists.openwrt.org/mailman/listinfo/openwrt-devel</a></div>
</blockquote>
</body></html>

--=_c8986d6f2b8bd786ed73dde266b422b6--


--===============0315019478278376970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0315019478278376970==--

