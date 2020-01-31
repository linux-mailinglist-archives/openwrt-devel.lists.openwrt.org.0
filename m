Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F4D14F282
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 20:07:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlSytZQ5hdx45iA+t1x362MfsDM6EITGi6+qiB12ivs=; b=tqIHW1g46jl3tN
	24Ucs8w5auJfot2urehp05UjGyOAVa71Jy51cmyzE3fcupzt0nFprj7iRjZ8E2RzaJTIfiRvApj8+
	pwogXVsbVMYY+c26NO6oOp6Hxp0DBow/ygyo5Ak6vdGqRRrCl4dbY/s5uCEOmpbBXEojW0uuefwJ5
	n8cWbTnx8/BAp7OjpUkMmieFG1E/J6rkzWn8b+6btevl3lwes0+l4AsR7TzBzMz5cfPHwhj0kjp+J
	LiW9rr1Eg818gHiT0EGFOwI4bmRNMObBxIM/EKe9CpVq3Ye5IT/o/4TF9VVWJWyakAfYvpzrhhK0m
	MjEuLdMk6n74cr302cxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixbdf-0003WW-GS; Fri, 31 Jan 2020 19:07:35 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixbdZ-0003W1-3G
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 19:07:30 +0000
Received: (wp-smtpd smtp.tlen.pl 5441 invoked from network);
 31 Jan 2020 20:07:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580497646; bh=PyNTdx3g9sWNxNEI9Ry3fO4Xke48FS+sb32AOHNloqc=;
 h=Subject:To:From;
 b=lWiCTvu1hCkfxurUK7T+cjSG4ydpIIxKaKLMU7Do/cj+AKloV1f6xkCeeFXfuDGHb
 0SfBAaek4q4JGxqcyuCB7OGuvFPJsQr8ACvOpi+HvB6gMd4bTs+z2N9ljp/K0fqQBp
 pB/3069rd4ZU7UE+FpHkWIIcBVdipR+Nrze27WAo=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 20:07:25 +0100
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200131154620.25773-1-tomek_n@o2.pl>
 <20200131154620.25773-5-tomek_n@o2.pl>
 <010401d5d84f$cc88c8b0$659a5a10$@adrianschmutzler.de>
 <55432b84-6089-6701-cf72-d7b64c95b793@o2.pl>
 <019601d5d866$f0f5c4c0$d2e14e40$@adrianschmutzler.de>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <3824a008-0848-0ee6-9f97-fe7fc6136046@o2.pl>
Date: Fri, 31 Jan 2020 20:07:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <019601d5d866$f0f5c4c0$d2e14e40$@adrianschmutzler.de>
Content-Language: en-US
X-WP-MailID: ef25c6beb5a04ce801722e67bbadb640
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [gfOi]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_110729_301846_EE730C81 
X-CRM114-Status: GOOD (  15.34  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 4/8] mvebu: image: keep global DTS_DIR
 intact
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

