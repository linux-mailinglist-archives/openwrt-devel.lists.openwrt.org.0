Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6084D0662
	for <lists+openwrt-devel@lfdr.de>; Wed,  9 Oct 2019 06:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:Mime-Version:To:From:References:In-Reply-To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8Q32KzPM/W90XhW0ete6nfRXzWAo/lIoFjJrzddcd4A=; b=vA4mgHf5RwMFS/m/mHXL2M4DQ
	NrbIZOJkUINtofsobQXcs+lCVYrY8cMtJXCN8h+tUsq4hi+utMRvdfY5nUvEov4UuN8SgwNiDlqui
	JQGF5aZmsszMW6l/EbrwXksWaTVYKYbEikKWb2vnURHIPMdZLoTFbrlPDzNMFwrohEJmZqKGDp6Tj
	HiXb2c82DbiZeWuyhLsaARHpZV3CtbwMYMB+euser6VVFVPxkWAjcUX9Lo+ppXKYLtal30zGkLp+x
	Hq7T0YXt4dXIfVShcDO/zF2qELUVNDg9o15hCAyiwiBfHuS/2ecYcQmfLX3SS27oiJ0hDxrYSjSWE
	KIc6fwrPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI3TX-0004hi-0V; Wed, 09 Oct 2019 04:21:23 +0000
