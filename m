Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E157F0B2
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 11:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:In-Reply-To:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iN7XFqL7+jO+cBCFXQNFve2OYDfLr6QIE+SqbRPyPnw=; b=bozZrVJrDUeeqhtWaYNLfAd/u
	m95w/gBLmd5kPkQT1U9g7bCuh0ktJe3imIBnrPHpuB9NNI0qFc5g9pjYIbJpVWNW1GeRWSa+nr+Wq
	hECkfzxG4fArnYdi80mHaExssxITtuNSDZr4MwrKs6ejRtUFZqj3gcS8/4juwL3sNQBTYw9eTAVoM
	yyEILXk2OpKdzNWjFebKGq+ZGTDONTCOF9uKrt8g56oywdrGEBt0kdruEX6qWFPvCpM7K8cut+1XQ
	bt40x/Yxxweb0Wky/Z81X08scDUirdttuEzE9uMuBYP2QmRlsyzPvoxg5Fqn061aej9WrCQi3lydJ
	hbySdsMtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTuk-0000iX-49; Fri, 02 Aug 2019 09:31:54 +0000
Date: Fri, 02 Aug 2019 17:31:33 +0800
To: openwrt-devel@lists.openwrt.org
In-Reply-To: <b0717bd2fea3e984c209f6c9e1dfb951@grosjo.net>
References: <b0717bd2fea3e984c209f6c9e1dfb951@grosjo.net>
MIME-Version: 1.0
Message-ID: <mailman.13933.1564738299.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Joan Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Joan Moreau <jom@grosjo.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Compilation error on master / mt7620
Content-Type: multipart/mixed; boundary="===============0366837942525539455=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0366837942525539455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0366837942525539455==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from grosjo.net ([94.130.37.163])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1htTuS-0000hr-Pr
	for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 09:31:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grosjo.net;
	 s=dkim; h=Message-ID:References:In-Reply-To:Subject:To:From:Date:
	Content-Type:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=mHLCY8oYBf3EQ5KReIdULLWYUlzafmdLFFZ28Vi86Uw=; b=ifDw/Tgp8p/v69/71PNS+gIvz6
	LBRRT4F30cjRY8cr92ky3W/0Ylf0Rga7TNs9cFspXRxWXQIdznZsGQHvrq/m4HJ/vxUUmVFEp3MTc
	0P3K8Qwfz2tXx0tQ7oHBpU3nRlXKCqrqWclCP5n5VEvh1SyDF7GjUQKcpTWxu2wZbryA=;
Received: from localhost ([127.0.0.1] helo=grosjo.net)
	by grosjo.net with esmtp (Exim 4.92.1)
	(envelope-from <jom@grosjo.net>)
	id 1htTuP-00047f-LZ
	for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 09:31:34 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="=_05463ee082570bc91d7ddd4e6f494e79"
