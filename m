Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69355DFA28
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 03:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:Mime-Version:To:From:References:In-Reply-To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nWbi+vrdnU/7M6T+tgVZp2L2IUC8dUmgkr5UqJeCbx4=; b=dZtyFzNCFE4YGNJv+PIFwI8qs
	6tbSG9xzUHU0OrY4AbBkvjoKDT3HjzKaEouuVfxmcZNgSU3FM3RPy6yBMmwVZfI76CmW8GMCUS3mq
	ZXdX1/ayFuszHErwuZNFqQ5Ibl3bq5zyqiOgOJEG23uMlVx4b8j7V40wNgsH5Uls0Fd6+rHdneeZ0
	gXbqFIPKoZTzkX+0b6kHdv0KVy64d+VBlfgfqcfNsdX+up2g3QqRXv3NEZRG6QuwT9BeQb5yQ634F
	g8NnJJyp2PyBaqHeOedKuhdxX5Ow827IjKH0Ob2Lps6z4r90U9B5ESudEYiW9sy9UD+8tzfm63t9Q
	HSlVz8DjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMj3U-0003il-4T; Tue, 22 Oct 2019 01:33:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMj3N-0003ib-Vz
 for openwrt-devel@bombadil.infradead.org; Tue, 22 Oct 2019 01:33:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:Date:
 Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:Cc:To:From:
 References:In-Reply-To:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Siafs1wXZBxCEyvPijBMx1W1+wTzxp+XZs5elCiKrgs=; b=r8HnpiUJGNK7
 CGMrNZZAMRbTd5t0Z6qh4dBfQMFXkTIUiPklBTabpPj4rkG7FQ79yrpwsSzCAqVyeNEOnHFSq0vtM
 2k4e/CteUMH13Sba5Bh5spOkc5VU7l083oaM8onKhUAvuLMKi7FbMzK79viHijKV5Ggdpb7NX/J0q
 2aEi+Ey5En+bQpPJzIUDhF7oyDOmZhnzzYnOKENuBrtjOcfrDyoue3DaquhTssC/ntjGRcQTxPWTi
 RkCsk7yEZpKAZ4bF+95aCmSlHjJMg7ADXve5Kmz/+jR8BNG25CkGKkUNnLw5EseY5/X7pT3z5m2tF
 MqdmQrntq5pN4gMU/0buHA==;
Received: from smtpbgeu1.qq.com ([52.59.177.22])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMj3i-0001E9-QM
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 01:34:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1571707939; bh=Siafs1wXZBxCEyvPijBMx1W1+wTzxp+XZs5elCiKrgs=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=fbd+g/OQ+XD22okDGwHAK4HdQvEEt+6ChqM+3nB69UVl9AvEnu+NXcgv7U9G1SJM9
 n/XR8m7jT5CVRzNghEvBy/DRiOWv8kuggvfFnr8qIeFwW/fYRUcn8iqdQtCPen6DMC
 6ekZ0EnVmf20bxfwYv2XgfgVVgnm8pzoYxEGCFQM=
X-QQ-FEAT: wEhDafM0Yc8CxwD9WZp7Fwn+vW6VjxJ+diMfZEoOV2VZ/yQ/HKtukWiF5Y3kV
 UxCnsVxUB2DF5WEzV8xUpGskoUT/cEuc1eBZ10JN6FRxXD5/jt9nkFiQb1G87Osky22aZD2
 GnQdVfK416VpWCq3uKnCkBHr/L2cPYeYdpUJdJCZfxGh+VvwN56al12111j5pxeR9DylL+U
 XEljoaWAum+L+K9XGqWcrl/X3uL9jrK1HlNiMYIIrGmzRTVD/J6nNaa7xqf+MiPR3Cqsk/W
 dsM9FLDCg3DR/GIzZrRWwx+YXCzolsQjIWDA==
X-QQ-SSF: 00000000000000F000000000000000Z
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 183.156.55.179
In-Reply-To: <008001d57f5a$d1d8d3d0$758a7b70$@adrianschmutzler.de>
References: <1570694147-22320-1-git-send-email-wurobinson@qq.com>
 <008001d57f5a$d1d8d3d0$758a7b70$@adrianschmutzler.de>
X-QQ-STYLE: 
X-QQ-mid: webmail410t1571707938t1808929
From: "=?ISO-8859-1?B?Um9iaW5zb24gV3U=?=" <wurobinson@qq.com>
To: "=?ISO-8859-1?B?QWRyaWFuIFNjaG11dHpsZXI=?=" <mail@adrianschmutzler.de>
Mime-Version: 1.0
Date: Tue, 22 Oct 2019 09:32:18 +0800
X-Priority: 3
Message-ID: <tencent_A92B333EFD9D9AFBD89222B6841CED277D07@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-ReplyHash: 2866965082
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Tue, 22 Oct 2019 09:32:19 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign2
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_023403_010657_105AF0F1 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.59.177.22 listed in list.dnswl.org]
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wurobinson[at]qq.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for JS76x8
 series DEV boards
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
Cc: =?ISO-8859-1?B?b3BlbndydC1kZXZlbA==?= <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============6326294517122281042=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============6326294517122281042==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5DAE5C22_0F41B128_3FF746E2"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5DAE5C22_0F41B128_3FF746E2
Content-Type: text/plain;
	charset="ISO-8859-1"
