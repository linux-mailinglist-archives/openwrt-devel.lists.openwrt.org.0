Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9632C7F6D5
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 14:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:In-Reply-To:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gTVwKoc1hXsTegXJSDQpf67/pLqCJCrM4vwC0qZacQo=; b=aVezjQ6dptwOnm4B3ECOcAMPr
	bVmAOQ7WQdtbkiPlZyfV05QSxVYjqokazqQuiyfWp5xCTwkHTBXRZJz9TYRNZmZVqIEsy3A1BNeVe
	9MgMGDuPahNYL94wXdLdxuqW5uhgJ8KdklS/7CtNPYnChids9b//WFWLGBxkHTHl3tT/Pnbq1zyZv
	YU6zcXVfRLnvzSrvRwQnx0BZdmzIMAYSVHiLvPMP62euFkNDmAOeRrsEP0cjfCV9TdclKxsiBTJB1
	xzCwKMMM2pvomwkjdLDUW0Vbh+3/ODxoS+6LU/ZWsa3pc7BtobYooIttM+4haPIf1ijFpaXzmzMnT
	5igx08JBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htWfY-0000MT-0s; Fri, 02 Aug 2019 12:28:24 +0000
Date: Fri, 02 Aug 2019 20:28:15 +0800
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
In-Reply-To: <20190802103653.GP74752@meh.true.cz>
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
 <20190802103653.GP74752@meh.true.cz>
MIME-Version: 1.0
Message-ID: <mailman.13954.1564748900.19300.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============6258859538248003475=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6258859538248003475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============6258859538248003475==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from grosjo.net ([94.130.37.163])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1htWfS-0000M5-4L
	for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 12:28:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grosjo.net;
	 s=dkim; h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
	Content-Type:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/j8kPhiHi1Ic+8wbU979qlixxWWChscJiDWZIWJ4yOg=; b=Pvtesr7OVih9zgae6pdBSt+KBi
	3sp+Kdrn1tmV5abOU8JYkgc5y/JR9sA4YYYedHQcVl4M4ywank5VLU6+oQtSXL2ia6fgdvFix8ZMO
	/CRa682OYl9eJI+DDy5hnRuxIfs6bkA6vYV5nW7pqZHRWlzufz64MQbr4a4Ke+FykjzE=;
Received: from localhost ([127.0.0.1] helo=grosjo.net)
	by grosjo.net with esmtp (Exim 4.92.1)
	(envelope-from <jom@grosjo.net>)
	id 1htWfP-0002LY-2f; Fri, 02 Aug 2019 12:28:16 +0000
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="=_b4dd1313977541b9d3b368a98f483bab"
Date: Fri, 02 Aug 2019 20:28:15 +0800
From: Joan Moreau <jom@grosjo.net>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain
 configuration [Was: Compilation error on master / mt7620]
In-Reply-To: <20190802103653.GP74752@meh.true.cz>
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
 <20190802103653.GP74752@meh.true.cz>
