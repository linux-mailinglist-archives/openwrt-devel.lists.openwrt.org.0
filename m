Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8371D2DDF
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 13:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Mime-Version:References:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=khq3GTWlZznQvbYOT79i5v/BhZLylhTpDvCnQfQa9so=; b=s5jH8EzxZC3Puu
	EzpIC2BkSkhZdnP8yxGJfiU61/0lj1IvBIH6fQEDlI7B1Pd/e0tDpo/x+tzXYXU+BwqcHQMDZR50J
	Mv4pxnrPR5tzK75e2ANwg3mdLkZbwbuYVkfRxTU49qLs6L650UPCPWREMdesnRtXTL7vXdsdADm4P
	396FopsLNzSZvSF6vISvDo/GQMameuseygBQu6dhSWRd7QkcEiExa0WmZnhYyW2zczd7eIR2EonBs
	6PkMk72g/LGTZpKINZ9a7ZuDYEjbxvkcR5QO0djEQkoonn0bXCWGYmN4qoQGOT3MpvXBzQ+aKfZbh
	iL5crJxUUh2RCM5Jga9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZBl0-0005id-7e; Thu, 14 May 2020 11:10:30 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZBkt-0003Jj-58
 for openwrt-devel@lists.openwrt.org; Thu, 14 May 2020 11:10:25 +0000
X-QQ-mid: bizesmtp22t1589454589tq4306xz
Received: from DESKTOP-RK9IBA5 (unknown [113.116.58.229])
 by esmtp6.qq.com (ESMTP) with 
 id ; Thu, 14 May 2020 19:09:49 +0800 (CST)
X-QQ-SSF: 01100000001000Z0ZL20B00A0000000
X-QQ-FEAT: z+P/PjNvn/6sCpXCjnIdRV5nlxE8LU285C8vO7Qe/D5XvHV1r+FG8O1vBUetr
 /RksBM0MZeJ5LDzdA+IWsqoDtdzThXrftthQJWbnnvxswzrbu5HAIG7pIgUbD1/XAr5rvzN
 HZqDEo62AhAlupwLsohj15bhG0nE5LUxMjstikiM4czET3OIlslQdN9lWKQYTuDT0R3ssQo
 kpGIecPY5La6kOpfvN1811FnoVQS47pIbR9R8qCAdS0IQfYcOKgjTDa0lj57OsjerpVY0RB
 9DQzyt1q41F6X3Ab7MbtdnxUwktU9kcqEDTKo0KfJWz282do4jJP0UdqeG4idr5CauyyYwh
 /uJtjkR0iTWaMpCSXEPWOlsFAsFGw==
X-QQ-GoodBg: 0
Date: Thu, 14 May 2020 19:09:48 +0800
From: "luochongjun@gl-inet.com" <luochongjun@gl-inet.com>
To: "adrian schmutzler" <mail@adrianschmutzler.de>, 
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>, 
 <009701d629d6$18b45560$4a1d0020$@adrianschmutzler.de>, 
 <2020051418120647133255@gl-inet.com>+057423090DB61335, 
 <013301d629dd$54ad8ee0$fe08aca0$@adrianschmutzler.de>
X-Priority: 3
X-GUID: EB3F494E-F338-4D7E-A036-A2D012B7C8C3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.15.80[cn]
Mime-Version: 1.0
Message-ID: <2020051419094796927964@gl-inet.com>+0FD7B018F0FBFE2C
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_041023_345987_3EBD7C7E 
X-CRM114-Status: UNSURE (   3.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.204.34.130 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or
 Formatted Colors in HTML
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
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
Content-Type: multipart/mixed; boundary="===============1294653676661551974=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============1294653676661551974==
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart311607676503_=----"

This is a multi-part message in MIME format.

------=_001_NextPart311607676503_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

SGkgYWRyaWFuLA0KDQpIb3dldmVyLCBpZiB5b3UgbmVlZCBhIHNlcGFyYXRlIGZhY3RvcnkgZm9y
IHUtYm9vdCBub3csIGdvIGZvciBpdC4gQnV0IHRoZW4sIEknZCBwcmVmZXIgaXQgdG8gaGF2ZSB0
aGUgLmJpbiBleHRlbnNpb24gYXMgd2VsbC4NCi0tLT5JbiB0aGUgdWJvb3Qgb2YgZ2wtZTc1MCwg
dGhlIGV4dGVuc2lvbiAuYmluIGlzIGNvbnNpZGVyZWQgdG8gYmUgbm9yIGZpcm13YXJlIGFuZCB3
aWxsIGJlIGhhbmRsZWQgYWNjb3JkaW5nIHRvIHRoZSB1cGdyYWRlIHByb2Nlc3Mgb2Ygbm9yIGZp
cm13YXJlLg0KLS0tPlRoZSByZWFzb24gZm9yIHRoaXMgaXMgdGhhdCBpbiB0aGUgb3JpZ2luYWwg
YXI3MXh4IHRhcmdldCwgdGhlIGJpbiBleHRlbnNpb24gd2FzIG5vciBmaXJtd2FyZSBhbmQgdGhl
IC5pbWcgZXh0ZW5zaW9uIHdhcyBuYW5kIGZpcm13YXJlLg0KLS0tPkFsdGhvdWdoIHRoZSBFNzUw
IGhhcyBub3QgcmVsZWFzZWQgbm9yIGZpcm13YXJlLCB3ZSBzdGlsbCBoYXZlIHRoaXMgZmVhdHVy
ZSBpbiB1Ym9vdC4NCg0KQmVzdCByZWdhcmRzLA0KTHVvY2hvbmdqdW4NCg==

------=_001_NextPart311607676503_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 10.5pt; font-fa=
mily: 'Microsoft YaHei UI'; color: rgb(0, 0, 0); line-height: 1.5; }</styl=
e></head><body>=0A<div><span></span>Hi adrian,</div><div><br></div><div><d=
iv>However, if you need a separate factory for u-boot now, go for it. But =
then, I'd prefer it to have the .bin extension as well.</div><div>---&gt;I=
n the uboot of gl-e750, the extension .bin is considered to be nor firmwar=
e and will be handled according to the upgrade process of nor firmware.</d=
iv></div><div><span style=3D"background-color: transparent;">---&gt;</span=
><span style=3D"background-color: transparent;">The reason for this is tha=
t in the original ar71xx target, the bin extension was nor firmware and th=
e .img extension was nand firmware.</span></div><div>---&gt;Although the E=
750 has not released nor firmware, we still have this feature in uboot.</d=
iv><div><br></div><div>Best regards,</div><div>Luochongjun</div><blockquot=
e style=3D"margin-Top: 0px; margin-Bottom: 0px; margin-Left: 0.5em"><div>=
=0A</div></blockquote>=0A</body></html>
------=_001_NextPart311607676503_=------







--===============1294653676661551974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1294653676661551974==--