VyBkbml1IDMxLjAxLjIwMjAgb8KgMTk6NDcsIEFkcmlhbiBTY2htdXR6bGVyIHBpc3plOgo+IEhp
LAo+IAo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBUb21hc3ogTWFjaWVq
IE5vd2FrIFttYWlsdG86dG9tZWtfbkBvMi5wbF0KPj4gU2VudDogRnJlaXRhZywgMzEuIEphbnVh
ciAyMDIwIDE5OjM5Cj4+IFRvOiBBZHJpYW4gU2NobXV0emxlciA8bWFpbEBhZHJpYW5zY2htdXR6
bGVyLmRlPjsgb3BlbndydC0KPj4gZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gU3ViamVjdDog
UmU6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0ggNC84XSBtdmVidTogaW1hZ2U6IGtlZXAgZ2xvYmFs
IERUU19ESVIKPj4gaW50YWN0Cj4+Cj4+IFcgZG5pdSAzMS4wMS4yMDIwIG8gMTc6MDIsIEFkcmlh
biBTY2htdXR6bGVyIHBpc3plOgo+Pj4gSGksCj4+Pgo+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4+Pj4gRnJvbTogb3BlbndydC1kZXZlbCBbbWFpbHRvOm9wZW53cnQtZGV2ZWwtYm91
bmNlc0BsaXN0cy5vcGVud3J0Lm9yZ10gT24KPj4+PiBCZWhhbGYgT2YgVG9tYXN6IE1hY2llaiBO
b3dhawo+Pj4+IFNlbnQ6IEZyZWl0YWcsIDMxLiBKYW51YXIgMjAyMCAxNjo0Ngo+Pj4+IFRvOiBv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4+Pj4gU3ViamVjdDogW09wZW5XcnQtRGV2
ZWxdIFtQQVRDSCA0LzhdIG12ZWJ1OiBpbWFnZToga2VlcCBnbG9iYWwgRFRTX0RJUgo+PiBpbnRh
Y3QKPj4+Pgo+Pj4+IERvbid0IHJld3JpdGUgZ2xvYmFsIERUU19ESVIsIGluc3RlYWQsIHVzZSBw
cm9wZXIgdmFyaWFibGUgZm9yCj4+Pj4gc3BlY2lmeWluZyBkZXZpY2VzIGR0cyBkaXJlY3Rvcnku
Cj4+Pgo+Pj4gSGF2ZSB5b3UgYnVpbGQtdGVzdGVkIHRoaXM/Cj4+Cj4+IFllcywgaW1hZ2VzIGJ1
aWx0IGZpbmUgYmVmb3JlIHNlbmRpbmcgYW5kIGZyb20gZ2xhbmNlLCB0aGV5IGxvb2tlZCBmaW5l
LiBXaGF0IEkKPj4gZGlkIG5vdCB0ZXN0IHdhcyBJbWFnZSBCdWlsZGVyLiBXaWxsIGRvIHRoYXQg
YW5kIHNlbmQgYSBmZWVkYmFjay4KPiAKPiBPbiBhIHNlY29uZCBsb29rLCBpZiB5b3UgaW50cm9k
dWNlIERFVklDRV9EVFNfRElSIGZvciBEZWZhdWx0LWFybTY0LCB3ZSBzaG91bGQgYWxzbyBpbnRy
b2R1Y2UgaXQgdG8gRGV2aWNlL0RlZmF1bHQ6Cj4gCj4gREVWSUNFX0RUU19ESVIgOj0gJChEVFNf
RElSKQo+IAo+IE90aGVyd2lzZSwgd2Ugd291bGQgaGF2ZSBwYXJ0IG9mIHRoZSB0YXJnZXQgcmVs
eWluZyBvbiB0aGUgZGV2aWNlLXNwZWNpZmljIHZhcmlhYmxlIGFuZCBwYXJ0IG9uIHRoZSBnbG9i
YWwgb25lLCBhbmQgSSBkbyBub3QgdGhpbmsgdGhhdCdzIGRlc2lyYWJsZS4gV2l0aCB0aGUgY2hh
bmdlLCB0aGUgd2hvbGUgdGFyZ2V0IHdpbGwgdXNlIERFVklDRV9EVFNfRElSLgoKT2ssIHdpbGwg
c2VuZCB0aGlzIGFzIHBhcnQgb2YgdjIuCgpSZWdhcmRzCgo+IAo+Pgo+Pj4gREVWSUNFX0RUU19E
SVIgYW5kIERUU19ESVIgbWlnaHQgYmVoYXZlIGRpZmZlcmVudGx5Cj4+PiB3aGVuIGl0IGNvbWVz
IHRvIGluY2x1ZGVzIGluIERUUyBmaWxlcy4KPj4+IFRoYXQncyB3aHkgSSBjb3VsZG4ndCByZXBs
YWNlIFNVTlhJX0RUU19ESVIgd2l0aCBERVZJQ0VfRFRTX0RJUiB3aGVuCj4+IHRvdWNoaW5nCj4+
PiB0aGlzIHNvbWUgbW9udGhzIGFnby4KPj4KPj4gVGhlIGlzc3VlIG1pZ2h0IHN0ZW0gZnJvbSBE
RVZJQ0VfVkFSUyBkZWZpbmVkIGluc2lkZSB0aGUgcHJvZmlsZSwgd2hpY2ggbWlnaHQKPj4gYmUg
ZXhwb3J0ZWQgdG9vIGxhdGU/IEknbSBub3Qgc28gZ29vZCBhdCBNYWtlZmlsZSBzeW50YXggc28g
bWF5YmUgb3RoZXJzIGNhbgo+PiBjb21tZW50IG9uIHRoYXQuCj4gCj4gRm9yIHN1bnhpLCBuby4g
VGhlcmUgdGhlIHByb2JsZW0gaXMgdGhhdCBERVZJQ0VfRFRTX0RJUiBpcyBwcmVzZW50IGluIGNv
bmRpdGlvbnMgaW4gaW1hZ2UubWsgKG9yIG9uZSBvZiB0aG9zZSBmaWxlcyksIGFuZCB0aGUgZGV2
aWNlIHNldHVwIGluIHN1bnhpIGl0c2VsZiBhc3N1bWVzIHRoYXQgc3ViZGlycyBhcmUgcGFydCBv
ZiBERVZJQ0VfRFRTLiBCdXQgdGhpcyBlZmZlY3RpdmVseSBtaWdodCBiZSBhIHNlcGFyYXRlIGlz
c3VlLCBhcyBpdCBpcyBjb25uZWN0ZWQgdG8gdGhlIHNldHVwIGluIHN1bnhpLgo+IEl0J3Mgbm90
IGVhc3kgdG8gZml4IHRoYXQgaW4gYSBwcm9wZXIgd2F5Lgo+IAo+IEJlc3QKPiAKPiBBZHJpYW4K
PiAKPj4KPj4+Cj4+PiBCZXN0Cj4+Pgo+Pj4gQWRyaWFuCj4+Cj4+IFJlZ2FyZHMKPj4KPj4+Cj4+
Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBUb21hc3ogTWFjaWVqIE5vd2FrIDx0b21la19uQG8yLnBs
Pgo+Pj4+IC0tLQo+Pj4+ICB0YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvTWFrZWZpbGUgfCAyICst
Cj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pj4+
Cj4+Pj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9NYWtlZmlsZQo+Pj4+
IGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL01ha2VmaWxlCj4+Pj4gaW5kZXggZDllNGIxYWNj
ZS4uYWU0ZDNiOTU5NCAxMDA2NDQKPj4+PiAtLS0gYS90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2Uv
TWFrZWZpbGUKPj4+PiArKysgYi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvTWFrZWZpbGUKPj4+
PiBAQCAtOTEsNyArOTEsNyBAQCBlbmRlZgo+Pj4+Cj4+Pj4gIGRlZmluZSBEZXZpY2UvRGVmYXVs
dC1hcm02NAo+Pj4+ICAgIEJPT1RfU0NSSVBUIDo9IGdlbmVyaWMtYXJtNjQKPj4+PiAtICBEVFNf
RElSIDo9ICQoRFRTX0RJUikvbWFydmVsbAo+Pj4+ICsgIERFVklDRV9EVFNfRElSIDo9ICQoRFRT
X0RJUikvbWFydmVsbAo+Pj4+ICAgIElNQUdFUyA6PSBzZGNhcmQuaW1nLmd6Cj4+Pj4gICAgSU1B
R0Uvc2RjYXJkLmltZy5neiA6PSBib290LXNjciB8IGJvb3QtaW1nLWV4dDQgfCBzZGNhcmQtaW1n
LWV4dDQgfCBnemlwIHwKPj4+PiBhcHBlbmQtbWV0YWRhdGEKPj4+PiAgICBLRVJORUxfTkFNRSA6
PSBJbWFnZQo+Pj4+IC0tCj4+Pj4gMi4yNS4wCj4+Pj4KPj4+Pgo+Pj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKPj4+PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4+Pj4gaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPj4+Cj4+
Cj4+Cj4+IC0tCj4+IFRNTgo+IAoKCi0tIApUTU4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
