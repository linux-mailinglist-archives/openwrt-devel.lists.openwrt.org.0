Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 438207FB21
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 15:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:In-Reply-To:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KkV3CNxl7gEV30no08+V1z8ch+jknhbchV1xRnkd8zs=; b=oy71UkhmRtA2LSnutDovgocK8
	9k18CKGNHQfJBZEDJDu1YQ8VtqVn6hdZr+vHgDpGaDBj2oxKcctl541MozEQEVINHxH9R0swnFXlH
	8mE9J6bG/1PCWBA8x6sT+ykdDdTsXAfLyZQfo7j6Nl98EhToNAo8CwlHdvfPWvh2/GkKvZSTgx8wI
	yZitQyRh5OykuTftrfZAAIvtMvAXnBfoe51wACC9Y6I74QfJCYqbbk6EbMfrVyixK3cr6V2ghTzsP
	u3qt6200PvMkrw9CjvEZgwOOMaPAv8/mmv8HqM/GS+yax+Kd8ui4hVPZaqj4MTykRNZHKEd1uTgll
	AlbJDwpyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXkM-0006ca-DX; Fri, 02 Aug 2019 13:37:26 +0000
Date: Fri, 02 Aug 2019 21:37:17 +0800
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
In-Reply-To: <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
 <20190802103653.GP74752@meh.true.cz>
 <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
MIME-Version: 1.0
Message-ID: <mailman.13980.1564753042.19300.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============0381700310503309022=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0381700310503309022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0381700310503309022==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from grosjo.net ([94.130.37.163])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1htXkG-0006bp-R2
	for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 13:37:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grosjo.net;
	 s=dkim; h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
	Content-Type:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VtJ82FDHC+sBdcNZvwdJuaphCbHFsMZttSefvrzIlrc=; b=kjb55wvJm7HJ5Jpx+Bml+QQZWS
	BpgQ5fFpr20mKg3b0urhzr9KuBt0oCgLKsndqFvXzPoM901bFzcusF//vusig5tFyABgzrf1YgGHI
	/nxwa0ED/Gd4CpZ/Hj5+Gouz5GnMF+wKgRG7aTFrebNgdZzFCeK2XHmyXnZszJ6HGpDo=;
Received: from localhost ([127.0.0.1] helo=grosjo.net)
	by grosjo.net with esmtp (Exim 4.92.1)
	(envelope-from <jom@grosjo.net>)
	id 1htXkD-0000uF-CQ; Fri, 02 Aug 2019 13:37:18 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="=_8c16bf572058d627673eeec69ba9b684"
Date: Fri, 02 Aug 2019 21:37:17 +0800
From: Joan Moreau <jom@grosjo.net>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain
 configuration [Was: Compilation error on master / mt7620]
In-Reply-To: <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
 <20190802103653.GP74752@meh.true.cz>
 <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