Date: Fri, 02 Aug 2019 17:31:33 +0800
From: Joan Moreau <jom@grosjo.net>
To: openwrt-devel@lists.openwrt.org
Subject: Re: Compilation error on master / mt7620
In-Reply-To: <b0717bd2fea3e984c209f6c9e1dfb951@grosjo.net>
References: <b0717bd2fea3e984c209f6c9e1dfb951@grosjo.net>
User-Agent: Roundcube Webmail/1.4-git
Message-ID: <30bc0df4ed5c9d063646a2a977880c57@grosjo.net>
X-Sender: jom@grosjo.net
X-GJ: Sent from localhost
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "gjserver",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 admin@grosjo.net for details.
 
 Content preview:  Same error with 19.07 On 2019-08-02 07:56, Joan Moreau wrote:
    > Hello, > > I reach the following error while compiling my MT7620/ZBT826-16M
    on master (no error on 18.06) : > > CC [M] /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-
    [...] 
 
 Content analysis details:   (-2.9 points, 3.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-GJ-SMTP: h_FROM = Joan Moreau <jom@grosjo.net> RPATH=jom@grosjo.net SENDERADR= jom@grosjo.net:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_023136_841718_5ED1AAE8 
X-CRM114-Status: UNSURE (   0.60  )
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

--=_05463ee082570bc91d7ddd4e6f494e79
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8;
 format=flowed

Same error with 19.07 

On 2019-08-02 07:56, Joan Moreau wrote:

> Hello, 
> 
> I reach the following error while compiling my MT7620/ZBT826-16M on master (no error on 18.06) : 
> 
> CC [M] /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.o
> <command-line>:0:37: error: redeclaration of enumerator 'IEEE80211_HW_REPORTS_TX_ACK_STATUS'
> <command-line>:0:37: note: in definition of macro 'IEEE80211_HW_TX_STATUS_NO_AMPDU_LEN'
> In file included from /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/../mt76.h:27:0,
> from /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/mt7603.h:8,
> from /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.c:7:
> /usr/src/openwrt/4g/staging_dir/target-mipsel_24kc_musl/usr/include/mac80211/net/mac80211.h:2293:2: note: previous definition of 'IEEE80211_HW_REPORTS_TX_ACK_STATUS' was here
> IEEE80211_HW_REPORTS_TX_ACK_STATUS,
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> make[6]: *** [scripts/Makefile.build:327: /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.o] Error 1
> make[5]: *** [scripts/Makefile.build:585: /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603] Error 2
> make[4]: *** [Makefile:1532: _module_/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45] Error 2 
> 
> Can you help ? 
> 
> Thank you
--=_05463ee082570bc91d7ddd4e6f494e79
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gene=
va,sans-serif'>
<p>Same error with 19.07</p>
<p><br /></p>
<div id=3D"signature">&nbsp;</div>
<p><br /></p>
<p id=3D"reply-intro">On 2019-08-02 07:56, Joan Moreau wrote:</p>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">
<div id=3D"replybody1">
<div style=3D"font-size: 9pt; font-family: Verdana,Geneva,sans-serif;">
<p>Hello,</p>
<p><br /></p>
<p>I reach the following error while compiling my MT7620/ZBT826-16M on mast=
er (no error on 18.06) :</p>
<p><br /></p>
<p>CC [M] /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramip=
s_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.o<br />&lt;command-line&gt;:0:=
37: error: redeclaration of enumerator 'IEEE80211_HW_REPORTS_TX_ACK_STATUS'=
<br />&lt;command-line&gt;:0:37: note: in definition of macro 'IEEE80211_HW=
_TX_STATUS_NO_AMPDU_LEN'<br />In file included from /usr/src/openwrt/4g/bui=
ld_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45=
/mt7603/../mt76.h:27:0,<br />from /usr/src/openwrt/4g/build_dir/target-mips=
el_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/mt7603.h:8=
,<br />from /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ram=
ips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.c:7:<br />/usr/src/openwrt/4=
g/staging_dir/target-mipsel_24kc_musl/usr/include/mac80211/net/mac80211.h:2=
293:2: note: previous definition of 'IEEE80211_HW_REPORTS_TX_ACK_STATUS' wa=
s here<br />IEEE80211_HW_REPORTS_TX_ACK_STATUS,<br />^~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~<br />make[6]: *** [scripts/Makefile.build:327: /usr/src/openwr=
t/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-=
75656a45/mt7603/pci.o] Error 1<br />make[5]: *** [scripts/Makefile.build:58=
5: /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603] Error 2<br />make[4]: *** [Makefile:1532=
: _module_/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramip=
s_mt7620/mt76-2019-07-22-75656a45] Error 2</p>
<p><br /></p>
<p>Can you help ?</p>
<p>Thank you</p>
</div>
</div>
</blockquote>
</body></html>

--=_05463ee082570bc91d7ddd4e6f494e79--


--===============0366837942525539455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0366837942525539455==--

