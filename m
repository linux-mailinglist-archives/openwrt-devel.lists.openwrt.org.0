Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FFE1BACB8
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 20:32:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHNcYxaMlHQpMgHFhQFS8J+Bs0/WpbtoV2Q33XWSkic=; b=HCIN7wudWx6SAz
	Q/teuxjNUSRkJVKDPhspWLmawVcdk/EGzT1hkTIk4gB0PxCasnmZ8C6Q1esSYpmAhJRNqmCMmbX75
	4N212kxHHNrZ0HTnaTvng7qM6bFY5YVgAqbL5cIPoxLDTJAlEq8JlQNQ+cD5bbb3fL05VT3GP4lXw
	XXZc2iWhbM6nJZRTi0e2brRA9BO+L+aH/X/ZRfSpphg8MK/Q0+tsHI8Jazp3N+YXvnEsj+swX4db/
	T/wsYX9OaY5KMdSh+cr5kyRyY81s8p04+dl5TdQ/HTeP2lvEA1Y2hrQMca+jETuTQRbU7tXN+Unwm
	OECBolJSfHQ5+P+8F08g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8Y5-0004YA-GW; Mon, 27 Apr 2020 18:32:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8Xv-0004XP-0W
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 18:32:00 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 750572A0D29;
 Mon, 27 Apr 2020 19:31:57 +0100 (BST)
Date: Mon, 27 Apr 2020 20:31:54 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Message-ID: <20200427203154.136baf7b@collabora.com>
In-Reply-To: <20200427190701.6a54d04b@xps13>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-5-boris.brezillon@collabora.com>
 <20200427190701.6a54d04b@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_113159_180718_184D89C9 