Content-Transfer-Encoding: base64

Jm5ic3A7SGkgQWRyaWFuLA0KICZuYnNwOw0KIEkgdXNlZCB0byB1c2UgIk1lZGlhVGVrIE1U
NzYyOCBFVkIiIHRhcmdldCBwcm9maWxlIGluIE9wZW5XUlQuIFRoaXMgcHJvZmlsZSB1c2Ug
dGhlIGRlZmF1bHQNCiAid2FuX21hYz0kKG1hY2FkZHJfYWRkICIkKGNhdCAvc3lzL2NsYXNz
L25ldC9ldGgwL2FkZHJlc3MpIiAxKSIsIGFuZCB0aGUgbGFuIGFuZCB3YW4gbmV0d29yayBv
ZiZuYnNwO215IGJvYXJkcyB3b3JrIHdlbGwgYnkgdXNlIHRoaXMgcHJvZmlsZS4gSW4gZmFj
dCwmbmJzcDt0aGUgTUFDIGFkZHJlc3MmbmJzcDthdCBmYWN0b3J5IHBhcnRpdGlvbiAweDJl
IGlzIGVxdWFsIHRvIHRoZSBNQUMgYWRkcmVzcyZuYnNwO2F0Jm5ic3A7IGZhY3RvcnkgcGFy
dGl0aW9uIDB4MjggcGx1cyAxJm5ic3A7dG9vLCBpbiBteSBib2FyZHMuDQogVGhpcyBpcyZu
YnNwO25vIHByb2JsZW0mbmJzcDt0byZuYnNwO2dldCB3YW4gTUFDIGZyb20gZmFjdG9yeSBw
YXJ0aXRpb24gMHgyZSBpbnN0ZWFkIG9mIHdhbj1sYW4rMS4gSSB3aWxsIHN1Ym1taXQgbmV3
IHBhdGNoJm5ic3A7IGZvciB0aGF0Lg0KICZuYnNwOw0KIEJlc3QNCiAmbmJzcDsNCiBSb2Jp
bnNvbiBXdQ0KIA0KICZuYnNwOw==

------=_NextPart_5DAE5C22_0F41B128_3FF746E2
Content-Type: text/html;
	charset="ISO-8859-1"
Content-Transfer-Encoding: base64

PERJVj4mbmJzcDtIaSBBZHJpYW4sPC9ESVY+DQo8RElWPiZuYnNwOzwvRElWPg0KPERJVj5J
IHVzZWQgdG8gdXNlICJNZWRpYVRlayBNVDc2MjggRVZCIiB0YXJnZXQgcHJvZmlsZSBpbiBP
cGVuV1JULiBUaGlzIHByb2ZpbGUgdXNlIHRoZSBkZWZhdWx0PC9ESVY+DQo8RElWPiJ3YW5f
bWFjPSQobWFjYWRkcl9hZGQgIiQoY2F0IC9zeXMvY2xhc3MvbmV0L2V0aDAvYWRkcmVzcyki
IDEpIiwgYW5kIHRoZSBsYW4gYW5kIHdhbiBuZXR3b3JrIG9mJm5ic3A7bXkgYm9hcmRzIHdv
cmsgd2VsbCBieSB1c2UgdGhpcyBwcm9maWxlLiBJbiBmYWN0LCZuYnNwO3RoZSBNQUMgYWRk
cmVzcyZuYnNwO2F0IGZhY3RvcnkgcGFydGl0aW9uIDB4MmUgaXMgZXF1YWwgdG8gdGhlIE1B
QyBhZGRyZXNzJm5ic3A7YXQmbmJzcDsgZmFjdG9yeSBwYXJ0aXRpb24gMHgyOCBwbHVzIDEm
bmJzcDt0b28sIGluIG15IGJvYXJkcy48L0RJVj4NCjxESVY+VGhpcyBpcyZuYnNwO25vIHBy
b2JsZW0mbmJzcDt0byZuYnNwO2dldCB3YW4gTUFDIGZyb20gZmFjdG9yeSBwYXJ0aXRpb24g
MHgyZSBpbnN0ZWFkIG9mIHdhbj1sYW4rMS4gSSB3aWxsIHN1Ym1taXQgbmV3IHBhdGNoJm5i
c3A7IGZvciB0aGF0LjwvRElWPg0KPERJVj4mbmJzcDs8L0RJVj4NCjxESVY+QmVzdDwvRElW
Pg0KPERJVj4mbmJzcDs8L0RJVj4NCjxESVY+Um9iaW5zb24gV3U8L0RJVj4NCjxESVY+PC9E
SVY+DQo8RElWPiZuYnNwOzwvRElWPg==

------=_NextPart_5DAE5C22_0F41B128_3FF746E2--





--===============6326294517122281042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6326294517122281042==--




