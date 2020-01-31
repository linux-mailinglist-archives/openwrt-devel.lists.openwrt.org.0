Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD1D14F223
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 19:26:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0O0tZ5UoOJt+sfzYEIClZ/W2yF+e4MdtQMWhwVCO5w=; b=BLSwRfEfto4OhA
	wCS+kojdAJVeLaXs2zKOA6fNdLyjoNx3692tRJx0OHPiO65QyMc3+zv3ZYhzS8TWxSvpvolcDMqFF
	8DSeXqhiiJtib+XGgvurbhxe0+QPMfXxKuNj/rWf3uqE5ZMP9g2PwkYp7wtyxePZADdVTzxEn6nU1
	OtJsI+9rqWLRQiVrHCN19fN/OzSdlJus7+69q0YcR5j/I8Rsev6FLR291E56Z+pUd9oB2g/qoXy4d
	6MzfDHTFkFsOMh+0Sjxu1i0g8Cp3Go50I8xRgtraFIRwe7EqSfFi6p2SXACMiYLFQdREzXKpYTM8o
	Hj5zpSzCa4+T5ReDb9Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixazq-0004US-TV; Fri, 31 Jan 2020 18:26:26 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixazg-0004Tp-Ch
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 18:26:18 +0000
Received: (wp-smtpd smtp.tlen.pl 14898 invoked from network);
 31 Jan 2020 19:26:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580495173; bh=GTv7cVOdbaJ+TUb0Lbjv9m7q8gxeDhfDrLYQnmzZLYU=;
 h=Subject:To:From;
 b=frWReRSSrOVgpBoaY0F22eoAEX3oLSZNRevRkrXOTyDqy074b0jpPnRdFEFUhYoLw
 m0/bP//L14vhZJ4iKhpZcuIsg/UY0un2REBqERWuWEfPOlVgi8+BtgmaCGaQM25ueM
 dcJ41pgrxbt7aFVN5cEZzivwNORc7hFQhmK8faFs=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 19:26:13 +0100
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200131154620.25773-1-tomek_n@o2.pl>
 <20200131154620.25773-4-tomek_n@o2.pl>
 <010201d5d84f$117d2d90$347788b0$@adrianschmutzler.de>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <33ee79ee-6273-e744-ddeb-22ebe0ab8d2f@o2.pl>
Date: Fri, 31 Jan 2020 19:26:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <010201d5d84f$117d2d90$347788b0$@adrianschmutzler.de>
Content-Language: en-US
X-WP-MailID: 05ae8246fa9b1f020a3229fecaed2d23
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [4fKi]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_102616_589459_00FD27CE 
X-CRM114-Status: GOOD (  14.85  )
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