User-Agent: Roundcube Webmail/1.4-git
Message-ID: <b13b66b94fb80ac49631e0e2dc971c60@grosjo.net>
X-Sender: jom@grosjo.net
X-GJ: Sent from localhost
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "gjserver",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 admin@grosjo.net for details.
 
 Content preview:  Removing "debug fs" in compilation options removes the problem.
    So there is something very awkward in the Makefile On 2019-08-02 20:28, Joan
    Moreau wrote: 
 
 Content analysis details:   (-2.9 points, 3.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-GJ-SMTP: h_FROM = Joan Moreau <jom@grosjo.net> RPATH=jom@grosjo.net SENDERADR= jom@grosjo.net:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_063721_030714_B473F016 
X-CRM114-Status: UNSURE (   3.19  )
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

--=_8c16bf572058d627673eeec69ba9b684
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8;
 format=flowed

Removing "debug fs" in compilation options removes the problem.=20

So there is something very awkward in the Makefile=20

On 2019-08-02 20:28, Joan Moreau wrote:

> attached
>=20
> On 2019-08-02 18:36, Petr =C5=A0tetiar wrote:=20
> Joan Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org> [2019-08-=
02 07:56:41]:
>=20
> Hello,
>=20
> I reach the following error while compiling my MT7620/ZBT826-16M on
> master (no error on 18.06) :
>=20
> CC [M]
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620=
/mt76-2019-07-22-75656a45/mt7603/pci.o
> <command-line>:0:37: error: redeclaration of enumerator
> 'IEEE80211_HW_REPORTS_TX_ACK_STATUS'
> <command-line>:0:37: note: in definition of macro
> 'IEEE80211_HW_TX_STATUS_NO_AMPDU_LEN'
> In file included from
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620=
/mt76-2019-07-22-75656a45/mt7603/../mt76.h:27:0,
> from
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620=
/mt76-2019-07-22-75656a45/mt7603/mt7603.h:8,
> from
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620=
/mt76-2019-07-22-75656a45/mt7603/pci.c:7:
> /usr/src/openwrt/4g/staging_dir/target-mipsel_24kc_musl/usr/include/mac80=
211/net/mac80211.h:2293:2:
> note: previous definition of 'IEEE80211_HW_REPORTS_TX_ACK_STATUS' was
> here
> IEEE80211_HW_REPORTS_TX_ACK_STATUS,
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> make[6]: *** [scripts/Makefile.build:327:
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620=
/mt76-2019-07-22-75656a45/mt7603/pci.o]
> Error 1
> make[5]: *** [scripts/Makefile.build:585:
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620=
/mt76-2019-07-22-75656a45/mt7603]
> Error 2
> make[4]: *** [Makefile:1532:
> _module_/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramip=
s_mt7620/mt76-2019-07-22-75656a45]
> Error 2
>=20
> Can you help ?=20
> the problem is probably in this compile check[1], so please do following:
>=20
> make package/mt76/{clean,prepare}
> sed -i 's;TMP";TMP" 2> $(TOPDIR)/meh.log;' build_dir/target-mipsel_24kc_m=
usl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/Makefile=20
> make package/mt76/compile
> scripts/diffconfig.sh >> meh.log; gzip meh.log
>=20
> and send meh.log.gz file as attachment.
>=20
> 1. https://github.com/openwrt/mt76/blob/master/mt7603/Makefile#L7
>=20
> -- ynezz
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
--=_8c16bf572058d627673eeec69ba9b684
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gene=
va,sans-serif'>
<p>Removing "debug fs" in compilation options removes the problem.</p>
<p>So there is something very awkward in the Makefile</p>
<p><br /></p>
<div id=3D"signature">&nbsp;</div>
<p><br /></p>
<p id=3D"reply-intro">On 2019-08-02 20:28, Joan Moreau wrote:</p>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">
<div id=3D"replybody1">
<div style=3D"font-size: 9pt; font-family: Verdana,Geneva,sans-serif;">
<p>attached</p>
<div id=3D"v1signature">&nbsp;</div>
<p><br /></p>
<p id=3D"v1reply-intro">On 2019-08-02 18:36, Petr &Scaron;tetiar wrote:</p>
<blockquote style=3D"padding: 0 0.4em; border-left: #1010ff 2px solid; marg=
in: 0;">
<div class=3D"v1pre" style=3D"margin: 0; padding: 0; font-family: monospace=
;">Joan Moreau via openwrt-devel &lt;<a href=3D"mailto:openwrt-devel@lists=
=2Eopenwrt.org" rel=3D"noreferrer">openwrt-devel@lists.openwrt.org</a>&gt; =
[2019-08-02 07:56:41]:<br /><br />
<blockquote style=3D"padding: 0 0.4em; border-left: #1010ff 2px solid; marg=
in: 0;">Hello,<br /><br />I reach the following error while compiling my MT=
7620/ZBT826-16M on<br />master (no error on 18.06) :<br /><br />CC [M]<br /=
>/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/=
mt76-2019-07-22-75656a45/mt7603/pci.o<br />&lt;command-line&gt;:0:37: error=
: redeclaration of enumerator<br />'IEEE80211_HW_REPORTS_TX_ACK_STATUS'<br =
/>&lt;command-line&gt;:0:37: note: in definition of macro<br />'IEEE80211_H=
W_TX_STATUS_NO_AMPDU_LEN'<br />In file included from<br />/usr/src/openwrt/=
4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75=
656a45/mt7603/../mt76.h:27:0,<br />from<br />/usr/src/openwrt/4g/build_dir/=
target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603=
/mt7603.h:8,<br />from<br />/usr/src/openwrt/4g/build_dir/target-mipsel_24k=
c_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.c:7:<br />/u=
sr/src/openwrt/4g/staging_dir/target-mipsel_24kc_musl/usr/include/mac80211/=
net/mac80211.h:2293:2:<br />note: previous definition of 'IEEE80211_HW_REPO=
RTS_TX_ACK_STATUS' was<br />here<br />IEEE80211_HW_REPORTS_TX_ACK_STATUS,<b=
r />^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br />make[6]: *** [scripts/Makefile=
=2Ebuild:327:<br />/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/li=
nux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.o]<br />Error 1<br />=
make[5]: *** [scripts/Makefile.build:585:<br />/usr/src/openwrt/4g/build_di=
r/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt76=
03]<br />Error 2<br />make[4]: *** [Makefile:1532:<br />_module_/usr/src/op=
enwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07=
-22-75656a45]<br />Error 2<br /><br />Can you help ?</blockquote>
<br />the problem is probably in this compile check[1], so please do follow=
ing:<br /><br />&nbsp;make package/mt76/{clean,prepare}<br />&nbsp;sed -i '=
s;TMP";TMP" 2&gt; $(TOPDIR)/meh.log;' build_dir/target-mipsel_24kc_musl/lin=
ux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/Makefile <br />&nbsp;make =
package/mt76/compile<br />&nbsp;scripts/diffconfig.sh &gt;&gt; meh.log; gzi=
p meh.log<br /><br />and send meh.log.gz file as attachment.<br /><br />1=
=2E <a href=3D"https://github.com/openwrt/mt76/blob/master/mt7603/Makefile#=
L7" target=3D"_blank" rel=3D"noopener noreferrer">https://github.com/openwr=
t/mt76/blob/master/mt7603/Makefile#L7</a><br /><br />-- ynezz<br /><br />__=
_____________________________________________<br />openwrt-devel mailing li=
st<br /><a href=3D"mailto:openwrt-devel@lists.openwrt.org" rel=3D"noreferre=
r">openwrt-devel@lists.openwrt.org</a><br /><a href=3D"https://lists.openwr=
t.org/mailman/listinfo/openwrt-devel" target=3D"_blank" rel=3D"noopener nor=
eferrer">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a><br />=
<br /></div>
</blockquote>
</div>
</div>
</blockquote>
</body></html>

--=_8c16bf572058d627673eeec69ba9b684--


--===============0381700310503309022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0381700310503309022==--

