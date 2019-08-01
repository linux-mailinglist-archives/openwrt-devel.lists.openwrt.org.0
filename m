Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6D67E6F6
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 01:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kiOhtybjPCWJZhpIypJU13SsXmziR5iX+acm0fTU8sc=; b=HIg
	2jmvc8JGuNC/uUtMCafNP0p/kB8TqVhBZoqLmvrsP1tLjMeKqmubkkoEUqiChEs8YCdf160hqWPzw
	PgPmc4DZz8iSHnCqu6GQNVQWcOwO9lZWWUfbp0G+UE+92CGOiWBB0v+OHzAWhqIxXdnGf3HLOlC+Y
	AgsEC2RQm5shY2uAvERS4E0uWsul0QP2+V+z6vibhq0WM7lDVW7S7SGhTMm+n3CabroTTkOCZhDGI
	eqmy+rwaPhyL90wRA21X7Kx9uXaGMcP0bGI+f1N91skt+wYTzMAFPzh8DoKvePUFD+1WtACpfFJak
	4ES3im1X+Ac4Yb0VWqDawFdCCv8WYLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKwI-0007th-Co; Thu, 01 Aug 2019 23:56:54 +0000
Date: Fri, 02 Aug 2019 07:56:41 +0800
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
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
Subject: [OpenWrt-Devel] Compilation error on master / mt7620
Content-Type: multipart/mixed; boundary="===============4669573404939229267=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4669573404939229267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4669573404939229267==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from grosjo.net ([94.130.37.163])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1htKwB-0007tK-NN
	for openwrt-devel@lists.openwrt.org; Thu, 01 Aug 2019 23:56:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grosjo.net;
	 s=dkim; h=Message-ID:Subject:To:From:Date:Content-Type:MIME-Version:Sender:
	Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=VBX7MKhzcDWZhk/ahck6ocVLTVlhqN30T4uugpirjjU=; b=PECkw6gUt7Hv7/PsxcxdJKl8Zz
	JYjoPHlwLsoasdO8LwlKl1U0Q5ktR9THeTjpUz1vdcp32qKVHhaAU+0MKFSRecUFBker45Tjc2Nvv
	4QnoArq6MPXuQsHRhy3vVFWU/6NCNq5EAOSRZxxekerpv61od6t3lADEGu1m0Kwoix20=;
Received: from localhost ([127.0.0.1] helo=grosjo.net)
	by grosjo.net with esmtp (Exim 4.92.1)
	(envelope-from <jom@grosjo.net>)
	id 1htKw5-0003Wd-Oi
	for openwrt-devel@lists.openwrt.org; Thu, 01 Aug 2019 23:56:43 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="=_c4cc7c4927987eeabd53e886ff99e914"
Date: Fri, 02 Aug 2019 07:56:41 +0800
From: Joan Moreau <jom@grosjo.net>
To: openwrt-devel@lists.openwrt.org
Subject: Compilation error on master / mt7620
User-Agent: Roundcube Webmail/1.4-git
Message-ID: <b0717bd2fea3e984c209f6c9e1dfb951@grosjo.net>
X-Sender: jom@grosjo.net
X-GJ: Sent from localhost
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "gjserver",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 admin@grosjo.net for details.
 
 Content preview:  Hello, I reach the following error while compiling my MT7620/ZBT826-16M
    on master (no error on 18.06) : CC [M] /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.o
    <command-line>:0:37: error: redeclaration of enumerator 'IEEE80211_HW_REPORTS_TX_
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
X-CRM114-CacheID: sfid-20190801_165647_917091_1D6C23F6 
X-CRM114-Status: UNSURE (  -2.00  )
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

--=_c4cc7c4927987eeabd53e886ff99e914
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8;
 format=flowed

Hello, 

I reach the following error while compiling my MT7620/ZBT826-16M on
master (no error on 18.06) : 

CC [M]
/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.o
<command-line>:0:37: error: redeclaration of enumerator
'IEEE80211_HW_REPORTS_TX_ACK_STATUS'
<command-line>:0:37: note: in definition of macro
'IEEE80211_HW_TX_STATUS_NO_AMPDU_LEN'
In file included from
/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/../mt76.h:27:0,
from
/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/mt7603.h:8,
from
/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.c:7:
/usr/src/openwrt/4g/staging_dir/target-mipsel_24kc_musl/usr/include/mac80211/net/mac80211.h:2293:2:
note: previous definition of 'IEEE80211_HW_REPORTS_TX_ACK_STATUS' was
here
IEEE80211_HW_REPORTS_TX_ACK_STATUS,
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
make[6]: *** [scripts/Makefile.build:327:
/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.o]
Error 1
make[5]: *** [scripts/Makefile.build:585:
/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603]
Error 2
make[4]: *** [Makefile:1532:
_module_/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45]
Error 2 

Can you help ? 

Thank you
--=_c4cc7c4927987eeabd53e886ff99e914
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gene=
va,sans-serif'>
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

</body></html>

--=_c4cc7c4927987eeabd53e886ff99e914--


--===============4669573404939229267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4669573404939229267==--