SGkgQWRyaWFuLgoKVyBkbml1IDMxLjAxLjIwMjAgb8KgMTY6NTYsIEFkcmlhbiBTY2htdXR6bGVy
IHBpc3plOgo+IEhpLAo+IAo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBv
cGVud3J0LWRldmVsIFttYWlsdG86b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQu
b3JnXSBPbgo+PiBCZWhhbGYgT2YgVG9tYXN6IE1hY2llaiBOb3dhawo+PiBTZW50OiBGcmVpdGFn
LCAzMS4gSmFudWFyIDIwMjAgMTY6NDYKPj4gVG86IG9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKPj4gU3ViamVjdDogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSCAzLzhdIG12ZWJ1OiBpbWFn
ZTogZHJvcCBlbXB0eSB2YXJpYWJsZXMgZnJvbQo+PiBkZWZhdWx0IHByb2ZpbGUKPj4KPj4gVGhl
c2UgdmFyaWFibGVzIGFyZSBhbHJlYWR5IGluaXRpYWxpemVkIHdpdGhpbiBERVZJQ0VfVkFSUy4g
SnVzdCBtb3ZlCj4+IERFVklDRV9WQVJTIHRvIG1ha2Ugc3VyZSB0aGV5IGFyZSBzZXQgYmVmb3Jl
IGRlZmF1bHQgcHJvZmlsZS4KPiAKPiBJJ3ZlIGp1c3QgcGxheWVkIGFyb3VuZCB3aXRoIHRoaXMg
aW4gYXRoNzkgZm9yIHNvbWUgb3RoZXIgcmVhc29uLCBhbmQgZm91bmQgdGhhdAo+IERFVklDRV9W
QVJTIF93b24ndF8gc2V0IHRoZSB2YXJpYWJsZXMgdG8gZW1wdHkgdmFsdWVzLiBJdCB3aWxsIGp1
c3QgbWFrZSBzdXJlCj4gdGhhdCB0aGUgdmFyaWFibGVzIGNhbiBiZSBfc2V0XyBwZXIgZGV2aWNl
IChlLmcuIERFVklDRV9EVFNfRElSIHZzLiBEVFNfRElSKS4gSWYKPiB5b3UgZG8gbm90IHNldCB0
aGUgdmFyaWFibGUgZm9yIG9uZSBkZXZpY2UsIGl0IHdpbGwganVzdCBoYXZlIHRoZSB2YWx1ZSBm
cm9tIHRoZQo+IHByZXZpb3VzIGRldmljZSghKS4KCkkgc2F3IHNpbWlsYXIgYmVoYXZpb3Igd2hl
biB2YXJpYWJsZXMgd2VyZSBzZXQgYnV0IG5vdCBhZGRlZCB0byBERVZJQ0VfVkFSUy4KRnJvbSB0
aGUgdGVzdHMgSSd2ZSBkb25lIGJlZm9yZSBzZW5kaW5nLCB0aGUgcHJvZHVjZWQgaW1hZ2VzIGxv
b2tlZCBmaW5lLCBidXQKSSdsbCByZS10ZXN0IHRoYXQgdG8gbWFrZSBzdXJlLgoKPiBTbywgc2V0
dGluZyB0aGUgdmFyaWFibGVzIHRvICIiIGluIHRoZSBkZWZhdWx0IGRlZmluaXRpb24gYWN0dWFs
bHkgbWFrZXMgc3VyZQo+IHRoYXQgdGhleSByZWFsbHkgYXJlIHplcm8gZm9yIHRob3NlIGRldmlj
ZXMgd2hlcmUgdGhleSBhcmUgbm90IHNldC4gKE9mIGNvdXJzZSwKPiB0eXBpY2FsbHkgdGhvc2Ug
YXJlIHRoZSBkZXZpY2VzIHdoZXJlIHRoZXkgYXJlbid0IGV2YWx1YXRlZCBhbnl3YXkuKQo+IAo+
IEJlc3QKPiAKPiBBZHJpYW4KPiAKClJlZ2FyZHMKCj4gCj4gCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IFRvbWFzeiBNYWNpZWogTm93YWsgPHRvbWVrX25AbzIucGw+Cj4+IC0tLQo+PiAgdGFyZ2V0L2xp
bnV4L212ZWJ1L2ltYWdlL01ha2VmaWxlIHwgNCArLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS90YXJnZXQvbGlu
dXgvbXZlYnUvaW1hZ2UvTWFrZWZpbGUKPj4gYi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvTWFr
ZWZpbGUKPj4gaW5kZXggYWVhYmZmZGNhMi4uZDllNGIxYWNjZSAxMDA2NDQKPj4gLS0tIGEvdGFy
Z2V0L2xpbnV4L212ZWJ1L2ltYWdlL01ha2VmaWxlCj4+ICsrKyBiL3RhcmdldC9saW51eC9tdmVi
dS9pbWFnZS9NYWtlZmlsZQo+PiBAQCAtNzUsNiArNzUsNyBAQCBkZWZpbmUgQnVpbGQvdURQVS1m
aXJtd2FyZQo+PiAgCShjZCAkQC1mdzsgJChUQVIpIC1jdnpmICQoS0RJUl9UTVApLyQoSU1BR0Vf
UFJFRklYKS1maXJtd2FyZS50Z3ogLikKPj4gIGVuZGVmCj4+Cj4+ICtERVZJQ0VfVkFSUyArPSBC
T09UX1NDUklQVCBVQk9PVAo+PiAgZGVmaW5lIERldmljZS9EZWZhdWx0Cj4+ICAgIFBST0ZJTEVT
IDo9IERlZmF1bHQKPj4gICAgREVWSUNFX0RUUyA9ICQkKFNPQyktJChsYXN0d29yZCAkKHN1YnN0
IF8sICwkKDEpKSkKPj4gQEAgLTg2LDEwICs4Nyw3IEBAIGRlZmluZSBEZXZpY2UvRGVmYXVsdAo+
PiAgICBJTUFHRS9zeXN1cGdyYWRlLmJpbiA6PSBzeXN1cGdyYWRlLXRhciB8IGFwcGVuZC1tZXRh
ZGF0YQo+PiAgICBTVVBQT1JURURfREVWSUNFUyA9ICQoc3Vic3QgXywkKGNvbW1hKSwkKDEpKQo+
PiAgICBVQklOSVpFX09QVFMgOj0gLUUgNQo+PiAtICBVQk9PVCA6PQo+PiAtICBCT09UX1NDUklQ
VCA6PQo+PiAgZW5kZWYKPj4gLURFVklDRV9WQVJTICs9IEJPT1RfU0NSSVBUIFVCT09UCj4+Cj4+
ICBkZWZpbmUgRGV2aWNlL0RlZmF1bHQtYXJtNjQKPj4gICAgQk9PVF9TQ1JJUFQgOj0gZ2VuZXJp
Yy1hcm02NAo+PiAtLQo+PiAyLjI1LjAKPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPj4g
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+PiBodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+IAoKCi0tIApUTU4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
