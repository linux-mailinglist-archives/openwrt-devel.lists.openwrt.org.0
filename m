Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141253B780
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Jun 2019 16:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HN6mMOfFDae5obKDawh2I8TpplI93BLOCnsnMV0mZZg=; b=Gm99HZcq0aO7UU
	wpGyT3DwB4Zd3lrHNrotM/tDb8jYzWJE5WI9rgZWrJCiqi1KUv6RoTLn5AfyXQyNaaHvpgpsadRYZ
	/YPbMBXIEvSTBeV7mOts5WXNZHtrvgPWGASrbHUA5DN5DT6SJZV0yM3ZyW32YgB43+8hBNupMH3VD
	yNXe7ZCDZEVsxRt81yRmVfkOs4mkAA8CicGAzMamwDKnPhH7X/0sPrvp5Qsgt+tmhghjwnZLf9c51
	Ax01h7x1QuPpwyiGI3i43pRN8O0ULFX6p8jD1K8EjRp6FpHgBBhhvGIgqvcdBDqUyVQAMrPynG0DZ
	RjdiktozAdolwtPBabgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haLOj-0005iG-Qa; Mon, 10 Jun 2019 14:35:45 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haLOY-0005hm-8J
 for openwrt-devel@lists.openwrt.org; Mon, 10 Jun 2019 14:35:35 +0000
