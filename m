Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 681FD14F201
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 19:16:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMP/0Z4VOOgTl4tNH3/UnP8Q7DPe581BDqM+6nPzcQ0=; b=CB/ulKqS6hKitX
	DTPjcxXEah+y02KT1giBtYT0FtZKqWgl199PfNdTFwjLPoxv1ijGnGshpSvNlzq6OwYac2+MuEsl1
	fJCtV35NV09w9rmASjhgJTk2fQvkvKgucAzSFuH6EWdbPfwe6nRGUdagr5cJhSfvrrh2qu7oL56Rv
	Zbcr9r45x2/Jqe7jqhsj/wj8zKIBjVSpH6Y0CMbHX4lP6VKLPAA0ym3Qxj1RS2xF5YKCt7tpDaqmC
	L2CoFBvcLR8DrLQCKD5/TXQe2yJx+PzTOMbOlaaJEc22K3Ybfyq8UVxyXjeXXqOVHcnykspkWeiz0
	RhSdfH78+MlZxu12c/ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixaqP-0000i1-Qb; Fri, 31 Jan 2020 18:16:41 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixaqG-0000hS-9f
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 18:16:34 +0000
Received: (wp-smtpd smtp.tlen.pl 20012 invoked from network);
 31 Jan 2020 19:16:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580494587; bh=TmGSu6mhFVKtGyHq6a9KdISvedFOwM6OftLAZoDO9Jo=;
 h=Subject:To:From;
 b=iPyAXo2ZQGPhzji5NI5rNqrZK00aV8cnUsmnySjPpzWqybBK8bYao+OgYXNWs1FM4
 jKibOhBPSU+UaShZzJOh+Yn2jMRBkBCP+0ETzbr+rZHaMuik9u+Qw597pRLpkKXqjK
 /GTVm0IzXKzbp2QgQpiz8Xw9c5axO7hwa1qWEwRA=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 19:16:27 +0100
To: ttocsr <ttocsr@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <20200131154620.25773-1-tomek_n@o2.pl>
 <20200131154620.25773-8-tomek_n@o2.pl>
 <CADRWmzRbX-n_z3XhP3ux5yvmu2nQb57BOqvY6es7ZWvdBLcpQg@mail.gmail.com>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <eacdaa37-98c0-92ef-d0e2-860ec3b24d4c@o2.pl>
Date: Fri, 31 Jan 2020 19:16:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <CADRWmzRbX-n_z3XhP3ux5yvmu2nQb57BOqvY6es7ZWvdBLcpQg@mail.gmail.com>
Content-Language: en-US
X-WP-MailID: f8e0295ec0e23fadac7ce9f986da9741
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [sYMC]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_101632_665001_E1BE01A7 
X-CRM114-Status: GOOD (  13.28  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 7/8] mvebu: uDPU: drop patch compiling
 dtb
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

