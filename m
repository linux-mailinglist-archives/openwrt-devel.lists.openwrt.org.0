Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B315314F259
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 19:45:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BS1dQ0a0ujFyQYSUgcsNXyEs+6x4UfJcfEmEXw0ycu4=; b=dwAbG+2ym3j1q9
	IeTkRedeEW7pNSgqwGNjtnpKtLL8sTGTWEky1K/eMp+KjW2PjnkJ01M4oleBHbqRmB7OoNmVGO+Sh
	QscBPBXm0WenRbm56yJUrEnV+TyaNLhxcucrF4VbcXDEobJRXLk24ZqmskoEZta2mopZa4mp8QYvp
	9mtsX6cs3zYxK2nCnwuwDDnoUg2tiwkVea8ltE+6Ob0DDQXfsryZdnWySWMo2/Dwc7u4rgVtJMFLA
	6IndMLVs3DkH+DjOywIFy2t4dzBsM0PvVbl+Nu3zQgMQucC6/hE9V2h5uR9vs0OPTQV64/rX2l4eu
	fV9LQ5AtPfJKlX3RaDCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixbIQ-0004Fn-TW; Fri, 31 Jan 2020 18:45:38 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixbII-0004FU-NT
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 18:45:32 +0000
Received: (wp-smtpd smtp.tlen.pl 12102 invoked from network);
 31 Jan 2020 19:45:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580496328; bh=v4pb/J2xw0qcEZfvHBI3dj7C0Ut5KYB1FbbI4+kWhTY=;
 h=Subject:To:From;
 b=Ne9ltuYPUMl/M3z3f5GYQPAGb+m9gDcSTen/poQb0ydXsSHbU+sw265nus65GCfUM
 H9epii5el4rPvgNSxHyrgeKGdUufHmRYBzuP1FpbWv+dwsA0SGNApDJuC9ZwZCIjOh
 gwajKOy1eu8suC8rye3dUzjH8WFTbNMtRtsSCSHA=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 19:45:28 +0100
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200131154620.25773-1-tomek_n@o2.pl>
 <20200131154620.25773-4-tomek_n@o2.pl>
 <010201d5d84f$117d2d90$347788b0$@adrianschmutzler.de>
 <33ee79ee-6273-e744-ddeb-22ebe0ab8d2f@o2.pl>
 <019201d5d864$f8896220$e99c2660$@adrianschmutzler.de>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <4c163214-07a0-4c4f-8ab6-ac2a5515f3b4@o2.pl>
