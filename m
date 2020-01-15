Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F83C13BE21
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 12:04:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ICnJsxvh+qe5Osys7KBq3ckxOTmEddL///M63RLubY=; b=eIxIAkjkUSToYv
	sip1obvwfO5lubKHxRaGJruRKurfN0HSVwRzAEVFKnwhPIsjpniJKXKdplezERJVxrO57AoocAd3I
	KEeffFY7O4BqXFBBR9AVgXwzIJx92vuFsgZoCPGJl0Ywx0sWnnREyPeH9Ix6sqBFXiSH0iFfFiLmZ
	oIP2VjqCBCiXOKRX6ITO7huPEtWdPXH/NayDVwBQLoF73FpfP5D2RFxO7YgdH9LwZxMKRzL9G4Lqm
	SZOfcmCyHIaECGp0GTfYllWEcSX8bROmassYQlgt6ag8cLwLjnWKNwu+xPPCQja18G3GJ5UV8mGCv
	4GdOTOxrc8w7ujXi7UNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgSs-0005mt-KK; Wed, 15 Jan 2020 11:03:58 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgSi-0005m4-RR
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 11:03:53 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1irgSc-0007R9-6g; Wed, 15 Jan 2020 12:03:43 +0100
Date: Wed, 15 Jan 2020 13:03:33 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200115110333.GA2350@makrotopia.org>
References: <20200115103057.7665-1-ynezz@true.cz>
 <20200115103057.7665-2-ynezz@true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115103057.7665-2-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_030348_888210_25219685 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH procd 2/2] instance: fix pidfile
 attribute double free crash
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