SGkgU2NvdHQuCgpXIGRuaXUgMzEuMDEuMjAyMCBvwqAxNzoxMiwgdHRvY3NyIHBpc3plOgo+IEtl
cm5lbCA0LjE5IGRvZXNuJ3QgaGF2ZSAgYXJtYWRhLTM3MjAtdURQVS5kdHMuICBXb24ndCB3ZSBu
ZWVkIHRvIHBhdGNoCj4gb3BlbndydCBiZWNhdXNlIG9mIHRoaXM/CgpObywgdGhhdCB3b24ndCBi
ZSBhIHByb2JsZW0uIENoZWNrIHRoZSBpbmluY2x1ZGUvaW1hZ2UubWsgbGluZSA1MjMsIHRoaXMK
YXNzdXJlcyB0aGF0IGV2ZXJ5IERFVklDRV9EVFMgd2lsbCBiZSBjb21waWxlZCB0byBkdGIuIFRo
ZSBvbmx5IHRoaW5nIHRoYXQKZGlmZmVycyBpcyB0aGUgbG9jYXRpb24gd2hlcmUgaXQnbGwgZW5k
IHVwLgoKUmVnYXJkcwoKPiAKPiBTY290dAo+IAo+IE9uIEZyaSwgSmFuIDMxLCAyMDIwIGF0IDg6
NDcgQU0gVG9tYXN6IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4gd3JvdGU6Cj4gCj4+IElm
IGRldmljZSByZWNpcGUgaGFzIHNwZWNpZmllZCBERVZJQ0VfRFRTIHZhcmlhYmxlLCB0aGUgZHRi
IGlzIGJ1aWx0Cj4+IGFueXdheSBieSBPcGVuV3J0IGJ1aWxkcm9vdCBpbWFnZSBydWxlcy4gRHJv
cCB0aGUgcGF0Y2ggYW5kIGFkanVzdCB0aGUKPj4gbG9jYXRpb24gb2YgY29tcGlsZWQgZHRiLgo+
Pgo+PiBDYzogU2NvdHQgUm9iZXJ0cyA8dHRvY3NyQGdtYWlsLmNvbT4KPj4gU2lnbmVkLW9mZi1i
eTogVG9tYXN6IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4KPj4gLS0tCj4+ICB0YXJnZXQv
bGludXgvbXZlYnUvaW1hZ2UvY29ydGV4YTUzLm1rICAgICAgICAgICAgICAgICAgfCAgMiArLQo+
PiAgLi4uL3BhdGNoZXMtNC4xOS81MzAtYWRkX2FybWFkYS0zODIwLXVEUFUtZHRzLnBhdGNoICAg
IHwgMTAgLS0tLS0tLS0tLQo+PiAgMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMTEg
ZGVsZXRpb25zKC0pCj4+ICBkZWxldGUgbW9kZSAxMDA2NDQKPj4gdGFyZ2V0L2xpbnV4L212ZWJ1
L3BhdGNoZXMtNC4xOS81MzAtYWRkX2FybWFkYS0zODIwLXVEUFUtZHRzLnBhdGNoCj4+Cj4+IGRp
ZmYgLS1naXQgYS90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvY29ydGV4YTUzLm1rCj4+IGIvdGFy
Z2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleGE1My5tawo+PiBpbmRleCA5ODdkOTA0NTk3Li43
N2Y1Yzc5OTcyIDEwMDY0NAo+PiAtLS0gYS90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvY29ydGV4
YTUzLm1rCj4+ICsrKyBiL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9jb3J0ZXhhNTMubWsKPj4g
QEAgLTYwLDcgKzYwLDcgQEAgZGVmaW5lIERldmljZS9tZXRob2RlX3VkcHUKPj4gICAgREVWSUNF
X01PREVMIDo9IG1pY3JvLURQVSAodURQVSkKPj4gICAgREVWSUNFX0RUUyA6PSBhcm1hZGEtMzcy
MC11RFBVCj4+ICAgIEtFUk5FTF9MT0FEQUREUiA6PSAweDAwMDgwMDAwCj4+IC0gIEtFUk5FTF9J
TklUUkFNRlMgOj0ga2VybmVsLWJpbiB8IGd6aXAgfCBmaXQgZ3ppcAo+PiAkJChEVFNfRElSKS8k
JChERVZJQ0VfRFRTKS5kdGIKPj4gKyAgS0VSTkVMX0lOSVRSQU1GUyA6PSBrZXJuZWwtYmluIHwg
Z3ppcCB8IGZpdCBnemlwCj4+ICQkKEtESVIpL2ltYWdlLSQkKERFVklDRV9EVFMpLmR0Ygo+PiAg
ICBLRVJORUxfSU5JVFJBTUZTX1NVRkZJWCA6PSAuaXRiCj4+ICAgIERFVklDRV9QQUNLQUdFUyAr
PSBmMmZzLXRvb2xzIGZkaXNrIGttb2QtaTJjLXB4YQo+PiAgICBJTUFHRV9OQU1FID0gJCQoSU1B
R0VfUFJFRklYKS0kJCgyKQo+PiBkaWZmIC0tZ2l0Cj4+IGEvdGFyZ2V0L2xpbnV4L212ZWJ1L3Bh
dGNoZXMtNC4xOS81MzAtYWRkX2FybWFkYS0zODIwLXVEUFUtZHRzLnBhdGNoCj4+IGIvdGFyZ2V0
L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS81MzAtYWRkX2FybWFkYS0zODIwLXVEUFUtZHRzLnBh
dGNoCj4+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCBiZDRmMGFlZjlhLi4wMDAw
MDAwMDAwCj4+IC0tLSBhL3RhcmdldC9saW51eC9tdmVidS9wYXRjaGVzLTQuMTkvNTMwLWFkZF9h
cm1hZGEtMzgyMC11RFBVLWR0cy5wYXRjaAo+PiArKysgL2Rldi9udWxsCj4+IEBAIC0xLDEwICsw
LDAgQEAKPj4gLS0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9NYWtlZmlsZQo+PiAt
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL01ha2VmaWxlCj4+IC1AQCAtMiw2ICsy
LDcgQEAKPj4gLSAjIE12ZWJ1IFNvQyBGYW1pbHkKPj4gLSBkdGItJChDT05GSUdfQVJDSF9NVkVC
VSkgKz0gYXJtYWRhLTM3MjAtZGIuZHRiCj4+IC0gZHRiLSQoQ09ORklHX0FSQ0hfTVZFQlUpICs9
IGFybWFkYS0zNzIwLWVzcHJlc3NvYmluLmR0Ygo+PiAtK2R0Yi0kKENPTkZJR19BUkNIX01WRUJV
KSArPSBhcm1hZGEtMzcyMC11RFBVLmR0Ygo+PiAtIGR0Yi0kKENPTkZJR19BUkNIX01WRUJVKSAr
PSBhcm1hZGEtNzA0MC1kYi5kdGIKPj4gLSBkdGItJChDT05GSUdfQVJDSF9NVkVCVSkgKz0gYXJt
YWRhLTgwNDAtZGIuZHRiCj4+IC0gZHRiLSQoQ09ORklHX0FSQ0hfTVZFQlUpICs9IGFybWFkYS04
MDQwLW1jYmluLmR0Ygo+PiAtLQo+PiAyLjI1LjAKPj4KPj4KPiAKLS0gClRNTgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