Date: Fri, 31 Jan 2020 19:45:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <019201d5d864$f8896220$e99c2660$@adrianschmutzler.de>
Content-Language: en-US
X-WP-MailID: 8f5962398d31e9aebbfaace7a4af1f20
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [EfLC]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_104530_927424_E3A38E27 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 3/8] mvebu: image: drop empty variables
 from default profile
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDMxLjAxLjIwMjAgb8KgMTk6MzMsIEFkcmlhbiBTY2htdXR6bGVyIHBpc3plOgo+IEhp
LAo+IAo+PiBJIHNhdyBzaW1pbGFyIGJlaGF2aW9yIHdoZW4gdmFyaWFibGVzIHdlcmUgc2V0IGJ1
dCBub3QgYWRkZWQgdG8gREVWSUNFX1ZBUlMuCj4+IEZyb20gdGhlIHRlc3RzIEkndmUgZG9uZSBi
ZWZvcmUgc2VuZGluZywgdGhlIHByb2R1Y2VkIGltYWdlcyBsb29rZWQgZmluZSwgYnV0Cj4+IEkn
bGwgcmUtdGVzdCB0aGF0IHRvIG1ha2Ugc3VyZS4KPiAKPiBXaGVuIHZhcmlhYmxlcyBhcmUgc2V0
LCBidXQgYXJlIF9ub3RfIGFkZGVkIHRvIERFVklDRV9WQVJTLCB0aGUgdmFyaWFibGVzIHdpbGwg
aGF2ZSBfb25lXyBzaW5nbGUgdmFsdWUgZm9yIF9hbGxfIGRldmljZXMsIGkuZS4gdGhlIG9uZSBz
ZXQgZm9yIHRoZSBsYXN0IGRldmljZS4KPiAKPiBXaGVuIHZhcmlhYmxlcyBhcmUgX25vdF8gc2V0
LCBidXQgYXJlIGFkZGVkIHRvIERFVklDRV9WQVJTLCB0aGUgdmFyaWFibGVzIHdpbGwgaGF2ZSB0
aGUgbGFzdCB2YWx1ZSBzZXQgdG8gYW55IGRldmljZSBiZWZvcmUgKGkuZS4gdGhlIGxhc3QgZGV2
aWNlIHNldHRpbmcgaXQpLiBOb3RlIHRoYXQgRGV2aWNlL0RlZmF1bHQgY291bnRzIGxpa2UgYW4g
aW5jbHVkZSB0byB0aGUgY3VycmVudCBkZXZpY2UgdGhlcmUuCj4gCgpUaGFua3MsIHRoYXQgbWFr
ZXMgaXQgY2xlYXIsIGFmdGVyIHRlc3RpbmcgdGhlIERFVklDRV9EVFNfRElSLCBJJ2xsIHNlbmQg
djIKd2l0aG91dCB0aGlzIHBhdGNoLgoKPiBJJ3ZlIHRlc3RlZCB0aGlzIGZvciBhIGJ1bmNoIG9m
IHRwbGluay1zYWZlbG9hZGVyIGRldmljZXMgaW4gYXRoNzkgYnkgYWRkaW5nIHRoZSBmb2xsb3dp
bmcgbGluZSB0byB0aGUgQnVpbGQvdHBsaW5rLXNhZmVsb2FkZXIgZGVmaW5pdGlvbjoKPiBwcmlu
dGYgIiQoREVWSUNFX1RJVExFKSBsJChMT0FERVJfVFlQRSkgeCQoVFBMSU5LX0hXSUQpIHkkKFRQ
TElOS19IV1JFVikgeiQoVFBMSU5LX0hXUkVWQUREKSdcbiIgPj4gL2RhdGEvb3BlbndydC9zYWZl
bG9hZGVyY2hlY2sudHh0Cj4gCj4gQmVzdAo+IAo+IEFkcmlhbgo+IAoKUmVnYXJkcwoKPj4KPj4+
IFNvLCBzZXR0aW5nIHRoZSB2YXJpYWJsZXMgdG8gIiIgaW4gdGhlIGRlZmF1bHQgZGVmaW5pdGlv
biBhY3R1YWxseSBtYWtlcyBzdXJlCj4+PiB0aGF0IHRoZXkgcmVhbGx5IGFyZSB6ZXJvIGZvciB0
aG9zZSBkZXZpY2VzIHdoZXJlIHRoZXkgYXJlIG5vdCBzZXQuIChPZiBjb3Vyc2UsCj4+PiB0eXBp
Y2FsbHkgdGhvc2UgYXJlIHRoZSBkZXZpY2VzIHdoZXJlIHRoZXkgYXJlbid0IGV2YWx1YXRlZCBh
bnl3YXkuKQo+Pj4KPj4+IEJlc3QKPj4+Cj4+PiBBZHJpYW4KPj4+Cj4+Cj4+IFJlZ2FyZHMKPj4K
Pj4+Cj4+Pgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogVG9tYXN6IE1hY2llaiBOb3dhayA8dG9t
ZWtfbkBvMi5wbD4KPj4+PiAtLS0KPj4+PiAgdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL01ha2Vm
aWxlIHwgNCArLS0tCj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxl
dGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2Uv
TWFrZWZpbGUKPj4+PiBiL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9NYWtlZmlsZQo+Pj4+IGlu
ZGV4IGFlYWJmZmRjYTIuLmQ5ZTRiMWFjY2UgMTAwNjQ0Cj4+Pj4gLS0tIGEvdGFyZ2V0L2xpbnV4
L212ZWJ1L2ltYWdlL01ha2VmaWxlCj4+Pj4gKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdl
L01ha2VmaWxlCj4+Pj4gQEAgLTc1LDYgKzc1LDcgQEAgZGVmaW5lIEJ1aWxkL3VEUFUtZmlybXdh
cmUKPj4+PiAgCShjZCAkQC1mdzsgJChUQVIpIC1jdnpmICQoS0RJUl9UTVApLyQoSU1BR0VfUFJF
RklYKS1maXJtd2FyZS50Z3ogLikKPj4+PiAgZW5kZWYKPj4+Pgo+Pj4+ICtERVZJQ0VfVkFSUyAr
PSBCT09UX1NDUklQVCBVQk9PVAo+Pj4+ICBkZWZpbmUgRGV2aWNlL0RlZmF1bHQKPj4+PiAgICBQ
Uk9GSUxFUyA6PSBEZWZhdWx0Cj4+Pj4gICAgREVWSUNFX0RUUyA9ICQkKFNPQyktJChsYXN0d29y
ZCAkKHN1YnN0IF8sICwkKDEpKSkKPj4+PiBAQCAtODYsMTAgKzg3LDcgQEAgZGVmaW5lIERldmlj
ZS9EZWZhdWx0Cj4+Pj4gICAgSU1BR0Uvc3lzdXBncmFkZS5iaW4gOj0gc3lzdXBncmFkZS10YXIg
fCBhcHBlbmQtbWV0YWRhdGEKPj4+PiAgICBTVVBQT1JURURfREVWSUNFUyA9ICQoc3Vic3QgXywk
KGNvbW1hKSwkKDEpKQo+Pj4+ICAgIFVCSU5JWkVfT1BUUyA6PSAtRSA1Cj4+Pj4gLSAgVUJPT1Qg
Oj0KPj4+PiAtICBCT09UX1NDUklQVCA6PQo+Pj4+ICBlbmRlZgo+Pj4+IC1ERVZJQ0VfVkFSUyAr
PSBCT09UX1NDUklQVCBVQk9PVAo+Pj4+Cj4+Pj4gIGRlZmluZSBEZXZpY2UvRGVmYXVsdC1hcm02
NAo+Pj4+ICAgIEJPT1RfU0NSSVBUIDo9IGdlbmVyaWMtYXJtNjQKPj4+PiAtLQo+Pj4+IDIuMjUu
MAo+Pj4+Cj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4+Pj4gb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwo+Pj4+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCj4+Pgo+Pgo+Pgo+PiAtLQo+PiBUTU4KPiAKCgotLSAK
VE1OCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