Received: (wp-smtpd smtp.tlen.pl 11037 invoked from network);
 10 Jun 2019 16:28:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1560176930; bh=f9qo9ErRK4XTDluQezpdYcdNsry4G+G3fw2AM3hzTP4=;
 h=Subject:To:Cc:From;
 b=PAfGEiq2kmeY1NwiPHuTYnwmwTn/MWKjERHr+KBwIRYSuaiSAYFv7VXyL++t3uL4l
 KwQuJXx9fdeVuzm5dT0l3sAFNyG1NvALTdeT0HepfsQMIURKxZqcJRGk6Kk0QSu+4t
 B1Vy+JVsr+caCXWWzBJjHO4uoAVQb2E0L+gT3H64=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 10 Jun 2019 16:28:50 +0200
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20190527161718.GJ50588@meh.true.cz>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <10515062-f250-6069-8d1c-8df223e22b6f@o2.pl>
Date: Mon, 10 Jun 2019 16:28:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190527161718.GJ50588@meh.true.cz>
Content-Language: en-US
X-WP-MailID: d00c5cab963e96bfce8eed16ee7aaa60
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [sfOE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_073534_462817_7F093B9B 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] x86: add preinit hook for
 bootloader upgrade
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ci4KClcgZG5pdSAyNy4wNS4yMDE5IG/CoDE4OjE3LCBQZXRyIMWgdGV0aWFyIHBpc3pl
Ogo+IFRvbWFzeiBNYWNpZWogTm93YWsgPHRvbWVrX25AbzIucGw+IFsyMDE5LTA1LTI3IDE0OjQ2
OjMwXToKPiAKPiBIaSwKPiAKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAw
MDAwMC4uM2E0ZTc1NmIxZQo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL3RhcmdldC9saW51eC94
ODYvYmFzZS1maWxlcy9saWIvcHJlaW5pdC84MV91cGdyYWRlX2Jvb3Rsb2FkZXIKPiAKPiBtYWtl
cyBtZSB3b25kZXIgaWYgdGhpcyBjb3VsZG4ndCBiZSBtYWRlIG1vcmUgZ2VuZXJpYyBhcyBmb3Ig
ZXhhbXBsZSBjdXJyZW50Cj4gc3lzdXBncmFkZS50Z3ogcmVzdG9yYXRpb24sIG1heWJlIGFkZGlu
ZyBwbGF0Zm9ybV9kb19ib290bG9hZGVyX3VwZ3JhZGUgaG9vawo+IHdoaWNoIHdvdWxkIGdldCBj
YWxsZWQgaW4gc29tZSBnZW5lcmljIHByZWluaXQgc2NyaXB0IG9yIHNvbWV0aGluZyBhbG9uZyB0
aGVzZQo+IGxpbmVzLiAgT3RoZXJ3aXNlIHdlJ3JlIGxpa2VseSByaXNraW5nIGNvcHkmcGFzdGlu
ZyBvZiBzaW1pbGFyIGZ1bmN0aW9uYWxpdHkKPiB0byBvdGhlciBwbGF0Zm9ybXMuCgpUaGVyZSB3
b24ndCBiZSBhbnkgcGxhdGZvcm0gdXNpbmcgdGhpcywgaXQncyBvbmx5IHRvIGZpbGwgdGhlIGxh
Y2sgb2YgYm9vdGxvYWRlcgp1cGdyYWRlIGZvciBjdXJyZW50IHg4NiBPcGVuV3J0IGluc3RhbGxh
dGlvbnMuIEFsbCBvdGhlciB0YXJnZXRzIGhhZCBib290bG9hZGVyCnVwZ3JhZGUgb24gc3lzdXBn
cmFkZSBzaW5jZSBpbmNlcHRpb24gKHRoZSB0YXJnZXRzIGZvciB3aGljaCBPcGVuV3J0IHByb3Zp
ZGVzCmJvb3Rsb2FkZXIpLiBXZSBjYW4gd2FpdCBmb3IgYW5vdGhlciByZWxlYXNlIHdoaWNoIHdp
bGwgY2VydGFpbmx5IHVwZ3JhZGUgdGhlCmJvb3Rsb2FkZXIgKGlmIHBhdGNoICMyIHdpbGwgZ2V0
IGFjY2VwdGVkKSBvciBkbyBpdCBub3csIGFuZCBkZWxldGUgdGhlIHByZWluaXQKdXBncmFkZSBm
cm9tIG1hc3Rlciwgd2hlbiB3ZSB3aWxsIHN0b3Agc3VwcG9ydCBmb3IgdGhlIHJlbGVhc2Ugd2hl
biB0aGlzIHdhcyBmaXJzdAphZGRlZC4KCj4gCj4+ICt1cGdyYWRlX2Jvb3Rsb2FkZXIoKSB7Cj4+
ICsJbG9jYWwgZGlza2Rldgo+PiArCj4+ICsJLiAvbGliL3VwZ3JhZGUvY29tbW9uLnNoCj4+ICsK
Pj4gKwlpZiBbICEgLWYgL2Jvb3QvZ3J1Yi91cGdyYWRlZCBdICYmIGV4cG9ydF9ib290ZGV2aWNl
ICYmIGV4cG9ydF9wYXJ0ZGV2aWNlIGRpc2tkZXYgMDsgdGhlbgo+PiArCQllY2hvICIoaGQwKSAv
ZGV2LyRkaXNrZGV2IiA+IC90bXAvZGV2aWNlLm1hcAo+PiArCQkvdXNyL3NiaW4vZ3J1Yi1iaW9z
LXNldHVwIFwKPj4gKwkJCS1tICIvdG1wL2RldmljZS5tYXAiIFwKPj4gKwkJCS1kICIvYm9vdC9n
cnViIiBcCj4+ICsJCQktciAiaGQwLG1zZG9zMSIgXAo+PiArCQkJIi9kZXYvJGRpc2tkZXYiIFwK
Pj4gKwkJJiYgdG91Y2ggL2Jvb3QvZ3J1Yi91cGdyYWRlZAo+IAo+IFRoaXMgbG9va3MgbGlrZSBh
bG1vc3Qgc2FtZSBjb2RlIHVzZWQgaW4gdHdvIHBsYWNlcywgcHJvYmFibHkgY291bGQgYmUKPiBy
ZWZhY3RvcmVkIGluIHNvbWUgY29tbW9uIGZ1bmN0aW9uIHVzZWQgaW4gYm90aCBwbGFjZXM/CgpU
aGlzIGhhcHBlbnMgaW4gZGlmZmVyZW50IHJlYWxtIChvbiBib290KSBhbmQgc2hvdWxkIGJlIGRl
bGV0ZWQgaW4gdGhlIGZ1dHVyZSBhcwptZW50aW9uZWQgZWFybGllci4gSXQgZG9lcyB0aGUgc2Ft
ZSBidXQgYWRkaW5nIHRoYXQgdG8gY29tbW9uIGZ1bmN0aW9uIHVzZWQgb25seSBvbgpvbmUgdGFy
Z2V0LCB3aGljaCB3aWxsIGJlIHVzZWQgaW4gc2luZ2xlIHBsYWNlIChhZnRlciBwcmVpbml0IHNj
cmlwIHJlbW92YWwpIGlzCm1lYW5pbmdsZXNzLgoKPiAKPj4gZGlmZiAtLWdpdCBhL3RhcmdldC9s
aW51eC94ODYvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaCBiL3RhcmdldC9saW51
eC94ODYvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaAo+PiBpbmRleCAxYTQyZmQz
YTExLi4wNWJiZDk3ZjNiIDEwMDY0NAo+PiAtLS0gYS90YXJnZXQvbGludXgveDg2L2Jhc2UtZmls
ZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKPj4gKysrIGIvdGFyZ2V0L2xpbnV4L3g4Ni9iYXNl
LWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCj4+IEBAIC0xMDYsNyArMTA2LDggQEAgcGxh
dGZvcm1fZG9fdXBncmFkZSgpIHsKPj4gIAkJCS1tICIvdG1wL2RldmljZS5tYXAiIFwKPj4gIAkJ
CS1kICIvdG1wL2Jvb3QvYm9vdC9ncnViIiBcCj4+ICAJCQktciAiaGQwLG1zZG9zMSIgXAo+PiAt
CQkJIi9kZXYvJGRpc2tkZXYiCj4+ICsJCQkiL2Rldi8kZGlza2RldiIgXAo+PiArCQkmJiB0b3Vj
aCAvYm9vdC9ncnViL3VwZ3JhZGVkCj4gCj4gVGhpcyBwcm9iYWJseSBzaG91bGQgYmUgaW4geW91
ciBvdGhlciBwYXRjaD8KClRoZSBwYXRjaGVzIGFyZSBzcGxpdCB1cCBzbyB0aGF0IGlmIHRoZSAj
MyBpcyByZWplY3RlZCB0aGVyZSBpcyBubyB1c2VsZXNzCiJ1cGdyYWRlZCIgZmlsZSB3cml0dGVu
IHRvIGRpc2suIFRoZSBib290bG9hZGVyIHNob3VsZCBiZSB1cGdyYWRlZCB1bmNvbmRpdGlvbmFs
bHkKb24gZXZlcnkgc3lzdXBncmFkZSB3aGVuIGFsbCB0aGUgImRhbmdlcm91cyB0aGluZ3MiIGhh
cHBlbi4gVGhlICJ1cGdyYWRlZCIgZmlsZSBpcwpvbmx5IGZvciBwcmVuaW5pdCBzY3JpcHQgaW4g
cGF0Y2ggIzMgdG8gYXNzZXMgaWYgc3lzdXBncmFkZSBvciBwcmVpbml0IHNjcmlwdCBkaWQKaXQn
cyBqb2IuCgo+IAo+PiBDdXJyZW50bHkgYm9vdGxvYWRlciBhbHdheXMgc3RheXMgb24gdGhlIHNh
bWUgdmVyc2lvbiBhcyB3aGVuIGZpcnN0Cj4+IHdyaXR0ZW4gdG8gYm9vdCBtZWRpdW0uIFRoYXQg
Y3JlYXRlcyBpbmNvbnZlbmllbmNlcyBhcyBpdCBhbHdheXMgc3RheXMKPj4gd2l0aCBzYW1lIGZl
YXR1cmVzIG9yL2FuZCBidWdzLiBVc2VycyB3aXNoaW5nIHRvIGFkZCBzdXBwb3J0IHRvCj4+IGFk
ZGl0aW9uYWwgbW9kdWxlcyBvciBuZXcgdmVyc2lvbiwgd291bGQgbmVlZCB0byB3cml0ZSB0aGUg
d2hvbGUgaW1hZ2UsCj4+IHBvdGVudGlhbGx5IGRlc3Ryb3lpbmcgcHJldmlvdXMgc3lzdGVtIGNv
bmZpZ3VyYXRpb24uIFRvIGZpeCB0aGVzZSwgdGhpcwo+PiBjb21taXQgYWRkcyBhZGRpdGlvbmFs
IHJvdXRpbmUgdG8gc3lzdXBncmFkZSB3aGljaCB1cGdyYWRlcwo+PiB1bmNvbmRpdGlvbmFsbHkg
dGhlIGJvb3Rsb2FkZXIgdG8gdGhlIGxhdGVzdCBzdGF0ZSBwcm92aWRlZCBieSBPcGVuV3J0Lgo+
IAo+IFsuLi5dCj4gCj4+ICsJI3VwZ3JhZGUgYm9vdGxvYWRlcgo+IAo+IFRoaXMga2luZCBvZiBj
b21tZW50cyBhcmUgcXVpdGUgdXNlbGVzcywgSSB3b3VsZCByYXRoZXIgdXNlIHByb3Blcmx5IG5h
bWVkCj4gZnVuY3Rpb24gZm9yIHNlbGYgZG9jdW1lbnRpbmcgY29kZSwgbGlrZToKPiAKPiAgaWYg
ZXhwb3J0X3BhcnRkZXZpY2UgYm9vdHBhcnQgMTsgdGhlbgo+ICAgICAgdXBncmFkZV9ib290bG9h
ZGVyCj4gIGZpCgpPaywgd2lsbCBtb3ZlIHRvIHNlcGFyYXRlIGZ1bmN0aW9uLgoKPiAKPj4gKwlp
ZiBleHBvcnRfcGFydGRldmljZSBib290cGFydCAxOyB0aGVuCj4+ICsJCW1rZGlyIC1wIC90bXAv
Ym9vdAo+PiArCQltb3VudCAtbyBydyxub2F0aW1lICIvZGV2LyRib290cGFydCIgL3RtcC9ib290
Cj4+ICsJCWVjaG8gIihoZDApIC9kZXYvJGRpc2tkZXYiID4gL3RtcC9kZXZpY2UubWFwCj4+ICsK
Pj4gKwkJZWNobyAiVXBncmFkaW5nIGJvb3Rsb2FkZXIgb24gL2Rldi8kZGlza2Rldi4uLiIKPj4g
KwkJZ3J1Yi1iaW9zLXNldHVwIFwKPj4gKwkJCS1tICIvdG1wL2RldmljZS5tYXAiIFwKPj4gKwkJ
CS1kICIvdG1wL2Jvb3QvYm9vdC9ncnViIiBcCj4+ICsJCQktciAiaGQwLG1zZG9zMSIgXAo+PiAr
CQkJIi9kZXYvJGRpc2tkZXYiCj4+ICsKPj4gKwkJdW1vdW50IC90bXAvYm9vdAo+PiArCWZpCj4g
Cj4gVGhpcyBsb29rcyBzaW1pbGFyIHRvIHRoZSBhYm92ZSwgY291bGQgYmUgcHJvYmFibHkgc2hh
cmVkLgo+IAo+IC0tIHluZXp6Cj4gCgpSZWdhcmRzCgotLSAKVE1OCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
