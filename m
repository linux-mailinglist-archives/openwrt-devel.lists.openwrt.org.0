Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992C31E6132
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 14:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:To:From:Date:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9FsSqjNdmLBMhjpUsQgCIKBS4JfvWhj1URYg7zlyMeY=; b=Hrk
	MUd15bDB7w83L/0sqBoUBMS3d9wLXUd1fPrkonkdejg3YXMHQawyYib+bd0E05vvRaP3rJcttPVIn
	QmIjXlPiTqci7iDpKaNXXbRzRnuVPz1eTJjwtls54dhVOOAAJvvTkIBpaN67on5GC9e+oPG6e+RKr
	cPJviTRJLZc6QCeAPOPAIOi6AdozF32wv1LQhoTH9IrAKC96CdmQzHmXxe9mKxayMq2ED537PGS5V
	Fgc+8ghP0qAaKdJHfsC3TVyd1MJap+q5zLsUHIkFG+dxtGorOFoiIvmHzNWEDE5lbhpA4QuMVPQvG
	U0lrn/opvWRfDqAapGtMAirthvt+k4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHtR-0005eA-RI; Thu, 28 May 2020 12:44:17 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHtG-0005cD-PL
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 12:44:08 +0000
Received: (wp-smtpd smtp.tlen.pl 34481 invoked from network);
 28 May 2020 14:37:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1590669440; bh=YEB5RAQCCGA+5htGItcqonECtCxcnnbIJVFoo6ONBtw=;
 h=Subject:From:To;
 b=mzD+dAY2eVIr3k5bHVlACqvSnvbu8rB/sAMLbfY7Tyf7Hvrxc9qSw1b8mVv4GKqDX
 DzE5QLzTw6gLjYbzukt8zMsOOMUt4XbPo1/INwQU6gwvovKXdbQiCKYHTSkqVSmxz6
 +T1vWGvfmFs2rPdmJ0wlsr5sXFkAFuDO9LkHnbyw=
Received: from localhost.localdomain (HELO localhost) ([81.97.86.206])
 (envelope-sender <penteljapan@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with SMTP
 for <openwrt-devel@lists.openwrt.org>; 28 May 2020 14:37:20 +0200
MIME-Version: 1.0
User-Agent: GWP-Draft
X-Originator: 81.97.86.206
X-FactoryStamp: H---
Date: Thu, 28 May 2020 14:37:19 +0200
X-Draft-Variant: new
X-Draft-Contenttype: text/html
Priority: normal
From: a <penteljapan@o2.pl>
To: =?UTF-8?Q?openwrt-devel=40lists=2Eopenwrt=2Eorg?=
 <openwrt-devel@lists.openwrt.org>
Message-ID: <4c2954f1f3ae44f9bf162e36654bbbef@grupawp.pl>
X-WP-MailID: 7e4f1c28f050c7ccfe0299a3aa619c0d
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000010 [4TOE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_054407_006075_E97C1BD3 
X-CRM114-Status: UNSURE (   0.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?193.222.135.175>]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [penteljapan[at]o2.pl]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.175 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] =?utf-8?q?ZNC_openwrt_variant?=
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
Content-Type: multipart/mixed; boundary="===============7258356365381874180=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7258356365381874180==
Content-Type: multipart/alternative; boundary="2NONBUYEYSHFMKMNGXWTAnhgwp"

--2NONBUYEYSHFMKMNGXWTAnhgwp
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

1. /etc/config/znc doesnt support hiding password sha + salt or if its supp=
orting that=C2=A0 whats the pattern.  2. It is required to type network nam=
e to join=C2=A0 that network which is not mentioned under documentation  op=
enwrt.org openwrt.org =C2=A0/quote PASS username/Default:password  3. how t=
o generate ssl cert NOT as root ?  4. Variable channel `` Specifies one or =
more channels to join on connect. The required format is =E2=80=9C&lt;chann=
elname&gt; [&lt;password&gt;]=E2=80=9D.``=C2=A0  leaving that in state=C2=
=A0   list &#39;channel&#39;    &#39;#test &#39;=C2=A0 =C2=A0// with empty =
string=C2=A0  causing=C2=A0  Thu May 28 13:29:36 2020 daemon.info procd: In=
stance znc::instance1 s in a crash loop 6 crashes, 0 seconds since last cra=
sh  5. In general its hard to debug for me , all i can do its service start=
/stop without any output, theres any way to get more verbose data?=0D

--2NONBUYEYSHFMKMNGXWTAnhgwp
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<div>1. /etc/config/znc doesnt support hiding password sha + salt or if its=
 supporting that&nbsp; whats the pattern.<br></div><div>2. It is required t=
o type network name to join&nbsp; that network which is not mentioned under=
 documentation <a href=3D"https://openwrt.org/docs/guide-user/services/prox=
y/znc">https://openwrt.org/docs/guide-user/services/proxy/znc</a>&nbsp;/quo=
te PASS username/Default:password<br></div><div>3. how to generate ssl cert=
 NOT as root ?<br></div><div>4. Variable channel ``<span class=3D"highlight=
" style=3D"background-color:rgb(238, 238, 238)"><span class=3D"colour" styl=
e=3D"color:rgb(51, 51, 51)"><span class=3D"font" style=3D"font-family:Arial=
, sans-serif"><span class=3D"size" style=3D"font-size:14px">Specifies one o=
r more channels to join on connect. The required format is =E2=80=9C&lt;cha=
nnelname&gt; [&lt;password&gt;]=E2=80=9D.``&nbsp;</span></span></span></spa=
n><br></div><div><span class=3D"highlight" style=3D"background-color:rgb(23=
8, 238, 238)"><span class=3D"colour" style=3D"color:rgb(51, 51, 51)"><span =
class=3D"font" style=3D"font-family:Arial, sans-serif"><span class=3D"size"=
 style=3D"font-size:14px">leaving that in state&nbsp; </span></span></span>=
</span><br></div><div>list 'channel'    '#test '&nbsp; &nbsp;// with empty =
string&nbsp;<br></div><div>causing&nbsp;<br></div><div>Thu May 28 13:29:36 =
2020 daemon.info procd: Instance znc::instance1 s in a crash loop 6 crashes=
, 0 seconds since last crash<br></div><div>5. In general its hard to debug =
for me , all i can do its service start/stop without any output, theres any=
 way to get more verbose data?</div><p><br></p><p style=3D"-qt-paragraph-ty=
pe:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:=
0px; -qt-block-indent:0; text-indent:0px;"><br></p><p><br></p><p style=3D"-=
qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px=
; margin-right:0px; -qt-block-indent:0; text-indent:0px;"></p><div><br></di=
v><div><br></div>
--2NONBUYEYSHFMKMNGXWTAnhgwp--


--===============7258356365381874180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7258356365381874180==--