SGkgUGV0ciwKCnRoYW5rcyBmb3IgcmV2aWV3aW5nIGFuZCBmaXhpbmcgdGhpcyEKCk9uIFdlZCwg
SmFuIDE1LCAyMDIwIGF0IDExOjMwOjU3QU0gKzAxMDAsIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4g
Q29tbWl0IGE1YWYzM2NlOWExNiAoImluc3RhbmNlOiBzdHJkdXAgc3RyaW5nIGF0dHJpYnV0ZXMi
KSBoYXMKPiBpbnRyb2R1Y2VkIGR1cGxpY2F0aW9uIG9mIHZhcmlvdXMgc3RyaW5nIGF0dHJpYnV0
ZXMgaW4gb3JkZXIgdG8gZml4Cj4gdXNlLWFmdGVyLWZyZWUsIGJ1dCBtaXNzZWQgaGFuZGxpbmcg
b2Ygb25lIGBwaWRmaWxlYCBhdHRyaWJ1dGUgY2FzZSBpbgo+IGluc3RhbmNlX2NvbmZpZ19tb3Zl
KCkgd2hlcmUgdGhlIG5ldyB2YWx1ZSBvZiBgcGlkZmlsZWAgaXMgYmVpbmcKPiBjb3BpZWQvYXNz
aWduZWQuIFNvdXJjZSBvZiB0aGlzIHZhbHVlIGlzIHRoZW4gZnJlZSgpZCBpbiBmb2xsb3dpbmcg
Y2FsbAo+IHRvIGluc3RhbmNlX2ZyZWUoKSBhbmQgdGhlbiBhZ2FpbiBmb3IgMm5kIHRpbWUgZHVy
aW5nIHRoZSBzZXJ2aWNlIHN0b3AKPiBjb21tYW5kIGhhbmRsaW5nLCBsZWFkaW5nIHRvIGRvdWJs
ZSBmcmVlIGNyYXNoOgo+IAo+ICAjMCAgdW5tYXBfY2h1bmsgYXQgc3JjL21hbGxvYy9tYWxsb2Mu
Yzo1MTUKPiAgIzEgIGZyZWUgYXQgc3JjL21hbGxvYy9tYWxsb2MuYzo1MjYKPiAgIzIgIGluc3Rh
bmNlX2ZyZWUgKGluPTB4ZDVlMzAwKSBhdCBpbnN0YW5jZS5jOjExMDAKPiAgIzMgIGluc3RhbmNl
X2RlbGV0ZSAoaW49MHhkNWUzMDApIGF0IGluc3RhbmNlLmM6NTU5Cj4gICM0ICBpbnN0YW5jZV9z
dG9wIChpbj0weGQ1ZTMwMCwgaGFsdD10cnVlKSBhdCBpbnN0YW5jZS5jOjYxMQoKUmlnaHQsIGRp
ZG4ndCB0aGluayBhYm91dCB0aGF0LiBJIGRvbid0IGhhdmUgdGltZSB0byBnZXQgaW50byB0aGlz
CnJpZ2h0IG5vdyAoYnV0IHdpbGwgaGF2ZSB0b25pZ2h0IG9yIHRvbW9ycm93KSwgYnV0IGRvZXNu
J3QgdGhlIHNhbWUKYWxzbyBhcHBseSBhdCBsZWFzdCBmb3IgdGhlICdzZWNjb21wJyBmaWVsZD8K
CgpDaGVlcnMKCgpEYW5pZWwKCj4gCj4gUmVmOiBGUyMyNzIzCj4gQ2M6IERhbmllbCBHb2xsZSA8
ZGFuaWVsQG1ha3JvdG9waWEub3JnPgo+IEZpeGVzOiBhNWFmMzNjZTlhMTYgKCJpbnN0YW5jZTog
c3RyZHVwIHN0cmluZyBhdHRyaWJ1dGVzIikKPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFy
IDx5bmV6ekB0cnVlLmN6Pgo+IC0tLQo+ICBzZXJ2aWNlL2luc3RhbmNlLmMgfCA1ICsrKystCj4g
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvc2VydmljZS9pbnN0YW5jZS5jIGIvc2VydmljZS9pbnN0YW5jZS5jCj4gaW5kZXgg
Y2U1MjMzODA3ZGJiLi4yNDViOTYyOWQ5OWEgMTAwNjQ0Cj4gLS0tIGEvc2VydmljZS9pbnN0YW5j
ZS5jCj4gKysrIGIvc2VydmljZS9pbnN0YW5jZS5jCj4gQEAgLTEwMzEsNyArMTAzMSw2IEBAIGlu
c3RhbmNlX2NvbmZpZ19tb3ZlKHN0cnVjdCBzZXJ2aWNlX2luc3RhbmNlICppbiwgc3RydWN0IHNl
cnZpY2VfaW5zdGFuY2UgKmluX3NyCj4gIAlibG9ibXNnX2xpc3RfbW92ZSgmaW4tPmphaWwubW91
bnQsICZpbl9zcmMtPmphaWwubW91bnQpOwo+ICAJaW4tPnRyaWdnZXIgPSBpbl9zcmMtPnRyaWdn
ZXI7Cj4gIAlpbi0+Y29tbWFuZCA9IGluX3NyYy0+Y29tbWFuZDsKPiAtCWluLT5waWRmaWxlID0g
aW5fc3JjLT5waWRmaWxlOwo+ICAJaW4tPnJlc3Bhd24gPSBpbl9zcmMtPnJlc3Bhd247Cj4gIAlp
bi0+cmVzcGF3bl9yZXRyeSA9IGluX3NyYy0+cmVzcGF3bl9yZXRyeTsKPiAgCWluLT5yZXNwYXdu
X3RocmVzaG9sZCA9IGluX3NyYy0+cmVzcGF3bl90aHJlc2hvbGQ7Cj4gQEAgLTEwNDIsNiArMTA0
MSwxMCBAQCBpbnN0YW5jZV9jb25maWdfbW92ZShzdHJ1Y3Qgc2VydmljZV9pbnN0YW5jZSAqaW4s
IHN0cnVjdCBzZXJ2aWNlX2luc3RhbmNlICppbl9zcgo+ICAJaW4tPm5vZGUuYXZsLmtleSA9IGlu
X3NyYy0+bm9kZS5hdmwua2V5Owo+ICAJaW4tPnN5c2xvZ19mYWNpbGl0eSA9IGluX3NyYy0+c3lz
bG9nX2ZhY2lsaXR5Owo+ICAKPiArCWZyZWUoaW4tPnBpZGZpbGUpOwo+ICsJaWYgKGluX3NyYy0+
cGlkZmlsZSkKPiArCQlpbi0+cGlkZmlsZSA9IHN0cmR1cChpbl9zcmMtPnBpZGZpbGUpOwo+ICsK
PiAgCWZyZWUoaW4tPmNvbmZpZyk7Cj4gIAlpbi0+Y29uZmlnID0gaW5fc3JjLT5jb25maWc7Cj4g
IAlpbl9zcmMtPmNvbmZpZyA9IE5VTEw7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