X-CRM114-Status: GOOD (  20.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 4/9] mtd: rawnand: bcm47xx: Demistify a
 few more things
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-mtd@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gTW9uLCAyNyBBcHIgMjAyMCAxOTowNzowMSArMDIwMApNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwu
cmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZToKCj4gSGkgQm9yaXMsCj4gCj4gQm9yaXMgQnJlemls
bG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGUgb24gU3VuLCAxOSBBcHIK
PiAyMDIwIDE0OjUxOjM1ICswMjAwOgo+IAo+ID4gVGhlcmUgd2VyZSBhIGZldyBwbGFjZXMgd2Vy
ZSByYXcgaGV4IHZhbHVlcyB3ZXJlIHVzZWQgaW5zdGVhZCBvZiB0aGUgIAo+IAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgd2hlcmUKPiAKPiA+IG1hY3JvIGRlZi4gIAo+IAo+ICAgICAgICAg
ZGVmPyA6KQoKV2lsbCBmaXggdGhlIGNvbW1pdCBtZXNzYWdlIDotKS4KCj4gCj4gPiAKPiA+IFdl
IGFsc28gYWRkIG1hY3JvcyB0byBoZWxwIGZvcm1pbmcgdGhlIGNvbmYgdmFsdWUgKG5vdGUgdGhh
dCB3ZSBzdGlsbAo+ID4gaGF2ZSBvbmUgbWFnaWMgYml0IHdob3NlIG1lYW5pbmcgSSBjb3VsZG4n
dCBleHRyYWN0IGZyb20gdGhlIGNvZGUpLCBhbmQKPiA+IGFkZCBhbiBleHRyYSBtYWNybyB0byBz
cGVjaWZ5IHRoZSBudW1iZXIgb2YgREFUQSBjeWNsZXMgdG8gaXNzdWUgd2hlbgo+ID4gdGhlIFJF
QUQgb3IgV1JJVEUgZmxhZyBpcyBzZXQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEJvcmlzIEJy
ZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+ICAuLi4v
bXRkL25hbmQvcmF3L2JjbTQ3eHhuZmxhc2gvb3BzX2JjbTQ3MDYuYyAgfCAzNCArKysrKysrKysr
KysrKystLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDcgZGVsZXRp
b25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9iY200N3h4
bmZsYXNoL29wc19iY200NzA2LmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9iY200N3h4bmZsYXNo
L29wc19iY200NzA2LmMKPiA+IGluZGV4IDU5MTc3NTE3MzAzNC4uZmJiN2FjZWJjOGY3IDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYmNtNDd4eG5mbGFzaC9vcHNfYmNtNDcw
Ni5jCj4gPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9iY200N3h4bmZsYXNoL29wc19iY200
NzA2LmMKPiA+IEBAIC0yNSwxMiArMjUsMjkgQEAKPiA+ICAjZGVmaW5lIE5DVExfQ01EMVcJCQkw
eDAwMDgwMDAwCj4gPiAgI2RlZmluZSBOQ1RMX1JFQUQJCQkweDAwMTAwMDAwCj4gPiAgI2RlZmlu
ZSBOQ1RMX1dSSVRFCQkJMHgwMDIwMDAwMAo+ID4gKy8qIFdoZW4gdGhlIFNQRUNBRERSIGlzIHNl
dCBDTUQxIGlzIGludGVycHJldGVkIGFzIGEgc2luZ2xlIEFERFIgY3ljbGUgKi8KPiA+ICAjZGVm
aW5lIE5DVExfU1BFQ0FERFIJCQkweDAxMDAwMDAwCj4gPiAgI2RlZmluZSBOQ1RMX1JFQURZCQkJ
MHgwNDAwMDAwMAo+ID4gICNkZWZpbmUgTkNUTF9FUlIJCQkweDA4MDAwMDAwCj4gPiArLyoKPiA+
ICsgKiBOdW1iZXIgb2YgREFUQSBjeWNsZXMgdG8gaXNzdWUgd2hlbiBOQ1RMX3tSRUFELFdSSVRF
fSBpcyBzZXQuIFRoZSBtaW5pbXVtCj4gPiArICogdmFsdWUgaXMgMSBhbmQgdGhlIG1heGltdW0g
dmFsdWUgaXMgNC4gVGhvc2UgYnl0ZXMgYXJlIHRoZW4gc3RvcmVkIGluIHRoZQo+ID4gKyAqIEJD
TUFfQ0NfTkZMQVNIX0RBVEEgcmVnaXN0ZXIuCj4gPiArICovCj4gPiArI2RlZmluZSBOQ1RMX0RB
VEFfQ1lDTEVTKHgpCQkoKCgoeCkgLSAxKSAmIDB4MykgPDwgMjgpCj4gPiArLyoKPiA+ICsgKiBU
aGUgQ1MgcGluIHNlZW1zIHRvIGJlIGFzc2VydGVkIGV2ZW4gaWYgTkNUTF9DU0EgaXMgbm90IHNl
dC4gQWxsIHRoaXMgYml0Cj4gPiArICogc2VlbXMgdG8gZW5jb2RlIGlzIHdoZXRoZXIgdGhlIENT
IGxpbmUgc2hvdWxkIHN0YXkgYXNzZXJ0ZWQgYWZ0ZXIgdGhlCj4gPiArICogb3BlcmF0aW9uIGhh
cyBiZWVuIGV4ZWN1dGVkLiBJbiBvdGhlciB3b3JkcywgeW91IHNob3VsZCBvbmx5IHNldCBpdCBp
ZiBpZiAgCj4gCj4gcy9pdCBpZiBpZi9pdCBpZi8KPiAKCkFuZCBkcm9wIHRoaXMgZHVwbGljYXRl
LgoKPiA+ICsgKiB5b3UgaW50ZW5kIHRvIGRvIG1vcmUgb3BlcmF0aW9ucyBvbiB0aGUgTkFORCBi
dXMuCj4gPiArICovCj4gPiAgI2RlZmluZSBOQ1RMX0NTQQkJCTB4NDAwMDAwMDAKPiA+ICAjZGVm
aW5lIE5DVExfU1RBUlQJCQkweDgwMDAwMDAwCj4gPiAgCj4gPiArI2RlZmluZSBDT05GX01BR0lD
X0JJVAkJCTB4MDAwMDAwMDIKPiA+ICsjZGVmaW5lIENPTkZfQ09MX0JZVEVTKHgpCQkoKCh4KSAt
IDEpIDw8IDQpCj4gPiArI2RlZmluZSBDT05GX1JPV19CWVRFUyh4KQkJKCgoeCkgLSAxKSA8PCA2
KQo+ID4gKyAgCj4gCj4gCj4gV2l0aCB0aGUgYWJvdmUgY29ycmVjdGVkLAo+IAo+IFJldmlld2Vk
LWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+IAo+IAo+IAo+
IFRoYW5rcywKPiBNaXF1w6hsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