User-Agent: Roundcube Webmail/1.4-git
Message-ID: <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
X-Sender: jom@grosjo.net
X-GJ: Sent from localhost
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "gjserver",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 admin@grosjo.net for details.
 
 Content preview:  attached On 2019-08-02 18:36, Petr Štetiar wrote: > Joan
   Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org> [2019-08-02 07:56:41]:
    > >> Hello, >> >> I reach the following error while compiling my MT7620/ZBT826-16M
    on >> master (no error on 18 [...] 
 
 Content analysis details:   (-2.9 points, 3.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-GJ-SMTP: h_FROM = Joan Moreau <jom@grosjo.net> RPATH=jom@grosjo.net SENDERADR= jom@grosjo.net:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_052818_331347_F0292D28 
X-CRM114-Status: UNSURE (  -4.99  )
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

--=_b4dd1313977541b9d3b368a98f483bab
Content-Type: multipart/alternative;
 boundary="=_d07ebe577e2553d8a67fcb09b3759531"

--=_d07ebe577e2553d8a67fcb09b3759531
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8;
 format=flowed

attached

On 2019-08-02 18:36, Petr =C5=A0tetiar wrote:

> Joan Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org> [2019-08-=
02 07:56:41]:
>=20
>> Hello,
>>=20
>> I reach the following error while compiling my MT7620/ZBT826-16M on
>> master (no error on 18.06) :
>>=20
>> CC [M]
>> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603/pci.o
>> <command-line>:0:37: error: redeclaration of enumerator
>> 'IEEE80211_HW_REPORTS_TX_ACK_STATUS'
>> <command-line>:0:37: note: in definition of macro
>> 'IEEE80211_HW_TX_STATUS_NO_AMPDU_LEN'
>> In file included from
>> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603/../mt76.h:27:0,
>> from
>> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603/mt7603.h:8,
>> from
>> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603/pci.c:7:
>> /usr/src/openwrt/4g/staging_dir/target-mipsel_24kc_musl/usr/include/mac8=
0211/net/mac80211.h:2293:2:
>> note: previous definition of 'IEEE80211_HW_REPORTS_TX_ACK_STATUS' was
>> here
>> IEEE80211_HW_REPORTS_TX_ACK_STATUS,
>> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> make[6]: *** [scripts/Makefile.build:327:
>> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603/pci.o]
>> Error 1
>> make[5]: *** [scripts/Makefile.build:585:
>> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603]
>> Error 2
>> make[4]: *** [Makefile:1532:
>> _module_/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-rami=
ps_mt7620/mt76-2019-07-22-75656a45]
>> Error 2
>>=20
>> Can you help ?
>=20
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
--=_d07ebe577e2553d8a67fcb09b3759531
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gene=
va,sans-serif'>
<p>attached</p>
<div id=3D"signature">&nbsp;</div>
<p><br /></p>
<p id=3D"reply-intro">On 2019-08-02 18:36, Petr &Scaron;tetiar wrote:</p>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Joan Moreau via openwrt-devel &lt;<a href=3D"mailto:openwrt-devel@lists.ope=
nwrt.org">openwrt-devel@lists.openwrt.org</a>&gt; [2019-08-02 07:56:41]:<br=
 /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">Hello,<br /><br />I reach the following error while co=
mpiling my MT7620/ZBT826-16M on<br />master (no error on 18.06) :<br /><br =
/>CC [M]<br />/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-r=
amips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.o<br />&lt;command-line&gt=
;:0:37: error: redeclaration of enumerator<br />'IEEE80211_HW_REPORTS_TX_AC=
K_STATUS'<br />&lt;command-line&gt;:0:37: note: in definition of macro<br /=
>'IEEE80211_HW_TX_STATUS_NO_AMPDU_LEN'<br />In file included from<br />/usr=
/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-=
2019-07-22-75656a45/mt7603/../mt76.h:27:0,<br />from<br />/usr/src/openwrt/=
4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75=
656a45/mt7603/mt7603.h:8,<br />from<br />/usr/src/openwrt/4g/build_dir/targ=
et-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci=
=2Ec:7:<br />/usr/src/openwrt/4g/staging_dir/target-mipsel_24kc_musl/usr/in=
clude/mac80211/net/mac80211.h:2293:2:<br />note: previous definition of 'IE=
EE80211_HW_REPORTS_TX_ACK_STATUS' was<br />here<br />IEEE80211_HW_REPORTS_T=
X_ACK_STATUS,<br />^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br />make[6]: *** [sc=
ripts/Makefile.build:327:<br />/usr/src/openwrt/4g/build_dir/target-mipsel_=
24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.o]<br />E=
rror 1<br />make[5]: *** [scripts/Makefile.build:585:<br />/usr/src/openwrt=
/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-7=
5656a45/mt7603]<br />Error 2<br />make[4]: *** [Makefile:1532:<br />_module=
_/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/=
mt76-2019-07-22-75656a45]<br />Error 2<br /><br />Can you help ?</blockquot=
e>
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
st<br /><a href=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@li=
sts.openwrt.org</a><br /><a href=3D"https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel" target=3D"_blank" rel=3D"noopener noreferrer">https://li=
sts.openwrt.org/mailman/listinfo/openwrt-devel</a><br /><br /></div>
</blockquote>
</body></html>

--=_d07ebe577e2553d8a67fcb09b3759531--

--=_b4dd1313977541b9d3b368a98f483bab
Content-Transfer-Encoding: base64
Content-Type: application/x-gzip;
 name=meh.log.gz
Content-Disposition: attachment;
 filename=meh.log.gz;
 size=2233

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
5u8ym63AaScAAA==
--=_b4dd1313977541b9d3b368a98f483bab--


--===============6258859538248003475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6258859538248003475==--