Received: from smtpbgbr2.qq.com ([54.207.22.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI3TO-0004dp-4g
 for openwrt-devel@lists.openwrt.org; Wed, 09 Oct 2019 04:21:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1570594774; bh=UhN3BjY2e7OF7HUxksTBh4bQ58rP5qkj3qINeSABymY=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=XGl3R6RPGytbUqyz+754wbG/wxLguiVf/1fL61bke3Yr/kraKUPBw7HUwt3Z0/Yh3
 aewULJNt6dsHQlXDEWme2ctcPKC/eqZcB1iqJp6slxeo9cK17gLGZsJglC+9+mt4tV
 94rsTxj1RM7guZ0trE6Vyo/HO/5kp2XeDgv+p05o=
X-QQ-FEAT: jLTfbrzLdoMifZuWL66loyXEIJd3rkid/Y24GY0YHC0rRj6YHWuHACp60pPss
 bpNnInmAVETiPetaL3G7VC53jQefS9k0ofRllOMVDMYZDc5bzPUdMnq9qt890RCkBscPSx8
 zSI7S4R/wzNtTGWdL6KEyMrDkv1hAelDztd7JMZ5pKTQNFj4H9s1/m3fw5VUt/I8NxXJnvT
 9XFKmkpYvRteZtusAjFvSUxceEJOPWVTqAfoAXWOB3TEYFaj1wjZcDyepqxNJB+9tOKJ5Bn
 kBzqTZginBBNPs99w91zAtE9qdC7NdODJXj4oUHHhgwUg1
X-QQ-SSF: 00000000000000F000000000000000Z
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 125.121.201.24
In-Reply-To: <007b01d57dd7$3c9228f0$b5b67ad0$@adrianschmutzler.de>
References: <1570526416-4180-1-git-send-email-wurobinson@qq.com>
 <007b01d57dd7$3c9228f0$b5b67ad0$@adrianschmutzler.de>
X-QQ-STYLE: 
X-QQ-mid: webmail438t1570594774t2480317
From: "=?gb18030?B?x9LM/bfn0vc=?=" <wurobinson@qq.com>
To: "=?gb18030?B?QWRyaWFuIFNjaG11dHpsZXI=?=" <mail@adrianschmutzler.de>
Mime-Version: 1.0
Date: Wed, 9 Oct 2019 12:19:33 +0800
X-Priority: 3
Message-ID: <tencent_B5943D7D59BDF02DEDECDDCF96F8B195E40A@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-ReplyHash: 3652915873
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Wed, 09 Oct 2019 12:19:34 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign4
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_212114_723986_76D4E95F 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.207.22.56 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wurobinson[at]qq.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
Subject: [OpenWrt-Devel] =?gb18030?b?UkWjulJFOiAgW1BBVENIIHY0IDEvM10gcmFt?=
 =?gb18030?q?ips=3A_add_support_for_JS7628_development_board?=
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
Cc: =?gb18030?B?b3BlbndydC1kZXZlbA==?= <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============0039725746469600618=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============0039725746469600618==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5D9D5FD5_0C135AA8_2AB99EAA"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5D9D5FD5_0C135AA8_2AB99EAA
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

SGkgQWRyaWFuLA0KSlM3NjI4IHVzZSBNVDc2MjhBTi9OTiBjaGlwDQpKUzc2ODggdXNlIE1U
NzY4OEFOIGNoaXANClpUSzc2MjhQIHVzZSBNVDc2MjhEQU4gY2hpcA0KSGVyZSBhcmUgc29t
ZSBkaWZmZXJlbmNlcyBiZXR3ZWVuIHRob3NlIGNoaXBzIGFuZCBtb2R1bGVzJyBzaGFwZS4g
SWYgSSB1c2UgIkpTNzZ4OC04bSIgdGhlIE9wZW5XUlQgZmlybXdhcmUgbmFtZSB3aWxsIGJl
ICJvcGVud3J0LXJhbWlwcy1tdDc2eDgtemh1b3RrX2pzNzZ4OC04bSIuIFdoZW4gdXNlcnMg
c2VlIHRoaXMgZmlybXdhcmUgbmFtZSwgdGhlIHRoZXkgd2lsbCBiZSBjb25mdXNlZCB3aGF0
IG1vZHVsZSB0aGlzIGZpcm13YXJlIHNob3VsZCBtYXRjaCB0by4NCkkgdGhpbmssIHRoZSBz
b2x1dGlvbiBpcyAiYXV0byBmbGFzaCBmaWxlIHN5c3RlbSBwYXJ0aXRpb24gc2l6ZSBkZXRl
Y3QgaW4gRFRTIiwgIGJ5IHNldHRpbmcgc29tZSBEVFMgY29uZmlndXJhdGlvbnMsIHRoZSBz
eXN0ZW0gd2lsbCBhdXRvIHNldCBwYXJ0aXRpb24gc2l6ZSBmb3IgZmlsZSBzeXN0ZW0gYXMg
dGhlIHNpemUgb2YgdGhlIGZpbGUgc3lzdGVtIGlzIGNoYW5nZWFibGUuIElmIHRoZSBEVFMg
aGFzIHRoaXMgZmVhdHVyZSwgdGhlICJKUzc2MjgiLCAiSlM3Njg4IiwgIlpUSzc2MjhQIiBi
b2FyZHMnIGNvbmZpZ3VyYXRpb25zIGluIERUUyB3aWxsIGJlICJtdDc2Mjhhbl96aHVvdGtf
anM3NjI4LmR0cyIsICJtdDc2Mjhhbl96aHVvdGtfanM3Njg4LmR0cyIsICJtdDc2Mjhhbl96
aHVvdGtfenRrNzYyOHAuZHRzIiwgYW5kIHRoZSAidGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFn
ZS9tdDc2eDgubWsiIHdpbGwgYmUgbGVmdCAiemh1b3RrX2pzNzYyOCIsICJ6aHVvdGtfanM3
Njg4IiwgInpodW90a196dGs3NjI4cCIgdG9vLg0KQnV0IEkgZG9uJ3Qga25vdyBob3cgdG8g
ZG8gImF1dG8gZmxhc2ggZmlsZSBzeXN0ZW0gcGFydGl0aW9uIHNpemUgaW4gRFRTIiB5ZXQs
IGFuZCBJIGRvbid0IHNlZSBhbnkgY29uZmlndXJhdGlvbiBpbiBPcGVuV1JUIHNvdXJjZSBs
aWtlIHRoYXQuIFNvIEkgdGhpbmssIHdoYXQgSSBjb21taXRlZCBpcyBiZXR0ZXIgdGhhbiB5
b3Vycy4NCg0KDQoNCkJlc3QgDQoNCg0KUm9iaW5zb24gV3U=

------=_NextPart_5D9D5FD5_0C135AA8_2AB99EAA
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

PGRpdj5IaSBBZHJpYW4sPC9kaXY+PGRpdj5KUzc2MjggdXNlIE1UNzYyOEFOL05OIGNoaXA8
L2Rpdj48ZGl2PkpTNzY4OCB1c2UgTVQ3Njg4QU4gY2hpcDwvZGl2PjxkaXY+WlRLNzYyOFAg
dXNlIE1UNzYyOERBTiBjaGlwPC9kaXY+PGRpdj5IZXJlIGFyZSBzb21lIGRpZmZlcmVuY2Vz
IGJldHdlZW4gdGhvc2UgY2hpcHMgYW5kIG1vZHVsZXMnIHNoYXBlLiBJZiBJIHVzZSAiSlM3
Nng4LThtIiB0aGUgT3BlbldSVCBmaXJtd2FyZSBuYW1lIHdpbGwgYmUgIm9wZW53cnQtcmFt
aXBzLW10NzZ4OC16aHVvdGtfanM3Nng4LThtIi4gV2hlbiB1c2VycyBzZWUgdGhpcyBmaXJt
d2FyZSBuYW1lLCB0aGUgdGhleSB3aWxsIGJlIGNvbmZ1c2VkIHdoYXQgbW9kdWxlIHRoaXMg
ZmlybXdhcmUgc2hvdWxkIG1hdGNoIHRvLjwvZGl2PjxkaXY+SSB0aGluaywgdGhlIHNvbHV0
aW9uIGlzICJhdXRvIGZsYXNoIGZpbGUgc3lzdGVtIHBhcnRpdGlvbiBzaXplIGRldGVjdCBp
biBEVFMiLCAmbmJzcDtieSBzZXR0aW5nIHNvbWUgRFRTIGNvbmZpZ3VyYXRpb25zLCB0aGUg
c3lzdGVtIHdpbGwgYXV0byBzZXQgcGFydGl0aW9uIHNpemUgZm9yIGZpbGUgc3lzdGVtIGFz
IHRoZSBzaXplIG9mIHRoZSBmaWxlIHN5c3RlbSBpcyBjaGFuZ2VhYmxlLiBJZiB0aGUgRFRT
IGhhcyB0aGlzIGZlYXR1cmUsIHRoZSAiSlM3NjI4IiwgIkpTNzY4OCIsICJaVEs3NjI4UCIg
Ym9hcmRzJyBjb25maWd1cmF0aW9ucyBpbiBEVFMgd2lsbCBiZSAibXQ3NjI4YW5femh1b3Rr
X2pzNzYyOC5kdHMiLCAibXQ3NjI4YW5femh1b3RrX2pzNzY4OC5kdHMiLCAibXQ3NjI4YW5f
emh1b3RrX3p0azc2MjhwLmR0cyIsIGFuZCB0aGUgInRhcmdldC9saW51eC9yYW1pcHMvaW1h
Z2UvbXQ3Nng4Lm1rIiB3aWxsIGJlIGxlZnQgInpodW90a19qczc2MjgiLCAiemh1b3RrX2pz
NzY4OCIsICJ6aHVvdGtfenRrNzYyOHAiIHRvby48L2Rpdj48ZGl2PkJ1dCBJIGRvbid0IGtu
b3cgaG93IHRvIGRvICJhdXRvIGZsYXNoIGZpbGUgc3lzdGVtIHBhcnRpdGlvbiBzaXplIGlu
IERUUyIgeWV0LCBhbmQgSSBkb24ndCBzZWUgYW55IGNvbmZpZ3VyYXRpb24gaW4gT3BlbldS
VCBzb3VyY2UgbGlrZSB0aGF0LiBTbyBJIHRoaW5rLCB3aGF0IEkgY29tbWl0ZWQgaXMgYmV0
dGVyIHRoYW4geW91cnMuPC9kaXY+PGRpdj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkJl
c3QmbmJzcDs8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PlJvYmluc29uIFd1PC9kaXY+

------=_NextPart_5D9D5FD5_0C135AA8_2AB99EAA--





--===============0039725746469600618==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0039725746469600618==--




